.class public final Lcom/google/android/gms/internal/lw;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lw$a;,
        Lcom/google/android/gms/internal/lw$a$a;,
        Lcom/google/android/gms/internal/lw$a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/internal/lw;",
        ">;"
    }
.end annotation


# instance fields
.field public amr:[Lcom/google/android/gms/internal/lw$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lw;->nv()Lcom/google/android/gms/internal/lw;

    #@6
    return-void
.end method

.method public static n([B)Lcom/google/android/gms/internal/lw;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/md;
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/internal/lw;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/lw;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/me;->a(Lcom/google/android/gms/internal/me;[B)Lcom/google/android/gms/internal/me;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/internal/lw;

    #@b
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/lz;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@2
    if-eqz v0, :cond_1c

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@6
    array-length v0, v0

    #@7
    if-lez v0, :cond_1c

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@c
    array-length v1, v1

    #@d
    if-ge v0, v1, :cond_1c

    #@f
    iget-object v1, p0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@11
    aget-object v1, v1, v0

    #@13
    if-eqz v1, :cond_19

    #@15
    const/4 v2, 0x1

    #@16
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/lz;->a(ILcom/google/android/gms/internal/me;)V

    #@19
    :cond_19
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_a

    #@1c
    :cond_1c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/lz;)V

    #@1f
    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/me;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lw;->q(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/lw;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected c()I
    .registers 5

    #@0
    invoke-super {p0}, Lcom/google/android/gms/internal/ma;->c()I

    #@3
    move-result v1

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@6
    if-eqz v0, :cond_22

    #@8
    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@a
    array-length v0, v0

    #@b
    if-lez v0, :cond_22

    #@d
    const/4 v0, 0x0

    #@e
    :goto_e
    iget-object v2, p0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@10
    array-length v2, v2

    #@11
    if-ge v0, v2, :cond_22

    #@13
    iget-object v2, p0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@15
    aget-object v2, v2, v0

    #@17
    if-eqz v2, :cond_1f

    #@19
    const/4 v3, 0x1

    #@1a
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/lz;->b(ILcom/google/android/gms/internal/me;)I

    #@1d
    move-result v2

    #@1e
    add-int/2addr v1, v2

    #@1f
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_e

    #@22
    :cond_22
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-ne p1, p0, :cond_5

    #@4
    :cond_4
    :goto_4
    return v0

    #@5
    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/lw;

    #@7
    if-eqz v2, :cond_2d

    #@9
    check-cast p1, Lcom/google/android/gms/internal/lw;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@d
    iget-object v3, p1, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_2d

    #@15
    iget-object v2, p0, Lcom/google/android/gms/internal/lw;->amX:Ljava/util/List;

    #@17
    if-eqz v2, :cond_21

    #@19
    iget-object v2, p0, Lcom/google/android/gms/internal/lw;->amX:Ljava/util/List;

    #@1b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_2f

    #@21
    :cond_21
    iget-object v2, p1, Lcom/google/android/gms/internal/lw;->amX:Ljava/util/List;

    #@23
    if-eqz v2, :cond_4

    #@25
    iget-object v2, p1, Lcom/google/android/gms/internal/lw;->amX:Ljava/util/List;

    #@27
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_4

    #@2d
    :cond_2d
    move v0, v1

    #@2e
    goto :goto_4

    #@2f
    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->amX:Ljava/util/List;

    #@31
    iget-object v1, p1, Lcom/google/android/gms/internal/lw;->amX:Ljava/util/List;

    #@33
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([Ljava/lang/Object;)I

    #@5
    move-result v1

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->amX:Ljava/util/List;

    #@8
    if-eqz v0, :cond_12

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->amX:Ljava/util/List;

    #@c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_19

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    add-int/lit16 v1, v1, 0x20f

    #@15
    mul-int/lit8 v1, v1, 0x1f

    #@17
    add-int/2addr v0, v1

    #@18
    return v0

    #@19
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->amX:Ljava/util/List;

    #@1b
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    #@1e
    move-result v0

    #@1f
    goto :goto_13
.end method

.method public nv()Lcom/google/android/gms/internal/lw;
    .registers 2

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/lw$a;->nw()[Lcom/google/android/gms/internal/lw$a;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@6
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/internal/lw;->amX:Ljava/util/List;

    #@9
    const/4 v0, -0x1

    #@a
    iput v0, p0, Lcom/google/android/gms/internal/lw;->anb:I

    #@c
    return-object p0
.end method

.method public q(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/lw;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@4
    move-result v0

    #@5
    sparse-switch v0, :sswitch_data_4e

    #@8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/ly;I)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    :sswitch_e
    return-object p0

    #@f
    :sswitch_f
    const/16 v0, 0xa

    #@11
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@14
    move-result v2

    #@15
    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@17
    if-nez v0, :cond_3b

    #@19
    move v0, v1

    #@1a
    :goto_1a
    add-int/2addr v2, v0

    #@1b
    new-array v2, v2, [Lcom/google/android/gms/internal/lw$a;

    #@1d
    if-eqz v0, :cond_24

    #@1f
    iget-object v3, p0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@21
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    :cond_24
    :goto_24
    array-length v3, v2

    #@25
    add-int/lit8 v3, v3, -0x1

    #@27
    if-ge v0, v3, :cond_3f

    #@29
    new-instance v3, Lcom/google/android/gms/internal/lw$a;

    #@2b
    invoke-direct {v3}, Lcom/google/android/gms/internal/lw$a;-><init>()V

    #@2e
    aput-object v3, v2, v0

    #@30
    aget-object v3, v2, v0

    #@32
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@38
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_24

    #@3b
    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@3d
    array-length v0, v0

    #@3e
    goto :goto_1a

    #@3f
    :cond_3f
    new-instance v3, Lcom/google/android/gms/internal/lw$a;

    #@41
    invoke-direct {v3}, Lcom/google/android/gms/internal/lw$a;-><init>()V

    #@44
    aput-object v3, v2, v0

    #@46
    aget-object v0, v2, v0

    #@48
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@4b
    iput-object v2, p0, Lcom/google/android/gms/internal/lw;->amr:[Lcom/google/android/gms/internal/lw$a;

    #@4d
    goto :goto_1

    #@4e
    :sswitch_data_4e
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
    .end sparse-switch
.end method
