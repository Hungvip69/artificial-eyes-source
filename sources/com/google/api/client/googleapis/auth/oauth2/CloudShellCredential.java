package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.TokenResponse;
import com.google.api.client.json.JsonFactory;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class CloudShellCredential extends GoogleCredential {
    private static final int ACCESS_TOKEN_INDEX = 2;
    protected static final String GET_AUTH_TOKEN_REQUEST = "2\n[]";
    private static final int READ_TIMEOUT_MS = 5000;
    private final int authPort;
    private final JsonFactory jsonFactory;

    public CloudShellCredential(int authPort, JsonFactory jsonFactory) {
        this.authPort = authPort;
        this.jsonFactory = jsonFactory;
    }

    protected int getAuthPort() {
        return this.authPort;
    }

    @Override // com.google.api.client.googleapis.auth.oauth2.GoogleCredential, com.google.api.client.auth.oauth2.Credential
    protected TokenResponse executeRefreshToken() throws IOException {
        Socket socket = new Socket("localhost", getAuthPort());
        socket.setSoTimeout(READ_TIMEOUT_MS);
        TokenResponse token = new TokenResponse();
        try {
            PrintWriter out = new PrintWriter(socket.getOutputStream(), true);
            out.println(GET_AUTH_TOKEN_REQUEST);
            BufferedReader input = new BufferedReader(new InputStreamReader(socket.getInputStream()));
            input.readLine();
            Collection<Object> messageArray = this.jsonFactory.createJsonParser(input).parseArray(LinkedList.class, Object.class);
            String accessToken = ((List) messageArray).get(2).toString();
            token.setAccessToken(accessToken);
            return token;
        } finally {
            socket.close();
        }
    }
}
