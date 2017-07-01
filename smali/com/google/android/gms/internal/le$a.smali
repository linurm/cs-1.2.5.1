.class public final Lcom/google/android/gms/internal/le$a;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/le;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/internal/le$a;",
        ">;"
    }
.end annotation


# instance fields
.field public aiG:J

.field public aiH:Lcom/google/android/gms/internal/c$j;

.field public fK:Lcom/google/android/gms/internal/c$f;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/le$a;->nf()Lcom/google/android/gms/internal/le$a;

    #@6
    return-void
.end method

.method public static l([B)Lcom/google/android/gms/internal/le$a;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/md;
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/internal/le$a;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/le$a;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/me;->a(Lcom/google/android/gms/internal/me;[B)Lcom/google/android/gms/internal/me;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/internal/le$a;

    #@b
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/lz;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    iget-wide v2, p0, Lcom/google/android/gms/internal/le$a;->aiG:J

    #@3
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/lz;->b(IJ)V

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@8
    if-eqz v0, :cond_10

    #@a
    const/4 v0, 0x2

    #@b
    iget-object v1, p0, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@d
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->a(ILcom/google/android/gms/internal/me;)V

    #@10
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@12
    if-eqz v0, :cond_1a

    #@14
    const/4 v0, 0x3

    #@15
    iget-object v1, p0, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@17
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->a(ILcom/google/android/gms/internal/me;)V

    #@1a
    :cond_1a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/lz;)V

    #@1d
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/le$a;->p(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/le$a;

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
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    iget-wide v2, p0, Lcom/google/android/gms/internal/le$a;->aiG:J

    #@7
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/lz;->d(IJ)I

    #@a
    move-result v1

    #@b
    add-int/2addr v0, v1

    #@c
    iget-object v1, p0, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@e
    if-eqz v1, :cond_18

    #@10
    const/4 v1, 0x2

    #@11
    iget-object v2, p0, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@13
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->b(ILcom/google/android/gms/internal/me;)I

    #@16
    move-result v1

    #@17
    add-int/2addr v0, v1

    #@18
    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@1a
    if-eqz v1, :cond_24

    #@1c
    const/4 v1, 0x3

    #@1d
    iget-object v2, p0, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@1f
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->b(ILcom/google/android/gms/internal/me;)I

    #@22
    move-result v1

    #@23
    add-int/2addr v0, v1

    #@24
    :cond_24
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

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
    instance-of v2, p1, Lcom/google/android/gms/internal/le$a;

    #@7
    if-eqz v2, :cond_3b

    #@9
    check-cast p1, Lcom/google/android/gms/internal/le$a;

    #@b
    iget-wide v2, p0, Lcom/google/android/gms/internal/le$a;->aiG:J

    #@d
    iget-wide v4, p1, Lcom/google/android/gms/internal/le$a;->aiG:J

    #@f
    cmp-long v2, v2, v4

    #@11
    if-nez v2, :cond_3b

    #@13
    iget-object v2, p0, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@15
    if-nez v2, :cond_3d

    #@17
    iget-object v2, p1, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@19
    if-nez v2, :cond_3b

    #@1b
    :cond_1b
    iget-object v2, p0, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@1d
    if-nez v2, :cond_49

    #@1f
    iget-object v2, p1, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@21
    if-nez v2, :cond_3b

    #@23
    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/le$a;->amX:Ljava/util/List;

    #@25
    if-eqz v2, :cond_2f

    #@27
    iget-object v2, p0, Lcom/google/android/gms/internal/le$a;->amX:Ljava/util/List;

    #@29
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_55

    #@2f
    :cond_2f
    iget-object v2, p1, Lcom/google/android/gms/internal/le$a;->amX:Ljava/util/List;

    #@31
    if-eqz v2, :cond_4

    #@33
    iget-object v2, p1, Lcom/google/android/gms/internal/le$a;->amX:Ljava/util/List;

    #@35
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@38
    move-result v2

    #@39
    if-nez v2, :cond_4

    #@3b
    :cond_3b
    move v0, v1

    #@3c
    goto :goto_4

    #@3d
    :cond_3d
    iget-object v2, p0, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@3f
    iget-object v3, p1, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@41
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/c$f;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v2

    #@45
    if-nez v2, :cond_1b

    #@47
    move v0, v1

    #@48
    goto :goto_4

    #@49
    :cond_49
    iget-object v2, p0, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@4b
    iget-object v3, p1, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@4d
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/c$j;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v2

    #@51
    if-nez v2, :cond_23

    #@53
    move v0, v1

    #@54
    goto :goto_4

    #@55
    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/internal/le$a;->amX:Ljava/util/List;

    #@57
    iget-object v1, p1, Lcom/google/android/gms/internal/le$a;->amX:Ljava/util/List;

    #@59
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v0

    #@5d
    goto :goto_4
.end method

.method public hashCode()I
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    iget-wide v2, p0, Lcom/google/android/gms/internal/le$a;->aiG:J

    #@3
    iget-wide v4, p0, Lcom/google/android/gms/internal/le$a;->aiG:J

    #@5
    const/16 v0, 0x20

    #@7
    ushr-long/2addr v4, v0

    #@8
    xor-long/2addr v2, v4

    #@9
    long-to-int v3, v2

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@c
    if-nez v0, :cond_2c

    #@e
    move v0, v1

    #@f
    :goto_f
    iget-object v2, p0, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@11
    if-nez v2, :cond_33

    #@13
    move v2, v1

    #@14
    :goto_14
    iget-object v4, p0, Lcom/google/android/gms/internal/le$a;->amX:Ljava/util/List;

    #@16
    if-eqz v4, :cond_20

    #@18
    iget-object v4, p0, Lcom/google/android/gms/internal/le$a;->amX:Ljava/util/List;

    #@1a
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_3a

    #@20
    :cond_20
    :goto_20
    add-int/lit16 v3, v3, 0x20f

    #@22
    mul-int/lit8 v3, v3, 0x1f

    #@24
    add-int/2addr v0, v3

    #@25
    mul-int/lit8 v0, v0, 0x1f

    #@27
    add-int/2addr v0, v2

    #@28
    mul-int/lit8 v0, v0, 0x1f

    #@2a
    add-int/2addr v0, v1

    #@2b
    return v0

    #@2c
    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@2e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/c$f;->hashCode()I

    #@31
    move-result v0

    #@32
    goto :goto_f

    #@33
    :cond_33
    iget-object v2, p0, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@35
    invoke-virtual {v2}, Lcom/google/android/gms/internal/c$j;->hashCode()I

    #@38
    move-result v2

    #@39
    goto :goto_14

    #@3a
    :cond_3a
    iget-object v1, p0, Lcom/google/android/gms/internal/le$a;->amX:Ljava/util/List;

    #@3c
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    #@3f
    move-result v1

    #@40
    goto :goto_20
.end method

.method public nf()Lcom/google/android/gms/internal/le$a;
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    const-wide/16 v0, 0x0

    #@3
    iput-wide v0, p0, Lcom/google/android/gms/internal/le$a;->aiG:J

    #@5
    iput-object v2, p0, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@7
    iput-object v2, p0, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@9
    iput-object v2, p0, Lcom/google/android/gms/internal/le$a;->amX:Ljava/util/List;

    #@b
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lcom/google/android/gms/internal/le$a;->anb:I

    #@e
    return-object p0
.end method

.method public p(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/le$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_38

    #@7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/le$a;->a(Lcom/google/android/gms/internal/ly;I)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    :sswitch_d
    return-object p0

    #@e
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nD()J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Lcom/google/android/gms/internal/le$a;->aiG:J

    #@14
    goto :goto_0

    #@15
    :sswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@17
    if-nez v0, :cond_20

    #@19
    new-instance v0, Lcom/google/android/gms/internal/c$f;

    #@1b
    invoke-direct {v0}, Lcom/google/android/gms/internal/c$f;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@20
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@22
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@25
    goto :goto_0

    #@26
    :sswitch_26
    iget-object v0, p0, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@28
    if-nez v0, :cond_31

    #@2a
    new-instance v0, Lcom/google/android/gms/internal/c$j;

    #@2c
    invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V

    #@2f
    iput-object v0, p0, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@31
    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@33
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@36
    goto :goto_0

    #@37
    nop

    #@38
    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_15
        0x1a -> :sswitch_26
    .end sparse-switch
.end method
