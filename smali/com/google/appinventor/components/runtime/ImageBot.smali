.class public Lcom/google/appinventor/components/runtime/ImageBot;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ImageBot.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x9
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    iconName = "images/paintpalette.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "protobuf-java-3.0.0.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ImageBot$ImageException;
    }
.end annotation


# static fields
.field private static final COMODO_ROOT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

.field private static final COMODO_USRTRUST:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

.field private static final DEBUG:Z = false

.field private static final IMAGEBOT_SERVICE_URL:Ljava/lang/String;

.field private static final ISRG_ROOT_X1:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFazCCA1OgAwIBAgIRAIIQz7DSQONZRGPgu2OCiwAwDQYJKoZIhvcNAQELBQAw\nTzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh\ncmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwHhcNMTUwNjA0MTEwNDM4\nWhcNMzUwNjA0MTEwNDM4WjBPMQswCQYDVQQGEwJVUzEpMCcGA1UEChMgSW50ZXJu\nZXQgU2VjdXJpdHkgUmVzZWFyY2ggR3JvdXAxFTATBgNVBAMTDElTUkcgUm9vdCBY\nMTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAK3oJHP0FDfzm54rVygc\nh77ct984kIxuPOZXoHj3dcKi/vVqbvYATyjb3miGbESTtrFj/RQSa78f0uoxmyF+\n0TM8ukj13Xnfs7j/EvEhmkvBioZxaUpmZmyPfjxwv60pIgbz5MDmgK7iS4+3mX6U\nA5/TR5d8mUgjU+g4rk8Kb4Mu0UlXjIB0ttov0DiNewNwIRt18jA8+o+u3dpjq+sW\nT8KOEUt+zwvo/7V3LvSye0rgTBIlDHCNAymg4VMk7BPZ7hm/ELNKjD+Jo2FR3qyH\nB5T0Y3HsLuJvW5iB4YlcNHlsdu87kGJ55tukmi8mxdAQ4Q7e2RCOFvu396j3x+UC\nB5iPNgiV5+I3lg02dZ77DnKxHZu8A/lJBdiB3QW0KtZB6awBdpUKD9jf1b0SHzUv\nKBds0pjBqAlkd25HN7rOrFleaJ1/ctaJxQZBKT5ZPt0m9STJEadao0xAH0ahmbWn\nOlFuhjuefXKnEgV4We0+UXgVCwOPjdAvBbI+e0ocS3MFEvzG6uBQE3xDk3SzynTn\njh8BCNAw1FtxNrQHusEwMFxIt4I7mKZ9YIqioymCzLq9gwQbooMDQaHWBfEbwrbw\nqHyGO0aoSCqI3Haadr8faqU9GY/rOPNk3sgrDQoo//fb4hVC1CLQJ13hef4Y53CI\nrU7m2Ys6xt0nUW7/vGT1M0NPAgMBAAGjQjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNV\nHRMBAf8EBTADAQH/MB0GA1UdDgQWBBR5tFnme7bl5AFzgAiIyBpY9umbbjANBgkq\nhkiG9w0BAQsFAAOCAgEAVR9YqbyyqFDQDLHYGmkgJykIrGF1XIpu+ILlaS/V9lZL\nubhzEFnTIZd+50xx+7LSYK05qAvqFyFWhfFQDlnrzuBZ6brJFe+GnY+EgPbk6ZGQ\n3BebYhtF8GaV0nxvwuo77x/Py9auJ/GpsMiu/X1+mvoiBOv/2X/qkSsisRcOj/KK\nNFtY2PwByVS5uCbMiogziUwthDyC3+6WVwW6LLv3xLfHTjuCvjHIInNzktHCgKQ5\nORAzI4JMPJ+GslWYHb4phowim57iaztXOoJwTdwJx4nLCgdNbOhdjsnvzqvHu7Ur\nTkXWStAmzOVyyghqpZXjFaH3pO3JLF+l+/+sKAIuvtd7u+Nxe5AW0wdeRlN8NwdC\njNPElpzVmbUq4JUagEiuTDkHzsxHpFKVK7q4+63SM1N95R1NbdWhscdCb+ZAJzVc\noyi3B43njTOQ5yOf+1CceWxG1bQVs5ZufpsMljq4Ui0/1lvh+wjChP4kqKOJ2qxq\n4RgqsahDYVvTH9w7jXbyLeiNdd8XM2w9U/t7y0Ff/9yi0GE44Za4rF2LN9d11TPA\nmRGunUHBcnWEvgJBQl9nJEiU0Zsnvgc/ubhPgXRR4Xq37Z0j4r7g1SgEEzwxA57d\nemyPxgcYxn/eR44/KJ4EBs+lVDR3veyJm+kXQ99b21/+jh5Xos1AnX5iItreGCc=\n-----END CERTIFICATE-----\n"

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final MIT_CA:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFXjCCBEagAwIBAgIJAMLfrRWIaHLbMA0GCSqGSIb3DQEBCwUAMIHPMQswCQYD\nVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJyaWRnZTEuMCwGA1UE\nChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neTEZMBcGA1UE\nCxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWREQiBDZXJ0aWZpY2F0\nZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkqhkiG9w0BCQEWC2pp\nc0BtaXQuZWR1MB4XDTE3MTIyMjIyMzkyOVoXDTI3MTIyMDIyMzkyOVowgc8xCzAJ\nBgNVBAYTAlVTMQswCQYDVQQIEwJNQTESMBAGA1UEBxMJQ2FtYnJpZGdlMS4wLAYD\nVQQKEyVNYXNzYWNodXNldHRzIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD\nVQQLExBNSVQgQXBwIEludmVudG9yMSYwJAYDVQQDEx1DbG91ZERCIENlcnRpZmlj\nYXRlIEF1dGhvcml0eTEQMA4GA1UEKRMHRWFzeVJTQTEaMBgGCSqGSIb3DQEJARYL\namlzQG1pdC5lZHUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHzI3D\nFobNDv2HTWlDdedmbxZIJYSqWlzdRJC3oVJgCubdAs46WJRqUxDRWft9UpYGMKkw\nmYN8mdPby2m5OJagdVIZgnguB71zIQkC8yMzd94FC3gldX5m7R014D/0fkpzvsSt\n6fsNectJT0k7gPELOH6t4u6AUbvIsEX0nNyRWsmA/ucXCsDBwXyBJxfOKIQ9tDI4\n/WfcKk9JDpeMF7RP0CIOtlAPotKIaPoY1W3eMIi/0riOt5vTFsB8pxhxAVy0cfGX\niHukdrAkAJixTgkyS7wzk22xOeXVnRIzAMGK5xHMDw/HRQGTrUGfIXHENV3u+3Ae\nL5/ZoQwyZTixmQNzAgMBAAGjggE5MIIBNTAdBgNVHQ4EFgQUZfMKQXqtC5UJGFrZ\ngZE1nmlx+t8wggEEBgNVHSMEgfwwgfmAFGXzCkF6rQuVCRha2YGRNZ5pcfrfoYHV\npIHSMIHPMQswCQYDVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJy\naWRnZTEuMCwGA1UEChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5v\nbG9neTEZMBcGA1UECxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWRE\nQiBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkq\nhkiG9w0BCQEWC2ppc0BtaXQuZWR1ggkAwt+tFYhoctswDAYDVR0TBAUwAwEB/zAN\nBgkqhkiG9w0BAQsFAAOCAQEAIkKr3eIvwZO6a1Jsh3qXwveVnrqwxYvLw2IhTwNT\n/P6C5jbRnzUuDuzg5sEIpbBo/Bp3qIp7G5cdVOkIrqO7uCp6Kyc7d9lPsEe/cbF4\naNwNmdWroRN1y0tuMU6+z7frd5pOeAZP9E/DM/0Uaz4yVzwnlvZUttaLymyMhH54\nisGQKbAqHDFtKZvb6DxsHzrO2YgeaBAtjeVhPWiv8BhzbOo9+hhZvYHYtoM2W+Ze\nDHuvv0v+qouphftDKVBp16N8Pk5WgabTXzV6VcNee92iwbWYDEv06+S3AF/q2TBe\nxxXtAa5ywbp6IRF37QuQChcYnOx7zIylYI1PIENfQFC2BA==\n-----END CERTIFICATE-----\n"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private invert:Z

