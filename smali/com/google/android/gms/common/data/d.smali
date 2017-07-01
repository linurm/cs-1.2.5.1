.class public abstract Lcom/google/android/gms/common/data/d;
.super Ljava/lang/Object;


# instance fields
.field protected final DG:Lcom/google/android/gms/common/data/DataHolder;

.field protected EC:I

.field private ED:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@b
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/data/d;->ac(I)V

    #@e
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    iget v1, p0, Lcom/google/android/gms/common/data/d;->EC:I

    #@4
    iget v2, p0, Lcom/google/android/gms/common/data/d;->ED:I

    #@6
    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V

    #@9
    return-void
.end method

.method protected ac(I)V
    .registers 4

    #@0
    if-ltz p1, :cond_1b

    #@2
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    #@7
    move-result v0

    #@8
    if-ge p1, v0, :cond_1b

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/internal/hm;->A(Z)V

    #@e
    iput p1, p0, Lcom/google/android/gms/common/data/d;->EC:I

    #@10
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@12
    iget v1, p0, Lcom/google/android/gms/common/data/d;->EC:I

    #@14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->ae(I)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Lcom/google/android/gms/common/data/d;->ED:I

    #@1a
    return-void

    #@1b
    :cond_1b
    const/4 v0, 0x0

    #@1c
    goto :goto_b
.end method

.method public av(Ljava/lang/String;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/DataHolder;->av(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected aw(Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    iget v1, p0, Lcom/google/android/gms/common/data/d;->EC:I

    #@4
    iget v2, p0, Lcom/google/android/gms/common/data/d;->ED:I

    #@6
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->g(Ljava/lang/String;II)Landroid/net/Uri;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method protected ax(Ljava/lang/String;)Z
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    iget v1, p0, Lcom/google/android/gms/common/data/d;->EC:I

    #@4
    iget v2, p0, Lcom/google/android/gms/common/data/d;->ED:I

    #@6
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->h(Ljava/lang/String;II)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected eV()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/data/d;->EC:I

    #@2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/google/android/gms/common/data/d;

    #@3
    if-eqz v1, :cond_32

    #@5
    check-cast p1, Lcom/google/android/gms/common/data/d;

    #@7
    iget v1, p1, Lcom/google/android/gms/common/data/d;->EC:I

    #@9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v1

    #@d
    iget v2, p0, Lcom/google/android/gms/common/data/d;->EC:I

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v2

    #@13
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_32

    #@19
    iget v1, p1, Lcom/google/android/gms/common/data/d;->ED:I

    #@1b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v1

    #@1f
    iget v2, p0, Lcom/google/android/gms/common/data/d;->ED:I

    #@21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v2

    #@25
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_32

    #@2b
    iget-object v1, p1, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2d
    iget-object v2, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2f
    if-ne v1, v2, :cond_32

    #@31
    const/4 v0, 0x1

    #@32
    :cond_32
    return v0
.end method

.method protected getBoolean(Ljava/lang/String;)Z
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    iget v1, p0, Lcom/google/android/gms/common/data/d;->EC:I

    #@4
    iget v2, p0, Lcom/google/android/gms/common/data/d;->ED:I

    #@6
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->d(Ljava/lang/String;II)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected getByteArray(Ljava/lang/String;)[B
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    iget v1, p0, Lcom/google/android/gms/common/data/d;->EC:I

    #@4
    iget v2, p0, Lcom/google/android/gms/common/data/d;->ED:I

    #@6
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->f(Ljava/lang/String;II)[B

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method protected getFloat(Ljava/lang/String;)F
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    iget v1, p0, Lcom/google/android/gms/common/data/d;->EC:I

    #@4
    iget v2, p0, Lcom/google/android/gms/common/data/d;->ED:I

    #@6
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;II)F

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected getInteger(Ljava/lang/String;)I
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    iget v1, p0, Lcom/google/android/gms/common/data/d;->EC:I

    #@4
    iget v2, p0, Lcom/google/android/gms/common/data/d;->ED:I

    #@6
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected getLong(Ljava/lang/String;)J
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    iget v1, p0, Lcom/google/android/gms/common/data/d;->EC:I

    #@4
    iget v2, p0, Lcom/google/android/gms/common/data/d;->ED:I

    #@6
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;II)J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    iget v1, p0, Lcom/google/android/gms/common/data/d;->EC:I

    #@4
    iget v2, p0, Lcom/google/android/gms/common/data/d;->ED:I

    #@6
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget v2, p0, Lcom/google/android/gms/common/data/d;->EC:I

    #@6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    iget v2, p0, Lcom/google/android/gms/common/data/d;->ED:I

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v0, v1

    #@15
    const/4 v1, 0x2

    #@16
    iget-object v2, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@18
    aput-object v2, v0, v1

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public isDataValid()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method
