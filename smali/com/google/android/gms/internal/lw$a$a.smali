.class public final Lcom/google/android/gms/internal/lw$a$a;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lw$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lw$a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/internal/lw$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile amu:[Lcom/google/android/gms/internal/lw$a$a;


# instance fields
.field public amv:Lcom/google/android/gms/internal/lw$a$a$a;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lw$a$a;->nz()Lcom/google/android/gms/internal/lw$a$a;

    #@6
    return-void
.end method

.method public static ny()[Lcom/google/android/gms/internal/lw$a$a;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/lw$a$a;->amu:[Lcom/google/android/gms/internal/lw$a$a;

    #@2
    if-nez v0, :cond_11

    #@4
    sget-object v1, Lcom/google/android/gms/internal/mc;->ana:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/lw$a$a;->amu:[Lcom/google/android/gms/internal/lw$a$a;

    #@9
    if-nez v0, :cond_10

    #@b
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/google/android/gms/internal/lw$a$a;

    #@e
    sput-object v0, Lcom/google/android/gms/internal/lw$a$a;->amu:[Lcom/google/android/gms/internal/lw$a$a;

    #@10
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    #@11
    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/lw$a$a;->amu:[Lcom/google/android/gms/internal/lw$a$a;

    #@13
    return-object v0

    #@14
    :catchall_14
    move-exception v0

    #@15
    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    #@16
    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/lz;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    iget v1, p0, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@8
    if-eqz v0, :cond_10

    #@a
    const/4 v0, 0x2

    #@b
    iget-object v1, p0, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@d
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->a(ILcom/google/android/gms/internal/me;)V

    #@10
    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/lz;)V

    #@13
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lw$a$a;->s(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/lw$a$a;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected c()I
    .registers 4

    #@0
    invoke-super {p0}, Lcom/google/android/gms/internal/ma;->c()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    iget v2, p0, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->r(II)I

    #@a
    move-result v1

    #@b
    add-int/2addr v0, v1

    #@c
    iget-object v1, p0, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@e
    if-eqz v1, :cond_18

    #@10
    const/4 v1, 0x2

    #@11
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@13
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->b(ILcom/google/android/gms/internal/me;)I

    #@16
    move-result v1

    #@17
    add-int/2addr v0, v1

    #@18
    :cond_18
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
    instance-of v2, p1, Lcom/google/android/gms/internal/lw$a$a;

    #@7
    if-eqz v2, :cond_31

    #@9
    check-cast p1, Lcom/google/android/gms/internal/lw$a$a;

    #@b
    iget v2, p0, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@d
    iget v3, p1, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@f
    if-ne v2, v3, :cond_31

    #@11
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@13
    if-nez v2, :cond_33

    #@15
    iget-object v2, p1, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@17
    if-nez v2, :cond_31

    #@19
    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a;->amX:Ljava/util/List;

    #@1b
    if-eqz v2, :cond_25

    #@1d
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a;->amX:Ljava/util/List;

    #@1f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_3f

    #@25
    :cond_25
    iget-object v2, p1, Lcom/google/android/gms/internal/lw$a$a;->amX:Ljava/util/List;

    #@27
    if-eqz v2, :cond_4

    #@29
    iget-object v2, p1, Lcom/google/android/gms/internal/lw$a$a;->amX:Ljava/util/List;

    #@2b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@2e
    move-result v2

    #@2f
    if-nez v2, :cond_4

    #@31
    :cond_31
    move v0, v1

    #@32
    goto :goto_4

    #@33
    :cond_33
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@35
    iget-object v3, p1, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@37
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/lw$a$a$a;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    if-nez v2, :cond_19

    #@3d
    move v0, v1

    #@3e
    goto :goto_4

    #@3f
    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a;->amX:Ljava/util/List;

    #@41
    iget-object v1, p1, Lcom/google/android/gms/internal/lw$a$a;->amX:Ljava/util/List;

    #@43
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v0

    #@47
    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    iget v2, p0, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@3
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@5
    if-nez v0, :cond_1d

    #@7
    move v0, v1

    #@8
    :goto_8
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a;->amX:Ljava/util/List;

    #@a
    if-eqz v3, :cond_14

    #@c
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a;->amX:Ljava/util/List;

    #@e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_24

    #@14
    :cond_14
    :goto_14
    add-int/lit16 v2, v2, 0x20f

    #@16
    mul-int/lit8 v2, v2, 0x1f

    #@18
    add-int/2addr v0, v2

    #@19
    mul-int/lit8 v0, v0, 0x1f

    #@1b
    add-int/2addr v0, v1

    #@1c
    return v0

    #@1d
    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/lw$a$a$a;->hashCode()I

    #@22
    move-result v0

    #@23
    goto :goto_8

    #@24
    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/lw$a$a;->amX:Ljava/util/List;

    #@26
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    #@29
    move-result v1

    #@2a
    goto :goto_14
.end method

.method public nz()Lcom/google/android/gms/internal/lw$a$a;
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    iput v0, p0, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@4
    iput-object v1, p0, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@6
    iput-object v1, p0, Lcom/google/android/gms/internal/lw$a$a;->amX:Ljava/util/List;

    #@8
    const/4 v0, -0x1

    #@9
    iput v0, p0, Lcom/google/android/gms/internal/lw$a$a;->anb:I

    #@b
    return-object p0
.end method

.method public s(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/lw$a$a;
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
    sparse-switch v0, :sswitch_data_2a

    #@7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lw$a$a;->a(Lcom/google/android/gms/internal/ly;I)Z

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
    packed-switch v0, :pswitch_data_38

    #@15
    goto :goto_0

    #@16
    :pswitch_16
    iput v0, p0, Lcom/google/android/gms/internal/lw$a$a;->type:I

    #@18
    goto :goto_0

    #@19
    :sswitch_19
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@1b
    if-nez v0, :cond_24

    #@1d
    new-instance v0, Lcom/google/android/gms/internal/lw$a$a$a;

    #@1f
    invoke-direct {v0}, Lcom/google/android/gms/internal/lw$a$a$a;-><init>()V

    #@22
    iput-object v0, p0, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@24
    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a;->amv:Lcom/google/android/gms/internal/lw$a$a$a;

    #@26
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@29
    goto :goto_0

    #@2a
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_19
    .end sparse-switch

    #@38
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method