.field private size:I

.field private sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private token:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mdoCreateImage(Lcom/google/appinventor/components/runtime/ImageBot;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageBot;->doCreateImage(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoEditImage(Lcom/google/appinventor/components/runtime/ImageBot;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ImageBot;->doEditImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 82
    const-class v0, Lcom/google/appinventor/components/runtime/ImageBot;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    .line 225
    invoke-static {}, Lcom/google/appinventor/common/version/AppInventorFeatures;->chatBotHost()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "image/v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ImageBot;->IMAGEBOT_SERVICE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 228
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageBot;->apiKey:Ljava/lang/String;

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageBot;->invert:Z

    .line 221
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    .line 229
    return-void
.end method

.method private doCreateImage(Ljava/lang/String;)V
    .locals 9
    .param p1, "prompt"    # Ljava/lang/String;

    .line 437
    const-string v0, "Unable to create image"

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    .line 438
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "iToken":Ljava/lang/String;
    goto :goto_0

    .line 440
    .end local v1    # "iToken":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    .line 442
    .restart local v1    # "iToken":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/Base58Util;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 443
    .local v2, "decodedToken":[B
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->parseFrom([B)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v3

    .line 444
    .local v3, "token":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->newBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v4

    .line 445
    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setToken(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 446
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setSize(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->CREATE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    .line 447
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setOperation(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v4

    .line 448
    invoke-virtual {v4, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setPrompt(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v4

    .line 449
    .local v4, "builder":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageBot;->apiKey:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageBot;->apiKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 450
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageBot;->apiKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setApikey(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    move-object v4, v5

    .line 452
    :cond_1
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 454
    .local v5, "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    :try_start_1
    invoke-direct {p0, v5}, Lcom/google/appinventor/components/runtime/ImageBot;->sendRequest(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Ljava/lang/String;

    move-result-object v6

    .line 455
    .local v6, "response":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v8, Lcom/google/appinventor/components/runtime/ImageBot$5;

    invoke-direct {v8, p0, v6}, Lcom/google/appinventor/components/runtime/ImageBot$5;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lcom/google/appinventor/components/runtime/ImageBot$ImageException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 469
    .end local v6    # "response":Ljava/lang/String;
    goto :goto_1

    .line 461
    :catch_0
    move-exception v6

    .line 462
    .local v6, "e":Lcom/google/appinventor/components/runtime/ImageBot$ImageException;
    :try_start_2
    sget-object v7, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    invoke-static {v7, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v8, Lcom/google/appinventor/components/runtime/ImageBot$6;

    invoke-direct {v8, p0, v6}, Lcom/google/appinventor/components/runtime/ImageBot$6;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Lcom/google/appinventor/components/runtime/ImageBot$ImageException;)V

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 478
    .end local v1    # "iToken":Ljava/lang/String;
    .end local v2    # "decodedToken":[B
    .end local v3    # "token":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .end local v4    # "builder":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .end local v5    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .end local v6    # "e":Lcom/google/appinventor/components/runtime/ImageBot$ImageException;
    :goto_1
    goto :goto_2

    .line 470
    :catch_1
    move-exception v1

    .line 471
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/ImageBot$7;

    invoke-direct {v2, p0, v1}, Lcom/google/appinventor/components/runtime/ImageBot$7;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Ljava/lang/Exception;)V

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 479
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private doEditImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 10
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "mask"    # Landroid/graphics/Bitmap;
    .param p3, "description"    # Ljava/lang/String;

    .line 482
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 483
    .local v0, "sourceBuffer":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 484
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 486
    .local v1, "sourceString":Lcom/google/protobuf/ByteString;
    const/4 v3, 0x0

    .line 487
    .local v3, "maskString":Lcom/google/protobuf/ByteString;
    if-eqz p2, :cond_0

    .line 488
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 489
    .local v4, "maskBuffer":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v5, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 490
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 494
    .end local v4    # "maskBuffer":Ljava/io/ByteArrayOutputStream;
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x25

    if-ne v2, v4, :cond_1

    .line 495
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "iToken":Ljava/lang/String;
    goto :goto_0

    .line 497
    .end local v2    # "iToken":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    .line 501
    .restart local v2    # "iToken":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/Base58Util;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 502
    .local v4, "decodedToken":[B
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->parseFrom([B)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v5

    .line 511
    .local v4, "token":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    nop

    .line 512
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->newBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    .line 513
    invoke-virtual {v5, v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setToken(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    .line 514
    invoke-virtual {v5, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setSource(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    sget-object v6, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->EDIT:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    .line 515
    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setOperation(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    iget v6, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 516
    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setSize(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    .line 517
    invoke-virtual {v5, p3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setPrompt(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    .line 518
    .local v5, "builder":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ImageBot;->apiKey:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ImageBot;->apiKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 519
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ImageBot;->apiKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setApikey(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v5

    .line 521
    :cond_2
    if-eqz v3, :cond_3

    .line 522
    invoke-virtual {v5, v3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setMask(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    .line 524
    :cond_3
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v6

    .line 526
    .local v6, "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    :try_start_1
    invoke-direct {p0, v6}, Lcom/google/appinventor/components/runtime/ImageBot;->sendRequest(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Ljava/lang/String;

    move-result-object v7

    .line 527
    .local v7, "response":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v9, Lcom/google/appinventor/components/runtime/ImageBot$9;

    invoke-direct {v9, p0, v7}, Lcom/google/appinventor/components/runtime/ImageBot$9;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lcom/google/appinventor/components/runtime/ImageBot$ImageException; {:try_start_1 .. :try_end_1} :catch_0

    .line 541
    .end local v7    # "response":Ljava/lang/String;
    goto :goto_1

    .line 533
    :catch_0
    move-exception v7

    .line 534
    .local v7, "e":Lcom/google/appinventor/components/runtime/ImageBot$ImageException;
    sget-object v8, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Unable to edit image"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v9, Lcom/google/appinventor/components/runtime/ImageBot$10;

    invoke-direct {v9, p0, v7}, Lcom/google/appinventor/components/runtime/ImageBot$10;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Lcom/google/appinventor/components/runtime/ImageBot$ImageException;)V

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 542
    .end local v7    # "e":Lcom/google/appinventor/components/runtime/ImageBot$ImageException;
    :goto_1
    return-void

    .line 503
    .end local v4    # "token":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .end local v5    # "builder":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .end local v6    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    :catch_1
    move-exception v4

    .line 504
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v6, Lcom/google/appinventor/components/runtime/ImageBot$8;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/ImageBot$8;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;)V

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 510
    return-void
.end method

.method private declared-synchronized ensureSslSockFactory()V
    .locals 15

    monitor-enter p0

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageBot;->sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 633
    :try_start_1
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 634
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 635
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 636
    .local v1, "caInput":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 637
    .local v2, "ca":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 638
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v3

    .line 639
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 640
    .local v3, "inter":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 641
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "-----BEGIN CERTIFICATE-----\nMIIFXjCCBEagAwIBAgIJAMLfrRWIaHLbMA0GCSqGSIb3DQEBCwUAMIHPMQswCQYD\nVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJyaWRnZTEuMCwGA1UE\nChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neTEZMBcGA1UE\nCxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWREQiBDZXJ0aWZpY2F0\nZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkqhkiG9w0BCQEWC2pp\nc0BtaXQuZWR1MB4XDTE3MTIyMjIyMzkyOVoXDTI3MTIyMDIyMzkyOVowgc8xCzAJ\nBgNVBAYTAlVTMQswCQYDVQQIEwJNQTESMBAGA1UEBxMJQ2FtYnJpZGdlMS4wLAYD\nVQQKEyVNYXNzYWNodXNldHRzIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD\nVQQLExBNSVQgQXBwIEludmVudG9yMSYwJAYDVQQDEx1DbG91ZERCIENlcnRpZmlj\nYXRlIEF1dGhvcml0eTEQMA4GA1UEKRMHRWFzeVJTQTEaMBgGCSqGSIb3DQEJARYL\namlzQG1pdC5lZHUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHzI3D\nFobNDv2HTWlDdedmbxZIJYSqWlzdRJC3oVJgCubdAs46WJRqUxDRWft9UpYGMKkw\nmYN8mdPby2m5OJagdVIZgnguB71zIQkC8yMzd94FC3gldX5m7R014D/0fkpzvsSt\n6fsNectJT0k7gPELOH6t4u6AUbvIsEX0nNyRWsmA/ucXCsDBwXyBJxfOKIQ9tDI4\n/WfcKk9JDpeMF7RP0CIOtlAPotKIaPoY1W3eMIi/0riOt5vTFsB8pxhxAVy0cfGX\niHukdrAkAJixTgkyS7wzk22xOeXVnRIzAMGK5xHMDw/HRQGTrUGfIXHENV3u+3Ae\nL5/ZoQwyZTixmQNzAgMBAAGjggE5MIIBNTAdBgNVHQ4EFgQUZfMKQXqtC5UJGFrZ\ngZE1nmlx+t8wggEEBgNVHSMEgfwwgfmAFGXzCkF6rQuVCRha2YGRNZ5pcfrfoYHV\npIHSMIHPMQswCQYDVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJy\naWRnZTEuMCwGA1UEChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5v\nbG9neTEZMBcGA1UECxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWRE\nQiBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkq\nhkiG9w0BCQEWC2ppc0BtaXQuZWR1ggkAwt+tFYhoctswDAYDVR0TBAUwAwEB/zAN\nBgkqhkiG9w0BAQsFAAOCAQEAIkKr3eIvwZO6a1Jsh3qXwveVnrqwxYvLw2IhTwNT\n/P6C5jbRnzUuDuzg5sEIpbBo/Bp3qIp7G5cdVOkIrqO7uCp6Kyc7d9lPsEe/cbF4\naNwNmdWroRN1y0tuMU6+z7frd5pOeAZP9E/DM/0Uaz4yVzwnlvZUttaLymyMhH54\nisGQKbAqHDFtKZvb6DxsHzrO2YgeaBAtjeVhPWiv8BhzbOo9+hhZvYHYtoM2W+Ze\nDHuvv0v+qouphftDKVBp16N8Pk5WgabTXzV6VcNee92iwbWYDEv06+S3AF/q2TBe\nxxXtAa5ywbp6IRF37QuQChcYnOx7zIylYI1PIENfQFC2BA==\n-----END CERTIFICATE-----\n"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v4

    .line 642
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    .line 643
    .local v4, "mitca":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 644
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "-----BEGIN CERTIFICATE-----\nMIIFazCCA1OgAwIBAgIRAIIQz7DSQONZRGPgu2OCiwAwDQYJKoZIhvcNAQELBQAw\nTzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh\ncmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwHhcNMTUwNjA0MTEwNDM4\nWhcNMzUwNjA0MTEwNDM4WjBPMQswCQYDVQQGEwJVUzEpMCcGA1UEChMgSW50ZXJu\nZXQgU2VjdXJpdHkgUmVzZWFyY2ggR3JvdXAxFTATBgNVBAMTDElTUkcgUm9vdCBY\nMTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAK3oJHP0FDfzm54rVygc\nh77ct984kIxuPOZXoHj3dcKi/vVqbvYATyjb3miGbESTtrFj/RQSa78f0uoxmyF+\n0TM8ukj13Xnfs7j/EvEhmkvBioZxaUpmZmyPfjxwv60pIgbz5MDmgK7iS4+3mX6U\nA5/TR5d8mUgjU+g4rk8Kb4Mu0UlXjIB0ttov0DiNewNwIRt18jA8+o+u3dpjq+sW\nT8KOEUt+zwvo/7V3LvSye0rgTBIlDHCNAymg4VMk7BPZ7hm/ELNKjD+Jo2FR3qyH\nB5T0Y3HsLuJvW5iB4YlcNHlsdu87kGJ55tukmi8mxdAQ4Q7e2RCOFvu396j3x+UC\nB5iPNgiV5+I3lg02dZ77DnKxHZu8A/lJBdiB3QW0KtZB6awBdpUKD9jf1b0SHzUv\nKBds0pjBqAlkd25HN7rOrFleaJ1/ctaJxQZBKT5ZPt0m9STJEadao0xAH0ahmbWn\nOlFuhjuefXKnEgV4We0+UXgVCwOPjdAvBbI+e0ocS3MFEvzG6uBQE3xDk3SzynTn\njh8BCNAw1FtxNrQHusEwMFxIt4I7mKZ9YIqioymCzLq9gwQbooMDQaHWBfEbwrbw\nqHyGO0aoSCqI3Haadr8faqU9GY/rOPNk3sgrDQoo//fb4hVC1CLQJ13hef4Y53CI\nrU7m2Ys6xt0nUW7/vGT1M0NPAgMBAAGjQjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNV\nHRMBAf8EBTADAQH/MB0GA1UdDgQWBBR5tFnme7bl5AFzgAiIyBpY9umbbjANBgkq\nhkiG9w0BAQsFAAOCAgEAVR9YqbyyqFDQDLHYGmkgJykIrGF1XIpu+ILlaS/V9lZL\nubhzEFnTIZd+50xx+7LSYK05qAvqFyFWhfFQDlnrzuBZ6brJFe+GnY+EgPbk6ZGQ\n3BebYhtF8GaV0nxvwuo77x/Py9auJ/GpsMiu/X1+mvoiBOv/2X/qkSsisRcOj/KK\nNFtY2PwByVS5uCbMiogziUwthDyC3+6WVwW6LLv3xLfHTjuCvjHIInNzktHCgKQ5\nORAzI4JMPJ+GslWYHb4phowim57iaztXOoJwTdwJx4nLCgdNbOhdjsnvzqvHu7Ur\nTkXWStAmzOVyyghqpZXjFaH3pO3JLF+l+/+sKAIuvtd7u+Nxe5AW0wdeRlN8NwdC\njNPElpzVmbUq4JUagEiuTDkHzsxHpFKVK7q4+63SM1N95R1NbdWhscdCb+ZAJzVc\noyi3B43njTOQ5yOf+1CceWxG1bQVs5ZufpsMljq4Ui0/1lvh+wjChP4kqKOJ2qxq\n4RgqsahDYVvTH9w7jXbyLeiNdd8XM2w9U/t7y0Ff/9yi0GE44Za4rF2LN9d11TPA\nmRGunUHBcnWEvgJBQl9nJEiU0Zsnvgc/ubhPgXRR4Xq37Z0j4r7g1SgEEzwxA57d\nemyPxgcYxn/eR44/KJ4EBs+lVDR3veyJm+kXQ99b21/+jh5Xos1AnX5iItreGCc=\n-----END CERTIFICATE-----\n"

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v5

    .line 645
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 646
    .local v5, "isrg":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 653
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 654
    .local v6, "keyStore":Ljava/security/KeyStore;
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 656
    const/4 v8, 0x1

    .line 657
    .local v8, "count":I
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ImageBot;->getSystemCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_0

    aget-object v12, v9, v11

    .line 658
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

    .line 659
    nop

    .end local v12    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v8, v8, 0x1

    .line 657
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 665
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/ImageBot;
    :cond_0
    const-string v9, "comodo"

    invoke-virtual {v6, v9, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 666
    const-string v9, "inter"

    invoke-virtual {v6, v9, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 667
    const-string v9, "mitca"

    invoke-virtual {v6, v9, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 668
    const-string v9, "isrg"

    invoke-virtual {v6, v9, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 670
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 669
    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v9

    .line 671
    .local v9, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v9, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 681
    const-string v10, "TLS"

    invoke-static {v10}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v10

    .line 682
    .local v10, "ctx":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v9}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v11

    invoke-virtual {v10, v7, v11, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 683
    invoke-virtual {v10}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ImageBot;->sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
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
    goto :goto_1

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Could not setup SSL Trust Store for ImageBot"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 686
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Could Not setup SSL Trust Store for ImageBot: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 689
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private getSystemCertificates()[Ljava/security/cert/X509Certificate;
    .locals 4

    .line 697
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 696
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 698
    .local v1, "otmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 699
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 700
    .local v2, "otm":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v2}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 701
    .end local v1    # "otmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "otm":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v1

    .line 702
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Getting System Certificates"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
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

    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImage source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/Canvas;

    if-eqz v1, :cond_0

    .line 589
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 590
    :cond_0
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/Image;

    if-eqz v1, :cond_1

    .line 591
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

    .line 593
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "sourceStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 596
    .end local v1    # "sourceStr":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_3

    .line 597
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    if-ne v1, v2, :cond_2

    .line 598
    return-object v0

    .line 600
    :cond_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 603
    :cond_3
    return-object v0
.end method

.method private loadMask(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "mask"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageBot;->loadImage(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 608
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->invert:Z

    if-eqz v1, :cond_0

    .line 610
    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 616
    .local v1, "transform":Landroid/graphics/ColorMatrix;
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 617
    .local v2, "filter":Landroid/graphics/ColorMatrixColorFilter;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 618
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 619
    iget v4, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 620
    .local v4, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 621
    .local v5, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 622
    move-object v0, v4

    .line 624
    .end local v1    # "transform":Landroid/graphics/ColorMatrix;
    .end local v2    # "filter":Landroid/graphics/ColorMatrixColorFilter;
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x437f0000    # 255.0f
    .end array-data
.end method

.method private sendRequest(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Ljava/lang/String;
    .locals 9
    .param p1, "request"    # Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/ImageBot$ImageException;
        }
    .end annotation

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ImageBot;->ensureSslSockFactory()V

    .line 547
    const/4 v1, -0x1

    .line 549
    .local v1, "responseCode":I
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    sget-object v4, Lcom/google/appinventor/components/runtime/ImageBot;->IMAGEBOT_SERVICE_URL:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 550
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    move-object v0, v4

    .line 551
    if-eqz v0, :cond_2

    .line 552
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImageBot;->sslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 553
    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 554
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 555
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->writeTo(Ljava/io/OutputStream;)V

    .line 556
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    move v1, v4

    .line 557
    const/16 v4, 0xc8

    if-ne v1, v4, :cond_1

    .line 558
    nop

    .line 559
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 558
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    move-result-object v4

    .line 560
    .local v4, "response":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    .line 561
    .local v5, "imageData":[B
    const-string v6, "ImageBot"

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getOutputFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 562
    .local v6, "outFile":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 564
    .local v7, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v7, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 565
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 568
    nop

    .line 569
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 578
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 569
    :cond_0
    return-object v2

    .line 567
    :catchall_0
    move-exception v8

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 568
    nop

    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v1    # "responseCode":I
    .end local p1    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    throw v8

    .line 571
    .end local v4    # "response":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .end local v5    # "imageData":[B
    .end local v6    # "outFile":Ljava/io/File;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v1    # "responseCode":I
    .restart local p1    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/IOUtils;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "errorMessage":Ljava/lang/String;
    new-instance v5, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;

    invoke-direct {v5, v1, v4, v2, v2}, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcom/google/appinventor/components/runtime/ImageBot$ImageException-IA;)V

    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v1    # "responseCode":I
    .end local p1    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 578
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "errorMessage":Ljava/lang/String;
    .restart local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v1    # "responseCode":I
    .restart local p1    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    :cond_2
    if-eqz v0, :cond_3

    .line 579
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 582
    :cond_3
    new-instance v3, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;

    const/16 v4, 0x194

    const-string v5, "Could not connect to proxy server"

    invoke-direct {v3, v4, v5, v2, v2}, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcom/google/appinventor/components/runtime/ImageBot$ImageException-IA;)V

    throw v3

    .line 578
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 574
    :catch_0
    move-exception v3

    .line 575
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v4, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Got an IOException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    new-instance v4, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5, v3, v2}, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcom/google/appinventor/components/runtime/ImageBot$ImageException-IA;)V

    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v1    # "responseCode":I
    .end local p1    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 578
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v1    # "responseCode":I
    .restart local p1    # "request":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    :goto_0
    if-eqz v0, :cond_4

    .line 579
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 581
    :cond_4
    throw v2
.end method


# virtual methods
.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "apiKey"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->apiKey:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public CreateImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 299
    new-instance v0, Lcom/google/appinventor/components/runtime/ImageBot$1;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ImageBot$1;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

.method public EditImage(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "description"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageBot;->loadImage(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 323
    new-instance v1, Lcom/google/appinventor/components/runtime/ImageBot$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/appinventor/components/runtime/ImageBot$2;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 340
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 330
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/ImageBot$3;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/ImageBot$3;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    .end local p1    # "source":Ljava/lang/Object;
    .end local p2    # "description":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "source":Ljava/lang/Object;
    .restart local p2    # "description":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to read source image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public EditImageWithMask(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageSource"    # Ljava/lang/Object;
    .param p2, "maskSource"    # Ljava/lang/Object;
    .param p3, "prompt"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 355
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageBot;->loadImage(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 356
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/ImageBot;->loadMask(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 357
    .local v1, "mask":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 358
    return-void

    .line 360
    :cond_0
    if-nez v1, :cond_1

    .line 361
    return-void

    .line 363
    :cond_1
    new-instance v2, Lcom/google/appinventor/components/runtime/ImageBot$4;

    invoke-direct {v2, p0, v0, v1, p3}, Lcom/google/appinventor/components/runtime/ImageBot$4;-><init>(Lcom/google/appinventor/components/runtime/ImageBot;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "mask":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/google/appinventor/components/runtime/ImageBot;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to read source image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public ErrorOccurred(ILjava/lang/String;)V
    .locals 6
    .param p1, "responseCode"    # I
    .param p2, "responseText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 407
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const-string v4, "ErrorOccurred"

    invoke-static {p0, v4, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageBot;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 409
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    aput-object p2, v1, v0

    .line 408
    const/16 v0, 0x10cc

    invoke-virtual {v2, p0, v4, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 411
    :cond_0
    return-void
.end method

.method public ImageCreated(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 385
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "ImageCreated"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 386
    return-void
.end method

.method public ImageEdited(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 395
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "ImageEdited"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 396
    return-void
.end method

.method public InvertMask(Z)V
    .locals 0
    .param p1, "invert"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 265
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->invert:Z

    .line 266
    return-void
.end method

.method public InvertMask()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 270
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageBot;->invert:Z

    return v0
.end method

.method public Size()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 287
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    return v0
.end method

.method public Size(I)V
    .locals 0
    .param p1, "size"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "256"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 282
    iput p1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->size:I

    .line 283
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

    .line 242
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageBot;->token:Ljava/lang/String;

    .line 243
    return-void
.end method
