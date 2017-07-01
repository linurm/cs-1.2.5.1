.class public final Lcom/google/android/gms/drive/internal/af;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/drive/internal/af;",
        ">;"
    }
.end annotation


# instance fields
.field public Jt:Ljava/lang/String;

.field public Ju:J

.field public Jv:J

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/af;->gs()Lcom/google/android/gms/drive/internal/af;

    #@6
    return-void
.end method

.method public static g([B)Lcom/google/android/gms/drive/internal/af;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/md;
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/af;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/af;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/me;->a(Lcom/google/android/gms/internal/me;[B)Lcom/google/android/gms/internal/me;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/drive/internal/af;

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
    iget v1, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    #@3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@6
    const/4 v0, 0x2

    #@7
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/af;->Jt:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->b(ILjava/lang/String;)V

    #@c
    const/4 v0, 0x3

    #@d
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Ju:J

    #@f
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/lz;->c(IJ)V

    #@12
    const/4 v0, 0x4

    #@13
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Jv:J

    #@15
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/lz;->c(IJ)V

    #@18
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/lz;)V

    #@1b
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/af;->m(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/drive/internal/af;

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
    iget v2, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    #@7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->r(II)I

    #@a
    move-result v1

    #@b
    add-int/2addr v0, v1

    #@c
    const/4 v1, 0x2

    #@d
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->Jt:Ljava/lang/String;

    #@f
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->h(ILjava/lang/String;)I

    #@12
    move-result v1

    #@13
    add-int/2addr v0, v1

    #@14
    const/4 v1, 0x3

    #@15
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Ju:J

    #@17
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/lz;->e(IJ)I

    #@1a
    move-result v1

    #@1b
    add-int/2addr v0, v1

    #@1c
    const/4 v1, 0x4

    #@1d
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Jv:J

    #@1f
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/lz;->e(IJ)I

    #@22
    move-result v1

    #@23
    add-int/2addr v0, v1

    #@24
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
    instance-of v2, p1, Lcom/google/android/gms/drive/internal/af;

    #@7
    if-eqz v2, :cond_41

    #@9
    check-cast p1, Lcom/google/android/gms/drive/internal/af;

    #@b
    iget v2, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    #@d
    iget v3, p1, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    #@f
    if-ne v2, v3, :cond_41

    #@11
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->Jt:Ljava/lang/String;

    #@13
    if-nez v2, :cond_43

    #@15
    iget-object v2, p1, Lcom/google/android/gms/drive/internal/af;->Jt:Ljava/lang/String;

    #@17
    if-nez v2, :cond_41

    #@19
    :cond_19
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Ju:J

    #@1b
    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/af;->Ju:J

    #@1d
    cmp-long v2, v2, v4

    #@1f
    if-nez v2, :cond_41

    #@21
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Jv:J

    #@23
    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/af;->Jv:J

    #@25
    cmp-long v2, v2, v4

    #@27
    if-nez v2, :cond_41

    #@29
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->amX:Ljava/util/List;

    #@2b
    if-eqz v2, :cond_35

    #@2d
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->amX:Ljava/util/List;

    #@2f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_4f

    #@35
    :cond_35
    iget-object v2, p1, Lcom/google/android/gms/drive/internal/af;->amX:Ljava/util/List;

    #@37
    if-eqz v2, :cond_4

    #@39
    iget-object v2, p1, Lcom/google/android/gms/drive/internal/af;->amX:Ljava/util/List;

    #@3b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@3e
    move-result v2

    #@3f
    if-nez v2, :cond_4

    #@41
    :cond_41
    move v0, v1

    #@42
    goto :goto_4

    #@43
    :cond_43
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->Jt:Ljava/lang/String;

    #@45
    iget-object v3, p1, Lcom/google/android/gms/drive/internal/af;->Jt:Ljava/lang/String;

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v2

    #@4b
    if-nez v2, :cond_19

    #@4d
    move v0, v1

    #@4e
    goto :goto_4

    #@4f
    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/af;->amX:Ljava/util/List;

    #@51
    iget-object v1, p1, Lcom/google/android/gms/drive/internal/af;->amX:Ljava/util/List;

    #@53
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v0

    #@57
    goto :goto_4
.end method

.method public gs()Lcom/google/android/gms/drive/internal/af;
    .registers 5

    #@0
    const-wide/16 v2, -0x1

    #@2
    const/4 v0, 0x1

    #@3
    iput v0, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    #@5
    const-string v0, ""

    #@7
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/af;->Jt:Ljava/lang/String;

    #@9
    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Ju:J

    #@b
    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Jv:J

    #@d
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/af;->amX:Ljava/util/List;

    #@10
    const/4 v0, -0x1

    #@11
    iput v0, p0, Lcom/google/android/gms/drive/internal/af;->anb:I

    #@13
    return-object p0
.end method

.method public hashCode()I
    .registers 10

    #@0
    const/16 v8, 0x20

    #@2
    const/4 v1, 0x0

    #@3
    iget v2, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    #@5
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/af;->Jt:Ljava/lang/String;

    #@7
    if-nez v0, :cond_33

    #@9
    move v0, v1

    #@a
    :goto_a
    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/af;->Ju:J

    #@c
    iget-wide v6, p0, Lcom/google/android/gms/drive/internal/af;->Ju:J

    #@e
    ushr-long/2addr v6, v8

    #@f
    xor-long/2addr v4, v6

    #@10
    long-to-int v3, v4

    #@11
    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/af;->Jv:J

    #@13
    iget-wide v6, p0, Lcom/google/android/gms/drive/internal/af;->Jv:J

    #@15
    ushr-long/2addr v6, v8

    #@16
    xor-long/2addr v4, v6

    #@17
    long-to-int v4, v4

    #@18
    iget-object v5, p0, Lcom/google/android/gms/drive/internal/af;->amX:Ljava/util/List;

    #@1a
    if-eqz v5, :cond_24

    #@1c
    iget-object v5, p0, Lcom/google/android/gms/drive/internal/af;->amX:Ljava/util/List;

    #@1e
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_3a

    #@24
    :cond_24
    :goto_24
    add-int/lit16 v2, v2, 0x20f

    #@26
    mul-int/lit8 v2, v2, 0x1f

    #@28
    add-int/2addr v0, v2

    #@29
    mul-int/lit8 v0, v0, 0x1f

    #@2b
    add-int/2addr v0, v3

    #@2c
    mul-int/lit8 v0, v0, 0x1f

    #@2e
    add-int/2addr v0, v4

    #@2f
    mul-int/lit8 v0, v0, 0x1f

    #@31
    add-int/2addr v0, v1

    #@32
    return v0

    #@33
    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/af;->Jt:Ljava/lang/String;

    #@35
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@38
    move-result v0

    #@39
    goto :goto_a

    #@3a
    :cond_3a
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/af;->amX:Ljava/util/List;

    #@3c
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    #@3f
    move-result v1

    #@40
    goto :goto_24
.end method

.method public m(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/drive/internal/af;
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
    sparse-switch v0, :sswitch_data_2a

    #@7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/drive/internal/af;->a(Lcom/google/android/gms/internal/ly;I)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    :sswitch_d
    return-object p0

    #@e
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    #@14
    goto :goto_0

    #@15
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/af;->Jt:Ljava/lang/String;

    #@1b
    goto :goto_0

    #@1c
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nH()J

    #@1f
    move-result-wide v0

    #@20
    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/af;->Ju:J

    #@22
    goto :goto_0

    #@23
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nH()J

    #@26
    move-result-wide v0

    #@27
    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/af;->Jv:J

    #@29
    goto :goto_0

    #@2a
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_15
        0x18 -> :sswitch_1c
        0x20 -> :sswitch_23
    .end sparse-switch
.end method
