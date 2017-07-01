.class public Landroid/support/v4/util/Pools$SimplePool;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v4/util/Pools$Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-gtz p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "The max pool size must be > 0"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    new-array v0, p1, [Ljava/lang/Object;

    #@f
    iput-object v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    #@11
    return-void
.end method

.method private isInPool(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    move v0, v1

    #@2
    :goto_2
    iget v2, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    #@4
    if-ge v0, v2, :cond_d

    #@6
    iget-object v2, p0, Landroid/support/v4/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    #@8
    aget-object v2, v2, v0

    #@a
    if-ne v2, p1, :cond_e

    #@c
    const/4 v1, 0x1

    #@d
    :cond_d
    return v1

    #@e
    :cond_e
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_2
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    iget v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    #@3
    if-lez v0, :cond_18

    #@5
    iget v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    #@7
    add-int/lit8 v2, v0, -0x1

    #@9
    iget-object v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    #@b
    aget-object v0, v0, v2

    #@d
    iget-object v3, p0, Landroid/support/v4/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    #@f
    aput-object v1, v3, v2

    #@11
    iget v1, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    #@13
    add-int/lit8 v1, v1, -0x1

    #@15
    iput v1, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    #@17
    :goto_17
    return-object v0

    #@18
    :cond_18
    move-object v0, v1

    #@19
    goto :goto_17
.end method

.method public release(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Landroid/support/v4/util/Pools$SimplePool;->isInPool(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "Already in the pool!"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    iget v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    #@10
    iget-object v1, p0, Landroid/support/v4/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    #@12
    array-length v1, v1

    #@13
    if-ge v0, v1, :cond_23

    #@15
    iget-object v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    #@17
    iget v1, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    #@19
    aput-object p1, v0, v1

    #@1b
    iget v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    iput v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    #@21
    const/4 v0, 0x1

    #@22
    :goto_22
    return v0

    #@23
    :cond_23
    const/4 v0, 0x0

    #@24
    goto :goto_22
.end method
