.class public final Lcom/google/android/gms/internal/lw$a;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lw$a$a;,
        Lcom/google/android/gms/internal/lw$a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/internal/lw$a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile ams:[Lcom/google/android/gms/internal/lw$a;


# instance fields
.field public amt:Lcom/google/android/gms/internal/lw$a$a;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lw$a;->nx()Lcom/google/android/gms/internal/lw$a;

    #@6
    return-void
.end method

.method public static nw()[Lcom/google/android/gms/internal/lw$a;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/lw$a;->ams:[Lcom/google/android/gms/internal/lw$a;

    #@2
    if-nez v0, :cond_11

    #@4
    sget-object v1, Lcom/google/android/gms/internal/mc;->ana:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/lw$a;->ams:[Lcom/google/android/gms/internal/lw$a;

    #@9
    if-nez v0, :cond_10

    #@b
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/google/android/gms/internal/lw$a;

    #@e
    sput-object v0, Lcom/google/android/gms/internal/lw$a;->ams:[Lcom/google/android/gms/internal/lw$a;

    #@10
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    #@11
    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/lw$a;->ams:[Lcom/google/android/gms/internal/lw$a;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/lw$a;->name:Ljava/lang/String;

    #@3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->b(ILjava/lang/String;)V

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@8
    if-eqz v0, :cond_10

    #@a
    const/4 v0, 0x2

    #@b
    iget-object v1, p0, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lw$a;->r(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/lw$a;

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
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a;->name:Ljava/lang/String;

    #@7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->h(ILjava/lang/String;)I

    #@a
    move-result v1

    #@b
    add-int/2addr v0, v1

    #@c
    iget-object v1, p0, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@e
    if-eqz v1, :cond_18

    #@10
    const/4 v1, 0x2

    #@11
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/lw$a;

    #@7
    if-eqz v2, :cond_33

    #@9
    check-cast p1, Lcom/google/android/gms/internal/lw$a;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a;->name:Ljava/lang/String;

    #@d
    if-nez v2, :cond_35

    #@f
    iget-object v2, p1, Lcom/google/android/gms/internal/lw$a;->name:Ljava/lang/String;

    #@11
    if-nez v2, :cond_33

    #@13
    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@15
    if-nez v2, :cond_41

    #@17
    iget-object v2, p1, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@19
    if-nez v2, :cond_33

    #@1b
    :cond_1b
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a;->amX:Ljava/util/List;

    #@1d
    if-eqz v2, :cond_27

    #@1f
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a;->amX:Ljava/util/List;

    #@21
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_4d

    #@27
    :cond_27
    iget-object v2, p1, Lcom/google/android/gms/internal/lw$a;->amX:Ljava/util/List;

    #@29
    if-eqz v2, :cond_4

    #@2b
    iget-object v2, p1, Lcom/google/android/gms/internal/lw$a;->amX:Ljava/util/List;

    #@2d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@30
    move-result v2

    #@31
    if-nez v2, :cond_4

    #@33
    :cond_33
    move v0, v1

    #@34
    goto :goto_4

    #@35
    :cond_35
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a;->name:Ljava/lang/String;

    #@37
    iget-object v3, p1, Lcom/google/android/gms/internal/lw$a;->name:Ljava/lang/String;

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v2

    #@3d
    if-nez v2, :cond_13

    #@3f
    move v0, v1

    #@40
    goto :goto_4

    #@41
    :cond_41
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@43
    iget-object v3, p1, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@45
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/lw$a$a;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v2

    #@49
    if-nez v2, :cond_1b

    #@4b
    move v0, v1

    #@4c
    goto :goto_4

    #@4d
    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a;->amX:Ljava/util/List;

    #@4f
    iget-object v1, p1, Lcom/google/android/gms/internal/lw$a;->amX:Ljava/util/List;

    #@51
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v0

    #@55
    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a;->name:Ljava/lang/String;

    #@3
    if-nez v0, :cond_20

    #@5
    move v0, v1

    #@6
    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@8
    if-nez v2, :cond_27

    #@a
    move v2, v1

    #@b
    :goto_b
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a;->amX:Ljava/util/List;

    #@d
    if-eqz v3, :cond_17

    #@f
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a;->amX:Ljava/util/List;

    #@11
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_2e

    #@17
    :cond_17
    :goto_17
    add-int/lit16 v0, v0, 0x20f

    #@19
    mul-int/lit8 v0, v0, 0x1f

    #@1b
    add-int/2addr v0, v2

    #@1c
    mul-int/lit8 v0, v0, 0x1f

    #@1e
    add-int/2addr v0, v1

    #@1f
    return v0

    #@20
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a;->name:Ljava/lang/String;

    #@22
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@25
    move-result v0

    #@26
    goto :goto_6

    #@27
    :cond_27
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@29
    invoke-virtual {v2}, Lcom/google/android/gms/internal/lw$a$a;->hashCode()I

    #@2c
    move-result v2

    #@2d
    goto :goto_b

    #@2e
    :cond_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/lw$a;->amX:Ljava/util/List;

    #@30
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    #@33
    move-result v1

    #@34
    goto :goto_17
.end method

.method public nx()Lcom/google/android/gms/internal/lw$a;
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    const-string v0, ""

    #@3
    iput-object v0, p0, Lcom/google/android/gms/internal/lw$a;->name:Ljava/lang/String;

    #@5
    iput-object v1, p0, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@7
    iput-object v1, p0, Lcom/google/android/gms/internal/lw$a;->amX:Ljava/util/List;

    #@9
    const/4 v0, -0x1

    #@a
    iput v0, p0, Lcom/google/android/gms/internal/lw$a;->anb:I

    #@c
    return-object p0
.end method

.method public r(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/lw$a;
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
    sparse-switch v0, :sswitch_data_26

    #@7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/internal/ly;I)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    :sswitch_d
    return-object p0

    #@e
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->readString()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/google/android/gms/internal/lw$a;->name:Ljava/lang/String;

    #@14
    goto :goto_0

    #@15
    :sswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@17
    if-nez v0, :cond_20

    #@19
    new-instance v0, Lcom/google/android/gms/internal/lw$a$a;

    #@1b
    invoke-direct {v0}, Lcom/google/android/gms/internal/lw$a$a;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@20
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a;->amt:Lcom/google/android/gms/internal/lw$a$a;

    #@22
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@25
    goto :goto_0

    #@26
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_15
    .end sparse-switch
.end method
