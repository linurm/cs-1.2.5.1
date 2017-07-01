.class public final Lcom/google/android/gms/internal/c$e;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/internal/c$e;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile eU:[Lcom/google/android/gms/internal/c$e;


# instance fields
.field public key:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$e;->j()Lcom/google/android/gms/internal/c$e;

    #@6
    return-void
.end method

.method public static i()[Lcom/google/android/gms/internal/c$e;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/c$e;->eU:[Lcom/google/android/gms/internal/c$e;

    #@2
    if-nez v0, :cond_11

    #@4
    sget-object v1, Lcom/google/android/gms/internal/mc;->ana:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/c$e;->eU:[Lcom/google/android/gms/internal/c$e;

    #@9
    if-nez v0, :cond_10

    #@b
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/google/android/gms/internal/c$e;

    #@e
    sput-object v0, Lcom/google/android/gms/internal/c$e;->eU:[Lcom/google/android/gms/internal/c$e;

    #@10
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    #@11
    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/c$e;->eU:[Lcom/google/android/gms/internal/c$e;

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
    iget v1, p0, Lcom/google/android/gms/internal/c$e;->key:I

    #@3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@6
    const/4 v0, 0x2

    #@7
    iget v1, p0, Lcom/google/android/gms/internal/c$e;->value:I

    #@9
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/lz;)V

    #@f
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$e;->f(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$e;

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
    iget v2, p0, Lcom/google/android/gms/internal/c$e;->key:I

    #@7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->r(II)I

    #@a
    move-result v1

    #@b
    add-int/2addr v0, v1

    #@c
    const/4 v1, 0x2

    #@d
    iget v2, p0, Lcom/google/android/gms/internal/c$e;->value:I

    #@f
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->r(II)I

    #@12
    move-result v1

    #@13
    add-int/2addr v0, v1

    #@14
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
    instance-of v2, p1, Lcom/google/android/gms/internal/c$e;

    #@7
    if-eqz v2, :cond_2f

    #@9
    check-cast p1, Lcom/google/android/gms/internal/c$e;

    #@b
    iget v2, p0, Lcom/google/android/gms/internal/c$e;->key:I

    #@d
    iget v3, p1, Lcom/google/android/gms/internal/c$e;->key:I

    #@f
    if-ne v2, v3, :cond_2f

    #@11
    iget v2, p0, Lcom/google/android/gms/internal/c$e;->value:I

    #@13
    iget v3, p1, Lcom/google/android/gms/internal/c$e;->value:I

    #@15
    if-ne v2, v3, :cond_2f

    #@17
    iget-object v2, p0, Lcom/google/android/gms/internal/c$e;->amX:Ljava/util/List;

    #@19
    if-eqz v2, :cond_23

    #@1b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$e;->amX:Ljava/util/List;

    #@1d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_31

    #@23
    :cond_23
    iget-object v2, p1, Lcom/google/android/gms/internal/c$e;->amX:Ljava/util/List;

    #@25
    if-eqz v2, :cond_4

    #@27
    iget-object v2, p1, Lcom/google/android/gms/internal/c$e;->amX:Ljava/util/List;

    #@29
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@2c
    move-result v2

    #@2d
    if-nez v2, :cond_4

    #@2f
    :cond_2f
    move v0, v1

    #@30
    goto :goto_4

    #@31
    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/c$e;->amX:Ljava/util/List;

    #@33
    iget-object v1, p1, Lcom/google/android/gms/internal/c$e;->amX:Ljava/util/List;

    #@35
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v0

    #@39
    goto :goto_4
.end method

.method public f(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$e;
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
    sparse-switch v0, :sswitch_data_1c

    #@7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$e;->a(Lcom/google/android/gms/internal/ly;I)Z

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
    iput v0, p0, Lcom/google/android/gms/internal/c$e;->key:I

    #@14
    goto :goto_0

    #@15
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Lcom/google/android/gms/internal/c$e;->value:I

    #@1b
    goto :goto_0

    #@1c
    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_15
    .end sparse-switch
.end method

.method public hashCode()I
    .registers 4

    #@0
    iget v1, p0, Lcom/google/android/gms/internal/c$e;->key:I

    #@2
    iget v2, p0, Lcom/google/android/gms/internal/c$e;->value:I

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/c$e;->amX:Ljava/util/List;

    #@6
    if-eqz v0, :cond_10

    #@8
    iget-object v0, p0, Lcom/google/android/gms/internal/c$e;->amX:Ljava/util/List;

    #@a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1a

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    add-int/lit16 v1, v1, 0x20f

    #@13
    mul-int/lit8 v1, v1, 0x1f

    #@15
    add-int/2addr v1, v2

    #@16
    mul-int/lit8 v1, v1, 0x1f

    #@18
    add-int/2addr v0, v1

    #@19
    return v0

    #@1a
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$e;->amX:Ljava/util/List;

    #@1c
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    #@1f
    move-result v0

    #@20
    goto :goto_11
.end method

.method public j()Lcom/google/android/gms/internal/c$e;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/google/android/gms/internal/c$e;->key:I

    #@3
    iput v0, p0, Lcom/google/android/gms/internal/c$e;->value:I

    #@5
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/google/android/gms/internal/c$e;->amX:Ljava/util/List;

    #@8
    const/4 v0, -0x1

    #@9
    iput v0, p0, Lcom/google/android/gms/internal/c$e;->anb:I

    #@b
    return-object p0
.end method
