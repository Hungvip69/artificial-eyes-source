.class public final Lcom/google/appinventor/components/runtime/Translator;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Translator.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Use this component to translate words and sentences between differentlanguages. This component needs Internet access, as it will requesttranslations from a server at MIT (which in turn will requesttranslations from a commercial translation service).  Specify thesource and target language in the form source-target using two letterlanguage codes.  So \"en-es\" will translate from English to Spanishwhile \"es-ru\" will translate from Spanish to Russian. If you leave outthe source language, the service will attempt to detect the sourcelanguage. So providing just \"es\" will attempt to detect the sourcelanguage and translate it to Spanish.  <i>Note</i>: Translationhappens asynchronously in the background. When the translation iscomplete, the <b>GotTranslation(String, String)</b> event istriggered."
    iconName = "images/translator.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "protobuf-java-3.0.0.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final COMODO_ROOT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

.field private static final COMODO_USRTRUST:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

.field private static final DEBUG:Z = false

.field private static final ISRG_ROOT_X1:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFazCCA1OgAwIBAgIRAIIQz7DSQONZRGPgu2OCiwAwDQYJKoZIhvcNAQELBQAw\nTzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh\ncmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwHhcNMTUwNjA0MTEwNDM4\nWhcNMzUwNjA0MTEwNDM4WjBPMQswCQYDVQQGEwJVUzEpMCcGA1UEChMgSW50ZXJu\nZXQgU2VjdXJpdHkgUmVzZWFyY2ggR3JvdXAxFTATBgNVBAMTDElTUkcgUm9vdCBY\nMTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAK3oJHP0FDfzm54rVygc\nh77ct984kIxuPOZXoHj3dcKi/vVqbvYATyjb3miGbESTtrFj/RQSa78f0uoxmyF+\n0TM8ukj13Xnfs7j/EvEhmkvBioZxaUpmZmyPfjxwv60pIgbz5MDmgK7iS4+3mX6U\nA5/TR5d8mUgjU+g4rk8Kb4Mu0UlXjIB0ttov0DiNewNwIRt18jA8+o+u3dpjq+sW\nT8KOEUt+zwvo/7V3LvSye0rgTBIlDHCNAymg4VMk7BPZ7hm/ELNKjD+Jo2FR3qyH\nB5T0Y3HsLuJvW5iB4YlcNHlsdu87kGJ55tukmi8mxdAQ4Q7e2RCOFvu396j3x+UC\nB5iPNgiV5+I3lg02dZ77DnKxHZu8A/lJBdiB3QW0KtZB6awBdpUKD9jf1b0SHzUv\nKBds0pjBqAlkd25HN7rOrFleaJ1/ctaJxQZBKT5ZPt0m9STJEadao0xAH0ahmbWn\nOlFuhjuefXKnEgV4We0+UXgVCwOPjdAvBbI+e0ocS3MFEvzG6uBQE3xDk3SzynTn\njh8BCNAw1FtxNrQHusEwMFxIt4I7mKZ9YIqioymCzLq9gwQbooMDQaHWBfEbwrbw\nqHyGO0aoSCqI3Haadr8faqU9GY/rOPNk3sgrDQoo//fb4hVC1CLQJ13hef4Y53CI\nrU7m2Ys6xt0nUW7/vGT1M0NPAgMBAAGjQjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNV\nHRMBAf8EBTADAQH/MB0GA1UdDgQWBBR5tFnme7bl5AFzgAiIyBpY9umbbjANBgkq\nhkiG9w0BAQsFAAOCAgEAVR9YqbyyqFDQDLHYGmkgJykIrGF1XIpu+ILlaS/V9lZL\nubhzEFnTIZd+50xx+7LSYK05qAvqFyFWhfFQDlnrzuBZ6brJFe+GnY+EgPbk6ZGQ\n3BebYhtF8GaV0nxvwuo77x/Py9auJ/GpsMiu/X1+mvoiBOv/2X/qkSsisRcOj/KK\nNFtY2PwByVS5uCbMiogziUwthDyC3+6WVwW6LLv3xLfHTjuCvjHIInNzktHCgKQ5\nORAzI4JMPJ+GslWYHb4phowim57iaztXOoJwTdwJx4nLCgdNbOhdjsnvzqvHu7Ur\nTkXWStAmzOVyyghqpZXjFaH3pO3JLF+l+/+sKAIuvtd7u+Nxe5AW0wdeRlN8NwdC\njNPElpzVmbUq4JUagEiuTDkHzsxHpFKVK7q4+63SM1N95R1NbdWhscdCb+ZAJzVc\noyi3B43njTOQ5yOf+1CceWxG1bQVs5ZufpsMljq4Ui0/1lvh+wjChP4kqKOJ2qxq\n4RgqsahDYVvTH9w7jXbyLeiNdd8XM2w9U/t7y0Ff/9yi0GE44Za4rF2LN9d11TPA\nmRGunUHBcnWEvgJBQl9nJEiU0Zsnvgc/ubhPgXRR4Xq37Z0j4r7g1SgEEzwxA57d\nemyPxgcYxn/eR44/KJ4EBs+lVDR3veyJm+kXQ99b21/+jh5Xos1AnX5iItreGCc=\n-----END CERTIFICATE-----\n"

