.class public Lcom/google/android/gms/common/data/h;
.super Lcom/google/android/gms/common/data/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private EW:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/c;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    #@3
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/h;->hasNext()Z

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
    iget v2, p0, Lcom/google/android/gms/common/data/h;->EB:I

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
    iget v0, p0, Lcom/google/android/gms/common/data/h;->EB:I

    #@23
    add-int/lit8 v0, v0, 0x1

    #@25
    iput v0, p0, Lcom/google/android/gms/common/data/h;->EB:I

    #@27
    iget v0, p0, Lcom/google/android/gms/common/data/h;->EB:I

    #@29
    if-nez v0, :cond_5f

    #@2b
    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->EA:Lcom/google/android/gms/common/data/DataBuffer;

    #@2d
    const/4 v1, 0x0

    #@2e
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Lcom/google/android/gms/common/data/h;->EW:Ljava/lang/Object;

    #@34
    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->EW:Ljava/lang/Object;

    #@36
    instance-of v0, v0, Lcom/google/android/gms/common/data/d;

    #@38
    if-nez v0, :cond_68

    #@3a
    new-instance v0, Ljava/lang/IllegalStateException;

    #@3c
    new-instance v1, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string v2, "DataBuffer reference of type "

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    iget-object v2, p0, Lcom/google/android/gms/common/data/h;->EW:Ljava/lang/Object;

    #@49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    const-string v2, " is not movable"

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v0

    #@5f
    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->EW:Ljava/lang/Object;

    #@61
    check-cast v0, Lcom/google/android/gms/common/data/d;

    #@63
    iget v1, p0, Lcom/google/android/gms/common/data/h;->EB:I

    #@65
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/d;->ac(I)V

    #@68
    :cond_68
    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->EW:Ljava/lang/Object;

    #@6a
    return-object v0
.end method
