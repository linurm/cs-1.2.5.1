.class public final Lcom/google/android/gms/internal/eo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/eo$a;
    }
.end annotation


# static fields
.field private static final qp:Ljava/lang/Object;

.field private static sl:Z

.field private static sm:Ljava/lang/String;

.field private static sn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/eo;->qp:Ljava/lang/Object;

    #@7
    const/4 v0, 0x1

    #@8
    sput-boolean v0, Lcom/google/android/gms/internal/eo;->sl:Z

    #@a
    const/4 v0, 0x0

    #@b
    sput-boolean v0, Lcom/google/android/gms/internal/eo;->sn:Z

    #@d
    return-void
.end method

.method public static a(Ljava/lang/Readable;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/16 v1, 0x800

    #@7
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@a
    move-result-object v1

    #@b
    :goto_b
    invoke-interface {p0, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    #@e
    move-result v2

    #@f
    const/4 v3, -0x1

    #@10
    if-eq v2, v3, :cond_1a

    #@12
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@15
    const/4 v3, 0x0

    #@16
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@19
    goto :goto_b

    #@1a
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method private static a(Ljava/util/Collection;)Lorg/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    new-instance v0, Lorg/json/JSONArray;

    #@2
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_17

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/eo;->a(Lorg/json/JSONArray;Ljava/lang/Object;)V

    #@16
    goto :goto_9

    #@17
    :cond_17
    return-object v0
.end method

.method static a([Ljava/lang/Object;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    new-instance v1, Lorg/json/JSONArray;

    #@2
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    #@5
    array-length v2, p0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    if-ge v0, v2, :cond_11

    #@9
    aget-object v3, p0, v0

    #@b
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/eo;->a(Lorg/json/JSONArray;Ljava/lang/Object;)V

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_7

    #@11
    :cond_11
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V
    .registers 4

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/eo;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    #@7
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_19

    #@a
    new-instance v2, Lcom/google/android/gms/internal/es;

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/String;

    #@12
    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/es;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/es;->start()V

    #@18
    goto :goto_4

    #@19
    :cond_19
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V
    .registers 6

    #@0
    const v0, 0xea60

    #@3
    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    #@6
    invoke-virtual {p3, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    #@9
    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    #@c
    const-string v0, "User-Agent"

    #@e
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/eo;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    const/4 v0, 0x0

    #@16
    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    #@19
    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .registers 3

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xb

    #@4
    if-lt v0, v1, :cond_9

    #@6
    invoke-static {p0}, Lcom/google/android/gms/internal/eq;->a(Landroid/webkit/WebView;)V

    #@9
    :cond_9
    return-void
.end method

.method private static a(Lorg/json/JSONArray;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    instance-of v0, p1, Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_e

    #@4
    check-cast p1, Landroid/os/Bundle;

    #@6
    invoke-static {p1}, Lcom/google/android/gms/internal/eo;->b(Landroid/os/Bundle;)Lorg/json/JSONObject;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    instance-of v0, p1, Ljava/util/Map;

    #@10
    if-eqz v0, :cond_1c

    #@12
    check-cast p1, Ljava/util/Map;

    #@14
    invoke-static {p1}, Lcom/google/android/gms/internal/eo;->o(Ljava/util/Map;)Lorg/json/JSONObject;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@1b
    goto :goto_d

    #@1c
    :cond_1c
    instance-of v0, p1, Ljava/util/Collection;

    #@1e
    if-eqz v0, :cond_2a

    #@20
    check-cast p1, Ljava/util/Collection;

    #@22
    invoke-static {p1}, Lcom/google/android/gms/internal/eo;->a(Ljava/util/Collection;)Lorg/json/JSONArray;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@29
    goto :goto_d

    #@2a
    :cond_2a
    instance-of v0, p1, [Ljava/lang/Object;

    #@2c
    if-eqz v0, :cond_38

    #@2e
    check-cast p1, [Ljava/lang/Object;

    #@30
    invoke-static {p1}, Lcom/google/android/gms/internal/eo;->a([Ljava/lang/Object;)Lorg/json/JSONArray;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@37
    goto :goto_d

    #@38
    :cond_38
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@3b
    goto :goto_d
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    instance-of v0, p2, Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_e

    #@4
    check-cast p2, Landroid/os/Bundle;

    #@6
    invoke-static {p2}, Lcom/google/android/gms/internal/eo;->b(Landroid/os/Bundle;)Lorg/json/JSONObject;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    instance-of v0, p2, Ljava/util/Map;

    #@10
    if-eqz v0, :cond_1c

    #@12
    check-cast p2, Ljava/util/Map;

    #@14
    invoke-static {p2}, Lcom/google/android/gms/internal/eo;->o(Ljava/util/Map;)Lorg/json/JSONObject;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@1b
    goto :goto_d

    #@1c
    :cond_1c
    instance-of v0, p2, Ljava/util/Collection;

    #@1e
    if-eqz v0, :cond_2f

    #@20
    if-eqz p1, :cond_2c

    #@22
    :goto_22
    check-cast p2, Ljava/util/Collection;

    #@24
    invoke-static {p2}, Lcom/google/android/gms/internal/eo;->a(Ljava/util/Collection;)Lorg/json/JSONArray;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@2b
    goto :goto_d

    #@2c
    :cond_2c
    const-string p1, "null"

    #@2e
    goto :goto_22

    #@2f
    :cond_2f
    instance-of v0, p2, [Ljava/lang/Object;

    #@31
    if-eqz v0, :cond_41

    #@33
    check-cast p2, [Ljava/lang/Object;

    #@35
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@38
    move-result-object v0

    #@39
    invoke-static {v0}, Lcom/google/android/gms/internal/eo;->a(Ljava/util/Collection;)Lorg/json/JSONArray;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@40
    goto :goto_d

    #@41
    :cond_41
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@44
    goto :goto_d
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    #@0
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public static a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    :try_start_2
    invoke-static {p2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_b

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :catch_b
    move-exception v1

    #@c
    goto :goto_a
.end method

.method private static b(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    new-instance v1, Lorg/json/JSONObject;

    #@2
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    #@5
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_21

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/String;

    #@19
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/eo;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    #@20
    goto :goto_d

    #@21
    :cond_21
    return-object v1
.end method

.method public static b(Landroid/webkit/WebView;)V
    .registers 3

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xb

    #@4
    if-lt v0, v1, :cond_9

    #@6
    invoke-static {p0}, Lcom/google/android/gms/internal/eq;->b(Landroid/webkit/WebView;)V

    #@9
    :cond_9
    return-void
.end method

.method public static bQ()Z
    .registers 1

    #@0
    sget-boolean v0, Lcom/google/android/gms/internal/eo;->sl:Z

    #@2
    return v0
.end method

.method public static bR()I
    .registers 2

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x9

    #@4
    if-lt v0, v1, :cond_8

    #@6
    const/4 v0, 0x6

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public static bS()I
    .registers 2

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x9

    #@4
    if-lt v0, v1, :cond_8

    #@6
    const/4 v0, 0x7

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    goto :goto_7
.end method

.method public static bT()Ljava/lang/String;
    .registers 9

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    #@9
    move-result-wide v2

    #@a
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    #@15
    move-result-wide v4

    #@16
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    #@1d
    move-result-object v3

    #@1e
    new-instance v0, Ljava/math/BigInteger;

    #@20
    invoke-direct {v0, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    #@23
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    :goto_27
    const/4 v4, 0x2

    #@28
    if-ge v1, v4, :cond_52

    #@2a
    :try_start_2a
    const-string v4, "MD5"

    #@2c
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    #@33
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    #@36
    const/16 v5, 0x8

    #@38
    new-array v5, v5, [B

    #@3a
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    #@3d
    move-result-object v4

    #@3e
    const/4 v6, 0x0

    #@3f
    const/4 v7, 0x0

    #@40
    const/16 v8, 0x8

    #@42
    invoke-static {v4, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@45
    new-instance v4, Ljava/math/BigInteger;

    #@47
    const/4 v6, 0x1

    #@48
    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    #@4b
    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
    :try_end_4e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2a .. :try_end_4e} :catch_53

    #@4e
    move-result-object v0

    #@4f
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    #@51
    goto :goto_27

    #@52
    :cond_52
    return-object v0

    #@53
    :catch_53
    move-exception v4

    #@54
    goto :goto_4f
.end method

.method static synthetic bU()Ljava/lang/Object;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/eo;->qp:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    sget-object v1, Lcom/google/android/gms/internal/eo;->qp:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/eo;->sm:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_b

    #@7
    sget-object v0, Lcom/google/android/gms/internal/eo;->sm:Ljava/lang/String;

    #@9
    monitor-exit v1

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@d
    const/16 v2, 0x11

    #@f
    if-lt v0, v2, :cond_3f

    #@11
    invoke-static {p0}, Lcom/google/android/gms/internal/er;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    sput-object v0, Lcom/google/android/gms/internal/eo;->sm:Ljava/lang/String;

    #@17
    :cond_17
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    sget-object v2, Lcom/google/android/gms/internal/eo;->sm:Ljava/lang/String;

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    const-string v2, " (Mobile; "

    #@24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string v2, ")"

    #@2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    sput-object v0, Lcom/google/android/gms/internal/eo;->sm:Ljava/lang/String;

    #@38
    sget-object v0, Lcom/google/android/gms/internal/eo;->sm:Ljava/lang/String;

    #@3a
    monitor-exit v1

    #@3b
    goto :goto_a

    #@3c
    :catchall_3c
    move-exception v0

    #@3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    #@3e
    throw v0

    #@3f
    :cond_3f
    :try_start_3f
    invoke-static {}, Lcom/google/android/gms/internal/et;->bW()Z

    #@42
    move-result v0

    #@43
    if-nez v0, :cond_5e

    #@45
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@47
    new-instance v2, Lcom/google/android/gms/internal/eo$1;

    #@49
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/eo$1;-><init>(Landroid/content/Context;)V

    #@4c
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@4f
    :goto_4f
    sget-object v0, Lcom/google/android/gms/internal/eo;->sm:Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_3c

    #@51
    if-nez v0, :cond_17

    #@53
    :try_start_53
    sget-object v0, Lcom/google/android/gms/internal/eo;->qp:Ljava/lang/Object;

    #@55
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_58} :catch_59
    .catchall {:try_start_53 .. :try_end_58} :catchall_3c

    #@58
    goto :goto_4f

    #@59
    :catch_59
    move-exception v0

    #@5a
    :try_start_5a
    sget-object v0, Lcom/google/android/gms/internal/eo;->sm:Ljava/lang/String;

    #@5c
    monitor-exit v1

    #@5d
    goto :goto_a

    #@5e
    :cond_5e
    invoke-static {p0}, Lcom/google/android/gms/internal/eo;->o(Landroid/content/Context;)Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    sput-object v0, Lcom/google/android/gms/internal/eo;->sm:Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_3c

    #@64
    goto :goto_17
.end method

.method public static c(Landroid/net/Uri;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    #@6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@9
    new-instance v0, Landroid/net/UrlQuerySanitizer;

    #@b
    invoke-direct {v0}, Landroid/net/UrlQuerySanitizer;-><init>()V

    #@e
    const/4 v2, 0x1

    #@f
    invoke-virtual {v0, v2}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    #@12
    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllButNulLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, v2}, Landroid/net/UrlQuerySanitizer;->setUnregisteredParameterValueSanitizer(Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    #@19
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v0, v2}, Landroid/net/UrlQuerySanitizer;->parseUrl(Ljava/lang/String;)V

    #@20
    invoke-virtual {v0}, Landroid/net/UrlQuerySanitizer;->getParameterList()Ljava/util/List;

    #@23
    move-result-object v0

    #@24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v2

    #@28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_3c

    #@2e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;

    #@34
    iget-object v3, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    #@36
    iget-object v0, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    #@38
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    goto :goto_28

    #@3c
    :cond_3c
    move-object v0, v1

    #@3d
    goto :goto_3
.end method

.method public static m(Landroid/content/Context;)Z
    .registers 7

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    new-instance v1, Landroid/content/Intent;

    #@4
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@7
    const-string v3, "com.google.android.gms.ads.AdActivity"

    #@9
    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    #@c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v3

    #@10
    const/high16 v4, 0x10000

    #@12
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@15
    move-result-object v3

    #@16
    if-eqz v3, :cond_1c

    #@18
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1a
    if-nez v1, :cond_22

    #@1c
    :cond_1c
    const-string v1, "Could not find com.google.android.gms.ads.AdActivity, please make sure it is declared in AndroidManifest.xml."

    #@1e
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@21
    :goto_21
    return v0

    #@22
    :cond_22
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@24
    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@26
    and-int/lit8 v1, v1, 0x10

    #@28
    if-nez v1, :cond_ce

    #@2a
    const-string v1, "com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\"."

    #@2c
    new-array v4, v2, [Ljava/lang/Object;

    #@2e
    const-string v5, "keyboard"

    #@30
    aput-object v5, v4, v0

    #@32
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@39
    move v1, v0

    #@3a
    :goto_3a
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3c
    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@3e
    and-int/lit8 v4, v4, 0x20

    #@40
    if-nez v4, :cond_52

    #@42
    const-string v1, "com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\"."

    #@44
    new-array v4, v2, [Ljava/lang/Object;

    #@46
    const-string v5, "keyboardHidden"

    #@48
    aput-object v5, v4, v0

    #@4a
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@51
    move v1, v0

    #@52
    :cond_52
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@54
    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@56
    and-int/lit16 v4, v4, 0x80

    #@58
    if-nez v4, :cond_6a

    #@5a
    const-string v1, "com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\"."

    #@5c
    new-array v4, v2, [Ljava/lang/Object;

    #@5e
    const-string v5, "orientation"

    #@60
    aput-object v5, v4, v0

    #@62
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@69
    move v1, v0

    #@6a
    :cond_6a
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6c
    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@6e
    and-int/lit16 v4, v4, 0x100

    #@70
    if-nez v4, :cond_82

    #@72
    const-string v1, "com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\"."

    #@74
    new-array v4, v2, [Ljava/lang/Object;

    #@76
    const-string v5, "screenLayout"

    #@78
    aput-object v5, v4, v0

    #@7a
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7d
    move-result-object v1

    #@7e
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@81
    move v1, v0

    #@82
    :cond_82
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@84
    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@86
    and-int/lit16 v4, v4, 0x200

    #@88
    if-nez v4, :cond_9a

    #@8a
    const-string v1, "com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\"."

    #@8c
    new-array v4, v2, [Ljava/lang/Object;

    #@8e
    const-string v5, "uiMode"

    #@90
    aput-object v5, v4, v0

    #@92
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@99
    move v1, v0

    #@9a
    :cond_9a
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@9c
    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@9e
    and-int/lit16 v4, v4, 0x400

    #@a0
    if-nez v4, :cond_b2

    #@a2
    const-string v1, "com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\"."

    #@a4
    new-array v4, v2, [Ljava/lang/Object;

    #@a6
    const-string v5, "screenSize"

    #@a8
    aput-object v5, v4, v0

    #@aa
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ad
    move-result-object v1

    #@ae
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@b1
    move v1, v0

    #@b2
    :cond_b2
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@b4
    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@b6
    and-int/lit16 v3, v3, 0x800

    #@b8
    if-nez v3, :cond_cb

    #@ba
    const-string v1, "com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\"."

    #@bc
    new-array v2, v2, [Ljava/lang/Object;

    #@be
    const-string v3, "smallestScreenSize"

    #@c0
    aput-object v3, v2, v0

    #@c2
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c5
    move-result-object v1

    #@c6
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@c9
    goto/16 :goto_21

    #@cb
    :cond_cb
    move v0, v1

    #@cc
    goto/16 :goto_21

    #@ce
    :cond_ce
    move v1, v2

    #@cf
    goto/16 :goto_3a
.end method

.method public static n(Landroid/content/Context;)V
    .registers 5

    #@0
    sget-boolean v0, Lcom/google/android/gms/internal/eo;->sn:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    #@7
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@a
    const-string v1, "android.intent.action.USER_PRESENT"

    #@c
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@f
    const-string v1, "android.intent.action.SCREEN_OFF"

    #@11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@17
    move-result-object v1

    #@18
    new-instance v2, Lcom/google/android/gms/internal/eo$a;

    #@1a
    const/4 v3, 0x0

    #@1b
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/eo$a;-><init>(Lcom/google/android/gms/internal/eo$1;)V

    #@1e
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@21
    const/4 v0, 0x1

    #@22
    sput-boolean v0, Lcom/google/android/gms/internal/eo;->sn:Z

    #@24
    goto :goto_4
.end method

.method private static o(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    #@0
    new-instance v0, Landroid/webkit/WebView;

    #@2
    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    #@5
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static o(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    #@2
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    #@5
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_3f

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/String;

    #@19
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/eo;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_20} :catch_21

    #@20
    goto :goto_d

    #@21
    :catch_21
    move-exception v0

    #@22
    new-instance v1, Lorg/json/JSONException;

    #@24
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string v3, "Could not convert map to JSON: "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v1

    #@3f
    :cond_3f
    return-object v1
.end method

.method public static p(Landroid/content/Context;)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p0, Landroid/app/Activity;

    #@3
    if-eqz v1, :cond_27

    #@5
    check-cast p0, Landroid/app/Activity;

    #@7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@a
    move-result-object v0

    #@b
    new-instance v1, Landroid/graphics/Rect;

    #@d
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@17
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@19
    const v2, 0x1020002

    #@1c
    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@23
    move-result v0

    #@24
    sub-int/2addr v0, v1

    #@25
    :goto_25
    add-int/2addr v0, v1

    #@26
    return v0

    #@27
    :cond_27
    move v1, v0

    #@28
    goto :goto_25
.end method

.method static synthetic p(Z)Z
    .registers 1

    #@0
    sput-boolean p0, Lcom/google/android/gms/internal/eo;->sl:Z

    #@2
    return p0
.end method

.method static synthetic q(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/eo;->o(Landroid/content/Context;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method static synthetic w(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    #@0
    sput-object p0, Lcom/google/android/gms/internal/eo;->sm:Ljava/lang/String;

    #@2
    return-object p0
.end method
