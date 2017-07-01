.class Lcom/google/android/gms/tagmanager/j;
.super Ljava/lang/Object;


# direct methods
.method public static bE(Ljava/lang/String;)[B
    .registers 9

    #@0
    const/16 v7, 0x10

    #@2
    const/4 v6, -0x1

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    rem-int/lit8 v0, v1, 0x2

    #@9
    if-eqz v0, :cond_13

    #@b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string v1, "purported base16 string has odd number of characters"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    :cond_13
    div-int/lit8 v0, v1, 0x2

    #@15
    new-array v2, v0, [B

    #@17
    const/4 v0, 0x0

    #@18
    :goto_18
    if-ge v0, v1, :cond_44

    #@1a
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v3

    #@1e
    invoke-static {v3, v7}, Ljava/lang/Character;->digit(CI)I

    #@21
    move-result v3

    #@22
    add-int/lit8 v4, v0, 0x1

    #@24
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v4

    #@28
    invoke-static {v4, v7}, Ljava/lang/Character;->digit(CI)I

    #@2b
    move-result v4

    #@2c
    if-eq v3, v6, :cond_30

    #@2e
    if-ne v4, v6, :cond_38

    #@30
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@32
    const-string v1, "purported base16 string has illegal char"

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    :cond_38
    div-int/lit8 v5, v0, 0x2

    #@3a
    shl-int/lit8 v3, v3, 0x4

    #@3c
    add-int/2addr v3, v4

    #@3d
    int-to-byte v3, v3

    #@3e
    int-to-byte v3, v3

    #@3f
    aput-byte v3, v2, v5

    #@41
    add-int/lit8 v0, v0, 0x2

    #@43
    goto :goto_18

    #@44
    :cond_44
    return-object v2
.end method

.method public static d([B)Ljava/lang/String;
    .registers 6

    #@0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    array-length v2, p0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    if-ge v0, v2, :cond_20

    #@9
    aget-byte v3, p0, v0

    #@b
    and-int/lit16 v4, v3, 0xf0

    #@d
    if-nez v4, :cond_14

    #@f
    const-string v4, "0"

    #@11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    :cond_14
    and-int/lit16 v3, v3, 0xff

    #@16
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_7

    #@20
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method
