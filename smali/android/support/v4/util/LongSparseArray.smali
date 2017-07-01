.class public Landroid/support/v4/util/LongSparseArray;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    #@5
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-boolean v2, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@6
    if-nez p1, :cond_13

    #@8
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_LONGS:[J

    #@a
    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@c
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@e
    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@10
    :goto_10
    iput v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@12
    return-void

    #@13
    :cond_13
    invoke-static {p1}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    #@16
    move-result v0

    #@17
    new-array v1, v0, [J

    #@19
    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@1b
    new-array v0, v0, [Ljava/lang/Object;

    #@1d
    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@1f
    goto :goto_10
.end method

.method private gc()V
    .registers 11

    #@0
    const/4 v1, 0x0

    #@1
    iget v3, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@3
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@5
    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@7
    move v0, v1

    #@8
    move v2, v1

    #@9
    :goto_9
    if-ge v2, v3, :cond_21

    #@b
    aget-object v6, v5, v2

    #@d
    sget-object v7, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@f
    if-eq v6, v7, :cond_1e

    #@11
    if-eq v2, v0, :cond_1c

    #@13
    aget-wide v8, v4, v2

    #@15
    aput-wide v8, v4, v0

    #@17
    aput-object v6, v5, v0

    #@19
    const/4 v6, 0x0

    #@1a
    aput-object v6, v5, v2

    #@1c
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_9

    #@21
    :cond_21
    iput-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@23
    iput v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@25
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    #@0
    const/4 v5, 0x0

    #@1
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@3
    if-eqz v0, :cond_15

    #@5
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@7
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@9
    add-int/lit8 v1, v1, -0x1

    #@b
    aget-wide v0, v0, v1

    #@d
    cmp-long v0, p1, v0

    #@f
    if-gtz v0, :cond_15

    #@11
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@14
    :goto_14
    return-void

    #@15
    :cond_15
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@17
    if-eqz v0, :cond_23

    #@19
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@1b
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@1d
    array-length v1, v1

    #@1e
    if-lt v0, v1, :cond_23

    #@20
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@23
    :cond_23
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@25
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@27
    array-length v1, v1

    #@28
    if-lt v0, v1, :cond_48

    #@2a
    add-int/lit8 v1, v0, 0x1

    #@2c
    invoke-static {v1}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    #@2f
    move-result v1

    #@30
    new-array v2, v1, [J

    #@32
    new-array v1, v1, [Ljava/lang/Object;

    #@34
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@36
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@38
    array-length v4, v4

    #@39
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3c
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@3e
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@40
    array-length v4, v4

    #@41
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@44
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@46
    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@48
    :cond_48
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@4a
    aput-wide p1, v1, v0

    #@4c
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@4e
    aput-object p3, v1, v0

    #@50
    add-int/lit8 v0, v0, 0x1

    #@52
    iput v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@54
    goto :goto_14
.end method

.method public clear()V
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@3
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@5
    move v0, v1

    #@6
    :goto_6
    if-ge v0, v2, :cond_e

    #@8
    const/4 v4, 0x0

    #@9
    aput-object v4, v3, v0

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_6

    #@e
    :cond_e
    iput v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@10
    iput-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@12
    return-void
.end method

.method public clone()Landroid/support/v4/util/LongSparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LongSparseArray",
            "<TE;>;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/support/v4/util/LongSparseArray;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_1c

    #@7
    :try_start_7
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@9
    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, [J

    #@f
    iput-object v1, v0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@11
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@13
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, [Ljava/lang/Object;

    #@19
    iput-object v1, v0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7 .. :try_end_1b} :catch_1f

    #@1b
    :goto_1b
    return-object v0

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    move-object v0, v1

    #@1e
    goto :goto_1b

    #@1f
    :catch_1f
    move-exception v1

    #@20
    goto :goto_1b
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->clone()Landroid/support/v4/util/LongSparseArray;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public delete(J)V
    .registers 6

    #@0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@2
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@4
    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    #@7
    move-result v0

    #@8
    if-ltz v0, :cond_1b

    #@a
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@c
    aget-object v1, v1, v0

    #@e
    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@10
    if-eq v1, v2, :cond_1b

    #@12
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@14
    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@16
    aput-object v2, v1, v0

    #@18
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@1b
    :cond_1b
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@2
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@4
    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    #@7
    move-result v0

    #@8
    if-ltz v0, :cond_12

    #@a
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@c
    aget-object v1, v1, v0

    #@e
    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@10
    if-ne v1, v2, :cond_13

    #@12
    :cond_12
    :goto_12
    return-object p3

    #@13
    :cond_13
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@15
    aget-object p3, v1, v0

    #@17
    goto :goto_12
.end method

.method public indexOfKey(J)I
    .registers 6

    #@0
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@7
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@9
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@b
    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@a
    if-ge v0, v1, :cond_16

    #@c
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@e
    aget-object v1, v1, v0

    #@10
    if-ne v1, p1, :cond_13

    #@12
    :goto_12
    return v0

    #@13
    :cond_13
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_8

    #@16
    :cond_16
    const/4 v0, -0x1

    #@17
    goto :goto_12
.end method

.method public keyAt(I)J
    .registers 4

    #@0
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@7
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@9
    aget-wide v0, v0, p1

    #@b
    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    #@0
    const/4 v5, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@3
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@5
    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    #@8
    move-result v0

    #@9
    if-ltz v0, :cond_10

    #@b
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@d
    aput-object p3, v1, v0

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    xor-int/lit8 v0, v0, -0x1

    #@12
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@14
    if-ge v0, v1, :cond_27

    #@16
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@18
    aget-object v1, v1, v0

    #@1a
    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@1c
    if-ne v1, v2, :cond_27

    #@1e
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@20
    aput-wide p1, v1, v0

    #@22
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@24
    aput-object p3, v1, v0

    #@26
    goto :goto_f

    #@27
    :cond_27
    iget-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@29
    if-eqz v1, :cond_3f

    #@2b
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@2d
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@2f
    array-length v2, v2

    #@30
    if-lt v1, v2, :cond_3f

    #@32
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@35
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@37
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@39
    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    #@3c
    move-result v0

    #@3d
    xor-int/lit8 v0, v0, -0x1

    #@3f
    :cond_3f
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@41
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@43
    array-length v2, v2

    #@44
    if-lt v1, v2, :cond_66

    #@46
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@48
    add-int/lit8 v1, v1, 0x1

    #@4a
    invoke-static {v1}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    #@4d
    move-result v1

    #@4e
    new-array v2, v1, [J

    #@50
    new-array v1, v1, [Ljava/lang/Object;

    #@52
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@54
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@56
    array-length v4, v4

    #@57
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5a
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@5c
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@5e
    array-length v4, v4

    #@5f
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@62
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@64
    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@66
    :cond_66
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@68
    sub-int/2addr v1, v0

    #@69
    if-eqz v1, :cond_83

    #@6b
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@6d
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@6f
    add-int/lit8 v3, v0, 0x1

    #@71
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@73
    sub-int/2addr v4, v0

    #@74
    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@77
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@79
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@7b
    add-int/lit8 v3, v0, 0x1

    #@7d
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@7f
    sub-int/2addr v4, v0

    #@80
    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@83
    :cond_83
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@85
    aput-wide p1, v1, v0

    #@87
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@89
    aput-object p3, v1, v0

    #@8b
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@8d
    add-int/lit8 v0, v0, 0x1

    #@8f
    iput v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@91
    goto/16 :goto_f
.end method

.method public remove(J)V
    .registers 4

    #@0
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    #@3
    return-void
.end method

.method public removeAt(I)V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    sget-object v1, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@6
    if-eq v0, v1, :cond_11

    #@8
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@a
    sget-object v1, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@c
    aput-object v1, v0, p1

    #@e
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@11
    :cond_11
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@7
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@9
    aput-object p2, v0, p1

    #@b
    return-void
.end method

.method public size()I
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@7
    :cond_7
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->size()I

    #@3
    move-result v0

    #@4
    if-gtz v0, :cond_9

    #@6
    const-string v0, "{}"

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@d
    mul-int/lit8 v0, v0, 0x1c

    #@f
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@12
    const/16 v0, 0x7b

    #@14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    const/4 v0, 0x0

    #@18
    :goto_18
    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@1a
    if-ge v0, v2, :cond_41

    #@1c
    if-lez v0, :cond_23

    #@1e
    const-string v2, ", "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    :cond_23
    invoke-virtual {p0, v0}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    #@26
    move-result-wide v2

    #@27
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2a
    const/16 v2, 0x3d

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    invoke-virtual {p0, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    if-eq v2, p0, :cond_3b

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    :goto_38
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_18

    #@3b
    :cond_3b
    const-string v2, "(this Map)"

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    goto :goto_38

    #@41
    :cond_41
    const/16 v0, 0x7d

    #@43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    goto :goto_8
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@7
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@9
    aget-object v0, v0, p1

    #@b
    return-object v0
.end method
