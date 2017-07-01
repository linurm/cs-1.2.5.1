.class Lcom/google/android/gms/analytics/ak;
.super Ljava/lang/Object;


# static fields
.field private static final xE:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_a

    #@7
    sput-object v0, Lcom/google/android/gms/analytics/ak;->xE:[C

    #@9
    return-void

    #@a
    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static U(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v7, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    new-instance v2, Ljava/util/HashMap;

    #@4
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@7
    const-string v0, "&"

    #@9
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    array-length v4, v3

    #@e
    move v0, v1

    #@f
    :goto_f
    if-ge v0, v4, :cond_38

    #@11
    aget-object v5, v3, v0

    #@13
    const-string v6, "="

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    array-length v6, v5

    #@1a
    if-le v6, v7, :cond_26

    #@1c
    aget-object v6, v5, v1

    #@1e
    aget-object v5, v5, v7

    #@20
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_f

    #@26
    :cond_26
    array-length v6, v5

    #@27
    if-ne v6, v7, :cond_23

    #@29
    aget-object v6, v5, v1

    #@2b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_23

    #@31
    aget-object v5, v5, v1

    #@33
    const/4 v6, 0x0

    #@34
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    goto :goto_23

    #@38
    :cond_38
    return-object v2
.end method

.method public static V(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v4, 0x1

    #@3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_b

    #@9
    move-object v0, v1

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    const-string v2, "?"

    #@d
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1e

    #@13
    const-string v2, "[\\?]"

    #@15
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    array-length v3, v2

    #@1a
    if-le v3, v4, :cond_1e

    #@1c
    aget-object p0, v2, v4

    #@1e
    :cond_1e
    const-string v2, "%3D"

    #@20
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_a1

    #@26
    :try_start_26
    const-string v2, "UTF-8"

    #@28
    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_26 .. :try_end_2b} :catch_9d

    #@2b
    move-result-object p0

    #@2c
    :cond_2c
    invoke-static {p0}, Lcom/google/android/gms/analytics/ak;->U(Ljava/lang/String;)Ljava/util/Map;

    #@2f
    move-result-object v2

    #@30
    const/16 v1, 0x9

    #@32
    new-array v3, v1, [Ljava/lang/String;

    #@34
    const-string v1, "dclid"

    #@36
    aput-object v1, v3, v0

    #@38
    const-string v1, "utm_source"

    #@3a
    aput-object v1, v3, v4

    #@3c
    const/4 v1, 0x2

    #@3d
    const-string v4, "gclid"

    #@3f
    aput-object v4, v3, v1

    #@41
    const/4 v1, 0x3

    #@42
    const-string v4, "utm_campaign"

    #@44
    aput-object v4, v3, v1

    #@46
    const/4 v1, 0x4

    #@47
    const-string v4, "utm_medium"

    #@49
    aput-object v4, v3, v1

    #@4b
    const/4 v1, 0x5

    #@4c
    const-string v4, "utm_term"

    #@4e
    aput-object v4, v3, v1

    #@50
    const/4 v1, 0x6

    #@51
    const-string v4, "utm_content"

    #@53
    aput-object v4, v3, v1

    #@55
    const/4 v1, 0x7

    #@56
    const-string v4, "utm_id"

    #@58
    aput-object v4, v3, v1

    #@5a
    const/16 v1, 0x8

    #@5c
    const-string v4, "gmob_t"

    #@5e
    aput-object v4, v3, v1

    #@60
    new-instance v4, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    move v1, v0

    #@66
    :goto_66
    array-length v0, v3

    #@67
    if-ge v1, v0, :cond_ac

    #@69
    aget-object v0, v3, v1

    #@6b
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6e
    move-result-object v0

    #@6f
    check-cast v0, Ljava/lang/CharSequence;

    #@71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@74
    move-result v0

    #@75
    if-nez v0, :cond_99

    #@77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@7a
    move-result v0

    #@7b
    if-lez v0, :cond_82

    #@7d
    const-string v0, "&"

    #@7f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    :cond_82
    aget-object v0, v3, v1

    #@84
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    const-string v5, "="

    #@8a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    aget-object v0, v3, v1

    #@90
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@93
    move-result-object v0

    #@94
    check-cast v0, Ljava/lang/String;

    #@96
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    :cond_99
    add-int/lit8 v0, v1, 0x1

    #@9b
    move v1, v0

    #@9c
    goto :goto_66

    #@9d
    :catch_9d
    move-exception v0

    #@9e
    move-object v0, v1

    #@9f
    goto/16 :goto_a

    #@a1
    :cond_a1
    const-string v2, "="

    #@a3
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@a6
    move-result v2

    #@a7
    if-nez v2, :cond_2c

    #@a9
    move-object v0, v1

    #@aa
    goto/16 :goto_a

    #@ac
    :cond_ac
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v0

    #@b0
    goto/16 :goto_a
.end method

.method public static W(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    :goto_2
    const/4 v0, 0x2

    #@3
    if-ge v1, v0, :cond_11

    #@5
    :try_start_5
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_8} :catch_c

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_d

    #@b
    :goto_b
    return-object v0

    #@c
    :catch_c
    move-exception v0

    #@d
    :cond_d
    add-int/lit8 v0, v1, 0x1

    #@f
    move v1, v0

    #@10
    goto :goto_2

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_b
.end method

.method public static a(Ljava/lang/String;D)D
    .registers 4

    #@0
    if-nez p0, :cond_3

    #@2
    :goto_2
    return-wide p1

    #@3
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    #@6
    move-result-wide p1

    #@7
    goto :goto_2

    #@8
    :catch_8
    move-exception v0

    #@9
    goto :goto_2
.end method

.method static a(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    :cond_3
    :goto_3
    return-object v0

    #@4
    :cond_4
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_3

    #@e
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_39

    #@28
    const-string v1, "-"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    goto :goto_3
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;Z)Z
    .registers 3

    #@0
    if-eqz p0, :cond_1b

    #@2
    const-string v0, "true"

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1a

    #@a
    const-string v0, "yes"

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1a

    #@12
    const-string v0, "1"

    #@14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1c

    #@1a
    :cond_1a
    const/4 p1, 0x1

    #@1b
    :cond_1b
    :goto_1b
    return p1

    #@1c
    :cond_1c
    const-string v0, "false"

    #@1e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_34

    #@24
    const-string v0, "no"

    #@26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_34

    #@2c
    const-string v0, "0"

    #@2e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_1b

    #@34
    :cond_34
    const/4 p1, 0x0

    #@35
    goto :goto_1b
.end method

.method static v(Z)Ljava/lang/String;
    .registers 2

    #@0
    if-eqz p0, :cond_5

    #@2
    const-string v0, "1"

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    const-string v0, "0"

    #@7
    goto :goto_4
.end method
