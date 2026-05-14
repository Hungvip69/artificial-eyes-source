.class public final Lcom/google/appinventor/components/runtime/ChatBot;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ChatBot.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Non-visible component for communicating with an AI chat bot. This component currently communicates with a proxy run by MIT which in turn uses OpenAI\'s ChatGPT API. By default the MIT proxy server will be used, however you can setup and run your own server. Set the ServiceURL property to access your own server. This component is considered experimental."
    iconName = "images/chatbot.png"
    nonVisible = true
    version = 0x5
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
.field private static final CHATBOT_SERVICE_URL:Ljava/lang/String;

.field private static final COMODO_ROOT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

.field private static final COMODO_USRTRUST:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

.field private static final DEBUG:Z = false

.field private static final ISRG_ROOT_X1:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFazCCA1OgAwIBAgIRAIIQz7DSQONZRGPgu2OCiwAwDQYJKoZIhvcNAQELBQAw\nTzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh\ncmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwHhcNMTUwNjA0MTEwNDM4\nWhcNMzUwNjA0MTEwNDM4WjBPMQswCQYDVQQGEwJVUzEpMCcGA1UEChMgSW50ZXJu\nZXQgU2VjdXJpdHkgUmVzZWFyY2ggR3JvdXAxFTATBgNVBAMTDElTUkcgUm9vdCBY\nMTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAK3oJHP0FDfzm54rVygc\nh77ct984kIxuPOZXoHj3dcKi/vVqbvYATyjb3miGbESTtrFj/RQSa78f0uoxmyF+\n0TM8ukj13Xnfs7j/EvEhmkvBioZxaUpmZmyPfjxwv60pIgbz5MDmgK7iS4+3mX6U\nA5/TR5d8mUgjU+g4rk8Kb4Mu0UlXjIB0ttov0DiNewNwIRt18jA8+o+u3dpjq+sW\nT8KOEUt+zwvo/7V3LvSye0rgTBIlDHCNAymg4VMk7BPZ7hm/ELNKjD+Jo2FR3qyH\nB5T0Y3HsLuJvW5iB4YlcNHlsdu87kGJ55tukmi8mxdAQ4Q7e2RCOFvu396j3x+UC\nB5iPNgiV5+I3lg02dZ77DnKxHZu8A/lJBdiB3QW0KtZB6awBdpUKD9jf1b0SHzUv\nKBds0pjBqAlkd25HN7rOrFleaJ1/ctaJxQZBKT5ZPt0m9STJEadao0xAH0ahmbWn\nOlFuhjuefXKnEgV4We0+UXgVCwOPjdAvBbI+e0ocS3MFEvzG6uBQE3xDk3SzynTn\njh8BCNAw1FtxNrQHusEwMFxIt4I7mKZ9YIqioymCzLq9gwQbooMDQaHWBfEbwrbw\nqHyGO0aoSCqI3Haadr8faqU9GY/rOPNk3sgrDQoo//fb4hVC1CLQJ13hef4Y53CI\nrU7m2Ys6xt0nUW7/vGT1M0NPAgMBAAGjQjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNV\nHRMBAf8EBTADAQH/MB0GA1UdDgQWBBR5tFnme7bl5AFzgAiIyBpY9umbbjANBgkq\nhkiG9w0BAQsFAAOCAgEAVR9YqbyyqFDQDLHYGmkgJykIrGF1XIpu+ILlaS/V9lZL\nubhzEFnTIZd+50xx+7LSYK05qAvqFyFWhfFQDlnrzuBZ6brJFe+GnY+EgPbk6ZGQ\n3BebYhtF8GaV0nxvwuo77x/Py9auJ/GpsMiu/X1+mvoiBOv/2X/qkSsisRcOj/KK\nNFtY2PwByVS5uCbMiogziUwthDyC3+6WVwW6LLv3xLfHTjuCvjHIInNzktHCgKQ5\nORAzI4JMPJ+GslWYHb4phowim57iaztXOoJwTdwJx4nLCgdNbOhdjsnvzqvHu7Ur\nTkXWStAmzOVyyghqpZXjFaH3pO3JLF+l+/+sKAIuvtd7u+Nxe5AW0wdeRlN8NwdC\njNPElpzVmbUq4JUagEiuTDkHzsxHpFKVK7q4+63SM1N95R1NbdWhscdCb+ZAJzVc\noyi3B43njTOQ5yOf+1CceWxG1bQVs5ZufpsMljq4Ui0/1lvh+wjChP4kqKOJ2qxq\n4RgqsahDYVvTH9w7jXbyLeiNdd8XM2w9U/t7y0Ff/9yi0GE44Za4rF2LN9d11TPA\nmRGunUHBcnWEvgJBQl9nJEiU0Zsnvgc/ubhPgXRR4Xq37Z0j4r7g1SgEEzwxA57d\nemyPxgcYxn/eR44/KJ4EBs+lVDR3veyJm+kXQ99b21/+jh5Xos1AnX5iItreGCc=\n-----END CERTIFICATE-----\n"

