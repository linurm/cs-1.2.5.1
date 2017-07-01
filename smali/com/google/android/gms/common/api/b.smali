.class public abstract Lcom/google/android/gms/common/api/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# instance fields
.field protected final DG:Lcom/google/android/gms/common/data/DataHolder;

.field protected final yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@5
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    #@8
    move-result v1

    #@9
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@c
    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->yz:Lcom/google/android/gms/common/api/Status;

    #@e
    iput-object p1, p0, Lcom/google/android/gms/common/api/b;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@10
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method

.method public release()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@6
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    #@9
    :cond_9
    return-void
.end method
