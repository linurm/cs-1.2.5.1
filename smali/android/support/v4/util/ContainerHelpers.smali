.class Landroid/support/v4/util/ContainerHelpers;
.super Ljava/lang/Object;


# static fields
.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v1, 0x0

    #@1
    new-array v0, v1, [I

    #@3
    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    #@5
    new-array v0, v1, [J

    #@7
    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_LONGS:[J

    #@9
    new-array v0, v1, [Ljava/lang/Object;

    #@b
    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@d
    return-void
.end method

.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static binarySearch([III)I
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    add-int/lit8 v0, p1, -0x1

    #@3
    move v2, v1

    #@4
    move v1, v0

    #@5
    :goto_5
    if-gt v2, v1, :cond_19

    #@7
    add-int v0, v2, v1

    #@9
    ushr-int/lit8 v0, v0, 0x1

    #@b
    aget v3, p0, v0

    #@d
    if-ge v3, p2, :cond_13

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    move v2, v0

    #@12
    goto :goto_5

    #@13
    :cond_13
    if-le v3, p2, :cond_1b

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    move v1, v0

    #@18
    goto :goto_5

    #@19
    :cond_19
    xor-int/lit8 v0, v2, -0x1

    #@1b
    :cond_1b
    return v0
.end method

.method static binarySearch([JIJ)I
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    add-int/lit8 v0, p1, -0x1

    #@3
    move v2, v1

    #@4
    move v1, v0

    #@5
    :goto_5
    if-gt v2, v1, :cond_1d

    #@7
    add-int v0, v2, v1

    #@9
    ushr-int/lit8 v0, v0, 0x1

    #@b
    aget-wide v4, p0, v0

    #@d
    cmp-long v3, v4, p2

    #@f
    if-gez v3, :cond_15

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    move v2, v0

    #@14
    goto :goto_5

    #@15
    :cond_15
    cmp-long v1, v4, p2

    #@17
    if-lez v1, :cond_1f

    #@19
    add-int/lit8 v0, v0, -0x1

    #@1b
    move v1, v0

    #@1c
    goto :goto_5

    #@1d
    :cond_1d
    xor-int/lit8 v0, v2, -0x1

    #@1f
    :cond_1f
    return v0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-eq p0, p1, :cond_a

    #@2
    if-eqz p0, :cond_c

    #@4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    :cond_a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method

.method public static idealByteArraySize(I)I
    .registers 4

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v0, 0x4

    #@2
    :goto_2
    const/16 v1, 0x20

    #@4
    if-ge v0, v1, :cond_10

    #@6
    shl-int v1, v2, v0

    #@8
    add-int/lit8 v1, v1, -0xc

    #@a
    if-gt p0, v1, :cond_11

    #@c
    shl-int v0, v2, v0

    #@e
    add-int/lit8 p0, v0, -0xc

    #@10
    :cond_10
    return p0

    #@11
    :cond_11
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_2
.end method

.method public static idealIntArraySize(I)I
    .registers 2

    #@0
    mul-int/lit8 v0, p0, 0x4

    #@2
    invoke-static {v0}, Landroid/support/v4/util/ContainerHelpers;->idealByteArraySize(I)I

    #@5
    move-result v0

    #@6
    div-int/lit8 v0, v0, 0x4

    #@8
    return v0
.end method

.method public static idealLongArraySize(I)I
    .registers 2

    #@0
    mul-int/lit8 v0, p0, 0x8

    #@2
    invoke-static {v0}, Landroid/support/v4/util/ContainerHelpers;->idealByteArraySize(I)I

    #@5
    move-result v0

    #@6
    div-int/lit8 v0, v0, 0x8

    #@8
    return v0
.end method
