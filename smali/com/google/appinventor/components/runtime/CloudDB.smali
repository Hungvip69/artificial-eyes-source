.class public Lcom/google/appinventor/components/runtime/CloudDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "CloudDB.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnClearListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/ObservableDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component allowing you to store data on a Internet connected database server (using Redis software). This allows the users of your App to share data with each other. By default data will be stored in a server maintained by MIT, however you can setup and run your own server. Set the \"RedisServer\" property and \"RedisPort\" Property to access your own server."
    designerHelpDescription = "Non-visible component that communicates with CloudDB server to store and retrieve information."
    iconName = "images/cloudDB.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "jedis.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;",
        "Lcom/google/appinventor/components/runtime/Component;",
        "Lcom/google/appinventor/components/runtime/OnClearListener;",
        "Lcom/google/appinventor/components/runtime/OnDestroyListener;",
        "Lcom/google/appinventor/components/runtime/ObservableDataSource<",
        "Ljava/lang/String;",
        "Ljava/util/concurrent/Future<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final APPEND_SCRIPT:Ljava/lang/String; = "local key = KEYS[1];local toAppend = cjson.decode(ARGV[1]);local project = ARGV[2];local currentValue = redis.call(\'get\', project .. \":\" .. key);local newTable;local subTable = {};local subTable1 = {};if (currentValue == false) then   newTable = {};else   newTable = cjson.decode(currentValue);  if not (type(newTable) == \'table\') then     return error(\'You can only append to a list\');  end end table.insert(newTable, toAppend);local newValue = cjson.encode(newTable);redis.call(\'set\', project .. \":\" .. key, newValue);table.insert(subTable1, newValue);table.insert(subTable, key);table.insert(subTable, subTable1);redis.call(\"publish\", project, cjson.encode(subTable));return newValue;"

.field private static final APPEND_SCRIPT_SHA1:Ljava/lang/String; = "d6cc0f65b29878589f00564d52c8654967e9bcf8"

.field private static final COMODO_ROOT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

.field private static final COMODO_USRTRUST:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

.field private static final DEBUG:Z = false

.field private static final DST_ROOT_X3:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIDSjCCAjKgAwIBAgIQRK+wgNajJ7qJMDmGLvhAazANBgkqhkiG9w0BAQUFADA/\nMSQwIgYDVQQKExtEaWdpdGFsIFNpZ25hdHVyZSBUcnVzdCBDby4xFzAVBgNVBAMT\nDkRTVCBSb290IENBIFgzMB4XDTAwMDkzMDIxMTIxOVoXDTIxMDkzMDE0MDExNVow\nPzEkMCIGA1UEChMbRGlnaXRhbCBTaWduYXR1cmUgVHJ1c3QgQ28uMRcwFQYDVQQD\nEw5EU1QgUm9vdCBDQSBYMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB\nAN+v6ZdQCINXtMxiZfaQguzH0yxrMMpb7NnDfcdAwRgUi+DoM3ZJKuM/IUmTrE4O\nrz5Iy2Xu/NMhD2XSKtkyj4zl93ewEnu1lcCJo6m67XMuegwGMoOifooUMM0RoOEq\nOLl5CjH9UL2AZd+3UWODyOKIYepLYYHsUmu5ouJLGiifSKOeDNoJjj4XLh7dIN9b\nxiqKqy69cK3FCxolkHRyxXtqqzTWMIn/5WgTe1QLyNau7Fqckh49ZLOMxt+/yUFw\n7BZy1SbsOFU5Q9D8/RhcQPGX69Wam40dutolucbY38EVAjqr2m7xPi71XAicPNaD\naeQQmxkqtilX4+U9m5/wAl0CAwEAAaNCMEAwDwYDVR0TAQH/BAUwAwEB/zAOBgNV\nHQ8BAf8EBAMCAQYwHQYDVR0OBBYEFMSnsaR7LHH62+FLkHX/xBVghYkQMA0GCSqG\nSIb3DQEBBQUAA4IBAQCjGiybFwBcqR7uKGY3Or+Dxz9LwwmglSBd49lZRNI+DT69\nikugdB/OEIKcdBodfpga3csTS7MgROSR6cz8faXbauX+5v3gTt23ADq1cEmv8uXr\nAvHRAosZy5Q6XkjEGB5YGV8eAlrwDPGxrancWYaLbumR9YbK+rlmM6pZW87ipxZz\nR8srzJmwN0jP41ZL9c8PDHIyh8bwRLtTcm1D9SZImlJnt1ir/md2cXjbDaJWFBM5\nJDGFoqgCWjBH4d1QB7wCCZAA62RjYJsWvIjJEubSfZGL+T0yjWW06XyxV3bqxbYo\nOb8VZRzI9neWagqNdwvYkQsEjgfbKbYK7p2CNTUQ\n-----END CERTIFICATE-----\n"

.field private static final LOG_TAG:Ljava/lang/String; = "CloudDB"

.field private static final MIT_CA:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFXjCCBEagAwIBAgIJAMLfrRWIaHLbMA0GCSqGSIb3DQEBCwUAMIHPMQswCQYD\nVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJyaWRnZTEuMCwGA1UE\nChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neTEZMBcGA1UE\nCxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWREQiBDZXJ0aWZpY2F0\nZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkqhkiG9w0BCQEWC2pp\nc0BtaXQuZWR1MB4XDTE3MTIyMjIyMzkyOVoXDTI3MTIyMDIyMzkyOVowgc8xCzAJ\nBgNVBAYTAlVTMQswCQYDVQQIEwJNQTESMBAGA1UEBxMJQ2FtYnJpZGdlMS4wLAYD\nVQQKEyVNYXNzYWNodXNldHRzIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD\nVQQLExBNSVQgQXBwIEludmVudG9yMSYwJAYDVQQDEx1DbG91ZERCIENlcnRpZmlj\nYXRlIEF1dGhvcml0eTEQMA4GA1UEKRMHRWFzeVJTQTEaMBgGCSqGSIb3DQEJARYL\namlzQG1pdC5lZHUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHzI3D\nFobNDv2HTWlDdedmbxZIJYSqWlzdRJC3oVJgCubdAs46WJRqUxDRWft9UpYGMKkw\nmYN8mdPby2m5OJagdVIZgnguB71zIQkC8yMzd94FC3gldX5m7R014D/0fkpzvsSt\n6fsNectJT0k7gPELOH6t4u6AUbvIsEX0nNyRWsmA/ucXCsDBwXyBJxfOKIQ9tDI4\n/WfcKk9JDpeMF7RP0CIOtlAPotKIaPoY1W3eMIi/0riOt5vTFsB8pxhxAVy0cfGX\niHukdrAkAJixTgkyS7wzk22xOeXVnRIzAMGK5xHMDw/HRQGTrUGfIXHENV3u+3Ae\nL5/ZoQwyZTixmQNzAgMBAAGjggE5MIIBNTAdBgNVHQ4EFgQUZfMKQXqtC5UJGFrZ\ngZE1nmlx+t8wggEEBgNVHSMEgfwwgfmAFGXzCkF6rQuVCRha2YGRNZ5pcfrfoYHV\npIHSMIHPMQswCQYDVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJy\naWRnZTEuMCwGA1UEChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5v\nbG9neTEZMBcGA1UECxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWRE\nQiBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkq\nhkiG9w0BCQEWC2ppc0BtaXQuZWR1ggkAwt+tFYhoctswDAYDVR0TBAUwAwEB/zAN\nBgkqhkiG9w0BAQsFAAOCAQEAIkKr3eIvwZO6a1Jsh3qXwveVnrqwxYvLw2IhTwNT\n/P6C5jbRnzUuDuzg5sEIpbBo/Bp3qIp7G5cdVOkIrqO7uCp6Kyc7d9lPsEe/cbF4\naNwNmdWroRN1y0tuMU6+z7frd5pOeAZP9E/DM/0Uaz4yVzwnlvZUttaLymyMhH54\nisGQKbAqHDFtKZvb6DxsHzrO2YgeaBAtjeVhPWiv8BhzbOo9+hhZvYHYtoM2W+Ze\nDHuvv0v+qouphftDKVBp16N8Pk5WgabTXzV6VcNee92iwbWYDEv06+S3AF/q2TBe\nxxXtAa5ywbp6IRF37QuQChcYnOx7zIylYI1PIENfQFC2BA==\n-----END CERTIFICATE-----\n"

.field private static final POP_FIRST_SCRIPT:Ljava/lang/String; = "local key = KEYS[1];local project = ARGV[1];local currentValue = redis.call(\'get\', project .. \":\" .. key);local decodedValue = cjson.decode(currentValue);local subTable = {};local subTable1 = {};if (type(decodedValue) == \'table\') then   local removedValue = table.remove(decodedValue, 1);  local newValue = cjson.encode(decodedValue);  if (newValue == \"{}\") then     newValue = \"[]\"   end   redis.call(\'set\', project .. \":\" .. key, newValue);  table.insert(subTable, key);  table.insert(subTable1, newValue);  table.insert(subTable, subTable1);  redis.call(\"publish\", project, cjson.encode(subTable));  return cjson.encode(removedValue);else   return error(\'You can only remove elements from a list\');end"

.field private static final POP_FIRST_SCRIPT_SHA1:Ljava/lang/String; = "68a7576e7dc283a8162d01e3e7c2d5c4ab3ff7a5"

.field private static final SET_SUB_SCRIPT:Ljava/lang/String; = "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

.field private static final SET_SUB_SCRIPT_SHA1:Ljava/lang/String; = "765978e4c340012f50733280368a0ccc4a14dfb7"


# instance fields
.field private INSTANCE:Lredis/clients/jedis/Jedis;

.field private SslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final activity:Landroid/app/Activity;

.field private androidUIHandler:Landroid/os/Handler;

.field private volatile background:Ljava/util/concurrent/ExecutorService;

.field private cm:Landroid/net/ConnectivityManager;

.field private volatile currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

.field private dataSourceObservers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile dead:Z

.field private defaultRedisServer:Ljava/lang/String;

.field private importProject:Z

.field private isPublic:Z

.field private volatile listenerRunning:Z

.field private projectID:Ljava/lang/String;

.field private volatile redisPort:I

.field private volatile redisServer:Ljava/lang/String;

.field private volatile shutdown:Z

.field private final storeQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/CloudDB$storedValue;",
            ">;"
        }
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field private useDefault:Z

