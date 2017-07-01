.class final Lcom/facebook/internal/FileLruCache$StreamHeader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamHeader"
.end annotation


# static fields
.field private static final HEADER_VERSION:I


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_a

    #@8
    move-object v0, v1

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    move v2, v0

    #@b
    move v3, v0

    #@c
    :goto_c
    const/4 v4, 0x3

    #@d
    if-ge v3, v4, :cond_29

    #@f
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@12
    move-result v4

    #@13
    const/4 v5, -0x1

    #@14
    if-ne v4, v5, :cond_21

    #@16
    sget-object v0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    #@18
    sget-object v2, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    #@1a
    const-string v3, "readHeader: stream.read returned -1 while reading header size"

    #@1c
    invoke-static {v0, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    move-object v0, v1

    #@20
    goto :goto_9

    #@21
    :cond_21
    shl-int/lit8 v2, v2, 0x8

    #@23
    and-int/lit16 v4, v4, 0xff

    #@25
    add-int/2addr v2, v4

    #@26
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_c

    #@29
    :cond_29
    new-array v2, v2, [B

    #@2b
    :goto_2b
    array-length v3, v2

    #@2c
    if-ge v0, v3, :cond_64

    #@2e
    array-length v3, v2

    #@2f
    sub-int/2addr v3, v0

    #@30
    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    #@33
    move-result v3

    #@34
    const/4 v4, 0x1

    #@35
    if-ge v3, v4, :cond_62

    #@37
    sget-object v3, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    #@39
    sget-object v4, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    #@3b
    new-instance v5, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string v6, "readHeader: stream.read stopped at "

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    const-string v5, " when expected "

    #@50
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    array-length v2, v2

    #@55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    invoke-static {v3, v4, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    #@60
    move-object v0, v1

    #@61
    goto :goto_9

    #@62
    :cond_62
    add-int/2addr v0, v3

    #@63
    goto :goto_2b

    #@64
    :cond_64
    new-instance v0, Lorg/json/JSONTokener;

    #@66
    new-instance v3, Ljava/lang/String;

    #@68
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    #@6b
    invoke-direct {v0, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    #@6e
    :try_start_6e
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    #@71
    move-result-object v0

    #@72
    instance-of v2, v0, Lorg/json/JSONObject;

    #@74
    if-nez v2, :cond_9b

    #@76
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    #@78
    sget-object v3, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    #@7a
    new-instance v4, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string v5, "readHeader: expected JSONObject, got "

    #@81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@88
    move-result-object v0

    #@89
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@8c
    move-result-object v0

    #@8d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v0

    #@95
    invoke-static {v2, v3, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    #@98
    move-object v0, v1

    #@99
    goto/16 :goto_9

    #@9b
    :cond_9b
    check-cast v0, Lorg/json/JSONObject;
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_9d} :catch_9f

    #@9d
    goto/16 :goto_9

    #@9f
    :catch_9f
    move-exception v0

    #@a0
    new-instance v1, Ljava/io/IOException;

    #@a2
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    #@a5
    move-result-object v0

    #@a6
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v1
.end method

.method static writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    #@c
    array-length v1, v0

    #@d
    shr-int/lit8 v1, v1, 0x10

    #@f
    and-int/lit16 v1, v1, 0xff

    #@11
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    #@14
    array-length v1, v0

    #@15
    shr-int/lit8 v1, v1, 0x8

    #@17
    and-int/lit16 v1, v1, 0xff

    #@19
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    #@1c
    array-length v1, v0

    #@1d
    shr-int/lit8 v1, v1, 0x0

    #@1f
    and-int/lit16 v1, v1, 0xff

    #@21
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    #@24
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    #@27
    return-void
.end method