.field private static final LOG_TAG:Ljava/lang/String; = "Translator"

.field private static final MIT_CA:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFXjCCBEagAwIBAgIJAMLfrRWIaHLbMA0GCSqGSIb3DQEBCwUAMIHPMQswCQYD\nVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJyaWRnZTEuMCwGA1UE\nChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neTEZMBcGA1UE\nCxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWREQiBDZXJ0aWZpY2F0\nZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkqhkiG9w0BCQEWC2pp\nc0BtaXQuZWR1MB4XDTE3MTIyMjIyMzkyOVoXDTI3MTIyMDIyMzkyOVowgc8xCzAJ\nBgNVBAYTAlVTMQswCQYDVQQIEwJNQTESMBAGA1UEBxMJQ2FtYnJpZGdlMS4wLAYD\nVQQKEyVNYXNzYWNodXNldHRzIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD\nVQQLExBNSVQgQXBwIEludmVudG9yMSYwJAYDVQQDEx1DbG91ZERCIENlcnRpZmlj\nYXRlIEF1dGhvcml0eTEQMA4GA1UEKRMHRWFzeVJTQTEaMBgGCSqGSIb3DQEJARYL\namlzQG1pdC5lZHUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHzI3D\nFobNDv2HTWlDdedmbxZIJYSqWlzdRJC3oVJgCubdAs46WJRqUxDRWft9UpYGMKkw\nmYN8mdPby2m5OJagdVIZgnguB71zIQkC8yMzd94FC3gldX5m7R014D/0fkpzvsSt\n6fsNectJT0k7gPELOH6t4u6AUbvIsEX0nNyRWsmA/ucXCsDBwXyBJxfOKIQ9tDI4\n/WfcKk9JDpeMF7RP0CIOtlAPotKIaPoY1W3eMIi/0riOt5vTFsB8pxhxAVy0cfGX\niHukdrAkAJixTgkyS7wzk22xOeXVnRIzAMGK5xHMDw/HRQGTrUGfIXHENV3u+3Ae\nL5/ZoQwyZTixmQNzAgMBAAGjggE5MIIBNTAdBgNVHQ4EFgQUZfMKQXqtC5UJGFrZ\ngZE1nmlx+t8wggEEBgNVHSMEgfwwgfmAFGXzCkF6rQuVCRha2YGRNZ5pcfrfoYHV\npIHSMIHPMQswCQYDVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJy\naWRnZTEuMCwGA1UEChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5v\nbG9neTEZMBcGA1UECxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWRE\nQiBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkq\nhkiG9w0BCQEWC2ppc0BtaXQuZWR1ggkAwt+tFYhoctswDAYDVR0TBAUwAwEB/zAN\nBgkqhkiG9w0BAQsFAAOCAQEAIkKr3eIvwZO6a1Jsh3qXwveVnrqwxYvLw2IhTwNT\n/P6C5jbRnzUuDuzg5sEIpbBo/Bp3qIp7G5cdVOkIrqO7uCp6Kyc7d9lPsEe/cbF4\naNwNmdWroRN1y0tuMU6+z7frd5pOeAZP9E/DM/0Uaz4yVzwnlvZUttaLymyMhH54\nisGQKbAqHDFtKZvb6DxsHzrO2YgeaBAtjeVhPWiv8BhzbOo9+hhZvYHYtoM2W+Ze\nDHuvv0v+qouphftDKVBp16N8Pk5WgabTXzV6VcNee92iwbWYDEv06+S3AF/q2TBe\nxxXtAa5ywbp6IRF37QuQChcYnOx7zIylYI1PIENfQFC2BA==\n-----END CERTIFICATE-----\n"

