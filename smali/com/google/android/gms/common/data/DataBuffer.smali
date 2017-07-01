.class public abstract Lcom/google/android/gms/common/data/DataBuffer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Releasable;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final DG:Lcom/google/android/gms/common/data/DataHolder;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/common/data/DataBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@5
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@7
    if-eqz v0, :cond_e

    #@9
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@b
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/Object;)V

    #@e
    :cond_e
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataBuffer;->release()V

    #@3
    return-void
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public eU()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->eU()Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@8
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    #@b
    move-result v0

    #@c
    goto :goto_5
.end method

.method public isClosed()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@8
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    #@b
    move-result v0

    #@c
    goto :goto_5
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/common/data/c;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/data/c;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    #@5
    return-object v0
.end method

.method public release()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@6
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    #@9
    :cond_9
    return-void
.end method

.method public singleRefIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/common/data/h;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/data/h;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    #@5
    return-object v0
.end method
