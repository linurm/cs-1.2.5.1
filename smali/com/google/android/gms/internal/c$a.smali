.class public final Lcom/google/android/gms/internal/c$a;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/internal/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field public eE:I

.field public eF:I

.field public level:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$a;->b()Lcom/google/android/gms/internal/c$a;

    #@6
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$a;
    .registers 3
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
    sparse-switch v0, :sswitch_data_28

    #@7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/internal/ly;I)Z

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
    packed-switch v0, :pswitch_data_3a

    #@15
    goto :goto_0

    #@16
    :pswitch_16
    iput v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    #@18
    goto :goto_0

    #@19
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    #@1f
    goto :goto_0

    #@20
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@23
    move-result v0

    #@24
    iput v0, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    #@26
    goto :goto_0

    #@27
    nop

    #@28
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_19
        0x18 -> :sswitch_20
    .end sparse-switch

    #@3a
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public a(Lcom/google/android/gms/internal/lz;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    iget v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    #@3
    if-eq v0, v1, :cond_a

    #@5
    iget v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    #@7
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@a
    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    #@c
    if-eqz v0, :cond_14

    #@e
    const/4 v0, 0x2

    #@f
    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    #@11
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@14
    :cond_14
    iget v0, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    #@16
    if-eqz v0, :cond_1e

    #@18
    const/4 v0, 0x3

    #@19
    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    #@1b
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@1e
    :cond_1e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/lz;)V

    #@21
    return-void
.end method

.method public b()Lcom/google/android/gms/internal/c$a;
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    iput v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    #@4
    iput v1, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    #@6
    iput v1, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    #@8
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->amX:Ljava/util/List;

    #@b
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lcom/google/android/gms/internal/c$a;->anb:I

    #@e
    return-object p0
.end method

.method public synthetic b(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/me;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$a;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected c()I
    .registers 4

    #@0
    const/4 v2, 0x1

    #@1
    invoke-super {p0}, Lcom/google/android/gms/internal/ma;->c()I

    #@4
    move-result v0

    #@5
    iget v1, p0, Lcom/google/android/gms/internal/c$a;->level:I

    #@7
    if-eq v1, v2, :cond_10

    #@9
    iget v1, p0, Lcom/google/android/gms/internal/c$a;->level:I

    #@b
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/lz;->r(II)I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    :cond_10
    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    #@12
    if-eqz v1, :cond_1c

    #@14
    const/4 v1, 0x2

    #@15
    iget v2, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    #@17
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->r(II)I

    #@1a
    move-result v1

    #@1b
    add-int/2addr v0, v1

    #@1c
    :cond_1c
    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    #@1e
    if-eqz v1, :cond_28

    #@20
    const/4 v1, 0x3

    #@21
    iget v2, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    #@23
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->r(II)I

    #@26
    move-result v1

    #@27
    add-int/2addr v0, v1

    #@28
    :cond_28
    return v0
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
    instance-of v2, p1, Lcom/google/android/gms/internal/c$a;

    #@7
    if-eqz v2, :cond_35

    #@9
    check-cast p1, Lcom/google/android/gms/internal/c$a;

    #@b
    iget v2, p0, Lcom/google/android/gms/internal/c$a;->level:I

    #@d
    iget v3, p1, Lcom/google/android/gms/internal/c$a;->level:I

    #@f
    if-ne v2, v3, :cond_35

    #@11
    iget v2, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    #@13
    iget v3, p1, Lcom/google/android/gms/internal/c$a;->eE:I

    #@15
    if-ne v2, v3, :cond_35

    #@17
    iget v2, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    #@19
    iget v3, p1, Lcom/google/android/gms/internal/c$a;->eF:I

    #@1b
    if-ne v2, v3, :cond_35

    #@1d
    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->amX:Ljava/util/List;

    #@1f
    if-eqz v2, :cond_29

    #@21
    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->amX:Ljava/util/List;

    #@23
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_37

    #@29
    :cond_29
    iget-object v2, p1, Lcom/google/android/gms/internal/c$a;->amX:Ljava/util/List;

    #@2b
    if-eqz v2, :cond_4

    #@2d
    iget-object v2, p1, Lcom/google/android/gms/internal/c$a;->amX:Ljava/util/List;

    #@2f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_4

    #@35
    :cond_35
    move v0, v1

    #@36
    goto :goto_4

    #@37
    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->amX:Ljava/util/List;

    #@39
    iget-object v1, p1, Lcom/google/android/gms/internal/c$a;->amX:Ljava/util/List;

    #@3b
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v0

    #@3f
    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    #@0
    iget v1, p0, Lcom/google/android/gms/internal/c$a;->level:I

    #@2
    iget v2, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    #@4
    iget v3, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->amX:Ljava/util/List;

    #@8
    if-eqz v0, :cond_12

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->amX:Ljava/util/List;

    #@c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1f

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    add-int/lit16 v1, v1, 0x20f

    #@15
    mul-int/lit8 v1, v1, 0x1f

    #@17
    add-int/2addr v1, v2

    #@18
    mul-int/lit8 v1, v1, 0x1f

    #@1a
    add-int/2addr v1, v3

    #@1b
    mul-int/lit8 v1, v1, 0x1f

    #@1d
    add-int/2addr v0, v1

    #@1e
    return v0

    #@1f
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->amX:Ljava/util/List;

    #@21
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    #@24
    move-result v0

    #@25
    goto :goto_13
.end method
