.class public final Lcom/google/android/gms/common/api/Batch;
.super Lcom/google/android/gms/common/api/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/Batch$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$a",
        "<",
        "Lcom/google/android/gms/common/api/BatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private DA:Z

.field private DB:Z

.field private final DC:[Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;"
        }
    .end annotation
.end field

.field private Dz:I

.field private final ls:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/os/Looper;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/common/api/a$c;

    #@2
    invoke-direct {v0, p2}, Lcom/google/android/gms/common/api/a$c;-><init>(Landroid/os/Looper;)V

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;-><init>(Lcom/google/android/gms/common/api/a$c;)V

    #@8
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Lcom/google/android/gms/common/api/Batch;->ls:Ljava/lang/Object;

    #@f
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Lcom/google/android/gms/common/api/Batch;->Dz:I

    #@15
    iget v0, p0, Lcom/google/android/gms/common/api/Batch;->Dz:I

    #@17
    new-array v0, v0, [Lcom/google/android/gms/common/api/PendingResult;

    #@19
    iput-object v0, p0, Lcom/google/android/gms/common/api/Batch;->DC:[Lcom/google/android/gms/common/api/PendingResult;

    #@1b
    const/4 v0, 0x0

    #@1c
    move v1, v0

    #@1d
    :goto_1d
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@20
    move-result v0

    #@21
    if-ge v1, v0, :cond_39

    #@23
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/google/android/gms/common/api/PendingResult;

    #@29
    iget-object v2, p0, Lcom/google/android/gms/common/api/Batch;->DC:[Lcom/google/android/gms/common/api/PendingResult;

    #@2b
    aput-object v0, v2, v1

    #@2d
    new-instance v2, Lcom/google/android/gms/common/api/Batch$1;

    #@2f
    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/Batch$1;-><init>(Lcom/google/android/gms/common/api/Batch;)V

    #@32
    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/PendingResult;->a(Lcom/google/android/gms/common/api/PendingResult$a;)V

    #@35
    add-int/lit8 v0, v1, 0x1

    #@37
    move v1, v0

    #@38
    goto :goto_1d

    #@39
    :cond_39
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/os/Looper;Lcom/google/android/gms/common/api/Batch$1;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/Batch;-><init>(Ljava/util/List;Landroid/os/Looper;)V

    #@3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/Batch;)Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch;->ls:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/Batch;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/Batch;->DB:Z

    #@2
    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/Batch;)I
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/common/api/Batch;->Dz:I

    #@2
    add-int/lit8 v1, v0, -0x1

    #@4
    iput v1, p0, Lcom/google/android/gms/common/api/Batch;->Dz:I

    #@6
    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/Batch;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/Batch;->DA:Z

    #@2
    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/Batch;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/api/Batch;->Dz:I

    #@2
    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/Batch;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/Batch;->DB:Z

    #@2
    return v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/Batch;)V
    .registers 1

    #@0
    invoke-super {p0}, Lcom/google/android/gms/common/api/a$a;->cancel()V

    #@3
    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/Batch;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/Batch;->DA:Z

    #@2
    return v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/Batch;)[Lcom/google/android/gms/common/api/PendingResult;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch;->DC:[Lcom/google/android/gms/common/api/PendingResult;

    #@2
    return-object v0
.end method


# virtual methods
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/Batch;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BatchResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public cancel()V
    .registers 5

    #@0
    invoke-super {p0}, Lcom/google/android/gms/common/api/a$a;->cancel()V

    #@3
    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch;->DC:[Lcom/google/android/gms/common/api/PendingResult;

    #@5
    array-length v2, v1

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    if-ge v0, v2, :cond_11

    #@9
    aget-object v3, v1, v0

    #@b
    invoke-interface {v3}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_7

    #@11
    :cond_11
    return-void
.end method

.method public createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BatchResult;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/common/api/BatchResult;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch;->DC:[Lcom/google/android/gms/common/api/PendingResult;

    #@4
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    #@7
    return-object v0
.end method
