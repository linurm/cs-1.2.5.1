.class Lcom/facebook/ads/internal/AdUtilities;
.super Ljava/lang/Object;


# static fields
.field private static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field private static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    #@2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/ads/internal/AdUtilities;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    #@8
    return-void
.end method

.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2

    #@0
    if-nez p0, :cond_3

    #@2
    :goto_2
    return-void

    #@3
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    #@6
    goto :goto_2

    #@7
    :catch_7
    move-exception v0

    #@8
    goto :goto_2
.end method

.method public static getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 8

    #@0
    const/4 v6, 0x0

    #@1
    :try_start_1
    sget-object v1, Lcom/facebook/ads/internal/AdUtilities;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    #@3
    const/4 v0, 0x1

    #@4
    new-array v2, v0, [Ljava/lang/String;

    #@6
    const/4 v0, 0x0

    #@7
    const-string v3, "aid"

    #@9
    aput-object v3, v2, v0

    #@b
    const/4 v3, 0x0

    #@c
    const/4 v4, 0x0

    #@d
    const/4 v5, 0x0

    #@e
    move-object v0, p0

    #@f
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@12
    move-result-object v1

    #@13
    if-eqz v1, :cond_1b

    #@15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1d

    #@1b
    :cond_1b
    move-object v0, v6

    #@1c
    :goto_1c
    return-object v0

    #@1d
    :cond_1d
    const-string v0, "aid"

    #@1f
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@22
    move-result v0

    #@23
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    #@2a
    goto :goto_1c

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    move-object v0, v6

    #@2d
    goto :goto_1c
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
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

.method public static varargs getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
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
    invoke-static {v0, p1, p2}, Lcom/facebook/ads/internal/AdUtilities;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
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

.method public static getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
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
    if-eqz v0, :cond_15

    #@6
    instance-of v1, v0, Ljava/lang/String;

    #@8
    if-eqz v1, :cond_15

    #@a
    new-instance v1, Lorg/json/JSONTokener;

    #@c
    check-cast v0, Ljava/lang/String;

    #@e
    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    #@11
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    :cond_15
    if-eqz v0, :cond_25

    #@17
    instance-of v1, v0, Lorg/json/JSONObject;

    #@19
    if-nez v1, :cond_25

    #@1b
    instance-of v1, v0, Lorg/json/JSONArray;

    #@1d
    if-nez v1, :cond_25

    #@1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    :cond_25
    return-object v0
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    #@0
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

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

.method public static jsonEncode(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    new-instance v2, Lorg/json/JSONObject;

    #@2
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    #@5
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2c

    #@13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/Map$Entry;

    #@19
    :try_start_19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/lang/String;

    #@1f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_26} :catch_27

    #@26
    goto :goto_d

    #@27
    :catch_27
    move-exception v0

    #@28
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    #@2b
    goto :goto_d

    #@2c
    :cond_2c
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
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
    new-instance v2, Ljava/io/BufferedInputStream;

    #@3
    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_33

    #@6
    :try_start_6
    new-instance v0, Ljava/io/InputStreamReader;

    #@8
    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_39

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
    invoke-virtual {v0, v3}, Ljava/io/InputStreamReader;->read([C)I

    #@17
    move-result v4

    #@18
    const/4 v5, -0x1

    #@19
    if-eq v4, v5, :cond_28

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
    :goto_21
    invoke-static {v2}, Lcom/facebook/ads/internal/AdUtilities;->closeQuietly(Ljava/io/Closeable;)V

    #@24
    invoke-static {v0}, Lcom/facebook/ads/internal/AdUtilities;->closeQuietly(Ljava/io/Closeable;)V

    #@27
    throw v1

    #@28
    :cond_28
    :try_start_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_20

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v2}, Lcom/facebook/ads/internal/AdUtilities;->closeQuietly(Ljava/io/Closeable;)V

    #@2f
    invoke-static {v0}, Lcom/facebook/ads/internal/AdUtilities;->closeQuietly(Ljava/io/Closeable;)V

    #@32
    return-object v1

    #@33
    :catchall_33
    move-exception v0

    #@34
    move-object v2, v1

    #@35
    move-object v6, v0

    #@36
    move-object v0, v1

    #@37
    move-object v1, v6

    #@38
    goto :goto_21

    #@39
    :catchall_39
    move-exception v0

    #@3a
    move-object v6, v1

    #@3b
    move-object v1, v0

    #@3c
    move-object v0, v6

    #@3d
    goto :goto_21
.end method
