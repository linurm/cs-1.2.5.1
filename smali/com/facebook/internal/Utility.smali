.class public final Lcom/facebook/internal/Utility;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/Utility$FetchedAppSettings;
    }
.end annotation


# static fields
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final APP_SETTING_FIELDS:[Ljava/lang/String;

.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x2000

.field private static final HASH_ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field private static final HASH_ALGORITHM_SHA1:Ljava/lang/String; = "SHA-1"

.field static final LOG_TAG:Ljava/lang/String; = "FacebookSDK"

.field private static final NUX_CONTENT:Ljava/lang/String; = "gdpv4_nux_content"

.field private static final NUX_ENABLED:Ljava/lang/String; = "gdpv4_nux_enabled"

.field private static final SUPPORTS_ATTRIBUTION:Ljava/lang/String; = "supports_attribution"

.field private static final SUPPORTS_IMPLICIT_SDK_LOGGING:Ljava/lang/String; = "supports_implicit_sdk_logging"

.field private static final URL_SCHEME:Ljava/lang/String; = "https"

.field private static fetchedAppSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/Utility$FetchedAppSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    const-string v2, "supports_attribution"

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    const-string v2, "supports_implicit_sdk_logging"

    #@b
    aput-object v2, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    const-string v2, "gdpv4_nux_content"

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x3

    #@13
    const-string v2, "gdpv4_nux_enabled"

    #@15
    aput-object v2, v0, v1

    #@17
    sput-object v0, Lcom/facebook/internal/Utility;->APP_SETTING_FIELDS:[Ljava/lang/String;

    #@19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@1b
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@1e
    sput-object v0, Lcom/facebook/internal/Utility;->fetchedAppSettings:Ljava/util/Map;

    #@20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    #@0
    if-nez p0, :cond_8

    #@2
    if-nez p1, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5

    #@8
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_5
.end method

.method public static varargs arrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    array-length v0, p0

    #@3
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    array-length v2, p0

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    if-ge v0, v2, :cond_12

    #@a
    aget-object v3, p0, v0

    #@c
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_8

    #@12
    :cond_12
    return-object v1
.end method

.method public static varargs asListNoNulls([Ljava/lang/Object;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    array-length v2, p0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    if-ge v0, v2, :cond_13

    #@9
    aget-object v3, p0, v0

    #@b
    if-eqz v3, :cond_10

    #@d
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    :cond_10
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_7

    #@13
    :cond_13
    return-object v1
.end method

.method public static buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 8

    #@0
    new-instance v2, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    const-string v0, "https"

    #@7
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@a
    invoke-virtual {v2, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@d
    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@10
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@13
    move-result-object v0

    #@14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v3

    #@18
    :cond_18
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_32

    #@1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/lang/String;

    #@24
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    instance-of v4, v1, Ljava/lang/String;

    #@2a
    if-eqz v4, :cond_18

    #@2c
    check-cast v1, Ljava/lang/String;

    #@2e
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@31
    goto :goto_18

    #@32
    :cond_32
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method

.method public static clearCaches(Landroid/content/Context;)V
    .registers 1

    #@0
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->clearCache(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method private static clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    #@0
    const/4 v1, 0x0

    #@1
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    #@8
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    if-nez v0, :cond_13

    #@12
    :goto_12
    return-void

    #@13
    :cond_13
    const-string v3, ";"

    #@15
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    array-length v4, v3

    #@1a
    move v0, v1

    #@1b
    :goto_1b
    if-ge v0, v4, :cond_47

    #@1d
    aget-object v5, v3, v0

    #@1f
    const-string v6, "="

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    array-length v6, v5

    #@26
    if-lez v6, :cond_44

    #@28
    new-instance v6, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    aget-object v5, v5, v1

    #@2f
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    const-string v6, "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v2, p1, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    #@44
    :cond_44
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_1b

    #@47
    :cond_47
    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    #@4a
    goto :goto_12
.end method

.method public static clearFacebookCookies(Landroid/content/Context;)V
    .registers 2

    #@0
    const-string v0, "facebook.com"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    #@5
    const-string v0, ".facebook.com"

    #@7
    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    #@a
    const-string v0, "https://facebook.com"

    #@c
    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    #@f
    const-string v0, "https://.facebook.com"

    #@11
    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    #@14
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2

    #@0
    if-eqz p0, :cond_5

    #@2
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    #@5
    :cond_5
    :goto_5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    goto :goto_5
.end method

.method static convertJSONObjectToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    #@8
    move-result-object v3

    #@9
    const/4 v0, 0x0

    #@a
    move v1, v0

    #@b
    :goto_b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    #@e
    move-result v0

    #@f
    if-ge v1, v0, :cond_2a

    #@11
    :try_start_11
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    instance-of v5, v0, Lorg/json/JSONObject;

    #@1b
    if-eqz v5, :cond_23

    #@1d
    check-cast v0, Lorg/json/JSONObject;

    #@1f
    invoke-static {v0}, Lcom/facebook/internal/Utility;->convertJSONObjectToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;

    #@22
    move-result-object v0

    #@23
    :cond_23
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_26} :catch_2b

    #@26
    :goto_26
    add-int/lit8 v0, v1, 0x1

    #@28
    move v1, v0

    #@29
    goto :goto_b

    #@2a
    :cond_2a
    return-object v2

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    goto :goto_26
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    :goto_6
    return-void

    #@7
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1d

    #@d
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@10
    move-result-object v1

    #@11
    array-length v2, v1

    #@12
    const/4 v0, 0x0

    #@13
    :goto_13
    if-ge v0, v2, :cond_1d

    #@15
    aget-object v3, v1, v0

    #@17
    invoke-static {v3}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_13

    #@1d
    :cond_1d
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@20
    goto :goto_6
.end method

.method public static disconnectQuietly(Ljava/net/URLConnection;)V
    .registers 2

    #@0
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    #@2
    if-eqz v0, :cond_9

    #@4
    check-cast p0, Ljava/net/HttpURLConnection;

    #@6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    #@9
    :cond_9
    return-void
.end method

.method public static getHashedDeviceAndAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    const-string v1, "android_id"

    #@6
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, 0x0

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-static {v0}, Lcom/facebook/internal/Utility;->sha1hash(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    goto :goto_d
.end method

.method public static getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "context"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    invoke-static {p0}, Lcom/facebook/Settings;->loadDefaultsFromMetadata(Landroid/content/Context;)V

    #@8
    invoke-static {}, Lcom/facebook/Settings;->getApplicationId()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static varargs getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3} :catch_5

    #@3
    move-result-object v0

    #@4
    :goto_4
    return-object v0

    #@5
    :catch_5
    move-exception v0

    #@6
    const/4 v0, 0x0

    #@7
    goto :goto_4
.end method

.method public static varargs getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    #@7
    move-result-object v0

    #@8
    :goto_8
    return-object v0

    #@9
    :catch_9
    move-exception v0

    #@a
    const/4 v0, 0x0

    #@b
    goto :goto_8
.end method

.method public static getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_34

    #@6
    instance-of v1, v0, Ljava/lang/String;

    #@8
    if-eqz v1, :cond_34

    #@a
    new-instance v1, Lorg/json/JSONTokener;

    #@c
    check-cast v0, Ljava/lang/String;

    #@e
    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    #@11
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    :goto_15
    if-eqz v1, :cond_32

    #@17
    instance-of v0, v1, Lorg/json/JSONObject;

    #@19
    if-nez v0, :cond_32

    #@1b
    instance-of v0, v1, Lorg/json/JSONArray;

    #@1d
    if-nez v0, :cond_32

    #@1f
    if-eqz p2, :cond_2a

    #@21
    new-instance v0, Lorg/json/JSONObject;

    #@23
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@26
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@29
    :goto_29
    return-object v0

    #@2a
    :cond_2a
    new-instance v0, Lcom/facebook/FacebookException;

    #@2c
    const-string v1, "Got an unexpected non-JSON object."

    #@2e
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    :cond_32
    move-object v0, v1

    #@33
    goto :goto_29

    #@34
    :cond_34
    move-object v1, v0

    #@35
    goto :goto_15
.end method

.method private static hashBytes(Ljava/security/MessageDigest;[B)Ljava/lang/String;
    .registers 8

    #@0
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    #@3
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    #@6
    move-result-object v1

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    array-length v3, v1

    #@d
    const/4 v0, 0x0

    #@e
    :goto_e
    if-ge v0, v3, :cond_2b

    #@10
    aget-byte v4, v1, v0

    #@12
    shr-int/lit8 v5, v4, 0x4

    #@14
    and-int/lit8 v5, v5, 0xf

    #@16
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    shr-int/lit8 v4, v4, 0x0

    #@1f
    and-int/lit8 v4, v4, 0xf

    #@21
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_e

    #@2b
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method

.method private static hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 3

    #@0
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3} :catch_9

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Lcom/facebook/internal/Utility;->hashBytes(Ljava/security/MessageDigest;[B)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    :goto_8
    return-object v0

    #@9
    :catch_9
    move-exception v0

    #@a
    const/4 v0, 0x0

    #@b
    goto :goto_8
.end method

.method public static varargs invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_4} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_4} :catch_8

    #@4
    move-result-object v0

    #@5
    :goto_5
    return-object v0

    #@6
    :catch_6
    move-exception v1

    #@7
    goto :goto_5

    #@8
    :catch_8
    move-exception v1

    #@9
    goto :goto_5
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .registers 2

    #@0
    if-eqz p0, :cond_8

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public static isNullOrEmpty(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_8

    #@2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public static isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    if-eqz p1, :cond_a

    #@4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_14

    #@a
    :cond_a
    if-eqz p0, :cond_12

    #@c
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_13

    #@12
    :cond_12
    move v0, v1

    #@13
    :cond_13
    :goto_13
    return v0

    #@14
    :cond_14
    new-instance v2, Ljava/util/HashSet;

    #@16
    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@19
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v3

    #@1d
    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_2e

    #@23
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@2a
    move-result v4

    #@2b
    if-nez v4, :cond_1d

    #@2d
    goto :goto_13

    #@2e
    :cond_2e
    move v0, v1

    #@2f
    goto :goto_13
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    #@0
    if-eqz p0, :cond_2a

    #@2
    if-eqz p1, :cond_2a

    #@4
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string v1, ": "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    :cond_2a
    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    #@0
    if-eqz p0, :cond_7

    #@2
    if-eqz p1, :cond_7

    #@4
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    :cond_7
    return-void
.end method

.method static md5hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "MD5"

    #@2
    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static putObjectInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    #@0
    instance-of v0, p2, Ljava/lang/String;

    #@2
    if-eqz v0, :cond_a

    #@4
    check-cast p2, Ljava/lang/String;

    #@6
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    instance-of v0, p2, Landroid/os/Parcelable;

    #@c
    if-eqz v0, :cond_14

    #@e
    check-cast p2, Landroid/os/Parcelable;

    #@10
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@13
    goto :goto_9

    #@14
    :cond_14
    instance-of v0, p2, [B

    #@16
    if-eqz v0, :cond_1e

    #@18
    check-cast p2, [B

    #@1a
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@1d
    goto :goto_9

    #@1e
    :cond_1e
    new-instance v0, Lcom/facebook/FacebookException;

    #@20
    const-string v1, "attempted to add unsupported type to Bundle"

    #@22
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0
.end method

.method public static queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;
    .registers 9

    #@0
    const/4 v5, 0x0

    #@1
    if-nez p1, :cond_14

    #@3
    sget-object v0, Lcom/facebook/internal/Utility;->fetchedAppSettings:Ljava/util/Map;

    #@5
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_14

    #@b
    sget-object v0, Lcom/facebook/internal/Utility;->fetchedAppSettings:Ljava/util/Map;

    #@d
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/facebook/internal/Utility$FetchedAppSettings;

    #@13
    :goto_13
    return-object v0

    #@14
    :cond_14
    new-instance v0, Landroid/os/Bundle;

    #@16
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@19
    const-string v1, "fields"

    #@1b
    const-string v2, ","

    #@1d
    sget-object v3, Lcom/facebook/internal/Utility;->APP_SETTING_FIELDS:[Ljava/lang/String;

    #@1f
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    invoke-static {v5, p0, v5}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, v0}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    #@2d
    invoke-virtual {v1}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    #@34
    move-result-object v4

    #@35
    new-instance v0, Lcom/facebook/internal/Utility$FetchedAppSettings;

    #@37
    const-string v1, "supports_attribution"

    #@39
    invoke-static {v4, v1}, Lcom/facebook/internal/Utility;->safeGetBooleanFromResponse(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Z

    #@3c
    move-result v1

    #@3d
    const-string v2, "supports_implicit_sdk_logging"

    #@3f
    invoke-static {v4, v2}, Lcom/facebook/internal/Utility;->safeGetBooleanFromResponse(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Z

    #@42
    move-result v2

    #@43
    const-string v3, "gdpv4_nux_content"

    #@45
    invoke-static {v4, v3}, Lcom/facebook/internal/Utility;->safeGetStringFromResponse(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    const-string v6, "gdpv4_nux_enabled"

    #@4b
    invoke-static {v4, v6}, Lcom/facebook/internal/Utility;->safeGetBooleanFromResponse(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Z

    #@4e
    move-result v4

    #@4f
    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/Utility$FetchedAppSettings;-><init>(ZZLjava/lang/String;ZLcom/facebook/internal/Utility$1;)V

    #@52
    sget-object v1, Lcom/facebook/internal/Utility;->fetchedAppSettings:Ljava/util/Map;

    #@54
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    goto :goto_13
.end method

.method public static readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    #@3
    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_36

    #@6
    :try_start_6
    new-instance v2, Ljava/io/InputStreamReader;

    #@8
    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_3a

    #@b
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const/16 v3, 0x800

    #@12
    new-array v3, v3, [C

    #@14
    :goto_14
    invoke-virtual {v2, v3}, Ljava/io/InputStreamReader;->read([C)I

    #@17
    move-result v4

    #@18
    const/4 v5, -0x1

    #@19
    if-eq v4, v5, :cond_2b

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-virtual {v1, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_20

    #@1f
    goto :goto_14

    #@20
    :catchall_20
    move-exception v1

    #@21
    move-object v6, v2

    #@22
    move-object v2, v1

    #@23
    move-object v1, v6

    #@24
    :goto_24
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@27
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@2a
    throw v2

    #@2b
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_20

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@32
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@35
    return-object v1

    #@36
    :catchall_36
    move-exception v0

    #@37
    move-object v2, v0

    #@38
    move-object v0, v1

    #@39
    goto :goto_24

    #@3a
    :catchall_3a
    move-exception v2

    #@3b
    goto :goto_24
.end method

.method private static safeGetBooleanFromResponse(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Z
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4
    move-result-object v0

    #@5
    if-eqz p0, :cond_b

    #@7
    invoke-interface {p0, p1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    :cond_b
    instance-of v1, v0, Ljava/lang/Boolean;

    #@d
    if-nez v1, :cond_13

    #@f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object v0

    #@13
    :cond_13
    check-cast v0, Ljava/lang/Boolean;

    #@15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method private static safeGetStringFromResponse(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, ""

    #@2
    if-eqz p0, :cond_8

    #@4
    invoke-interface {p0, p1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    :cond_8
    instance-of v1, v0, Ljava/lang/String;

    #@a
    if-nez v1, :cond_e

    #@c
    const-string v0, ""

    #@e
    :cond_e
    check-cast v0, Ljava/lang/String;

    #@10
    return-object v0
.end method

.method public static setAppEventAttributionParameters(Lcom/facebook/model/GraphObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V
    .registers 8

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    if-eqz p1, :cond_13

    #@4
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_13

    #@a
    const-string v0, "attribution"

    #@c
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-interface {p0, v0, v3}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@13
    :cond_13
    if-eqz p1, :cond_42

    #@15
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    if-eqz v0, :cond_42

    #@1b
    const-string v0, "advertiser_id"

    #@1d
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-interface {p0, v0, v3}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@24
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_40

    #@2a
    move v0, v1

    #@2b
    :goto_2b
    const-string v3, "advertiser_tracking_enabled"

    #@2d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@30
    move-result-object v0

    #@31
    invoke-interface {p0, v3, v0}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@34
    :cond_34
    :goto_34
    if-nez p3, :cond_4a

    #@36
    :goto_36
    const-string v0, "application_tracking_enabled"

    #@38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3b
    move-result-object v1

    #@3c
    invoke-interface {p0, v0, v1}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@3f
    return-void

    #@40
    :cond_40
    move v0, v2

    #@41
    goto :goto_2b

    #@42
    :cond_42
    if-eqz p2, :cond_34

    #@44
    const-string v0, "advertiser_id"

    #@46
    invoke-interface {p0, v0, p2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@49
    goto :goto_34

    #@4a
    :cond_4a
    move v1, v2

    #@4b
    goto :goto_36
.end method

.method static sha1hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "SHA-1"

    #@2
    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static sha1hash([B)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "SHA-1"

    #@2
    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    #@0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-eqz v0, :cond_e

    #@a
    if-eqz v1, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    if-nez v0, :cond_17

    #@10
    if-nez v1, :cond_17

    #@12
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    goto :goto_d

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    goto :goto_d
.end method

.method public static varargs unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    #@0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
