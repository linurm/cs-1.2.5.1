.class public final Lcom/google/android/gms/common/api/BatchResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# instance fields
.field private final DC:[Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;"
        }
    .end annotation
.end field

.field private final yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "[",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/common/api/BatchResult;->yz:Lcom/google/android/gms/common/api/Status;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/common/api/BatchResult;->DC:[Lcom/google/android/gms/common/api/PendingResult;

    #@7
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/BatchResult;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method

.method public take(Lcom/google/android/gms/common/api/BatchResultToken;)Lcom/google/android/gms/common/api/Result;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/BatchResultToken",
            "<TR;>;)TR;"
        }
    .end annotation

    #@0
    iget v0, p1, Lcom/google/android/gms/common/api/BatchResultToken;->mId:I

    #@2
    iget-object v1, p0, Lcom/google/android/gms/common/api/BatchResult;->DC:[Lcom/google/android/gms/common/api/PendingResult;

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_1c

    #@7
    const/4 v0, 0x1

    #@8
    :goto_8
    const-string v1, "The result token does not belong to this batch"

    #@a
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/common/api/BatchResult;->DC:[Lcom/google/android/gms/common/api/PendingResult;

    #@f
    iget v1, p1, Lcom/google/android/gms/common/api/BatchResultToken;->mId:I

    #@11
    aget-object v0, v0, v1

    #@13
    const-wide/16 v2, 0x0

    #@15
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@17
    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    goto :goto_8
.end method
