.class public Lcom/google/android/gms/common/data/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final EA:Lcom/google/android/gms/common/data/DataBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected EB:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/common/data/DataBuffer;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/common/data/c;->EA:Lcom/google/android/gms/common/data/DataBuffer;

    #@b
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lcom/google/android/gms/common/data/c;->EB:I

    #@e
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/common/data/c;->EB:I

    #@2
    iget-object v1, p0, Lcom/google/android/gms/common/data/c;->EA:Lcom/google/android/gms/common/data/DataBuffer;

    #@4
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    if-ge v0, v1, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/c;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_21

    #@6
    new-instance v0, Ljava/util/NoSuchElementException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "Cannot advance the iterator beyond "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Lcom/google/android/gms/common/data/c;->EB:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->EA:Lcom/google/android/gms/common/data/DataBuffer;

    #@23
    iget v1, p0, Lcom/google/android/gms/common/data/c;->EB:I

    #@25
    add-int/lit8 v1, v1, 0x1

    #@27
    iput v1, p0, Lcom/google/android/gms/common/data/c;->EB:I

    #@29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method public remove()V
    .registers 3

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Cannot remove elements from a DataBufferIterator"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method
