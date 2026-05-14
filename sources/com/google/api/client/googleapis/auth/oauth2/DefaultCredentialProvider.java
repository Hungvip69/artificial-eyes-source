package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.TokenResponse;
import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.AccessControlException;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class DefaultCredentialProvider extends SystemEnvironmentProvider {
    static final String APP_ENGINE_CREDENTIAL_CLASS = "com.google.api.client.googleapis.extensions.appengine.auth.oauth2.AppIdentityCredential$AppEngineCredentialWrapper";
    static final String CLOUDSDK_CONFIG_DIRECTORY = "gcloud";
    static final String CLOUD_SHELL_ENV_VAR = "DEVSHELL_CLIENT_PORT";
    static final String CREDENTIAL_ENV_VAR = "GOOGLE_APPLICATION_CREDENTIALS";
    static final String HELP_PERMALINK = "https://developers.google.com/accounts/docs/application-default-credentials";
    static final String WELL_KNOWN_CREDENTIALS_FILE = "application_default_credentials.json";
    private GoogleCredential cachedCredential = null;
    private Environment detectedEnvironment = null;

    private enum Environment {
        UNKNOWN,
        ENVIRONMENT_VARIABLE,
        WELL_KNOWN_FILE,
        CLOUD_SHELL,
        APP_ENGINE,
        COMPUTE_ENGINE
    }

    DefaultCredentialProvider() {
    }

    final GoogleCredential getDefaultCredential(HttpTransport transport, JsonFactory jsonFactory) throws IOException {
        synchronized (this) {
            if (this.cachedCredential == null) {
                this.cachedCredential = getDefaultCredentialUnsynchronized(transport, jsonFactory);
            }
            if (this.cachedCredential != null) {
                return this.cachedCredential;
            }
            throw new IOException(String.format("The Application Default Credentials are not available. They are available if running on Google App Engine, Google Compute Engine, or Google Cloud Shell. Otherwise, the environment variable %s must be defined pointing to a file defining the credentials. See %s for more information.", CREDENTIAL_ENV_VAR, HELP_PERMALINK));
        }
    }

    private final GoogleCredential getDefaultCredentialUnsynchronized(HttpTransport transport, JsonFactory jsonFactory) throws IOException {
        if (this.detectedEnvironment == null) {
            this.detectedEnvironment = detectEnvironment(transport);
        }
        switch (this.detectedEnvironment) {
            case ENVIRONMENT_VARIABLE:
                return getCredentialUsingEnvironmentVariable(transport, jsonFactory);
            case WELL_KNOWN_FILE:
                return getCredentialUsingWellKnownFile(transport, jsonFactory);
            case APP_ENGINE:
                return getAppEngineCredential(transport, jsonFactory);
            case CLOUD_SHELL:
                return getCloudShellCredential(jsonFactory);
            case COMPUTE_ENGINE:
                return getComputeCredential(transport, jsonFactory);
            default:
                return null;
        }
    }

    private final File getWellKnownCredentialsFile() {
        File cloudConfigPath;
        String os = getProperty("os.name", "").toLowerCase(Locale.US);
        if (os.indexOf("windows") >= 0) {
            File appDataPath = new File(getEnv("APPDATA"));
            cloudConfigPath = new File(appDataPath, CLOUDSDK_CONFIG_DIRECTORY);
        } else {
            File configPath = new File(getProperty("user.home", ""), ".config");
            cloudConfigPath = new File(configPath, CLOUDSDK_CONFIG_DIRECTORY);
        }
        File credentialFilePath = new File(cloudConfigPath, WELL_KNOWN_CREDENTIALS_FILE);
        return credentialFilePath;
    }

    boolean fileExists(File file) {
        return file.exists() && !file.isDirectory();
    }

    String getProperty(String property, String def) {
        return System.getProperty(property, def);
    }

    Class<?> forName(String className) throws ClassNotFoundException {
        return Class.forName(className);
    }

    private final Environment detectEnvironment(HttpTransport transport) throws IOException {
        if (runningUsingEnvironmentVariable()) {
            return Environment.ENVIRONMENT_VARIABLE;
        }
        if (runningUsingWellKnownFile()) {
            return Environment.WELL_KNOWN_FILE;
        }
        if (useGAEStandardAPI()) {
            return Environment.APP_ENGINE;
        }
        if (runningOnCloudShell()) {
            return Environment.CLOUD_SHELL;
        }
        if (OAuth2Utils.runningOnComputeEngine(transport, this)) {
            return Environment.COMPUTE_ENGINE;
        }
        return Environment.UNKNOWN;
    }

    private boolean runningUsingEnvironmentVariable() throws IOException {
        String credentialsPath = getEnv(CREDENTIAL_ENV_VAR);
        if (credentialsPath == null || credentialsPath.length() == 0) {
            return false;
        }
        try {
            File credentialsFile = new File(credentialsPath);
            if (!credentialsFile.exists() || credentialsFile.isDirectory()) {
                throw new IOException(String.format("Error reading credential file from environment variable %s, value '%s': File does not exist.", CREDENTIAL_ENV_VAR, credentialsPath));
            }
            return true;
        } catch (AccessControlException e) {
            return false;
        }
    }

    private GoogleCredential getCredentialUsingEnvironmentVariable(HttpTransport transport, JsonFactory jsonFactory) throws IOException {
        String credentialsPath = getEnv(CREDENTIAL_ENV_VAR);
        InputStream credentialsStream = null;
        try {
            try {
                credentialsStream = new FileInputStream(credentialsPath);
                GoogleCredential googleCredentialFromStream = GoogleCredential.fromStream(credentialsStream, transport, jsonFactory);
                credentialsStream.close();
                return googleCredentialFromStream;
            } catch (IOException e) {
                throw ((IOException) OAuth2Utils.exceptionWithCause(new IOException(String.format("Error reading credential file from environment variable %s, value '%s': %s", CREDENTIAL_ENV_VAR, credentialsPath, e.getMessage())), e));
            }
        } catch (Throwable th) {
            if (credentialsStream != null) {
                credentialsStream.close();
            }
            throw th;
        }
    }

    private boolean runningUsingWellKnownFile() {
        File wellKnownFileLocation = getWellKnownCredentialsFile();
        try {
            return fileExists(wellKnownFileLocation);
        } catch (AccessControlException e) {
            return false;
        }
    }

    private GoogleCredential getCredentialUsingWellKnownFile(HttpTransport transport, JsonFactory jsonFactory) throws IOException {
        File wellKnownFileLocation = getWellKnownCredentialsFile();
        InputStream credentialsStream = null;
        try {
            try {
                credentialsStream = new FileInputStream(wellKnownFileLocation);
                GoogleCredential googleCredentialFromStream = GoogleCredential.fromStream(credentialsStream, transport, jsonFactory);
                credentialsStream.close();
                return googleCredentialFromStream;
            } catch (IOException e) {
                throw new IOException(String.format("Error reading credential file from location %s: %s", wellKnownFileLocation, e.getMessage()));
            }
        } catch (Throwable th) {
            if (credentialsStream != null) {
                credentialsStream.close();
            }
            throw th;
        }
    }

    private boolean useGAEStandardAPI() {
        Exception cause;
        try {
            Class<?> systemPropertyClass = forName("com.google.appengine.api.utils.SystemProperty");
            try {
                Field environmentField = systemPropertyClass.getField("environment");
                Object environmentValue = environmentField.get(null);
                Class<?> environmentType = environmentField.getType();
                Method valueMethod = environmentType.getMethod("value", new Class[0]);
                Object environmentValueValue = valueMethod.invoke(environmentValue, new Object[0]);
                return environmentValueValue != null;
            } catch (IllegalAccessException exception) {
                cause = exception;
                throw ((RuntimeException) OAuth2Utils.exceptionWithCause(new RuntimeException(String.format("Unexpcted error trying to determine if runnning on Google App Engine: %s", cause.getMessage())), cause));
            } catch (IllegalArgumentException exception2) {
                cause = exception2;
                throw ((RuntimeException) OAuth2Utils.exceptionWithCause(new RuntimeException(String.format("Unexpcted error trying to determine if runnning on Google App Engine: %s", cause.getMessage())), cause));
            } catch (NoSuchFieldException exception3) {
                cause = exception3;
                throw ((RuntimeException) OAuth2Utils.exceptionWithCause(new RuntimeException(String.format("Unexpcted error trying to determine if runnning on Google App Engine: %s", cause.getMessage())), cause));
            } catch (NoSuchMethodException exception4) {
                cause = exception4;
                throw ((RuntimeException) OAuth2Utils.exceptionWithCause(new RuntimeException(String.format("Unexpcted error trying to determine if runnning on Google App Engine: %s", cause.getMessage())), cause));
            } catch (SecurityException exception5) {
                cause = exception5;
                throw ((RuntimeException) OAuth2Utils.exceptionWithCause(new RuntimeException(String.format("Unexpcted error trying to determine if runnning on Google App Engine: %s", cause.getMessage())), cause));
            } catch (InvocationTargetException exception6) {
                cause = exception6;
                throw ((RuntimeException) OAuth2Utils.exceptionWithCause(new RuntimeException(String.format("Unexpcted error trying to determine if runnning on Google App Engine: %s", cause.getMessage())), cause));
            }
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    private final GoogleCredential getAppEngineCredential(HttpTransport transport, JsonFactory jsonFactory) throws IOException {
        Exception innerException;
        try {
            Class<?> credentialClass = forName(APP_ENGINE_CREDENTIAL_CLASS);
            Constructor<?> constructor = credentialClass.getConstructor(HttpTransport.class, JsonFactory.class);
            return (GoogleCredential) constructor.newInstance(transport, jsonFactory);
        } catch (ClassNotFoundException e) {
            innerException = e;
            throw ((IOException) OAuth2Utils.exceptionWithCause(new IOException(String.format("Application Default Credentials failed to create the Google App Engine service account credentials class %s. Check that the component 'google-api-client-appengine' is deployed.", APP_ENGINE_CREDENTIAL_CLASS)), innerException));
        } catch (IllegalAccessException e2) {
            innerException = e2;
            throw ((IOException) OAuth2Utils.exceptionWithCause(new IOException(String.format("Application Default Credentials failed to create the Google App Engine service account credentials class %s. Check that the component 'google-api-client-appengine' is deployed.", APP_ENGINE_CREDENTIAL_CLASS)), innerException));
        } catch (InstantiationException e3) {
            innerException = e3;
            throw ((IOException) OAuth2Utils.exceptionWithCause(new IOException(String.format("Application Default Credentials failed to create the Google App Engine service account credentials class %s. Check that the component 'google-api-client-appengine' is deployed.", APP_ENGINE_CREDENTIAL_CLASS)), innerException));
        } catch (NoSuchMethodException e4) {
            innerException = e4;
            throw ((IOException) OAuth2Utils.exceptionWithCause(new IOException(String.format("Application Default Credentials failed to create the Google App Engine service account credentials class %s. Check that the component 'google-api-client-appengine' is deployed.", APP_ENGINE_CREDENTIAL_CLASS)), innerException));
        } catch (InvocationTargetException e5) {
            innerException = e5;
            throw ((IOException) OAuth2Utils.exceptionWithCause(new IOException(String.format("Application Default Credentials failed to create the Google App Engine service account credentials class %s. Check that the component 'google-api-client-appengine' is deployed.", APP_ENGINE_CREDENTIAL_CLASS)), innerException));
        }
    }

    private boolean runningOnCloudShell() {
        return getEnv(CLOUD_SHELL_ENV_VAR) != null;
    }

    private GoogleCredential getCloudShellCredential(JsonFactory jsonFactory) {
        String port = getEnv(CLOUD_SHELL_ENV_VAR);
        return new CloudShellCredential(Integer.parseInt(port), jsonFactory);
    }

    private final GoogleCredential getComputeCredential(HttpTransport transport, JsonFactory jsonFactory) {
        return new ComputeGoogleCredential(transport, jsonFactory);
    }

    private static class ComputeGoogleCredential extends GoogleCredential {
        private static final String TOKEN_SERVER_ENCODED_URL = OAuth2Utils.getMetadataServerUrl() + "/computeMetadata/v1/instance/service-accounts/default/token";

        ComputeGoogleCredential(HttpTransport transport, JsonFactory jsonFactory) {
            super(new GoogleCredential.Builder().setTransport(transport).setJsonFactory(jsonFactory).setTokenServerEncodedUrl(TOKEN_SERVER_ENCODED_URL));
        }

        @Override // com.google.api.client.googleapis.auth.oauth2.GoogleCredential, com.google.api.client.auth.oauth2.Credential
        protected TokenResponse executeRefreshToken() throws Throwable {
            GenericUrl tokenUrl = new GenericUrl(getTokenServerEncodedUrl());
            HttpRequest request = getTransport().createRequestFactory().buildGetRequest(tokenUrl);
            JsonObjectParser parser = new JsonObjectParser(getJsonFactory());
            request.setParser(parser);
            request.getHeaders().set("Metadata-Flavor", "Google");
            request.setThrowExceptionOnExecuteError(false);
            HttpResponse response = request.execute();
            int statusCode = response.getStatusCode();
            if (statusCode == 200) {
                InputStream content = response.getContent();
                if (content == null) {
                    throw new IOException("Empty content from metadata token server request.");
                }
                return (TokenResponse) parser.parseAndClose(content, response.getContentCharset(), TokenResponse.class);
            }
            if (statusCode == 404) {
                throw new IOException(String.format("Error code %s trying to get security access token from Compute Engine metadata for the default service account. This may be because the virtual machine instance does not have permission scopes specified.", Integer.valueOf(statusCode)));
            }
            throw new IOException(String.format("Unexpected Error code %s trying to get security access token from Compute Engine metadata for the default service account: %s", Integer.valueOf(statusCode), response.parseAsString()));
        }
    }
}
