.class public final Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;
    }
.end annotation


# static fields
.field private static final HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE_ANSIC_REGEXP:Ljava/lang/String; = "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

.field private static final HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE_RFC_REGEXP:Ljava/lang/String; = "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"

    #@2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    #@8
    const-string v0, "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

    #@a
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    #@10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getDate(Ljava/lang/String;)I
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x2

    #@6
    if-ne v0, v1, :cond_19

    #@8
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v0

    #@c
    add-int/lit8 v0, v0, -0x30

    #@e
    mul-int/lit8 v0, v0, 0xa

    #@10
    const/4 v1, 0x1

    #@11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v1

    #@15
    add-int/lit8 v1, v1, -0x30

    #@17
    add-int/2addr v0, v1

    #@18
    :goto_18
    return v0

    #@19
    :cond_19
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v0

    #@1d
    add-int/lit8 v0, v0, -0x30

    #@1f
    goto :goto_18
.end method

.method private static getMonth(Ljava/lang/String;)I
    .registers 6

    #@0
    const/4 v1, 0x2

    #@1
    const/4 v0, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v3

    #@7
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    #@a
    move-result v3

    #@b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v4

    #@f
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    #@12
    move-result v4

    #@13
    add-int/2addr v3, v4

    #@14
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v4

    #@18
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    #@1b
    move-result v4

    #@1c
    add-int/2addr v3, v4

    #@1d
    add-int/lit16 v3, v3, -0x123

    #@1f
    sparse-switch v3, :sswitch_data_42

    #@22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@27
    throw v0

    #@28
    :sswitch_28
    move v0, v1

    #@29
    :goto_29
    :sswitch_29
    return v0

    #@2a
    :sswitch_2a
    const/4 v0, 0x3

    #@2b
    goto :goto_29

    #@2c
    :sswitch_2c
    const/4 v0, 0x4

    #@2d
    goto :goto_29

    #@2e
    :sswitch_2e
    const/4 v0, 0x5

    #@2f
    goto :goto_29

    #@30
    :sswitch_30
    const/4 v0, 0x6

    #@31
    goto :goto_29

    #@32
    :sswitch_32
    const/4 v0, 0x7

    #@33
    goto :goto_29

    #@34
    :sswitch_34
    const/16 v0, 0x8

    #@36
    goto :goto_29

    #@37
    :sswitch_37
    const/16 v0, 0x9

    #@39
    goto :goto_29

    #@3a
    :sswitch_3a
    const/16 v0, 0xa

    #@3c
    goto :goto_29

    #@3d
    :sswitch_3d
    const/16 v0, 0xb

    #@3f
    goto :goto_29

    #@40
    :sswitch_40
    move v0, v2

    #@41
    goto :goto_29

    #@42
    :sswitch_data_42
    .sparse-switch
        0x9 -> :sswitch_3d
        0xa -> :sswitch_29
        0x16 -> :sswitch_40
        0x1a -> :sswitch_32
        0x1d -> :sswitch_28
        0x20 -> :sswitch_2a
        0x23 -> :sswitch_37
        0x24 -> :sswitch_2c
        0x25 -> :sswitch_34
        0x28 -> :sswitch_30
        0x2a -> :sswitch_2e
        0x30 -> :sswitch_3a
    .end sparse-switch
.end method

