.class Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/16 v3, 0x700

    #@2
    new-array v0, v3, [B

    #@4
    sput-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    if-ge v0, v3, :cond_14

    #@9
    sget-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    #@b
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    #@e
    move-result v2

    #@f
    aput-byte v2, v1, v0

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_7

    #@14
    :cond_14
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@5
    iput-boolean p2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    #@7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@d
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .registers 2

    #@0
    const/16 v0, 0x700

    #@2
    if-ge p0, v0, :cond_9

    #@4
    sget-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    #@6
    aget-byte v0, v0, p0

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    #@c
    move-result v0

    #@d
    goto :goto_8
.end method

.method private skipEntityBackward()B
    .registers 5

    #@0
    const/16 v3, 0x3b

    #@2
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    :cond_4
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@6
    if-lez v1, :cond_23

    #@8
    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@a
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@c
    add-int/lit8 v2, v2, -0x1

    #@e
    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v1

    #@14
    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@16
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@18
    const/16 v2, 0x26

    #@1a
    if-ne v1, v2, :cond_1f

    #@1c
    const/16 v0, 0xc

    #@1e
    :goto_1e
    return v0

    #@1f
    :cond_1f
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@21
    if-ne v1, v3, :cond_4

    #@23
    :cond_23
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@25
    int-to-char v0, v3

    #@26
    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@28
    const/16 v0, 0xd

    #@2a
    goto :goto_1e
.end method

.method private skipEntityForward()B
    .registers 4

    #@0
    :cond_0
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@4
    if-ge v0, v1, :cond_19

    #@6
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@8
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@a
    add-int/lit8 v2, v1, 0x1

    #@c
    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    int-to-char v1, v0

    #@13
    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@15
    const/16 v1, 0x3b

    #@17
    if-ne v0, v1, :cond_0

    #@19
    :cond_19
    const/16 v0, 0xc

    #@1b
    return v0
.end method

.method private skipTagBackward()B
    .registers 6

    #@0
    const/16 v4, 0x3e

    #@2
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    :cond_4
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@6
    if-lez v1, :cond_23

    #@8
    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@a
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@c
    add-int/lit8 v2, v2, -0x1

    #@e
    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v1

    #@14
    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@16
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@18
    const/16 v2, 0x3c

    #@1a
    if-ne v1, v2, :cond_1f

    #@1c
    const/16 v0, 0xc

    #@1e
    :goto_1e
    return v0

    #@1f
    :cond_1f
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@21
    if-ne v1, v4, :cond_2b

    #@23
    :cond_23
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@25
    int-to-char v0, v4

    #@26
    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@28
    const/16 v0, 0xd

    #@2a
    goto :goto_1e

    #@2b
    :cond_2b
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@2d
    const/16 v2, 0x22

    #@2f
    if-eq v1, v2, :cond_37

    #@31
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@33
    const/16 v2, 0x27

    #@35
    if-ne v1, v2, :cond_4

    #@37
    :cond_37
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@39
    :goto_39
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@3b
    if-lez v2, :cond_4

    #@3d
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@3f
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@41
    add-int/lit8 v3, v3, -0x1

    #@43
    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@48
    move-result v2

    #@49
    int-to-char v3, v2

    #@4a
    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@4c
    if-eq v2, v1, :cond_4

    #@4e
    goto :goto_39
.end method

.method private skipTagForward()B
    .registers 6

    #@0
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2
    :cond_2
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@6
    if-ge v1, v2, :cond_45

    #@8
    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@a
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@c
    add-int/lit8 v3, v2, 0x1

    #@e
    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v1

    #@14
    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@16
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@18
    const/16 v2, 0x3e

    #@1a
    if-ne v1, v2, :cond_1f

    #@1c
    const/16 v0, 0xc

    #@1e
    :goto_1e
    return v0

    #@1f
    :cond_1f
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@21
    const/16 v2, 0x22

    #@23
    if-eq v1, v2, :cond_2b

    #@25
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@27
    const/16 v2, 0x27

    #@29
    if-ne v1, v2, :cond_2

    #@2b
    :cond_2b
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@2d
    :goto_2d
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2f
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@31
    if-ge v2, v3, :cond_2

    #@33
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@35
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@37
    add-int/lit8 v4, v3, 0x1

    #@39
    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@3e
    move-result v2

    #@3f
    int-to-char v3, v2

    #@40
    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@42
    if-eq v2, v1, :cond_2

    #@44
    goto :goto_2d

    #@45
    :cond_45
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@47
    const/16 v0, 0x3c

    #@49
    int-to-char v0, v0

    #@4a
    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@4c
    const/16 v0, 0xd

    #@4e
    goto :goto_1e
.end method


# virtual methods
.method dirTypeBackward()B
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@2
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v0

    #@a
    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@c
    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@e
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_2a

    #@14
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@16
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@18
    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@1b
    move-result v0

    #@1c
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@1e
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@21
    move-result v2

    #@22
    sub-int/2addr v1, v2

    #@23
    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@25
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    #@28
    move-result v0

    #@29
    :cond_29
    :goto_29
    return v0

    #@2a
    :cond_2a
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2c
    add-int/lit8 v0, v0, -0x1

    #@2e
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@30
    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@32
    invoke-static {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    #@35
    move-result v0

    #@36
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    #@38
    if-eqz v1, :cond_29

    #@3a
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@3c
    const/16 v2, 0x3e

    #@3e
    if-ne v1, v2, :cond_45

    #@40
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    #@43
    move-result v0

    #@44
    goto :goto_29

    #@45
    :cond_45
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@47
    const/16 v2, 0x3b

    #@49
    if-ne v1, v2, :cond_29

    #@4b
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    #@4e
    move-result v0

    #@4f
    goto :goto_29
.end method

.method dirTypeForward()B
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@2
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v0

    #@8
    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@a
    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@c
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_28

    #@12
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    #@14
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@16
    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@19
    move-result v0

    #@1a
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@1c
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@1f
    move-result v2

    #@20
    add-int/2addr v1, v2

    #@21
    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@23
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    #@26
    move-result v0

    #@27
    :cond_27
    :goto_27
    return v0

    #@28
    :cond_28
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2a
    add-int/lit8 v0, v0, 0x1

    #@2c
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2e
    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@30
    invoke-static {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    #@33
    move-result v0

    #@34
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    #@36
    if-eqz v1, :cond_27

    #@38
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@3a
    const/16 v2, 0x3c

    #@3c
    if-ne v1, v2, :cond_43

    #@3e
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    #@41
    move-result v0

    #@42
    goto :goto_27

    #@43
    :cond_43
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@45
    const/16 v2, 0x26

    #@47
    if-ne v1, v2, :cond_27

    #@49
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    #@4c
    move-result v0

    #@4d
    goto :goto_27
.end method

.method getEntryDir()I
    .registers 9

    #@0
    const/4 v5, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@5
    move v0, v1

    #@6
    move v3, v1

    #@7
    move v2, v1

    #@8
    :goto_8
    :pswitch_8
    iget v6, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@a
    iget v7, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@c
    if-ge v6, v7, :cond_30

    #@e
    if-nez v0, :cond_30

    #@10
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    #@13
    move-result v6

    #@14
    packed-switch v6, :pswitch_data_56

    #@17
    :pswitch_17
    move v0, v2

    #@18
    goto :goto_8

    #@19
    :pswitch_19
    add-int/lit8 v2, v2, 0x1

    #@1b
    move v3, v4

    #@1c
    goto :goto_8

    #@1d
    :pswitch_1d
    add-int/lit8 v2, v2, 0x1

    #@1f
    move v3, v5

    #@20
    goto :goto_8

    #@21
    :pswitch_21
    add-int/lit8 v2, v2, -0x1

    #@23
    move v3, v1

    #@24
    goto :goto_8

    #@25
    :pswitch_25
    if-nez v2, :cond_28

    #@27
    :cond_27
    :goto_27
    return v4

    #@28
    :cond_28
    move v0, v2

    #@29
    goto :goto_8

    #@2a
    :pswitch_2a
    if-nez v2, :cond_2e

    #@2c
    move v4, v5

    #@2d
    goto :goto_27

    #@2e
    :cond_2e
    move v0, v2

    #@2f
    goto :goto_8

    #@30
    :cond_30
    if-nez v0, :cond_34

    #@32
    move v4, v1

    #@33
    goto :goto_27

    #@34
    :cond_34
    if-nez v3, :cond_53

    #@36
    :goto_36
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@38
    if-lez v3, :cond_51

    #@3a
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    #@3d
    move-result v3

    #@3e
    packed-switch v3, :pswitch_data_80

    #@41
    goto :goto_36

    #@42
    :pswitch_42
    if-eq v0, v2, :cond_27

    #@44
    add-int/lit8 v2, v2, -0x1

    #@46
    goto :goto_36

    #@47
    :pswitch_47
    if-ne v0, v2, :cond_4b

    #@49
    move v4, v5

    #@4a
    goto :goto_27

    #@4b
    :cond_4b
    add-int/lit8 v2, v2, -0x1

    #@4d
    goto :goto_36

    #@4e
    :pswitch_4e
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_36

    #@51
    :cond_51
    move v4, v1

    #@52
    goto :goto_27

    #@53
    :cond_53
    move v4, v3

    #@54
    goto :goto_27

    #@55
    nop

    #@56
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_25
        :pswitch_2a
        :pswitch_2a
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_8
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_19
        :pswitch_19
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
    .end packed-switch

    #@80
    :pswitch_data_80
    .packed-switch 0xe
        :pswitch_42
        :pswitch_42
        :pswitch_47
        :pswitch_47
        :pswitch_4e
    .end packed-switch
.end method

.method getExitDir()I
    .registers 7

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@5
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@7
    move v0, v1

    #@8
    move v2, v1

    #@9
    :cond_9
    :goto_9
    :pswitch_9
    iget v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@b
    if-lez v5, :cond_1b

    #@d
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    #@10
    move-result v5

    #@11
    packed-switch v5, :pswitch_data_3a

    #@14
    :pswitch_14
    if-nez v0, :cond_9

    #@16
    move v0, v2

    #@17
    goto :goto_9

    #@18
    :pswitch_18
    if-nez v2, :cond_1c

    #@1a
    move v1, v3

    #@1b
    :cond_1b
    :goto_1b
    return v1

    #@1c
    :cond_1c
    if-nez v0, :cond_9

    #@1e
    move v0, v2

    #@1f
    goto :goto_9

    #@20
    :pswitch_20
    if-eq v0, v2, :cond_37

    #@22
    add-int/lit8 v2, v2, -0x1

    #@24
    goto :goto_9

    #@25
    :pswitch_25
    if-nez v2, :cond_29

    #@27
    move v1, v4

    #@28
    goto :goto_1b

    #@29
    :cond_29
    if-nez v0, :cond_9

    #@2b
    move v0, v2

    #@2c
    goto :goto_9

    #@2d
    :pswitch_2d
    if-ne v0, v2, :cond_31

    #@2f
    move v1, v4

    #@30
    goto :goto_1b

    #@31
    :cond_31
    add-int/lit8 v2, v2, -0x1

    #@33
    goto :goto_9

    #@34
    :pswitch_34
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_9

    #@37
    :cond_37
    move v1, v3

    #@38
    goto :goto_1b

    #@39
    nop

    #@3a
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_18
        :pswitch_25
        :pswitch_25
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_9
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_20
        :pswitch_20
        :pswitch_2d
        :pswitch_2d
        :pswitch_34
    .end packed-switch
.end method
