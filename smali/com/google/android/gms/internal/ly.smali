.class public final Lcom/google/android/gms/internal/ly;
.super Ljava/lang/Object;


# instance fields
.field private amN:I

.field private amO:I

.field private amP:I

.field private amQ:I

.field private amR:I

.field private amS:I

.field private amT:I

.field private amU:I

.field private amV:I

.field private final buffer:[B


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const v0, 0x7fffffff

    #@6
    iput v0, p0, Lcom/google/android/gms/internal/ly;->amS:I

    #@8
    const/16 v0, 0x40

    #@a
    iput v0, p0, Lcom/google/android/gms/internal/ly;->amU:I

    #@c
    const/high16 v0, 0x4000000

    #@e
    iput v0, p0, Lcom/google/android/gms/internal/ly;->amV:I

    #@10
    iput-object p1, p0, Lcom/google/android/gms/internal/ly;->buffer:[B

    #@12
    iput p2, p0, Lcom/google/android/gms/internal/ly;->amN:I

    #@14
    add-int v0, p2, p3

    #@16
    iput v0, p0, Lcom/google/android/gms/internal/ly;->amO:I

    #@18
    iput p2, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@1a
    return-void
.end method

.method public static A(J)J
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    ushr-long v0, p0, v0

    #@3
    const-wide/16 v2, 0x1

    #@5
    and-long/2addr v2, p0

    #@6
    neg-long v2, v2

    #@7
    xor-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method public static a([BII)Lcom/google/android/gms/internal/ly;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ly;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ly;-><init>([BII)V

    #@5
    return-object v0
.end method

.method public static ew(I)I
    .registers 3

    #@0
    ushr-int/lit8 v0, p0, 0x1

    #@2
    and-int/lit8 v1, p0, 0x1

    #@4
    neg-int v1, v1

    #@5
    xor-int/2addr v0, v1

    #@6
    return v0
.end method

.method private nM()V
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amO:I

    #@2
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amP:I

    #@4
    add-int/2addr v0, v1

    #@5
    iput v0, p0, Lcom/google/android/gms/internal/ly;->amO:I

    #@7
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amO:I

    #@9
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amS:I

    #@b
    if-le v0, v1, :cond_1a

    #@d
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amS:I

    #@f
    sub-int/2addr v0, v1

    #@10
    iput v0, p0, Lcom/google/android/gms/internal/ly;->amP:I

    #@12
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amO:I

    #@14
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amP:I

    #@16
    sub-int/2addr v0, v1

    #@17
    iput v0, p0, Lcom/google/android/gms/internal/ly;->amO:I

    #@19
    :goto_19
    return-void

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    iput v0, p0, Lcom/google/android/gms/internal/ly;->amP:I

    #@1d
    goto :goto_19
.end method

.method public static p([B)Lcom/google/android/gms/internal/ly;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    array-length v1, p0

    #@2
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ly;->a([BII)Lcom/google/android/gms/internal/ly;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/me;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nI()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amT:I

    #@6
    iget v2, p0, Lcom/google/android/gms/internal/ly;->amU:I

    #@8
    if-lt v1, v2, :cond_f

    #@a
    invoke-static {}, Lcom/google/android/gms/internal/md;->nY()Lcom/google/android/gms/internal/md;

    #@d
    move-result-object v0

    #@e
    throw v0

    #@f
    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ly;->ex(I)I

    #@12
    move-result v0

    #@13
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amT:I

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    iput v1, p0, Lcom/google/android/gms/internal/ly;->amT:I

    #@19
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/me;->b(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/me;

    #@1c
    const/4 v1, 0x0

    #@1d
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ly;->eu(I)V

    #@20
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amT:I

    #@22
    add-int/lit8 v1, v1, -0x1

    #@24
    iput v1, p0, Lcom/google/android/gms/internal/ly;->amT:I

    #@26
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@29
    return-void
.end method

.method public a(Lcom/google/android/gms/internal/me;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amT:I

    #@2
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amU:I

    #@4
    if-lt v0, v1, :cond_b

    #@6
    invoke-static {}, Lcom/google/android/gms/internal/md;->nY()Lcom/google/android/gms/internal/md;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    :cond_b
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amT:I

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    iput v0, p0, Lcom/google/android/gms/internal/ly;->amT:I

    #@11
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/me;->b(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/me;

    #@14
    const/4 v0, 0x4

    #@15
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/mh;->u(II)I

    #@18
    move-result v0

    #@19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ly;->eu(I)V

    #@1c
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amT:I

    #@1e
    add-int/lit8 v0, v0, -0x1

    #@20
    iput v0, p0, Lcom/google/android/gms/internal/ly;->amT:I

    #@22
    return-void
.end method

.method public eA(I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-gez p1, :cond_7

    #@2
    invoke-static {}, Lcom/google/android/gms/internal/md;->nT()Lcom/google/android/gms/internal/md;

    #@5
    move-result-object v0

    #@6
    throw v0

    #@7
    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@9
    add-int/2addr v0, p1

    #@a
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amS:I

    #@c
    if-le v0, v1, :cond_1b

    #@e
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amS:I

    #@10
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@12
    sub-int/2addr v0, v1

    #@13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ly;->eB(I)V

    #@16
    invoke-static {}, Lcom/google/android/gms/internal/md;->nS()Lcom/google/android/gms/internal/md;

    #@19
    move-result-object v0

    #@1a
    throw v0

    #@1b
    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amO:I

    #@1d
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@1f
    sub-int/2addr v0, v1

    #@20
    if-gt p1, v0, :cond_32

    #@22
    new-array v0, p1, [B

    #@24
    iget-object v1, p0, Lcom/google/android/gms/internal/ly;->buffer:[B

    #@26
    iget v2, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@28
    const/4 v3, 0x0

    #@29
    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2c
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@2e
    add-int/2addr v1, p1

    #@2f
    iput v1, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@31
    return-object v0

    #@32
    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/md;->nS()Lcom/google/android/gms/internal/md;

    #@35
    move-result-object v0

    #@36
    throw v0
.end method

.method public eB(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-gez p1, :cond_7

    #@2
    invoke-static {}, Lcom/google/android/gms/internal/md;->nT()Lcom/google/android/gms/internal/md;

    #@5
    move-result-object v0

    #@6
    throw v0

    #@7
    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@9
    add-int/2addr v0, p1

    #@a
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amS:I

    #@c
    if-le v0, v1, :cond_1b

    #@e
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amS:I

    #@10
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@12
    sub-int/2addr v0, v1

    #@13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ly;->eB(I)V

    #@16
    invoke-static {}, Lcom/google/android/gms/internal/md;->nS()Lcom/google/android/gms/internal/md;

    #@19
    move-result-object v0

    #@1a
    throw v0

    #@1b
    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amO:I

    #@1d
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@1f
    sub-int/2addr v0, v1

    #@20
    if-gt p1, v0, :cond_28

    #@22
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@24
    add-int/2addr v0, p1

    #@25
    iput v0, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@27
    return-void

    #@28
    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/md;->nS()Lcom/google/android/gms/internal/md;

    #@2b
    move-result-object v0

    #@2c
    throw v0
.end method

.method public eu(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/md;
        }
    .end annotation

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amR:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    invoke-static {}, Lcom/google/android/gms/internal/md;->nW()Lcom/google/android/gms/internal/md;

    #@7
    move-result-object v0

    #@8
    throw v0

    #@9
    :cond_9
    return-void
.end method

.method public ev(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    invoke-static {p1}, Lcom/google/android/gms/internal/mh;->eN(I)I

    #@4
    move-result v1

    #@5
    packed-switch v1, :pswitch_data_34

    #@8
    invoke-static {}, Lcom/google/android/gms/internal/md;->nX()Lcom/google/android/gms/internal/md;

    #@b
    move-result-object v0

    #@c
    throw v0

    #@d
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nE()I

    #@10
    :goto_10
    return v0

    #@11
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nL()J

    #@14
    goto :goto_10

    #@15
    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nI()I

    #@18
    move-result v1

    #@19
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ly;->eB(I)V

    #@1c
    goto :goto_10

    #@1d
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nC()V

    #@20
    invoke-static {p1}, Lcom/google/android/gms/internal/mh;->eO(I)I

    #@23
    move-result v1

    #@24
    const/4 v2, 0x4

    #@25
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mh;->u(II)I

    #@28
    move-result v1

    #@29
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ly;->eu(I)V

    #@2c
    goto :goto_10

    #@2d
    :pswitch_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_10

    #@2f
    :pswitch_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nK()I

    #@32
    goto :goto_10

    #@33
    nop

    #@34
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_1d
        :pswitch_2d
        :pswitch_2f
    .end packed-switch
.end method

.method public ex(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/md;
        }
    .end annotation

    #@0
    if-gez p1, :cond_7

    #@2
    invoke-static {}, Lcom/google/android/gms/internal/md;->nT()Lcom/google/android/gms/internal/md;

    #@5
    move-result-object v0

    #@6
    throw v0

    #@7
    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@9
    add-int/2addr v0, p1

    #@a
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amS:I

    #@c
    if-le v0, v1, :cond_13

    #@e
    invoke-static {}, Lcom/google/android/gms/internal/md;->nS()Lcom/google/android/gms/internal/md;

    #@11
    move-result-object v0

    #@12
    throw v0

    #@13
    :cond_13
    iput v0, p0, Lcom/google/android/gms/internal/ly;->amS:I

    #@15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ly;->nM()V

    #@18
    return v1
.end method

.method public ey(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/internal/ly;->amS:I

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ly;->nM()V

    #@5
    return-void
.end method

.method public ez(I)V
    .registers 6

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@2
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amN:I

    #@4
    sub-int/2addr v0, v1

    #@5
    if-le p1, v0, :cond_2f

    #@7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string v2, "Position "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string v2, " is beyond current "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget v2, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@20
    iget v3, p0, Lcom/google/android/gms/internal/ly;->amN:I

    #@22
    sub-int/2addr v2, v3

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    :cond_2f
    if-gez p1, :cond_4a

    #@31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@33
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string v2, "Bad position "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0

    #@4a
    :cond_4a
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amN:I

    #@4c
    add-int/2addr v0, p1

    #@4d
    iput v0, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@4f
    return-void
.end method

.method public getPosition()I
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@2
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amN:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public nB()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nO()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_a

    #@7
    iput v0, p0, Lcom/google/android/gms/internal/ly;->amR:I

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nI()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/google/android/gms/internal/ly;->amR:I

    #@10
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amR:I

    #@12
    if-nez v0, :cond_19

    #@14
    invoke-static {}, Lcom/google/android/gms/internal/md;->nV()Lcom/google/android/gms/internal/md;

    #@17
    move-result-object v0

    #@18
    throw v0

    #@19
    :cond_19
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amR:I

    #@1b
    goto :goto_9
.end method

.method public nC()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nB()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ly;->ev(I)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    :cond_c
    return-void
.end method

.method public nD()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nJ()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public nE()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nI()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public nF()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nI()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public nG()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nI()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/internal/ly;->ew(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public nH()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nJ()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ly;->A(J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public nI()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@3
    move-result v0

    #@4
    if-ltz v0, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    and-int/lit8 v0, v0, 0x7f

    #@9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@c
    move-result v1

    #@d
    if-ltz v1, :cond_13

    #@f
    shl-int/lit8 v1, v1, 0x7

    #@11
    or-int/2addr v0, v1

    #@12
    goto :goto_6

    #@13
    :cond_13
    and-int/lit8 v1, v1, 0x7f

    #@15
    shl-int/lit8 v1, v1, 0x7

    #@17
    or-int/2addr v0, v1

    #@18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@1b
    move-result v1

    #@1c
    if-ltz v1, :cond_22

    #@1e
    shl-int/lit8 v1, v1, 0xe

    #@20
    or-int/2addr v0, v1

    #@21
    goto :goto_6

    #@22
    :cond_22
    and-int/lit8 v1, v1, 0x7f

    #@24
    shl-int/lit8 v1, v1, 0xe

    #@26
    or-int/2addr v0, v1

    #@27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@2a
    move-result v1

    #@2b
    if-ltz v1, :cond_31

    #@2d
    shl-int/lit8 v1, v1, 0x15

    #@2f
    or-int/2addr v0, v1

    #@30
    goto :goto_6

    #@31
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@34
    move-result v2

    #@35
    and-int/lit8 v1, v1, 0x7f

    #@37
    shl-int/lit8 v1, v1, 0x15

    #@39
    or-int/2addr v0, v1

    #@3a
    shl-int/lit8 v1, v2, 0x1c

    #@3c
    or-int/2addr v0, v1

    #@3d
    if-gez v2, :cond_6

    #@3f
    const/4 v1, 0x0

    #@40
    :goto_40
    const/4 v2, 0x5

    #@41
    if-ge v1, v2, :cond_4c

    #@43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@46
    move-result v2

    #@47
    if-gez v2, :cond_6

    #@49
    add-int/lit8 v1, v1, 0x1

    #@4b
    goto :goto_40

    #@4c
    :cond_4c
    invoke-static {}, Lcom/google/android/gms/internal/md;->nU()Lcom/google/android/gms/internal/md;

    #@4f
    move-result-object v0

    #@50
    throw v0
.end method

.method public nJ()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    const-wide/16 v0, 0x0

    #@3
    :goto_3
    const/16 v3, 0x40

    #@5
    if-ge v2, v3, :cond_18

    #@7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@a
    move-result v3

    #@b
    and-int/lit8 v4, v3, 0x7f

    #@d
    int-to-long v4, v4

    #@e
    shl-long/2addr v4, v2

    #@f
    or-long/2addr v0, v4

    #@10
    and-int/lit16 v3, v3, 0x80

    #@12
    if-nez v3, :cond_15

    #@14
    return-wide v0

    #@15
    :cond_15
    add-int/lit8 v2, v2, 0x7

    #@17
    goto :goto_3

    #@18
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/md;->nU()Lcom/google/android/gms/internal/md;

    #@1b
    move-result-object v0

    #@1c
    throw v0
.end method

.method public nK()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@3
    move-result v0

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@9
    move-result v1

    #@a
    and-int/lit16 v1, v1, 0xff

    #@c
    shl-int/lit8 v1, v1, 0x8

    #@e
    or-int/2addr v0, v1

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@12
    move-result v1

    #@13
    and-int/lit16 v1, v1, 0xff

    #@15
    shl-int/lit8 v1, v1, 0x10

    #@17
    or-int/2addr v0, v1

    #@18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@1b
    move-result v1

    #@1c
    and-int/lit16 v1, v1, 0xff

    #@1e
    shl-int/lit8 v1, v1, 0x18

    #@20
    or-int/2addr v0, v1

    #@21
    return v0
.end method

.method public nL()J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const-wide/16 v12, 0xff

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@5
    move-result v0

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@9
    move-result v1

    #@a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@d
    move-result v2

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@11
    move-result v3

    #@12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@15
    move-result v4

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@19
    move-result v5

    #@1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@1d
    move-result v6

    #@1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nP()B

    #@21
    move-result v7

    #@22
    int-to-long v8, v0

    #@23
    int-to-long v0, v1

    #@24
    and-long/2addr v0, v12

    #@25
    const/16 v10, 0x8

    #@27
    shl-long/2addr v0, v10

    #@28
    and-long/2addr v8, v12

    #@29
    or-long/2addr v0, v8

    #@2a
    int-to-long v8, v2

    #@2b
    and-long/2addr v8, v12

    #@2c
    const/16 v2, 0x10

    #@2e
    shl-long/2addr v8, v2

    #@2f
    or-long/2addr v0, v8

    #@30
    int-to-long v2, v3

    #@31
    and-long/2addr v2, v12

    #@32
    const/16 v8, 0x18

    #@34
    shl-long/2addr v2, v8

    #@35
    or-long/2addr v0, v2

    #@36
    int-to-long v2, v4

    #@37
    and-long/2addr v2, v12

    #@38
    const/16 v4, 0x20

    #@3a
    shl-long/2addr v2, v4

    #@3b
    or-long/2addr v0, v2

    #@3c
    int-to-long v2, v5

    #@3d
    and-long/2addr v2, v12

    #@3e
    const/16 v4, 0x28

    #@40
    shl-long/2addr v2, v4

    #@41
    or-long/2addr v0, v2

    #@42
    int-to-long v2, v6

    #@43
    and-long/2addr v2, v12

    #@44
    const/16 v4, 0x30

    #@46
    shl-long/2addr v2, v4

    #@47
    or-long/2addr v0, v2

    #@48
    int-to-long v2, v7

    #@49
    and-long/2addr v2, v12

    #@4a
    const/16 v4, 0x38

    #@4c
    shl-long/2addr v2, v4

    #@4d
    or-long/2addr v0, v2

    #@4e
    return-wide v0
.end method

.method public nN()I
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amS:I

    #@2
    const v1, 0x7fffffff

    #@5
    if-ne v0, v1, :cond_9

    #@7
    const/4 v0, -0x1

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@b
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amS:I

    #@d
    sub-int v0, v1, v0

    #@f
    goto :goto_8
.end method

.method public nO()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@2
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amO:I

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public nP()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@2
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amO:I

    #@4
    if-ne v0, v1, :cond_b

    #@6
    invoke-static {}, Lcom/google/android/gms/internal/md;->nS()Lcom/google/android/gms/internal/md;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->buffer:[B

    #@d
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@f
    add-int/lit8 v2, v1, 0x1

    #@11
    iput v2, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@13
    aget-byte v0, v0, v1

    #@15
    return v0
.end method

.method public o(II)[B
    .registers 7

    #@0
    if-nez p2, :cond_5

    #@2
    sget-object v0, Lcom/google/android/gms/internal/mh;->ank:[B

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    new-array v0, p2, [B

    #@7
    iget v1, p0, Lcom/google/android/gms/internal/ly;->amN:I

    #@9
    iget-object v2, p0, Lcom/google/android/gms/internal/ly;->buffer:[B

    #@b
    add-int/2addr v1, p1

    #@c
    const/4 v3, 0x0

    #@d
    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10
    goto :goto_4
.end method

.method public readBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nI()I

    #@3
    move-result v1

    #@4
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amO:I

    #@6
    iget v2, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@8
    sub-int/2addr v0, v2

    #@9
    if-gt v1, v0, :cond_1d

    #@b
    if-lez v1, :cond_1d

    #@d
    new-array v0, v1, [B

    #@f
    iget-object v2, p0, Lcom/google/android/gms/internal/ly;->buffer:[B

    #@11
    iget v3, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@13
    const/4 v4, 0x0

    #@14
    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    iget v2, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@19
    add-int/2addr v1, v2

    #@1a
    iput v1, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@1c
    :goto_1c
    return-object v0

    #@1d
    :cond_1d
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ly;->eA(I)[B

    #@20
    move-result-object v0

    #@21
    goto :goto_1c
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nL()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nK()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nI()I

    #@3
    move-result v1

    #@4
    iget v0, p0, Lcom/google/android/gms/internal/ly;->amO:I

    #@6
    iget v2, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@8
    sub-int/2addr v0, v2

    #@9
    if-gt v1, v0, :cond_1e

    #@b
    if-lez v1, :cond_1e

    #@d
    new-instance v0, Ljava/lang/String;

    #@f
    iget-object v2, p0, Lcom/google/android/gms/internal/ly;->buffer:[B

    #@11
    iget v3, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@13
    const-string v4, "UTF-8"

    #@15
    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@18
    iget v2, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@1a
    add-int/2addr v1, v2

    #@1b
    iput v1, p0, Lcom/google/android/gms/internal/ly;->amQ:I

    #@1d
    :goto_1d
    return-object v0

    #@1e
    :cond_1e
    new-instance v0, Ljava/lang/String;

    #@20
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ly;->eA(I)[B

    #@23
    move-result-object v1

    #@24
    const-string v2, "UTF-8"

    #@26
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@29
    goto :goto_1d
.end method