.field public static final TRANSLATOR_SERVICE_URL:Ljava/lang/String; = "https://tr.appinventor.mit.edu/tr/v1"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private apiKey:Ljava/lang/String;

.field private sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static bridge synthetic -$$Nest$mperformRequest(Lcom/google/appinventor/components/runtime/Translator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Translator;->performRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 241
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Translator;->sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 242
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Translator;->activity:Landroid/app/Activity;

    .line 243
    return-void
.end method

.method private declared-synchronized ensureSslSockFactory()V
    .locals 15

    monitor-enter p0

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Translator;->sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 423
    monitor-exit p0

    return-void

    .line 426
    :cond_0
    :try_start_1
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 427
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 428
    .local v1, "caInput":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 429
    .local v2, "ca":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 430
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v3

    .line 431
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 432
    .local v3, "inter":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 433
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "-----BEGIN CERTIFICATE-----\nMIIFXjCCBEagAwIBAgIJAMLfrRWIaHLbMA0GCSqGSIb3DQEBCwUAMIHPMQswCQYD\nVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJyaWRnZTEuMCwGA1UE\nChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neTEZMBcGA1UE\nCxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWREQiBDZXJ0aWZpY2F0\nZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkqhkiG9w0BCQEWC2pp\nc0BtaXQuZWR1MB4XDTE3MTIyMjIyMzkyOVoXDTI3MTIyMDIyMzkyOVowgc8xCzAJ\nBgNVBAYTAlVTMQswCQYDVQQIEwJNQTESMBAGA1UEBxMJQ2FtYnJpZGdlMS4wLAYD\nVQQKEyVNYXNzYWNodXNldHRzIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD\nVQQLExBNSVQgQXBwIEludmVudG9yMSYwJAYDVQQDEx1DbG91ZERCIENlcnRpZmlj\nYXRlIEF1dGhvcml0eTEQMA4GA1UEKRMHRWFzeVJTQTEaMBgGCSqGSIb3DQEJARYL\namlzQG1pdC5lZHUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHzI3D\nFobNDv2HTWlDdedmbxZIJYSqWlzdRJC3oVJgCubdAs46WJRqUxDRWft9UpYGMKkw\nmYN8mdPby2m5OJagdVIZgnguB71zIQkC8yMzd94FC3gldX5m7R014D/0fkpzvsSt\n6fsNectJT0k7gPELOH6t4u6AUbvIsEX0nNyRWsmA/ucXCsDBwXyBJxfOKIQ9tDI4\n/WfcKk9JDpeMF7RP0CIOtlAPotKIaPoY1W3eMIi/0riOt5vTFsB8pxhxAVy0cfGX\niHukdrAkAJixTgkyS7wzk22xOeXVnRIzAMGK5xHMDw/HRQGTrUGfIXHENV3u+3Ae\nL5/ZoQwyZTixmQNzAgMBAAGjggE5MIIBNTAdBgNVHQ4EFgQUZfMKQXqtC5UJGFrZ\ngZE1nmlx+t8wggEEBgNVHSMEgfwwgfmAFGXzCkF6rQuVCRha2YGRNZ5pcfrfoYHV\npIHSMIHPMQswCQYDVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJy\naWRnZTEuMCwGA1UEChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5v\nbG9neTEZMBcGA1UECxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWRE\nQiBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkq\nhkiG9w0BCQEWC2ppc0BtaXQuZWR1ggkAwt+tFYhoctswDAYDVR0TBAUwAwEB/zAN\nBgkqhkiG9w0BAQsFAAOCAQEAIkKr3eIvwZO6a1Jsh3qXwveVnrqwxYvLw2IhTwNT\n/P6C5jbRnzUuDuzg5sEIpbBo/Bp3qIp7G5cdVOkIrqO7uCp6Kyc7d9lPsEe/cbF4\naNwNmdWroRN1y0tuMU6+z7frd5pOeAZP9E/DM/0Uaz4yVzwnlvZUttaLymyMhH54\nisGQKbAqHDFtKZvb6DxsHzrO2YgeaBAtjeVhPWiv8BhzbOo9+hhZvYHYtoM2W+Ze\nDHuvv0v+qouphftDKVBp16N8Pk5WgabTXzV6VcNee92iwbWYDEv06+S3AF/q2TBe\nxxXtAa5ywbp6IRF37QuQChcYnOx7zIylYI1PIENfQFC2BA==\n-----END CERTIFICATE-----\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v4

    .line 434
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    .line 435
    .local v4, "mitca":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 436
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "-----BEGIN CERTIFICATE-----\nMIIFazCCA1OgAwIBAgIRAIIQz7DSQONZRGPgu2OCiwAwDQYJKoZIhvcNAQELBQAw\nTzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh\ncmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwHhcNMTUwNjA0MTEwNDM4\nWhcNMzUwNjA0MTEwNDM4WjBPMQswCQYDVQQGEwJVUzEpMCcGA1UEChMgSW50ZXJu\nZXQgU2VjdXJpdHkgUmVzZWFyY2ggR3JvdXAxFTATBgNVBAMTDElTUkcgUm9vdCBY\nMTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAK3oJHP0FDfzm54rVygc\nh77ct984kIxuPOZXoHj3dcKi/vVqbvYATyjb3miGbESTtrFj/RQSa78f0uoxmyF+\n0TM8ukj13Xnfs7j/EvEhmkvBioZxaUpmZmyPfjxwv60pIgbz5MDmgK7iS4+3mX6U\nA5/TR5d8mUgjU+g4rk8Kb4Mu0UlXjIB0ttov0DiNewNwIRt18jA8+o+u3dpjq+sW\nT8KOEUt+zwvo/7V3LvSye0rgTBIlDHCNAymg4VMk7BPZ7hm/ELNKjD+Jo2FR3qyH\nB5T0Y3HsLuJvW5iB4YlcNHlsdu87kGJ55tukmi8mxdAQ4Q7e2RCOFvu396j3x+UC\nB5iPNgiV5+I3lg02dZ77DnKxHZu8A/lJBdiB3QW0KtZB6awBdpUKD9jf1b0SHzUv\nKBds0pjBqAlkd25HN7rOrFleaJ1/ctaJxQZBKT5ZPt0m9STJEadao0xAH0ahmbWn\nOlFuhjuefXKnEgV4We0+UXgVCwOPjdAvBbI+e0ocS3MFEvzG6uBQE3xDk3SzynTn\njh8BCNAw1FtxNrQHusEwMFxIt4I7mKZ9YIqioymCzLq9gwQbooMDQaHWBfEbwrbw\nqHyGO0aoSCqI3Haadr8faqU9GY/rOPNk3sgrDQoo//fb4hVC1CLQJ13hef4Y53CI\nrU7m2Ys6xt0nUW7/vGT1M0NPAgMBAAGjQjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNV\nHRMBAf8EBTADAQH/MB0GA1UdDgQWBBR5tFnme7bl5AFzgAiIyBpY9umbbjANBgkq\nhkiG9w0BAQsFAAOCAgEAVR9YqbyyqFDQDLHYGmkgJykIrGF1XIpu+ILlaS/V9lZL\nubhzEFnTIZd+50xx+7LSYK05qAvqFyFWhfFQDlnrzuBZ6brJFe+GnY+EgPbk6ZGQ\n3BebYhtF8GaV0nxvwuo77x/Py9auJ/GpsMiu/X1+mvoiBOv/2X/qkSsisRcOj/KK\nNFtY2PwByVS5uCbMiogziUwthDyC3+6WVwW6LLv3xLfHTjuCvjHIInNzktHCgKQ5\nORAzI4JMPJ+GslWYHb4phowim57iaztXOoJwTdwJx4nLCgdNbOhdjsnvzqvHu7Ur\nTkXWStAmzOVyyghqpZXjFaH3pO3JLF+l+/+sKAIuvtd7u+Nxe5AW0wdeRlN8NwdC\njNPElpzVmbUq4JUagEiuTDkHzsxHpFKVK7q4+63SM1N95R1NbdWhscdCb+ZAJzVc\noyi3B43njTOQ5yOf+1CceWxG1bQVs5ZufpsMljq4Ui0/1lvh+wjChP4kqKOJ2qxq\n4RgqsahDYVvTH9w7jXbyLeiNdd8XM2w9U/t7y0Ff/9yi0GE44Za4rF2LN9d11TPA\nmRGunUHBcnWEvgJBQl9nJEiU0Zsnvgc/ubhPgXRR4Xq37Z0j4r7g1SgEEzwxA57d\nemyPxgcYxn/eR44/KJ4EBs+lVDR3veyJm+kXQ99b21/+jh5Xos1AnX5iItreGCc=\n-----END CERTIFICATE-----\n"

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v5

    .line 437
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 438
    .local v5, "isrg":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 445
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 446
    .local v6, "keyStore":Ljava/security/KeyStore;
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 448
    const/4 v8, 0x1

    .line 449
    .local v8, "count":I
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Translator;->getSystemCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 450
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "root"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13, v12}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 451
    nop

    .end local v12    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v8, v8, 0x1

    .line 449
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 457
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/Translator;
    :cond_1
    const-string v9, "comodo"

    invoke-virtual {v6, v9, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 458
    const-string v9, "inter"

    invoke-virtual {v6, v9, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 459
    const-string v9, "mitca"

    invoke-virtual {v6, v9, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 460
    const-string v9, "isrg"

    invoke-virtual {v6, v9, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 462
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 461
    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v9

    .line 463
    .local v9, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v9, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 473
    const-string v10, "TLS"

    invoke-static {v10}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v10

    .line 474
    .local v10, "ctx":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v9}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v11

    invoke-virtual {v10, v7, v11, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 475
    invoke-virtual {v10}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/Translator;->sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v1    # "caInput":Ljava/io/ByteArrayInputStream;
    .end local v2    # "ca":Ljava/security/cert/Certificate;
    .end local v3    # "inter":Ljava/security/cert/Certificate;
    .end local v4    # "mitca":Ljava/security/cert/Certificate;
    .end local v5    # "isrg":Ljava/security/cert/Certificate;
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .end local v8    # "count":I
    .end local v9    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v10    # "ctx":Ljavax/net/ssl/SSLContext;
    nop

    .line 481
    monitor-exit p0

    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "Translator"

    const-string v2, "Could not setup SSL Trust Store for Tranlate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Could Not setup SSL Trust Store for Translator: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 421
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static getResponseContent(Ljavax/net/ssl/HttpsURLConnection;Z)Ljava/lang/String;
    .locals 8
    .param p0, "connection"    # Ljavax/net/ssl/HttpsURLConnection;
    .param p1, "error"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 394
    const-string v0, "UTF-8"

    .line 397
    :cond_0
    if-eqz p1, :cond_1

    .line 398
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .local v1, "reader":Ljava/io/InputStreamReader;
    goto :goto_0

    .line 400
    .end local v1    # "reader":Ljava/io/InputStreamReader;
    :cond_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 403
    .restart local v1    # "reader":Ljava/io/InputStreamReader;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v2

    .line 404
    .local v2, "contentLength":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1

    .line 406
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    nop

    .line 407
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0x400

    new-array v5, v5, [C

    .line 409
    .local v5, "buf":[C
    :goto_2
    invoke-virtual {v1, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    move v7, v6

    .local v7, "read":I
    if-eq v6, v3, :cond_3

    .line 410
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 412
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 412
    return-object v3

    .line 414
    .end local v2    # "contentLength":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "buf":[C
    .end local v7    # "read":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 415
    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method private getSystemCertificates()[Ljava/security/cert/X509Certificate;
    .locals 4

    .line 490
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 491
    .local v1, "otmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 492
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 493
    .local v2, "otm":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v2}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 494
    .end local v1    # "otmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "otm":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v1

    .line 495
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Translator"

    const-string v3, "Getting System Certificates"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method private performRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "languageToTranslateTo"    # Ljava/lang/String;
    .param p2, "textToTranslate"    # Ljava/lang/String;

    .line 287
    move-object/from16 v1, p0

    const-string v2, "400"

    const/4 v3, 0x0

    .line 288
    .local v3, "connection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Translator;->ensureSslSockFactory()V

    .line 290
    const/4 v4, 0x1

    :try_start_0
    const-string v0, "-"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v5, p1

    :try_start_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 291
    .local v6, "languages":[Ljava/lang/String;
    array-length v0, v6

    const/4 v7, 0x2

    if-le v0, v7, :cond_0

    .line 292
    const-string v0, ""

    invoke-virtual {v1, v2, v0}, Lcom/google/appinventor/components/runtime/Translator;->GotTranslation(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void

    .line 295
    :cond_0
    const-string v0, "auto"

    .line 296
    .local v0, "srcLanguage":Ljava/lang/String;
    move-object/from16 v8, p1

    .line 297
    .local v8, "targetLanguage":Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x0

    if-ne v9, v7, :cond_1

    .line 298
    aget-object v7, v6, v10

    move-object v0, v7

    .line 299
    aget-object v7, v6, v4

    move-object v8, v7

    move-object v7, v0

    goto :goto_0

    .line 297
    :cond_1
    move-object v7, v0

    .line 302
    .end local v0    # "srcLanguage":Ljava/lang/String;
    .local v7, "srcLanguage":Ljava/lang/String;
    :goto_0
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Translator;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/Base58Util;->decode(Ljava/lang/String;)[B

    move-result-object v0

    move-object v9, v0

    .line 303
    .local v9, "decodedToken":[B
    invoke-static {v9}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->parseFrom([B)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    move-object v11, v0

    .line 304
    .local v11, "token":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0, v11}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setToken(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    move-object/from16 v12, p2

    :try_start_2
    invoke-virtual {v0, v12}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setTotranslate(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setSourcelanguage(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0, v8}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setTargetlanguage(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    move-object v13, v0

    .line 310
    .local v13, "request":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    new-instance v0, Ljava/net/URL;

    const-string v14, "https://tr.appinventor.mit.edu/tr/v1"

    invoke-direct {v0, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 311
    .local v14, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v0

    .line 312
    if-eqz v3, :cond_3

    .line 314
    :try_start_3
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Translator;->sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 315
    const-string v0, "POST"

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 317
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->writeTo(Ljava/io/OutputStream;)V

    .line 318
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    .line 319
    .local v0, "responseCode":I
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-static {v15}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v15

    .line 321
    .local v15, "response":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_2

    .line 322
    invoke-virtual {v15}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getTranslated()Ljava/lang/String;

    move-result-object v4

    .local v4, "returnText":Ljava/lang/String;
    goto :goto_1

    .line 324
    .end local v4    # "returnText":Ljava/lang/String;
    :cond_2
    invoke-static {v3, v10}, Lcom/google/appinventor/components/runtime/Translator;->getResponseContent(Ljavax/net/ssl/HttpsURLConnection;Z)Ljava/lang/String;

    move-result-object v4

    .line 326
    .restart local v4    # "returnText":Ljava/lang/String;
    :goto_1
    move-object v10, v4

    .line 329
    .local v10, "translationOrError":Ljava/lang/String;
    move-object/from16 v16, v4

    .end local v4    # "returnText":Ljava/lang/String;
    .local v16, "returnText":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v10}, Lcom/google/appinventor/components/runtime/Translator;->GotTranslation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    .end local v0    # "responseCode":I
    .end local v10    # "translationOrError":Ljava/lang/String;
    .end local v15    # "response":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .end local v16    # "returnText":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 332
    goto :goto_2

    .line 331
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 332
    nop

    .end local v3    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local p1    # "languageToTranslateTo":Ljava/lang/String;
    .end local p2    # "textToTranslate":Ljava/lang/String;
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 347
    .end local v6    # "languages":[Ljava/lang/String;
    .end local v7    # "srcLanguage":Ljava/lang/String;
    .end local v8    # "targetLanguage":Ljava/lang/String;
    .end local v9    # "decodedToken":[B
    .end local v11    # "token":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .end local v13    # "request":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .end local v14    # "url":Ljava/net/URL;
    .restart local v3    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local p1    # "languageToTranslateTo":Ljava/lang/String;
    .restart local p2    # "textToTranslate":Ljava/lang/String;
    :cond_3
    :goto_2
    goto :goto_6

    .line 334
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v5, p1

    :goto_3
    move-object/from16 v12, p2

    :goto_4
    move-object v4, v0

    .line 335
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    instance-of v0, v4, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 339
    const/4 v2, 0x1

    :try_start_5
    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/Translator;->getResponseContent(Ljavax/net/ssl/HttpsURLConnection;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 342
    .local v0, "returnText":Ljava/lang/String;
    goto :goto_5

    .line 340
    .end local v0    # "returnText":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 341
    .local v0, "ee":Ljava/io/IOException;
    const-string v2, "Error Fetching Translation"

    move-object v0, v2

    .line 343
    .local v0, "returnText":Ljava/lang/String;
    :goto_5
    const-string v2, "404"

    invoke-virtual {v1, v2, v0}, Lcom/google/appinventor/components/runtime/Translator;->GotTranslation(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v0    # "returnText":Ljava/lang/String;
    goto :goto_6

    .line 345
    :cond_4
    const-string v0, "Error Fetching Translation"

    invoke-virtual {v1, v2, v0}, Lcom/google/appinventor/components/runtime/Translator;->GotTranslation(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method


# virtual methods
.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "apiKey"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->ADVANCED:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The API Key to use. MIT App Inventor will automatically fill this value in. You should not need to change it."
        userVisible = true
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Translator;->apiKey:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public GotTranslation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "responseCode"    # Ljava/lang/String;
    .param p2, "translation"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the Translate service returns the translated text. This event also provides a response code for error handling. If the responseCode is not 200, then something went wrong with the call, and the translation will not be available."
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Translator;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/Translator$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Translator$2;-><init>(Lcom/google/appinventor/components/runtime/Translator;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method

.method public RequestTranslation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "languageToTranslateTo"    # Ljava/lang/String;
    .param p2, "textToTranslate"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "By providing a target language to translate to (for instance, \'es\' for Spanish, \'en\' for English, or \'ru\' for Russian), and a word or sentence to translate, this method will request a translation.\nOnce the text is translated by the external service, the event GotTranslation will be executed.\nNote: Translate will attempt to detect the source language. You can also specify prepending it to the language translation. I.e., es-ru will specify Spanish to Russian translation."
    .end annotation

    .line 265
    new-instance v0, Lcom/google/appinventor/components/runtime/Translator$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Translator$1;-><init>(Lcom/google/appinventor/components/runtime/Translator;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method
