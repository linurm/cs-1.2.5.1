.class public Lcom/google/android/gms/internal/gs;
.super Ljava/lang/Object;


# static fields
.field private static final BG:Lcom/google/android/gms/internal/gn;

.field private static final CO:[Ljava/lang/String;

.field private static final CP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v3, 0x0

    #@1
    new-instance v0, Lcom/google/android/gms/internal/gn;

    #@3
    const-string v1, "MetadataUtils"

    #@5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gn;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/google/android/gms/internal/gs;->BG:Lcom/google/android/gms/internal/gn;

    #@a
    const/4 v0, 0x4

    #@b
    new-array v0, v0, [Ljava/lang/String;

    #@d
    const-string v1, "Z"

    #@f
    aput-object v1, v0, v3

    #@11
    const/4 v1, 0x1

    #@12
    const-string v2, "+hh"

    #@14
    aput-object v2, v0, v1

    #@16
    const/4 v1, 0x2

    #@17
    const-string v2, "+hhmm"

    #@19
    aput-object v2, v0, v1

    #@1b
    const/4 v1, 0x3

    #@1c
    const-string v2, "+hh:mm"

    #@1e
    aput-object v2, v0, v1

    #@20
    sput-object v0, Lcom/google/android/gms/internal/gs;->CO:[Ljava/lang/String;

    #@22
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string v1, "yyyyMMdd\'T\'HHmmss"

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    sget-object v1, Lcom/google/android/gms/internal/gs;->CO:[Ljava/lang/String;

    #@2f
    aget-object v1, v1, v3

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    sput-object v0, Lcom/google/android/gms/internal/gs;->CP:Ljava/lang/String;

    #@3b
    return-void
.end method

.method public static a(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v3, 0x0

    #@1
    if-nez p0, :cond_e

    #@3
    sget-object v0, Lcom/google/android/gms/internal/gs;->BG:Lcom/google/android/gms/internal/gn;

    #@5
    const-string v1, "Calendar object cannot be null"

    #@7
    new-array v2, v3, [Ljava/lang/Object;

    #@9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    const/4 v0, 0x0

    #@d
    :cond_d
    :goto_d
    return-object v0

    #@e
    :cond_e
    sget-object v0, Lcom/google/android/gms/internal/gs;->CP:Ljava/lang/String;

    #@10
    const/16 v1, 0xb

    #@12
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_2a

    #@18
    const/16 v1, 0xc

    #@1a
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_2a

    #@20
    const/16 v1, 0xd

    #@22
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_2a

    #@28
    const-string v0, "yyyyMMdd"

    #@2a
    :cond_2a
    new-instance v1, Ljava/text/SimpleDateFormat;

    #@2c
    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@2f
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@36
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    const-string v1, "+0000"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_d

    #@46
    const-string v1, "+0000"

    #@48
    sget-object v2, Lcom/google/android/gms/internal/gs;->CO:[Ljava/lang/String;

    #@4a
    aget-object v2, v2, v3

    #@4c
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    goto :goto_d
.end method

.method public static a(Ljava/util/List;Lorg/json/JSONObject;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->clear()V

    #@3
    const-string v0, "images"

    #@5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@c
    move-result v2

    #@d
    const/4 v0, 0x0

    #@e
    :goto_e
    if-ge v0, v2, :cond_20

    #@10
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_13} :catch_1f

    #@13
    move-result-object v3

    #@14
    :try_start_14
    new-instance v4, Lcom/google/android/gms/common/images/WebImage;

    #@16
    invoke-direct {v4, v3}, Lcom/google/android/gms/common/images/WebImage;-><init>(Lorg/json/JSONObject;)V

    #@19
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_1c} :catch_21
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_1c} :catch_1f

    #@1c
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_e

    #@1f
    :catch_1f
    move-exception v0

    #@20
    :cond_20
    return-void

    #@21
    :catch_21
    move-exception v3

    #@22
    goto :goto_1c
.end method

.method public static a(Lorg/json/JSONObject;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;)V"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_2a

    #@2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_2a

    #@8
    new-instance v1, Lorg/json/JSONArray;

    #@a
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    #@d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_25

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    #@1d
    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->dZ()Lorg/json/JSONObject;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@24
    goto :goto_11

    #@25
    :cond_25
    :try_start_25
    const-string v0, "images"

    #@27
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2a} :catch_2b

    #@2a
    :cond_2a
    :goto_2a
    return-void

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    goto :goto_2a
.end method

.method public static aq(Ljava/lang/String;)Ljava/util/Calendar;
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_13

    #@8
    sget-object v0, Lcom/google/android/gms/internal/gs;->BG:Lcom/google/android/gms/internal/gn;

    #@a
    const-string v1, "Input string is empty or null"

    #@c
    new-array v3, v5, [Ljava/lang/Object;

    #@e
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@11
    move-object v0, v2

    #@12
    :goto_12
    return-object v0

    #@13
    :cond_13
    invoke-static {p0}, Lcom/google/android/gms/internal/gs;->ar(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_28

    #@1d
    sget-object v0, Lcom/google/android/gms/internal/gs;->BG:Lcom/google/android/gms/internal/gn;

    #@1f
    const-string v1, "Invalid date format"

    #@21
    new-array v3, v5, [Ljava/lang/Object;

    #@23
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@26
    move-object v0, v2

    #@27
    goto :goto_12

    #@28
    :cond_28
    invoke-static {p0}, Lcom/google/android/gms/internal/gs;->as(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    const-string v1, "yyyyMMdd"

    #@2e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@31
    move-result v4

    #@32
    if-nez v4, :cond_59

    #@34
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    const-string v1, "T"

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@4e
    move-result v1

    #@4f
    const-string v3, "HHmmss"

    #@51
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@54
    move-result v3

    #@55
    if-ne v1, v3, :cond_6b

    #@57
    const-string v1, "yyyyMMdd\'T\'HHmmss"

    #@59
    :cond_59
    :goto_59
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    #@5c
    move-result-object v3

    #@5d
    :try_start_5d
    new-instance v4, Ljava/text/SimpleDateFormat;

    #@5f
    invoke-direct {v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@62
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_65
    .catch Ljava/text/ParseException; {:try_start_5d .. :try_end_65} :catch_6e

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@69
    move-object v0, v3

    #@6a
    goto :goto_12

    #@6b
    :cond_6b
    sget-object v1, Lcom/google/android/gms/internal/gs;->CP:Ljava/lang/String;

    #@6d
    goto :goto_59

    #@6e
    :catch_6e
    move-exception v0

    #@6f
    sget-object v1, Lcom/google/android/gms/internal/gs;->BG:Lcom/google/android/gms/internal/gn;

    #@71
    const-string v3, "Error parsing string: %s"

    #@73
    const/4 v4, 0x1

    #@74
    new-array v4, v4, [Ljava/lang/Object;

    #@76
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@79
    move-result-object v0

    #@7a
    aput-object v0, v4, v5

    #@7c
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@7f
    move-object v0, v2

    #@80
    goto :goto_12
.end method

.method private static ar(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    #@0
    const/4 v5, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_12

    #@8
    sget-object v1, Lcom/google/android/gms/internal/gs;->BG:Lcom/google/android/gms/internal/gn;

    #@a
    const-string v2, "Input string is empty or null"

    #@c
    new-array v3, v5, [Ljava/lang/Object;

    #@e
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@11
    :goto_11
    return-object v0

    #@12
    :cond_12
    const/4 v1, 0x0

    #@13
    :try_start_13
    const-string v2, "yyyyMMdd"

    #@15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@18
    move-result v2

    #@19
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_1c} :catch_1e

    #@1c
    move-result-object v0

    #@1d
    goto :goto_11

    #@1e
    :catch_1e
    move-exception v1

    #@1f
    sget-object v2, Lcom/google/android/gms/internal/gs;->BG:Lcom/google/android/gms/internal/gn;

    #@21
    const-string v3, "Error extracting the date: %s"

    #@23
    const/4 v4, 0x1

    #@24
    new-array v4, v4, [Ljava/lang/Object;

    #@26
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    aput-object v1, v4, v5

    #@2c
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/gn;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    #@2f
    goto :goto_11
.end method

.method private static as(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    #@0
    const/4 v5, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_12

    #@8
    sget-object v1, Lcom/google/android/gms/internal/gs;->BG:Lcom/google/android/gms/internal/gn;

    #@a
    const-string v2, "string is empty or null"

    #@c
    new-array v3, v5, [Ljava/lang/Object;

    #@e
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@11
    :cond_11
    :goto_11
    return-object v0

    #@12
    :cond_12
    const/16 v1, 0x54

    #@14
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@17
    move-result v1

    #@18
    const-string v2, "yyyyMMdd"

    #@1a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1d
    move-result v2

    #@1e
    if-eq v1, v2, :cond_2a

    #@20
    sget-object v1, Lcom/google/android/gms/internal/gs;->BG:Lcom/google/android/gms/internal/gn;

    #@22
    const-string v2, "T delimeter is not found"

    #@24
    new-array v3, v5, [Ljava/lang/Object;

    #@26
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@29
    goto :goto_11

    #@2a
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    :try_start_2c
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2c .. :try_end_2f} :catch_3e

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@33
    move-result v2

    #@34
    const-string v3, "HHmmss"

    #@36
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@39
    move-result v3

    #@3a
    if-ne v2, v3, :cond_50

    #@3c
    move-object v0, v1

    #@3d
    goto :goto_11

    #@3e
    :catch_3e
    move-exception v1

    #@3f
    sget-object v2, Lcom/google/android/gms/internal/gs;->BG:Lcom/google/android/gms/internal/gn;

    #@41
    const-string v3, "Error extracting the time substring: %s"

    #@43
    const/4 v4, 0x1

    #@44
    new-array v4, v4, [Ljava/lang/Object;

    #@46
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    aput-object v1, v4, v5

    #@4c
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@4f
    goto :goto_11

    #@50
    :cond_50
    const-string v2, "HHmmss"

    #@52
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@55
    move-result v2

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@59
    move-result v2

    #@5a
    sparse-switch v2, :sswitch_data_a2

    #@5d
    goto :goto_11

    #@5e
    :sswitch_5e
    invoke-static {v1}, Lcom/google/android/gms/internal/gs;->at(Ljava/lang/String;)Z

    #@61
    move-result v2

    #@62
    if-eqz v2, :cond_11

    #@64
    const-string v0, "([\\+\\-]\\d\\d):(\\d\\d)"

    #@66
    const-string v2, "$1$2"

    #@68
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v0

    #@6c
    goto :goto_11

    #@6d
    :sswitch_6d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@70
    move-result v2

    #@71
    const-string v3, "HHmmss"

    #@73
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@76
    move-result v3

    #@77
    sget-object v4, Lcom/google/android/gms/internal/gs;->CO:[Ljava/lang/String;

    #@79
    aget-object v4, v4, v5

    #@7b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@7e
    move-result v4

    #@7f
    add-int/2addr v3, v4

    #@80
    if-ne v2, v3, :cond_11

    #@82
    new-instance v0, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@8a
    move-result v2

    #@8b
    add-int/lit8 v2, v2, -0x1

    #@8d
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    const-string v1, "+0000"

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    goto/16 :goto_11

    #@a1
    nop

    #@a2
    :sswitch_data_a2
    .sparse-switch
        0x2b -> :sswitch_5e
        0x2d -> :sswitch_5e
        0x5a -> :sswitch_6d
    .end sparse-switch
.end method

.method private static at(Ljava/lang/String;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    const-string v2, "HHmmss"

    #@7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    sget-object v3, Lcom/google/android/gms/internal/gs;->CO:[Ljava/lang/String;

    #@d
    aget-object v3, v3, v0

    #@f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@12
    move-result v3

    #@13
    add-int/2addr v3, v2

    #@14
    if-eq v1, v3, :cond_2e

    #@16
    sget-object v3, Lcom/google/android/gms/internal/gs;->CO:[Ljava/lang/String;

    #@18
    const/4 v4, 0x2

    #@19
    aget-object v3, v3, v4

    #@1b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1e
    move-result v3

    #@1f
    add-int/2addr v3, v2

    #@20
    if-eq v1, v3, :cond_2e

    #@22
    sget-object v3, Lcom/google/android/gms/internal/gs;->CO:[Ljava/lang/String;

    #@24
    const/4 v4, 0x3

    #@25
    aget-object v3, v3, v4

    #@27
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@2a
    move-result v3

    #@2b
    add-int/2addr v2, v3

    #@2c
    if-ne v1, v2, :cond_2f

    #@2e
    :cond_2e
    :goto_2e
    return v0

    #@2f
    :cond_2f
    const/4 v0, 0x0

    #@30
    goto :goto_2e
.end method