.method private static getTime(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v0

    #@6
    add-int/lit8 v2, v0, -0x30

    #@8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v0

    #@c
    const/16 v3, 0x3a

    #@e
    if-eq v0, v3, :cond_48

    #@10
    const/4 v0, 0x2

    #@11
    mul-int/lit8 v2, v2, 0xa

    #@13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v1

    #@17
    add-int/lit8 v1, v1, -0x30

    #@19
    add-int/2addr v1, v2

    #@1a
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    add-int/lit8 v2, v0, 0x1

    #@1e
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@21
    move-result v0

    #@22
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v3

    #@26
    add-int/lit8 v2, v2, 0x1

    #@28
    add-int/lit8 v2, v2, 0x1

    #@2a
    add-int/lit8 v4, v2, 0x1

    #@2c
    new-instance v5, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;

    #@2e
    add-int/lit8 v0, v0, -0x30

    #@30
    mul-int/lit8 v0, v0, 0xa

    #@32
    add-int/lit8 v3, v3, -0x30

    #@34
    add-int/2addr v0, v3

    #@35
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@38
    move-result v2

    #@39
    add-int/lit8 v2, v2, -0x30

    #@3b
    mul-int/lit8 v2, v2, 0xa

    #@3d
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@40
    move-result v3

    #@41
    add-int/lit8 v3, v3, -0x30

    #@43
    add-int/2addr v2, v3

    #@44
    invoke-direct {v5, v1, v0, v2}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;-><init>(III)V

    #@47
    return-object v5

    #@48
    :cond_48
    move v0, v1

    #@49
    move v1, v2

    #@4a
    goto :goto_1a
.end method

.method private static getYear(Ljava/lang/String;)I
    .registers 7

    #@0
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    if-ne v0, v4, :cond_23

    #@a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    add-int/lit8 v0, v0, -0x30

    #@10
    mul-int/lit8 v0, v0, 0xa

    #@12
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v1

    #@16
    add-int/lit8 v1, v1, -0x30

    #@18
    add-int/2addr v0, v1

    #@19
    const/16 v1, 0x46

    #@1b
    if-lt v0, v1, :cond_20

    #@1d
    add-int/lit16 v0, v0, 0x76c

    #@1f
    :goto_1f
    return v0

    #@20
    :cond_20
    add-int/lit16 v0, v0, 0x7d0

    #@22
    goto :goto_1f

    #@23
    :cond_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@26
    move-result v0

    #@27
    if-ne v0, v5, :cond_44

    #@29
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v0

    #@2d
    add-int/lit8 v0, v0, -0x30

    #@2f
    mul-int/lit8 v0, v0, 0x64

    #@31
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v1

    #@35
    add-int/lit8 v1, v1, -0x30

    #@37
    mul-int/lit8 v1, v1, 0xa

    #@39
    add-int/2addr v0, v1

    #@3a
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@3d
    move-result v1

    #@3e
    add-int/lit8 v1, v1, -0x30

    #@40
    add-int/2addr v0, v1

    #@41
    add-int/lit16 v0, v0, 0x76c

    #@43
    goto :goto_1f

    #@44
    :cond_44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@47
    move-result v0

    #@48
    const/4 v1, 0x4

    #@49
    if-ne v0, v1, :cond_6d

    #@4b
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@4e
    move-result v0

    #@4f
    add-int/lit8 v0, v0, -0x30

    #@51
    mul-int/lit16 v0, v0, 0x3e8

    #@53
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@56
    move-result v1

    #@57
    add-int/lit8 v1, v1, -0x30

    #@59
    mul-int/lit8 v1, v1, 0x64

    #@5b
    add-int/2addr v0, v1

    #@5c
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@5f
    move-result v1

    #@60
    add-int/lit8 v1, v1, -0x30

    #@62
    mul-int/lit8 v1, v1, 0xa

    #@64
    add-int/2addr v0, v1

    #@65
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@68
    move-result v1

    #@69
    add-int/lit8 v1, v1, -0x30

    #@6b
    add-int/2addr v0, v1

    #@6c
    goto :goto_1f

    #@6d
    :cond_6d
    const/16 v0, 0x7b2

    #@6f
    goto :goto_1f
.end method

.method public static parse(Ljava/lang/String;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    const/4 v8, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v3, 0x2

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v4, 0x1

    #@5
    sget-object v0, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    #@7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_4e

    #@11
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getDate(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getMonth(Ljava/lang/String;)I

    #@20
    move-result v5

    #@21
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getYear(Ljava/lang/String;)I

    #@28
    move-result v6

    #@29
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getTime(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;

    #@30
    move-result-object v1

    #@31
    move-object v3, v1

    #@32
    :goto_32
    const/16 v1, 0x7f6

    #@34
    if-lt v6, v1, :cond_82

    #@36
    const/16 v6, 0x7f6

    #@38
    move v5, v7

    #@39
    :goto_39
    new-instance v0, Landroid/text/format/Time;

    #@3b
    const-string v1, "UTC"

    #@3d
    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #@40
    iget v1, v3, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;->second:I

    #@42
    iget v2, v3, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;->minute:I

    #@44
    iget v3, v3, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;->hour:I

    #@46
    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    #@49
    invoke-virtual {v0, v7}, Landroid/text/format/Time;->toMillis(Z)J

    #@4c
    move-result-wide v0

    #@4d
    return-wide v0

    #@4e
    :cond_4e
    sget-object v0, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    #@50
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_7c

    #@5a
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getMonth(Ljava/lang/String;)I

    #@61
    move-result v5

    #@62
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getDate(Ljava/lang/String;)I

    #@69
    move-result v0

    #@6a
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getTime(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getYear(Ljava/lang/String;)I

    #@79
    move-result v6

    #@7a
    move-object v3, v1

    #@7b
    goto :goto_32

    #@7c
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7e
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@81
    throw v0

    #@82
    :cond_82
    move v4, v0

    #@83
    goto :goto_39
.end method