.field private volatile useSSL:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/CloudDB;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbackground(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentListener(Lcom/google/appinventor/components/runtime/CloudDB;)Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdead(Lcom/google/appinventor/components/runtime/CloudDB;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->dead:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprojectID(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshutdown(Lcom/google/appinventor/components/runtime/CloudDB;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->shutdown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstoreQueue(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->storeQueue:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbackground(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentListener(Lcom/google/appinventor/components/runtime/CloudDB;Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlistenerRunning(Lcom/google/appinventor/components/runtime/CloudDB;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->listenerRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mflushJedis(Lcom/google/appinventor/components/runtime/CloudDB;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetValueByTag(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/CloudDB;->getValueByTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartListener(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->startListener()V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 312
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->importProject:Z

    .line 119
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    .line 121
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->isPublic:Z

    .line 123
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->dead:Z

    .line 250
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->defaultRedisServer:Ljava/lang/String;

    .line 251
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useDefault:Z

    .line 256
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    .line 257
    const-string v4, "DEFAULT"

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    .line 259
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useSSL:Z

    .line 260
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->shutdown:Z

    .line 263
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->SslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 267
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->listenerRunning:Z

    .line 275
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->storeQueue:Ljava/util/List;

    .line 288
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->dataSourceObservers:Ljava/util/HashSet;

    .line 317
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    .line 318
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->activity:Landroid/app/Activity;

    .line 320
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    .line 321
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    .line 323
    const/16 v0, 0x18ed

    iput v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    .line 324
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->cm:Landroid/net/ConnectivityManager;

    .line 325
    return-void
.end method

.method private checkProjectIDNotBlank()V
    .locals 2

    .line 1225
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1231
    return-void

    .line 1229
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CloudDB Token property cannot be blank"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1226
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CloudDB ProjectID property cannot be blank."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized ensureSslSockFactory()V
    .locals 15

    monitor-enter p0

    .line 1404
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->SslSockFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1405
    monitor-exit p0

    return-void

    .line 1408
    :cond_0
    :try_start_1
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 1409
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1410
    .local v1, "caInput":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 1411
    .local v2, "ca":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1412
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v3

    .line 1413
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 1414
    .local v3, "inter":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1415
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "-----BEGIN CERTIFICATE-----\nMIIDSjCCAjKgAwIBAgIQRK+wgNajJ7qJMDmGLvhAazANBgkqhkiG9w0BAQUFADA/\nMSQwIgYDVQQKExtEaWdpdGFsIFNpZ25hdHVyZSBUcnVzdCBDby4xFzAVBgNVBAMT\nDkRTVCBSb290IENBIFgzMB4XDTAwMDkzMDIxMTIxOVoXDTIxMDkzMDE0MDExNVow\nPzEkMCIGA1UEChMbRGlnaXRhbCBTaWduYXR1cmUgVHJ1c3QgQ28uMRcwFQYDVQQD\nEw5EU1QgUm9vdCBDQSBYMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB\nAN+v6ZdQCINXtMxiZfaQguzH0yxrMMpb7NnDfcdAwRgUi+DoM3ZJKuM/IUmTrE4O\nrz5Iy2Xu/NMhD2XSKtkyj4zl93ewEnu1lcCJo6m67XMuegwGMoOifooUMM0RoOEq\nOLl5CjH9UL2AZd+3UWODyOKIYepLYYHsUmu5ouJLGiifSKOeDNoJjj4XLh7dIN9b\nxiqKqy69cK3FCxolkHRyxXtqqzTWMIn/5WgTe1QLyNau7Fqckh49ZLOMxt+/yUFw\n7BZy1SbsOFU5Q9D8/RhcQPGX69Wam40dutolucbY38EVAjqr2m7xPi71XAicPNaD\naeQQmxkqtilX4+U9m5/wAl0CAwEAAaNCMEAwDwYDVR0TAQH/BAUwAwEB/zAOBgNV\nHQ8BAf8EBAMCAQYwHQYDVR0OBBYEFMSnsaR7LHH62+FLkHX/xBVghYkQMA0GCSqG\nSIb3DQEBBQUAA4IBAQCjGiybFwBcqR7uKGY3Or+Dxz9LwwmglSBd49lZRNI+DT69\nikugdB/OEIKcdBodfpga3csTS7MgROSR6cz8faXbauX+5v3gTt23ADq1cEmv8uXr\nAvHRAosZy5Q6XkjEGB5YGV8eAlrwDPGxrancWYaLbumR9YbK+rlmM6pZW87ipxZz\nR8srzJmwN0jP41ZL9c8PDHIyh8bwRLtTcm1D9SZImlJnt1ir/md2cXjbDaJWFBM5\nJDGFoqgCWjBH4d1QB7wCCZAA62RjYJsWvIjJEubSfZGL+T0yjWW06XyxV3bqxbYo\nOb8VZRzI9neWagqNdwvYkQsEjgfbKbYK7p2CNTUQ\n-----END CERTIFICATE-----\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v4

    .line 1416
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    .line 1417
    .local v4, "dstx3":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1418
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "-----BEGIN CERTIFICATE-----\nMIIFXjCCBEagAwIBAgIJAMLfrRWIaHLbMA0GCSqGSIb3DQEBCwUAMIHPMQswCQYD\nVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJyaWRnZTEuMCwGA1UE\nChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neTEZMBcGA1UE\nCxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWREQiBDZXJ0aWZpY2F0\nZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkqhkiG9w0BCQEWC2pp\nc0BtaXQuZWR1MB4XDTE3MTIyMjIyMzkyOVoXDTI3MTIyMDIyMzkyOVowgc8xCzAJ\nBgNVBAYTAlVTMQswCQYDVQQIEwJNQTESMBAGA1UEBxMJQ2FtYnJpZGdlMS4wLAYD\nVQQKEyVNYXNzYWNodXNldHRzIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD\nVQQLExBNSVQgQXBwIEludmVudG9yMSYwJAYDVQQDEx1DbG91ZERCIENlcnRpZmlj\nYXRlIEF1dGhvcml0eTEQMA4GA1UEKRMHRWFzeVJTQTEaMBgGCSqGSIb3DQEJARYL\namlzQG1pdC5lZHUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHzI3D\nFobNDv2HTWlDdedmbxZIJYSqWlzdRJC3oVJgCubdAs46WJRqUxDRWft9UpYGMKkw\nmYN8mdPby2m5OJagdVIZgnguB71zIQkC8yMzd94FC3gldX5m7R014D/0fkpzvsSt\n6fsNectJT0k7gPELOH6t4u6AUbvIsEX0nNyRWsmA/ucXCsDBwXyBJxfOKIQ9tDI4\n/WfcKk9JDpeMF7RP0CIOtlAPotKIaPoY1W3eMIi/0riOt5vTFsB8pxhxAVy0cfGX\niHukdrAkAJixTgkyS7wzk22xOeXVnRIzAMGK5xHMDw/HRQGTrUGfIXHENV3u+3Ae\nL5/ZoQwyZTixmQNzAgMBAAGjggE5MIIBNTAdBgNVHQ4EFgQUZfMKQXqtC5UJGFrZ\ngZE1nmlx+t8wggEEBgNVHSMEgfwwgfmAFGXzCkF6rQuVCRha2YGRNZ5pcfrfoYHV\npIHSMIHPMQswCQYDVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJy\naWRnZTEuMCwGA1UEChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5v\nbG9neTEZMBcGA1UECxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWRE\nQiBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkq\nhkiG9w0BCQEWC2ppc0BtaXQuZWR1ggkAwt+tFYhoctswDAYDVR0TBAUwAwEB/zAN\nBgkqhkiG9w0BAQsFAAOCAQEAIkKr3eIvwZO6a1Jsh3qXwveVnrqwxYvLw2IhTwNT\n/P6C5jbRnzUuDuzg5sEIpbBo/Bp3qIp7G5cdVOkIrqO7uCp6Kyc7d9lPsEe/cbF4\naNwNmdWroRN1y0tuMU6+z7frd5pOeAZP9E/DM/0Uaz4yVzwnlvZUttaLymyMhH54\nisGQKbAqHDFtKZvb6DxsHzrO2YgeaBAtjeVhPWiv8BhzbOo9+hhZvYHYtoM2W+Ze\nDHuvv0v+qouphftDKVBp16N8Pk5WgabTXzV6VcNee92iwbWYDEv06+S3AF/q2TBe\nxxXtAa5ywbp6IRF37QuQChcYnOx7zIylYI1PIENfQFC2BA==\n-----END CERTIFICATE-----\n"

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v5

    .line 1419
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 1420
    .local v5, "mitca":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1427
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 1428
    .local v6, "keyStore":Ljava/security/KeyStore;
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1430
    const/4 v8, 0x1

    .line 1431
    .local v8, "count":I
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->getSystemCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 1432
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

    .line 1433
    nop

    .end local v12    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v8, v8, 0x1

    .line 1431
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1439
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/CloudDB;
    :cond_1
    const-string v9, "comodo"

    invoke-virtual {v6, v9, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1440
    const-string v9, "inter"

    invoke-virtual {v6, v9, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1441
    const-string v9, "dstx3"

    invoke-virtual {v6, v9, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1442
    const-string v9, "mitca"

    invoke-virtual {v6, v9, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1444
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 1443
    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v9

    .line 1445
    .local v9, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v9, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1453
    const-string v10, "TLS"

    invoke-static {v10}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v10

    .line 1454
    .local v10, "ctx":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v9}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v11

    invoke-virtual {v10, v7, v11, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1455
    invoke-virtual {v10}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/CloudDB;->SslSockFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1459
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v1    # "caInput":Ljava/io/ByteArrayInputStream;
    .end local v2    # "ca":Ljava/security/cert/Certificate;
    .end local v3    # "inter":Ljava/security/cert/Certificate;
    .end local v4    # "dstx3":Ljava/security/cert/Certificate;
    .end local v5    # "mitca":Ljava/security/cert/Certificate;
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .end local v8    # "count":I
    .end local v9    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v10    # "ctx":Ljavax/net/ssl/SSLContext;
    nop

    .line 1461
    monitor-exit p0

    return-void

    .line 1456
    :catch_0
    move-exception v0

    .line 1457
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "CloudDB"

    const-string v2, "Could not setup SSL Trust Store for CloudDB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1458
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Could Not setup SSL Trust Store for CloudDB: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1403
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

.method private flushJedis(Z)V
    .locals 2
    .param p1, "restartListener"    # Z

    .line 1307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    if-nez v0, :cond_0

    .line 1308
    return-void

    .line 1311
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    goto :goto_0

    .line 1313
    :catch_0
    move-exception v0

    .line 1316
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    .line 1320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$12;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/CloudDB$12;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1330
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->stopListener()V

    .line 1331
    if-eqz p1, :cond_1

    .line 1332
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->startListener()V

    .line 1334
    :cond_1
    return-void
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fullName"    # Ljava/lang/String;

    .line 1377
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1378
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1379
    .local v1, "dotIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private getSystemCertificates()[Ljava/security/cert/X509Certificate;
    .locals 4

    .line 1470
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 1469
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 1471
    .local v1, "otmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1472
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 1473
    .local v2, "otm":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v2}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1474
    .end local v1    # "otmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "otm":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v1

    .line 1475
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CloudDB"

    const-string v3, "Getting System Certificates"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1476
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method private getValueByTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueIfTagNotThere"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 830
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 832
    .local v0, "value":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v1

    .line 837
    .local v1, "jedis":Lredis/clients/jedis/Jedis;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lredis/clients/jedis/Jedis;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 841
    .local v4, "returnValue":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 842
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v5, v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentationIfValueFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 843
    .local v5, "val":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 844
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 846
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 848
    .end local v5    # "val":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 852
    :cond_1
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 861
    .end local v4    # "returnValue":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 862
    .local v4, "e":Lredis/clients/jedis/exceptions/JedisException;
    const-string v5, "CloudDB"

    const-string v6, "Exception in GetValue"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 863
    invoke-virtual {v4}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 864
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    .line 865
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_2

    .line 857
    .end local v4    # "e":Lredis/clients/jedis/exceptions/JedisException;
    :catch_1
    move-exception v4

    .line 858
    .local v4, "e":Ljava/lang/NullPointerException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System Error getting tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 859
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    .line 860
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .end local v4    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 854
    :catch_2
    move-exception v2

    .line 855
    .local v2, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON conversion error for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 866
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    nop

    .line 868
    :goto_2
    return-object v0
.end method

.method private readFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;

    .line 1352
    const-string v0, "Read"

    move-object v1, p1

    .line 1354
    .local v1, "originalFileName":Ljava/lang/String;
    :try_start_0
    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1355
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object p1, v2

    .line 1357
    :cond_0
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1360
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1361
    .local v2, "extension":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->readFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)[B

    move-result-object v3

    .line 1362
    .local v3, "content":[B
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 1363
    .local v5, "encodedContent":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 1364
    .local v6, "results":[Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 1365
    const/4 v4, 0x1

    aput-object v5, v6, v4

    .line 1366
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0

    .line 1358
    .end local v2    # "extension":Ljava/lang/String;
    .end local v3    # "content":[B
    .end local v5    # "encodedContent":Ljava/lang/String;
    .end local v6    # "results":[Ljava/lang/Object;
    :cond_1
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fileName, was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ReadFrom"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local p1    # "fileName":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    .end local v1    # "originalFileName":Ljava/lang/String;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1370
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1367
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1368
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method private declared-synchronized startListener()V
    .locals 1

    monitor-enter p0

    .line 380
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->listenerRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 384
    monitor-exit p0

    return-void

    .line 386
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->listenerRunning:Z

    .line 390
    new-instance v0, Lcom/google/appinventor/components/runtime/CloudDB$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/CloudDB$1;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    .line 437
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    monitor-exit p0

    return-void

    .line 379
    .end local v0    # "t":Ljava/lang/Thread;
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/CloudDB;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopListener()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->terminate()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->listenerRunning:Z

    .line 353
    :cond_0
    return-void
.end method


# virtual methods
.method public AppendValueToList(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "itemToAdd"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Append a value to the end of a list atomically. If two devices use this function simultaneously, both will be appended and no data lost."
    .end annotation

    .line 1003
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 1005
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1007
    .local v0, "itemObject":Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 1008
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 1010
    :catch_0
    move-exception v1

    .line 1011
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v3, "Value failed to convert to JSON."

    const-string v4, "JSON Creation Error."

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1012
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    nop

    .line 1014
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1015
    .local v1, "item":Ljava/lang/String;
    move-object v2, p1

    .line 1017
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/google/appinventor/components/runtime/CloudDB$6;

    invoke-direct {v4, p0, v2, v1}, Lcom/google/appinventor/components/runtime/CloudDB$6;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1029
    return-void
.end method

.method public ClearTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove the tag from CloudDB."
    .end annotation

    .line 1077
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 1078
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$7;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB$7;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1092
    return-void
.end method

.method public CloudConnected()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "returns True if we are on the network and will likely be able to connect to the CloudDB server."
    .end annotation

    .line 880
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 881
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 882
    .local v1, "isConnected":Z
    :goto_0
    return v1
.end method

.method public CloudDBError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that an error occurred while communicating with the CloudDB Redis server."
    .end annotation

    .line 1209
    const-string v0, "CloudDB"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$11;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB$11;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1222
    return-void
.end method

.method public DataChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that CloudDB data has changed for the given tag and value."
    .end annotation

    .line 1179
    const-string v0, ""

    .line 1181
    .local v0, "tagValue":Ljava/lang/Object;
    if-eqz p2, :cond_0

    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1182
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 1184
    :catch_0
    move-exception v1

    .line 1185
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v3, "Value failed to convert from JSON."

    const-string v4, "JSON Retrieval Error."

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1186
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    nop

    .line 1187
    move-object v1, v0

    .line 1190
    .local v1, "finalTagValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1192
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/CloudDB$10;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/appinventor/components/runtime/CloudDB$10;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1198
    return-void
.end method

.method public DefaultRedisServer(Ljava/lang/String;)V
    .locals 1
    .param p1, "server"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Default Redis Server to use."
        userVisible = false
    .end annotation

    .line 486
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->defaultRedisServer:Ljava/lang/String;

    .line 487
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useDefault:Z

    if-eqz v0, :cond_0

    .line 488
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    .line 490
    :cond_0
    return-void
.end method

.method public FirstRemoved(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered by the \"RemoveFirstFromList\" function. The argument \"value\" is the object that was the first in the list, and which is now removed."
    .end annotation

    .line 899
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 901
    if-eqz p1, :cond_0

    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 902
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "CloudDB"

    const-string v2, "error while converting to JSON..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 906
    return-void

    .line 907
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    nop

    .line 908
    move-object v0, p1

    .line 909
    .local v0, "sValue":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/CloudDB$4;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB$4;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 915
    return-void
.end method

.method public GetTagList()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the list of tags for this application. When complete a \"TagList\" event will be triggered with the list of known tags."
    .end annotation

    .line 1122
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 1123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1124
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1125
    .local v1, "isConnected":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1126
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/appinventor/components/runtime/CloudDB$9;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/CloudDB$9;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    .line 1153
    :cond_1
    const-string v2, "Not connected to the Internet, cannot list tags"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 1155
    :goto_1
    return-void
.end method

.method public GetValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueIfTagNotThere"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Value for a tag, doesn\'t return the value but will cause a GotValue event to fire when the value is looked up."
    .end annotation

    .line 781
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 782
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 783
    .local v0, "value":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 784
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 785
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 786
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 788
    .local v4, "isConnected":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 791
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/google/appinventor/components/runtime/CloudDB$3;

    invoke-direct {v6, p0, p1, p2}, Lcom/google/appinventor/components/runtime/CloudDB$3;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    .line 814
    :cond_1
    const-string v5, "Cannot fetch variables while off-line."

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 816
    :goto_1
    return-void
.end method

.method public GotValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 1042
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 1046
    if-nez p2, :cond_0

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trouble getting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from the server."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 1048
    return-void

    .line 1055
    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1056
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    goto :goto_0

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Value failed to convert from JSON."

    const-string v3, "JSON Retrieval Error."

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1060
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    nop

    .line 1063
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/CloudDB;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1064
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v0

    const-string v0, "GotValue"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1065
    return-void
.end method

.method public Initialize()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->startListener()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V

    .line 339
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 340
    return-void
.end method

.method public ProjectID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the ProjectID for this CloudDB project."
    .end annotation

    .line 515
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 516
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    return-object v0
.end method

.method public ProjectID(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 533
    return-void

    .line 531
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CloudDB ProjectID property cannot be blank."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public RedisPort()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Redis Server port to use. Defaults to 6381"
    .end annotation

    .line 504
    iget v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    return v0
.end method

.method public RedisPort(I)V
    .locals 1
    .param p1, "port"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "6381"
        editorType = "integer"
    .end annotation

    .line 495
    iget v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    if-eq p1, v0, :cond_0

    .line 496
    iput p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    .line 497
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    .line 499
    :cond_0
    return-void
.end method

.method public RedisServer()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Redis Server to use to store data. A setting of \"DEFAULT\" means that the MIT server will be used."
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->defaultRedisServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const-string v0, "DEFAULT"

    return-object v0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    return-object v0
.end method

.method public RedisServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "servername"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "DEFAULT"
        editorType = "string"
    .end annotation

    .line 443
    const-string v0, "DEFAULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 444
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useDefault:Z

    if-nez v0, :cond_2

    .line 445
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useDefault:Z

    .line 446
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->defaultRedisServer:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->defaultRedisServer:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    .line 453
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    goto :goto_1

    .line 456
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useDefault:Z

    .line 457
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 458
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    .line 459
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    .line 462
    :cond_2
    :goto_1
    return-void
.end method

.method public RemoveFirstFromList(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the first element of a list and atomically remove it. If two devices use this function simultaneously, one will get the first element and the the other will get the second element, or an error if there is no available element. When the element is available, the \"FirstRemoved\" event will be triggered."
    .end annotation

    .line 955
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 957
    move-object v0, p1

    .line 959
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/CloudDB$5;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB$5;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 970
    return-void
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueToStore"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Store a value at a tag."
    .end annotation

    .line 620
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 622
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 623
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 626
    .local v2, "isConnected":Z
    :goto_0
    if-eqz p2, :cond_3

    .line 627
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, "strval":Ljava/lang/String;
    const-string v4, "file:///"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "/storage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 631
    :cond_1
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "value":Ljava/lang/String;
    goto :goto_2

    .line 629
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->readFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 633
    .end local v3    # "strval":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 634
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    const-string v3, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v3

    .line 638
    .restart local v4    # "value":Ljava/lang/String;
    :goto_3
    nop

    .line 640
    if-eqz v2, :cond_6

    .line 644
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->storeQueue:Ljava/util/List;

    monitor-enter v3

    .line 645
    const/4 v5, 0x0

    .line 646
    .local v5, "kickit":Z
    :try_start_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/CloudDB;->storeQueue:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 650
    const/4 v5, 0x1

    .line 656
    :cond_4
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    .local v6, "valueList":Lorg/json/JSONArray;
    :try_start_2
    invoke-virtual {v6, v1, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 661
    nop

    .line 662
    :try_start_3
    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;

    invoke-direct {v1, p1, v6}, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 663
    .local v1, "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/CloudDB;->storeQueue:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    if-eqz v5, :cond_5

    .line 665
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/google/appinventor/components/runtime/CloudDB$2;

    invoke-direct {v8, p0}, Lcom/google/appinventor/components/runtime/CloudDB$2;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 758
    .end local v1    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    .end local v5    # "kickit":Z
    .end local v6    # "valueList":Lorg/json/JSONArray;
    :cond_5
    monitor-exit v3

    goto :goto_4

    .line 659
    .restart local v5    # "kickit":Z
    .restart local v6    # "valueList":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 660
    .local v1, "e":Lorg/json/JSONException;
    new-instance v7, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v8, "JSON Error putting value."

    const-string v9, "value is not convertable"

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v2    # "isConnected":Z
    .end local v4    # "value":Ljava/lang/String;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "valueToStore":Ljava/lang/Object;
    throw v7

    .line 758
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "kickit":Z
    .end local v6    # "valueList":Lorg/json/JSONArray;
    .restart local v0    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v2    # "isConnected":Z
    .restart local v4    # "value":Ljava/lang/String;
    .restart local p1    # "tag":Ljava/lang/String;
    .restart local p2    # "valueToStore":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 760
    :cond_6
    const-string v1, "Cannot store values off-line."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 762
    :goto_4
    return-void

    .line 636
    .end local v4    # "value":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 637
    .restart local v1    # "e":Lorg/json/JSONException;
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v4, "Value failed to convert to JSON."

    const-string v5, "JSON Creation Error."

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public TagList(Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when we have received the list of known tags. Used with the \"GetTagList\" Function."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1166
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 1167
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "TagList"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1168
    return-void
.end method

.method public Token()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This field contains the authentication token used to login to the backed Redis server. For the \"DEFAULT\" server, do not edit this value, the system will fill it in for you. A system administrator may also provide a special value to you which can be used to share data between multiple projects from multiple people. If using your own Redis server, set a password in the server\'s config and enter it here."
        userVisible = false
    .end annotation

    .line 571
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 572
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    return-object v0
.end method

.method public Token(Ljava/lang/String;)V
    .locals 2
    .param p1, "authToken"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 549
    return-void

    .line 547
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CloudDB Token property cannot be blank."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public UpdateDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 1105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/CloudDB$8;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1111
    return-void
.end method

.method public UseSSL(Z)V
    .locals 1
    .param p1, "useSSL"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .line 584
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useSSL:Z

    if-eq v0, p1, :cond_0

    .line 585
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useSSL:Z

    .line 586
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    .line 588
    :cond_0
    return-void
.end method

.method public UseSSL()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set to true to use SSL to talk to CloudDB/Redis server. This should be set to True for the \"DEFAULT\" server."
        userVisible = false
    .end annotation

    .line 594
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useSSL:Z

    return v0
.end method

.method public addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 1519
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1520
    return-void
.end method

.method public getBackground()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB;->getDataValue(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getDataValue(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .line 1493
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$13;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB$13;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getForm()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 1234
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public declared-synchronized getJedis()Lredis/clients/jedis/Jedis;
    .locals 1

    monitor-enter p0

    .line 1293
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    if-nez v0, :cond_0

    .line 1294
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis(Z)Lredis/clients/jedis/Jedis;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    .line 1296
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/CloudDB;
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getJedis(Z)Lredis/clients/jedis/Jedis;
    .locals 14
    .param p1, "createNew"    # Z

    .line 1238
    const-string v0, "in getJedis()"

    const-string v1, "CloudDB"

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->dead:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1239
    return-object v3

    .line 1247
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1248
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "jToken":Ljava/lang/String;
    goto :goto_0

    .line 1250
    .end local v4    # "jToken":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    .line 1258
    .restart local v4    # "jToken":Ljava/lang/String;
    :goto_0
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useSSL:Z

    if-eqz v5, :cond_2

    .line 1261
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->ensureSslSockFactory()V

    .line 1262
    new-instance v5, Lredis/clients/jedis/JedisShardInfo;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    iget v8, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    iget-object v11, p0, Lcom/google/appinventor/components/runtime/CloudDB;->SslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v9, 0x4e20

    const/4 v10, 0x1

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;IIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 1264
    .local v5, "jedisinfo":Lredis/clients/jedis/JedisShardInfo;
    invoke-virtual {v5, v4}, Lredis/clients/jedis/JedisShardInfo;->setPassword(Ljava/lang/String;)V

    .line 1265
    new-instance v6, Lredis/clients/jedis/Jedis;

    invoke-direct {v6, v5}, Lredis/clients/jedis/Jedis;-><init>(Lredis/clients/jedis/JedisShardInfo;)V

    move-object v0, v6

    .line 1266
    .end local v5    # "jedisinfo":Lredis/clients/jedis/JedisShardInfo;
    .local v0, "jedis":Lredis/clients/jedis/Jedis;
    goto :goto_1

    .line 1267
    .end local v0    # "jedis":Lredis/clients/jedis/Jedis;
    :cond_2
    new-instance v5, Lredis/clients/jedis/JedisShardInfo;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    iget v7, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    const/16 v8, 0x4e20

    invoke-direct {v5, v6, v7, v8}, Lredis/clients/jedis/JedisShardInfo;-><init>(Ljava/lang/String;II)V

    .line 1269
    .restart local v5    # "jedisinfo":Lredis/clients/jedis/JedisShardInfo;
    invoke-virtual {v5, v4}, Lredis/clients/jedis/JedisShardInfo;->setPassword(Ljava/lang/String;)V

    .line 1270
    new-instance v6, Lredis/clients/jedis/Jedis;

    invoke-direct {v6, v5}, Lredis/clients/jedis/Jedis;-><init>(Lredis/clients/jedis/JedisShardInfo;)V
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lredis/clients/jedis/exceptions/JedisDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 1288
    .end local v4    # "jToken":Ljava/lang/String;
    .end local v5    # "jedisinfo":Lredis/clients/jedis/JedisShardInfo;
    .restart local v0    # "jedis":Lredis/clients/jedis/Jedis;
    :goto_1
    nop

    .line 1289
    return-object v0

    .line 1282
    .end local v0    # "jedis":Lredis/clients/jedis/Jedis;
    :catch_0
    move-exception v4

    .line 1284
    .local v4, "e":Lredis/clients/jedis/exceptions/JedisDataException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1285
    invoke-virtual {v4}, Lredis/clients/jedis/exceptions/JedisDataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CloudDB disabled, restart to re-enable."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 1286
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->dead:Z

    .line 1287
    return-object v3

    .line 1278
    .end local v4    # "e":Lredis/clients/jedis/exceptions/JedisDataException;
    :catch_1
    move-exception v2

    .line 1279
    .local v2, "e":Lredis/clients/jedis/exceptions/JedisConnectionException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1280
    invoke-virtual {v2}, Lredis/clients/jedis/exceptions/JedisConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 1281
    return-object v3
.end method

.method public varargs jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "scriptsha1"    # Ljava/lang/String;
    .param p3, "argcount"    # I
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lredis/clients/jedis/exceptions/JedisException;
        }
    .end annotation

    .line 1387
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v0

    .line 1389
    .local v0, "jedis":Lredis/clients/jedis/Jedis;
    :try_start_0
    invoke-virtual {v0, p2, p3, p4}, Lredis/clients/jedis/Jedis;->evalsha(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisNoScriptException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1390
    :catch_0
    move-exception v1

    .line 1396
    .local v1, "e":Lredis/clients/jedis/exceptions/JedisNoScriptException;
    invoke-virtual {v0, p1, p3, p4}, Lredis/clients/jedis/Jedis;->eval(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 100
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/CloudDB;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 1530
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 1531
    .local v1, "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onDataSourceValueChange(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1532
    .end local v1    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    goto :goto_0

    .line 1533
    :cond_0
    return-void
.end method

.method public onClear()V
    .locals 1

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->shutdown:Z

    .line 362
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    .line 366
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 373
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->onClear()V

    .line 374
    return-void
.end method

.method public removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 1524
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1525
    return-void
.end method
