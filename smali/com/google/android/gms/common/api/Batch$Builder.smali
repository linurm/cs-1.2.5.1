.class public final Lcom/google/android/gms/common/api/Batch$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/Batch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private DE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;>;"
        }
    .end annotation
.end field

.field private DF:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/common/api/Batch$Builder;->DE:Ljava/util/List;

    #@a
    invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/google/android/gms/common/api/Batch$Builder;->DF:Landroid/os/Looper;

    #@10
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/common/api/BatchResultToken;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;)",
            "Lcom/google/android/gms/common/api/BatchResultToken",
            "<TR;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/common/api/BatchResultToken;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch$Builder;->DE:Ljava/util/List;

    #@4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/BatchResultToken;-><init>(I)V

    #@b
    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch$Builder;->DE:Ljava/util/List;

    #@d
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    return-object v0
.end method

.method public build()Lcom/google/android/gms/common/api/Batch;
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/common/api/Batch;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch$Builder;->DE:Ljava/util/List;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/common/api/Batch$Builder;->DF:Landroid/os/Looper;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Batch;-><init>(Ljava/util/List;Landroid/os/Looper;Lcom/google/android/gms/common/api/Batch$1;)V

    #@a
    return-object v0
.end method
