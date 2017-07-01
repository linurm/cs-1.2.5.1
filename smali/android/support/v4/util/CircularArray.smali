.class public Landroid/support/v4/util/CircularArray;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/support/v4/util/CircularArray;-><init>(I)V

    #@5
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    #@0
    const/4 v1, 0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    if-gtz p1, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "capacity must be positive"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    #@11
    move-result v0

    #@12
    if-eq v0, v1, :cond_1c

    #@14
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    #@17
    move-result v0

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    shl-int p1, v1, v0

    #@1c
    :cond_1c
    add-int/lit8 v0, p1, -0x1

    #@1e
    iput v0, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@20
    new-array v0, p1, [Ljava/lang/Object;

    #@22
    check-cast v0, [Ljava/lang/Object;

    #@24
    iput-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@26
    return-void
.end method

.method private doubleCapacity()V
    .registers 8

    #@0
    const/4 v6, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@3
    array-length v1, v0

    #@4
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@6
    sub-int v2, v1, v0

    #@8
    shl-int/lit8 v3, v1, 0x1

    #@a
    if-gez v3, :cond_14

    #@c
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    const-string v1, "Too big"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    :cond_14
    new-array v0, v3, [Ljava/lang/Object;

    #@16
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@18
    iget v5, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@1a
    invoke-static {v4, v5, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@1f
    iget v5, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@21
    invoke-static {v4, v6, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    check-cast v0, [Ljava/lang/Object;

    #@26
    iput-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@28
    iput v6, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@2a
    iput v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@2c
    add-int/lit8 v0, v3, -0x1

    #@2e
    iput v0, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@30
    return-void
.end method


# virtual methods
.method public final addFirst(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@6
    and-int/2addr v0, v1

    #@7
    iput v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@9
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@b
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@d
    aput-object p1, v0, v1

    #@f
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@11
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@13
    if-ne v0, v1, :cond_18

    #@15
    invoke-direct {p0}, Landroid/support/v4/util/CircularArray;->doubleCapacity()V

    #@18
    :cond_18
    return-void
.end method

.method public final addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@4
    aput-object p1, v0, v1

    #@6
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@c
    and-int/2addr v0, v1

    #@d
    iput v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@f
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@11
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@13
    if-ne v0, v1, :cond_18

    #@15
    invoke-direct {p0}, Landroid/support/v4/util/CircularArray;->doubleCapacity()V

    #@18
    :cond_18
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    if-ltz p1, :cond_8

    #@2
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_e

    #@8
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@a
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@d
    throw v0

    #@e
    :cond_e
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@10
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@12
    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@14
    add-int/2addr v0, p1

    #@15
    and-int/2addr v0, v1

    #@16
    aget-object v0, v2, v0

    #@18
    return-object v0
.end method

.method public final getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@4
    if-ne v0, v1, :cond_c

    #@6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@e
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@10
    aget-object v0, v0, v1

    #@12
    return-object v0
.end method

.method public final getLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@4
    if-ne v0, v1, :cond_c

    #@6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@e
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@14
    and-int/2addr v1, v2

    #@15
    aget-object v0, v0, v1

    #@17
    return-object v0
.end method

.method public final isEmpty()Z
    .registers 3

    #@0
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public final popFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@4
    if-ne v0, v1, :cond_c

    #@6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@e
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@10
    aget-object v0, v0, v1

    #@12
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@14
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@16
    const/4 v3, 0x0

    #@17
    aput-object v3, v1, v2

    #@19
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@1f
    and-int/2addr v1, v2

    #@20
    iput v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@22
    return-object v0
.end method

.method public final popLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@4
    if-ne v0, v1, :cond_c

    #@6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    :cond_c
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@e
    add-int/lit8 v0, v0, -0x1

    #@10
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@12
    and-int/2addr v0, v1

    #@13
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@15
    aget-object v1, v1, v0

    #@17
    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@19
    const/4 v3, 0x0

    #@1a
    aput-object v3, v2, v0

    #@1c
    iput v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@1e
    return-object v1
.end method

.method public final size()I
    .registers 3

    #@0
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@4
    sub-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@7
    and-int/2addr v0, v1

    #@8
    return v0
.end method
