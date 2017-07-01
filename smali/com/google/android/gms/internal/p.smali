.class Lcom/google/android/gms/internal/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/n;


# instance fields
.field private kn:Lcom/google/android/gms/internal/lz;

.field private ko:[B

.field private final kp:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/p;->kp:I

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/p;->reset()V

    #@8
    return-void
.end method


# virtual methods
.method public A()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/p;->kn:Lcom/google/android/gms/internal/lz;

    #@3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/lz;->nQ()I

    #@6
    move-result v0

    #@7
    if-gez v0, :cond_f

    #@9
    new-instance v0, Ljava/io/IOException;

    #@b
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@e
    throw v0

    #@f
    :cond_f
    if-nez v0, :cond_14

    #@11
    iget-object v0, p0, Lcom/google/android/gms/internal/p;->ko:[B

    #@13
    :goto_13
    return-object v0

    #@14
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/p;->ko:[B

    #@16
    array-length v1, v1

    #@17
    sub-int v0, v1, v0

    #@19
    new-array v0, v0, [B

    #@1b
    iget-object v1, p0, Lcom/google/android/gms/internal/p;->ko:[B

    #@1d
    array-length v2, v0

    #@1e
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@21
    goto :goto_13
.end method

.method public b(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/p;->kn:Lcom/google/android/gms/internal/lz;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/lz;->b(IJ)V

    #@5
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/p;->kn:Lcom/google/android/gms/internal/lz;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/lz;->b(ILjava/lang/String;)V

    #@5
    return-void
.end method

.method public reset()V
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/p;->kp:I

    #@2
    new-array v0, v0, [B

    #@4
    iput-object v0, p0, Lcom/google/android/gms/internal/p;->ko:[B

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/p;->ko:[B

    #@8
    invoke-static {v0}, Lcom/google/android/gms/internal/lz;->q([B)Lcom/google/android/gms/internal/lz;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/google/android/gms/internal/p;->kn:Lcom/google/android/gms/internal/lz;

    #@e
    return-void
.end method