.field private static final LOG_TAG:Ljava/lang/String; = "ChatBot"

.field private static final MIT_CA:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFXjCCBEagAwIBAgIJAMLfrRWIaHLbMA0GCSqGSIb3DQEBCwUAMIHPMQswCQYD\nVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJyaWRnZTEuMCwGA1UE\nChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neTEZMBcGA1UE\nCxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWREQiBDZXJ0aWZpY2F0\nZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkqhkiG9w0BCQEWC2pp\nc0BtaXQuZWR1MB4XDTE3MTIyMjIyMzkyOVoXDTI3MTIyMDIyMzkyOVowgc8xCzAJ\nBgNVBAYTAlVTMQswCQYDVQQIEwJNQTESMBAGA1UEBxMJQ2FtYnJpZGdlMS4wLAYD\nVQQKEyVNYXNzYWNodXNldHRzIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD\nVQQLExBNSVQgQXBwIEludmVudG9yMSYwJAYDVQQDEx1DbG91ZERCIENlcnRpZmlj\nYXRlIEF1dGhvcml0eTEQMA4GA1UEKRMHRWFzeVJTQTEaMBgGCSqGSIb3DQEJARYL\namlzQG1pdC5lZHUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHzI3D\nFobNDv2HTWlDdedmbxZIJYSqWlzdRJC3oVJgCubdAs46WJRqUxDRWft9UpYGMKkw\nmYN8mdPby2m5OJagdVIZgnguB71zIQkC8yMzd94FC3gldX5m7R014D/0fkpzvsSt\n6fsNectJT0k7gPELOH6t4u6AUbvIsEX0nNyRWsmA/ucXCsDBwXyBJxfOKIQ9tDI4\n/WfcKk9JDpeMF7RP0CIOtlAPotKIaPoY1W3eMIi/0riOt5vTFsB8pxhxAVy0cfGX\niHukdrAkAJixTgkyS7wzk22xOeXVnRIzAMGK5xHMDw/HRQGTrUGfIXHENV3u+3Ae\nL5/ZoQwyZTixmQNzAgMBAAGjggE5MIIBNTAdBgNVHQ4EFgQUZfMKQXqtC5UJGFrZ\ngZE1nmlx+t8wggEEBgNVHSMEgfwwgfmAFGXzCkF6rQuVCRha2YGRNZ5pcfrfoYHV\npIHSMIHPMQswCQYDVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJy\naWRnZTEuMCwGA1UEChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5v\nbG9neTEZMBcGA1UECxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWRE\nQiBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkq\nhkiG9w0BCQEWC2ppc0BtaXQuZWR1ggkAwt+tFYhoctswDAYDVR0TBAUwAwEB/zAN\nBgkqhkiG9w0BAQsFAAOCAQEAIkKr3eIvwZO6a1Jsh3qXwveVnrqwxYvLw2IhTwNT\n/P6C5jbRnzUuDuzg5sEIpbBo/Bp3qIp7G5cdVOkIrqO7uCp6Kyc7d9lPsEe/cbF4\naNwNmdWroRN1y0tuMU6+z7frd5pOeAZP9E/DM/0Uaz4yVzwnlvZUttaLymyMhH54\nisGQKbAqHDFtKZvb6DxsHzrO2YgeaBAtjeVhPWiv8BhzbOo9+hhZvYHYtoM2W+Ze\nDHuvv0v+qouphftDKVBp16N8Pk5WgabTXzV6VcNee92iwbWYDEv06+S3AF/q2TBe\nxxXtAa5ywbp6IRF37QuQChcYnOx7zIylYI1PIENfQFC2BA==\n-----END CERTIFICATE-----\n"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private serviceURL:Ljava/lang/String;

.field private size:I

