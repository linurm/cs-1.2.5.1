.class public Lcom/facebook/ads/internal/StringUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
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
    if-gtz v0, :cond_a

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

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    #@0
    :try_start_0
    const-string v0, "MD5"

    #@2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@5
    move-result-object v0

    #@6
    const-string v1, "utf-8"

    #@8
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    #@f
    move-result-object v1

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const/4 v0, 0x0

    #@16
    :goto_16
    array-length v3, v1

    #@17
    if-ge v0, v3, :cond_30

    #@19
    aget-byte v3, v1, v0

    #@1b
    and-int/lit16 v3, v3, 0xff

    #@1d
    add-int/lit16 v3, v3, 0x100

    #@1f
    const/16 v4, 0x10

    #@21
    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    const/4 v4, 0x1

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_16

    #@30
    :cond_30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_35

    #@33
    move-result-object v0

    #@34
    :goto_34
    return-object v0

    #@35
    :catch_35
    move-exception v0

    #@36
    const/4 v0, 0x0

    #@37
    goto :goto_34
.end method