.field private sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private system:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetuuid(Lcom/google/appinventor/components/runtime/ChatBot;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mperformRequest(Lcom/google/appinventor/components/runtime/ChatBot;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/ChatBot;->performRequest(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 230
    invoke-static {}, Lcom/google/appinventor/common/version/AppInventorFeatures;->chatBotHost()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chat/v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ChatBot;->CHATBOT_SERVICE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 251
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 235
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->model:Ljava/lang/String;

    .line 236
    const-string v1, "chatgpt"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ChatBot;->provider:Ljava/lang/String;

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ChatBot;->sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 239
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->system:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->uuid:Ljava/lang/String;

    .line 242
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->size:I

    .line 243
    sget-object v0, Lcom/google/appinventor/components/runtime/ChatBot;->CHATBOT_SERVICE_URL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->serviceURL:Ljava/lang/String;

    .line 252
    return-void
.end method

.method private declared-synchronized ensureSslSockFactory()V
    .locals 15

    monitor-enter p0

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 650
    monitor-exit p0

    return-void

    .line 653
    :cond_0
    :try_start_1
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 654
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 655
    .local v1, "caInput":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 656
    .local v2, "ca":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 657
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v3

    .line 658
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 659
    .local v3, "inter":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 660
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "-----BEGIN CERTIFICATE-----\nMIIFXjCCBEagAwIBAgIJAMLfrRWIaHLbMA0GCSqGSIb3DQEBCwUAMIHPMQswCQYD\nVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJyaWRnZTEuMCwGA1UE\nChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neTEZMBcGA1UE\nCxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWREQiBDZXJ0aWZpY2F0\nZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkqhkiG9w0BCQEWC2pp\nc0BtaXQuZWR1MB4XDTE3MTIyMjIyMzkyOVoXDTI3MTIyMDIyMzkyOVowgc8xCzAJ\nBgNVBAYTAlVTMQswCQYDVQQIEwJNQTESMBAGA1UEBxMJQ2FtYnJpZGdlMS4wLAYD\nVQQKEyVNYXNzYWNodXNldHRzIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD\nVQQLExBNSVQgQXBwIEludmVudG9yMSYwJAYDVQQDEx1DbG91ZERCIENlcnRpZmlj\nYXRlIEF1dGhvcml0eTEQMA4GA1UEKRMHRWFzeVJTQTEaMBgGCSqGSIb3DQEJARYL\namlzQG1pdC5lZHUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHzI3D\nFobNDv2HTWlDdedmbxZIJYSqWlzdRJC3oVJgCubdAs46WJRqUxDRWft9UpYGMKkw\nmYN8mdPby2m5OJagdVIZgnguB71zIQkC8yMzd94FC3gldX5m7R014D/0fkpzvsSt\n6fsNectJT0k7gPELOH6t4u6AUbvIsEX0nNyRWsmA/ucXCsDBwXyBJxfOKIQ9tDI4\n/WfcKk9JDpeMF7RP0CIOtlAPotKIaPoY1W3eMIi/0riOt5vTFsB8pxhxAVy0cfGX\niHukdrAkAJixTgkyS7wzk22xOeXVnRIzAMGK5xHMDw/HRQGTrUGfIXHENV3u+3Ae\nL5/ZoQwyZTixmQNzAgMBAAGjggE5MIIBNTAdBgNVHQ4EFgQUZfMKQXqtC5UJGFrZ\ngZE1nmlx+t8wggEEBgNVHSMEgfwwgfmAFGXzCkF6rQuVCRha2YGRNZ5pcfrfoYHV\npIHSMIHPMQswCQYDVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJy\naWRnZTEuMCwGA1UEChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5v\nbG9neTEZMBcGA1UECxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWRE\nQiBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkq\nhkiG9w0BCQEWC2ppc0BtaXQuZWR1ggkAwt+tFYhoctswDAYDVR0TBAUwAwEB/zAN\nBgkqhkiG9w0BAQsFAAOCAQEAIkKr3eIvwZO6a1Jsh3qXwveVnrqwxYvLw2IhTwNT\n/P6C5jbRnzUuDuzg5sEIpbBo/Bp3qIp7G5cdVOkIrqO7uCp6Kyc7d9lPsEe/cbF4\naNwNmdWroRN1y0tuMU6+z7frd5pOeAZP9E/DM/0Uaz4yVzwnlvZUttaLymyMhH54\nisGQKbAqHDFtKZvb6DxsHzrO2YgeaBAtjeVhPWiv8BhzbOo9+hhZvYHYtoM2W+Ze\nDHuvv0v+qouphftDKVBp16N8Pk5WgabTXzV6VcNee92iwbWYDEv06+S3AF/q2TBe\nxxXtAa5ywbp6IRF37QuQChcYnOx7zIylYI1PIENfQFC2BA==\n-----END CERTIFICATE-----\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v4

    .line 661
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    .line 662
    .local v4, "mitca":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 663
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "-----BEGIN CERTIFICATE-----\nMIIFazCCA1OgAwIBAgIRAIIQz7DSQONZRGPgu2OCiwAwDQYJKoZIhvcNAQELBQAw\nTzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh\ncmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwHhcNMTUwNjA0MTEwNDM4\nWhcNMzUwNjA0MTEwNDM4WjBPMQswCQYDVQQGEwJVUzEpMCcGA1UEChMgSW50ZXJu\nZXQgU2VjdXJpdHkgUmVzZWFyY2ggR3JvdXAxFTATBgNVBAMTDElTUkcgUm9vdCBY\nMTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAK3oJHP0FDfzm54rVygc\nh77ct984kIxuPOZXoHj3dcKi/vVqbvYATyjb3miGbESTtrFj/RQSa78f0uoxmyF+\n0TM8ukj13Xnfs7j/EvEhmkvBioZxaUpmZmyPfjxwv60pIgbz5MDmgK7iS4+3mX6U\nA5/TR5d8mUgjU+g4rk8Kb4Mu0UlXjIB0ttov0DiNewNwIRt18jA8+o+u3dpjq+sW\nT8KOEUt+zwvo/7V3LvSye0rgTBIlDHCNAymg4VMk7BPZ7hm/ELNKjD+Jo2FR3qyH\nB5T0Y3HsLuJvW5iB4YlcNHlsdu87kGJ55tukmi8mxdAQ4Q7e2RCOFvu396j3x+UC\nB5iPNgiV5+I3lg02dZ77DnKxHZu8A/lJBdiB3QW0KtZB6awBdpUKD9jf1b0SHzUv\nKBds0pjBqAlkd25HN7rOrFleaJ1/ctaJxQZBKT5ZPt0m9STJEadao0xAH0ahmbWn\nOlFuhjuefXKnEgV4We0+UXgVCwOPjdAvBbI+e0ocS3MFEvzG6uBQE3xDk3SzynTn\njh8BCNAw1FtxNrQHusEwMFxIt4I7mKZ9YIqioymCzLq9gwQbooMDQaHWBfEbwrbw\nqHyGO0aoSCqI3Haadr8faqU9GY/rOPNk3sgrDQoo//fb4hVC1CLQJ13hef4Y53CI\nrU7m2Ys6xt0nUW7/vGT1M0NPAgMBAAGjQjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNV\nHRMBAf8EBTADAQH/MB0GA1UdDgQWBBR5tFnme7bl5AFzgAiIyBpY9umbbjANBgkq\nhkiG9w0BAQsFAAOCAgEAVR9YqbyyqFDQDLHYGmkgJykIrGF1XIpu+ILlaS/V9lZL\nubhzEFnTIZd+50xx+7LSYK05qAvqFyFWhfFQDlnrzuBZ6brJFe+GnY+EgPbk6ZGQ\n3BebYhtF8GaV0nxvwuo77x/Py9auJ/GpsMiu/X1+mvoiBOv/2X/qkSsisRcOj/KK\nNFtY2PwByVS5uCbMiogziUwthDyC3+6WVwW6LLv3xLfHTjuCvjHIInNzktHCgKQ5\nORAzI4JMPJ+GslWYHb4phowim57iaztXOoJwTdwJx4nLCgdNbOhdjsnvzqvHu7Ur\nTkXWStAmzOVyyghqpZXjFaH3pO3JLF+l+/+sKAIuvtd7u+Nxe5AW0wdeRlN8NwdC\njNPElpzVmbUq4JUagEiuTDkHzsxHpFKVK7q4+63SM1N95R1NbdWhscdCb+ZAJzVc\noyi3B43njTOQ5yOf+1CceWxG1bQVs5ZufpsMljq4Ui0/1lvh+wjChP4kqKOJ2qxq\n4RgqsahDYVvTH9w7jXbyLeiNdd8XM2w9U/t7y0Ff/9yi0GE44Za4rF2LN9d11TPA\nmRGunUHBcnWEvgJBQl9nJEiU0Zsnvgc/ubhPgXRR4Xq37Z0j4r7g1SgEEzwxA57d\nemyPxgcYxn/eR44/KJ4EBs+lVDR3veyJm+kXQ99b21/+jh5Xos1AnX5iItreGCc=\n-----END CERTIFICATE-----\n"

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v5

    .line 664
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 665
    .local v5, "isrg":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 672
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 673
    .local v6, "keyStore":Ljava/security/KeyStore;
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 675
    const/4 v8, 0x1

    .line 676
    .local v8, "count":I
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ChatBot;->getSystemCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 677
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

    .line 678
    nop

    .end local v12    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v8, v8, 0x1

    .line 676
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 684
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/ChatBot;
    :cond_1
    const-string v9, "comodo"

    invoke-virtual {v6, v9, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 685
    const-string v9, "inter"

    invoke-virtual {v6, v9, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 686
    const-string v9, "mitca"

    invoke-virtual {v6, v9, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 687
    const-string v9, "isrg"

    invoke-virtual {v6, v9, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 689
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 688
    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v9

    .line 690
    .local v9, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v9, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 700
    const-string v10, "TLS"

    invoke-static {v10}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v10

    .line 701
    .local v10, "ctx":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v9}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v11

    invoke-virtual {v10, v7, v11, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 702
    invoke-virtual {v10}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ChatBot;->sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
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

    .line 708
    monitor-exit p0

    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "ChatBot"

    const-string v2, "Could not setup SSL Trust Store for ChatBot"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 705
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Could Not setup SSL Trust Store for ChatBot: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 648
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

    .line 575
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 577
    const-string v0, "UTF-8"

    .line 580
    :cond_0
    if-eqz p1, :cond_1

    .line 581
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .local v1, "reader":Ljava/io/InputStreamReader;
    goto :goto_0

    .line 583
    .end local v1    # "reader":Ljava/io/InputStreamReader;
    :cond_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 586
    .restart local v1    # "reader":Ljava/io/InputStreamReader;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v2

    .line 587
    .local v2, "contentLength":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1

    .line 589
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    nop

    .line 590
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0x400

    new-array v5, v5, [C

    .line 592
    .local v5, "buf":[C
    :goto_2
    invoke-virtual {v1, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    move v7, v6

    .local v7, "read":I
    if-eq v6, v3, :cond_3

    .line 593
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 595
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 595
    return-object v3

    .line 597
    .end local v2    # "contentLength":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "buf":[C
    .end local v7    # "read":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 598
    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method private getSystemCertificates()[Ljava/security/cert/X509Certificate;
    .locals 4

    .line 757
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 758
    .local v1, "otmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 759
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 760
    .local v2, "otm":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v2}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 761
    .end local v1    # "otmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "otm":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v1

    .line 762
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ChatBot"

    const-string v3, "Getting System Certificates"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 763
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method private loadImage(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadImage source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChatBot"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/Canvas;

    if-eqz v1, :cond_0

    .line 628
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 629
    :cond_0
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/Image;

    if-eqz v1, :cond_1

    .line 630
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/Image;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Image;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 632
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, "sourceStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChatBot;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 635
    .end local v1    # "sourceStr":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_3

    .line 636
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ChatBot;->size:I

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ChatBot;->size:I

    if-ne v1, v2, :cond_2

    .line 637
    return-object v0

    .line 639
    :cond_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/ChatBot;->size:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/ChatBot;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 642
    :cond_3
    return-object v0
.end method

.method private parseResponse(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;Z)V
    .locals 5
    .param p1, "response"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .param p2, "doImage"    # Z

    .line 720
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getAnswer()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "responseText":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getOutputimage()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    .line 725
    .local v1, "responseImage":[B
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 727
    :try_start_0
    const-string v2, "ChatBotImage"

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getOutputFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 728
    .local v2, "outFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 731
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 733
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 734
    nop

    .line 735
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 736
    .local v4, "responseImageUri":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Lcom/google/appinventor/components/runtime/ChatBot;->GotResponseWithImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    return-void

    .line 733
    .end local v4    # "responseImageUri":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 734
    nop

    .end local v0    # "responseText":Ljava/lang/String;
    .end local v1    # "responseImage":[B
    .end local p1    # "response":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .end local p2    # "doImage":Z
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 738
    .end local v2    # "outFile":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "responseText":Ljava/lang/String;
    .restart local v1    # "responseImage":[B
    .restart local p1    # "response":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .restart local p2    # "doImage":Z
    :catch_0
    move-exception v2

    .line 739
    .local v2, "e":Ljava/io/IOException;
    const/16 v3, 0x837

    const-string v4, "IO Error Writing Image File"

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/ChatBot;->ErrorOccurred(ILjava/lang/String;)V

    .line 740
    return-void

    .line 742
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    if-eqz p2, :cond_1

    .line 744
    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/ChatBot;->GotResponseWithImage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ChatBot;->GotResponse(Ljava/lang/String;)V

    .line 748
    :goto_0
    return-void
.end method

.method private performRequest(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 17
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "question"    # Ljava/lang/String;
    .param p3, "image"    # Landroid/graphics/Bitmap;
    .param p4, "doImage"    # Z

    .line 293
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    const/4 v0, 0x0

    .line 294
    .local v0, "imageString":Lcom/google/protobuf/ByteString;
    if-eqz v3, :cond_0

    .line 295
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 296
    .local v5, "imageBuffer":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v3, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 297
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 294
    .end local v5    # "imageBuffer":Ljava/io/ByteArrayOutputStream;
    :cond_0
    move-object v5, v0

    .line 300
    .end local v0    # "imageString":Lcom/google/protobuf/ByteString;
    .local v5, "imageString":Lcom/google/protobuf/ByteString;
    :goto_0
    const/4 v6, 0x0

    .line 301
    .local v6, "connection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/ChatBot;->ensureSslSockFactory()V

    .line 303
    const/4 v7, -0x1

    .line 305
    .local v7, "responseCode":I
    const/4 v8, 0x1

    :try_start_0
    const-string v0, "ChatBot"

    iget-object v9, v1, Lcom/google/appinventor/components/runtime/ChatBot;->apiKey:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "performRequest: apiKey = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/ChatBot;->token:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v9, ""

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/ChatBot;->token:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/google/appinventor/components/runtime/ChatBot;->token:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v10, "%"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/ChatBot;->token:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .local v0, "iToken":Ljava/lang/String;
    goto :goto_1

    .line 309
    .end local v0    # "iToken":Ljava/lang/String;
    :cond_1
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/ChatBot;->token:Ljava/lang/String;

    move-object v10, v0

    .line 311
    .local v10, "iToken":Ljava/lang/String;
    :goto_1
    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/Base58Util;->decode(Ljava/lang/String;)[B

    move-result-object v0

    move-object v11, v0

    .line 312
    .local v11, "decodedToken":[B
    invoke-static {v11}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->parseFrom([B)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    move-object v12, v0

    .line 313
    .local v12, "token":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->newBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {v0, v12}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setToken(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setUuid(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setDoimage(Z)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    iget-object v13, v1, Lcom/google/appinventor/components/runtime/ChatBot;->provider:Ljava/lang/String;

    .line 317
    invoke-virtual {v0, v13}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setProvider(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 318
    move-object/from16 v13, p2

    :try_start_2
    invoke-virtual {v0, v13}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setQuestion(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    .line 319
    .local v0, "builder":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    iget-object v14, v1, Lcom/google/appinventor/components/runtime/ChatBot;->system:Ljava/lang/String;

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 320
    iget-object v14, v1, Lcom/google/appinventor/components/runtime/ChatBot;->system:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setSystem(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v14

    move-object v0, v14

    .line 322
    :cond_2
    iget-object v14, v1, Lcom/google/appinventor/components/runtime/ChatBot;->apiKey:Ljava/lang/String;

    if-eqz v14, :cond_3

    iget-object v14, v1, Lcom/google/appinventor/components/runtime/ChatBot;->apiKey:Ljava/lang/String;

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 323
    iget-object v9, v1, Lcom/google/appinventor/components/runtime/ChatBot;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setApikey(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v9

    move-object v0, v9

    goto :goto_2

    .line 325
    :cond_3
    move-object v9, v0

    .end local v0    # "builder":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .local v9, "builder":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    :goto_2
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/ChatBot;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 326
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/ChatBot;->model:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setModel(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 328
    :cond_4
    if-eqz v5, :cond_5

    .line 329
    invoke-virtual {v9, v5}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setInputimage(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 331
    :cond_5
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    move-object v14, v0

    .line 333
    .local v14, "request":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    new-instance v0, Ljava/net/URL;

    iget-object v15, v1, Lcom/google/appinventor/components/runtime/ChatBot;->serviceURL:Ljava/lang/String;

    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v15, v0

    .line 334
    .local v15, "url":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v0

    .line 335
    if-eqz v6, :cond_7

    .line 337
    :try_start_3
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/ChatBot;->sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 338
    const-string v0, "POST"

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v6, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 340
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->writeTo(Ljava/io/OutputStream;)V

    .line 341
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    move v7, v0

    .line 342
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    .line 343
    .local v0, "response":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_6

    .line 344
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getUuid()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/google/appinventor/components/runtime/ChatBot;->uuid:Ljava/lang/String;

    .line 345
    invoke-direct {v1, v0, v4}, Lcom/google/appinventor/components/runtime/ChatBot;->parseResponse(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;Z)V

    goto :goto_3

    .line 347
    :cond_6
    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/google/appinventor/components/runtime/ChatBot;->getResponseContent(Ljavax/net/ssl/HttpsURLConnection;Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v8, v16

    .line 348
    .local v8, "returnText":Ljava/lang/String;
    invoke-virtual {v1, v7, v8}, Lcom/google/appinventor/components/runtime/ChatBot;->ErrorOccurred(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    .end local v0    # "response":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .end local v8    # "returnText":Ljava/lang/String;
    :goto_3
    :try_start_4
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 352
    goto :goto_4

    .line 351
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 352
    nop

    .end local v5    # "imageString":Lcom/google/protobuf/ByteString;
    .end local v6    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v7    # "responseCode":I
    .end local p1    # "uuid":Ljava/lang/String;
    .end local p2    # "question":Ljava/lang/String;
    .end local p3    # "image":Landroid/graphics/Bitmap;
    .end local p4    # "doImage":Z
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 367
    .end local v9    # "builder":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .end local v11    # "decodedToken":[B
    .end local v12    # "token":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .end local v14    # "request":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .end local v15    # "url":Ljava/net/URL;
    .restart local v5    # "imageString":Lcom/google/protobuf/ByteString;
    .restart local v6    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v7    # "responseCode":I
    .restart local p1    # "uuid":Ljava/lang/String;
    .restart local p2    # "question":Ljava/lang/String;
    .restart local p3    # "image":Landroid/graphics/Bitmap;
    .restart local p4    # "doImage":Z
    :cond_7
    :goto_4
    goto :goto_7

    .line 354
    .end local v10    # "iToken":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v13, p2

    :goto_5
    move-object v8, v0

    .line 355
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    instance-of v0, v8, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_8

    if-eqz v6, :cond_8

    .line 359
    const/4 v9, 0x1

    :try_start_5
    invoke-static {v6, v9}, Lcom/google/appinventor/components/runtime/ChatBot;->getResponseContent(Ljavax/net/ssl/HttpsURLConnection;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 362
    .local v0, "returnText":Ljava/lang/String;
    goto :goto_6

    .line 360
    .end local v0    # "returnText":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 361
    .local v0, "ee":Ljava/io/IOException;
    const-string v9, "Error Fetching from ChatBot"

    move-object v0, v9

    .line 363
    .local v0, "returnText":Ljava/lang/String;
    :goto_6
    invoke-virtual {v1, v7, v0}, Lcom/google/appinventor/components/runtime/ChatBot;->ErrorOccurred(ILjava/lang/String;)V

    .line 364
    .end local v0    # "returnText":Ljava/lang/String;
    goto :goto_7

    .line 365
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error talking to ChatBot proxy: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/google/appinventor/components/runtime/ChatBot;->ErrorOccurred(ILjava/lang/String;)V

    .line 368
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_7
    return-void
.end method


# virtual methods
.method public ApiKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "apikey"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A ChatGPT API Key. If provided, it will be used instead of the embedded APIKEY in the ChatBot proxy server"
    .end annotation

    .line 480
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChatBot;->apiKey:Ljava/lang/String;

    .line 481
    return-void
.end method

.method public Converse(Ljava/lang/String;)V
    .locals 1
    .param p1, "question"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Ask a question of the Chat Bot. Successive calls will remember information from earlier in the conversation. Use the \"ResetConversation\" function to reset for a new conversation."
    .end annotation

    .line 265
    new-instance v0, Lcom/google/appinventor/components/runtime/ChatBot$1;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ChatBot$1;-><init>(Lcom/google/appinventor/components/runtime/ChatBot;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method

.method public ConverseWithImage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "question"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Ask a question of the Chat Bot using an Image. Successive calls will remember information from earlier in the conversation. Use the \"ResetConversation\" function to reset for a new conversation."
    .end annotation

    .line 375
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/ChatBot;->loadImage(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 376
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 377
    new-instance v1, Lcom/google/appinventor/components/runtime/ChatBot$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/appinventor/components/runtime/ChatBot$3;-><init>(Lcom/google/appinventor/components/runtime/ChatBot;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 394
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 384
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChatBot;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/ChatBot$4;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/ChatBot$4;-><init>(Lcom/google/appinventor/components/runtime/ChatBot;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 390
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    .end local p1    # "question":Ljava/lang/String;
    .end local p2    # "source":Ljava/lang/Object;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "question":Ljava/lang/String;
    .restart local p2    # "source":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ChatBot"

    const-string v2, "Unable to read image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public CreateImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create an Image. Note: Only Gemini is currently supported. Do not specify a model in order to get the most up-to-date model to use."
    .end annotation

    .line 278
    new-instance v0, Lcom/google/appinventor/components/runtime/ChatBot$2;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ChatBot$2;-><init>(Lcom/google/appinventor/components/runtime/ChatBot;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 284
    return-void
.end method

.method public ErrorOccurred(ILjava/lang/String;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "responseText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/ChatBot$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/ChatBot$7;-><init>(Lcom/google/appinventor/components/runtime/ChatBot;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 622
    return-void
.end method

.method public GotResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "responseText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event fired when the Chat Bot answers a question."
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/ChatBot$5;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/ChatBot$5;-><init>(Lcom/google/appinventor/components/runtime/ChatBot;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 410
    return-void
.end method

.method public GotResponseWithImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "responseText"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event fired when the Chat Bot answers a question, with an image."
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/ChatBot$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/ChatBot$6;-><init>(Lcom/google/appinventor/components/runtime/ChatBot;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 427
    return-void
.end method

.method public Model()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the name of the model to use. See https://appinv.us/chatbot for the current list of supported models. Leaving this blank will result in the default model set by the provider being used"
        userVisible = true
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->model:Ljava/lang/String;

    return-object v0
.end method

.method public Model(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/ProviderModel;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "chatbotmodel"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the name of the model to use. See https://appinv.us/chatbot for the current list of supported models. Leaving this blank will result in the default model set by the provider being used"
        userVisible = true
    .end annotation

    .line 533
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChatBot;->model:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public Provider()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the name of the provider to use. See https://appinv.us/chatbot for the current list of supported providers."
        userVisible = true
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public Provider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Provider;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "chatgpt"
        editorType = "chatbotprovider"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the name of the provider to use. See https://appinv.us/chatbot for the current list of supported providers."
        userVisible = true
    .end annotation

    .line 508
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChatBot;->provider:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public ResetConversation()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset the current conversation, Chat bot will forget any previous conversation when responding in the future."
    .end annotation

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->uuid:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public ServiceURL()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->serviceURL:Ljava/lang/String;

    sget-object v1, Lcom/google/appinventor/components/runtime/ChatBot;->CHATBOT_SERVICE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const-string v0, "DEFAULT"

    return-object v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->serviceURL:Ljava/lang/String;

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "DEFAULT"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->ADVANCED:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The ChatBot service URL to use. A setting of \"DEFAULT\" means that the MIT server will be used."
    .end annotation

    .line 560
    const-string v0, "DEFAULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    sget-object v0, Lcom/google/appinventor/components/runtime/ChatBot;->CHATBOT_SERVICE_URL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->serviceURL:Ljava/lang/String;

    goto :goto_0

    .line 563
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChatBot;->serviceURL:Ljava/lang/String;

    .line 565
    :goto_0
    return-void
.end method

.method public System()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The \"System\" value given to ChatGPT. It is used to set the tone of a conversation. For example: \"You are a funny person.\""
        userVisible = true
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot;->system:Ljava/lang/String;

    return-object v0
.end method

.method public System(Ljava/lang/String;)V
    .locals 0
    .param p1, "system"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The \"System\" value given to ChatGPT. It is used to set the tone of a conversation. For example: \"You are a funny person.\""
        userVisible = true
    .end annotation

    .line 448
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChatBot;->system:Ljava/lang/String;

    .line 449
    return-void
.end method

.method public Token(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->ADVANCED:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The MIT Access token to use. MIT App Inventor will automatically fill this value in. You should not need to change it."
        userVisible = true
    .end annotation

    .line 463
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChatBot;->token:Ljava/lang/String;

    .line 464
    return-void
.end method
