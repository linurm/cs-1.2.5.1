.class public final Lcom/google/android/gms/internal/c$i;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/internal/c$i;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile fG:[Lcom/google/android/gms/internal/c$i;


# instance fields
.field public fH:Lcom/google/android/gms/internal/d$a;

.field public fI:Lcom/google/android/gms/internal/c$d;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$i;->p()Lcom/google/android/gms/internal/c$i;

    #@6
    return-void
.end method

.method public static o()[Lcom/google/android/gms/internal/c$i;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/c$i;->fG:[Lcom/google/android/gms/internal/c$i;

    #@2
    if-nez v0, :cond_11

    #@4
    sget-object v1, Lcom/google/android/gms/internal/mc;->ana:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/c$i;->fG:[Lcom/google/android/gms/internal/c$i;

    #@9
    if-nez v0, :cond_10

    #@b
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/google/android/gms/internal/c$i;

    #@e
    sput-object v0, Lcom/google/android/gms/internal/c$i;->fG:[Lcom/google/android/gms/internal/c$i;

    #@10
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    #@11
    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/c$i;->fG:[Lcom/google/android/gms/internal/c$i;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    #@2
    const-string v1, ""

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_10

    #@a
    const/4 v0, 0x1

    #@b
    iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    #@d
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->b(ILjava/lang/String;)V

    #@10
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;

    #@12
    if-eqz v0, :cond_1a

    #@14
    const/4 v0, 0x2

    #@15
    iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;

    #@17
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->a(ILcom/google/android/gms/internal/me;)V

    #@1a
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@1c
    if-eqz v0, :cond_24

    #@1e
    const/4 v0, 0x3

    #@1f
    iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@21
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->a(ILcom/google/android/gms/internal/me;)V

    #@24
    :cond_24
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/lz;)V

    #@27
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$i;->j(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$i;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    #@6
    const-string v2, ""

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_16

    #@e
    const/4 v1, 0x1

    #@f
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    #@11
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->h(ILjava/lang/String;)I

    #@14
    move-result v1

    #@15
    add-int/2addr v0, v1

    #@16
    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;

    #@18
    if-eqz v1, :cond_22

    #@1a
    const/4 v1, 0x2

    #@1b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;

    #@1d
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->b(ILcom/google/android/gms/internal/me;)I

    #@20
    move-result v1

    #@21
    add-int/2addr v0, v1

    #@22
    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@24
    if-eqz v1, :cond_2e

    #@26
    const/4 v1, 0x3

    #@27
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@29
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->b(ILcom/google/android/gms/internal/me;)I

    #@2c
    move-result v1

    #@2d
    add-int/2addr v0, v1

    #@2e
    :cond_2e
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
    instance-of v2, p1, Lcom/google/android/gms/internal/c$i;

    #@7
    if-eqz v2, :cond_3b

    #@9
    check-cast p1, Lcom/google/android/gms/internal/c$i;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    #@d
    if-nez v2, :cond_3d

    #@f
    iget-object v2, p1, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    #@11
    if-nez v2, :cond_3b

    #@13
    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;

    #@15
    if-nez v2, :cond_49

    #@17
    iget-object v2, p1, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;

    #@19
    if-nez v2, :cond_3b

    #@1b
    :cond_1b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@1d
    if-nez v2, :cond_55

    #@1f
    iget-object v2, p1, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@21
    if-nez v2, :cond_3b

    #@23
    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->amX:Ljava/util/List;

    #@25
    if-eqz v2, :cond_2f

    #@27
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->amX:Ljava/util/List;

    #@29
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_61

    #@2f
    :cond_2f
    iget-object v2, p1, Lcom/google/android/gms/internal/c$i;->amX:Ljava/util/List;

    #@31
    if-eqz v2, :cond_4

    #@33
    iget-object v2, p1, Lcom/google/android/gms/internal/c$i;->amX:Ljava/util/List;

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
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    #@3f
    iget-object v3, p1, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v2

    #@45
    if-nez v2, :cond_13

    #@47
    move v0, v1

    #@48
    goto :goto_4

    #@49
    :cond_49
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;

    #@4b
    iget-object v3, p1, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;

    #@4d
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/d$a;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v2

    #@51
    if-nez v2, :cond_1b

    #@53
    move v0, v1

    #@54
    goto :goto_4

    #@55
    :cond_55
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@57
    iget-object v3, p1, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@59
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/c$d;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v2

    #@5d
    if-nez v2, :cond_23

    #@5f
    move v0, v1

    #@60
    goto :goto_4

    #@61
    :cond_61
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->amX:Ljava/util/List;

    #@63
    iget-object v1, p1, Lcom/google/android/gms/internal/c$i;->amX:Ljava/util/List;

    #@65
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v0

    #@69
    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    #@3
    if-nez v0, :cond_28

    #@5
    move v0, v1

    #@6
    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;

    #@8
    if-nez v2, :cond_2f

    #@a
    move v2, v1

    #@b
    :goto_b
    iget-object v3, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@d
    if-nez v3, :cond_36

    #@f
    move v3, v1

    #@10
    :goto_10
    iget-object v4, p0, Lcom/google/android/gms/internal/c$i;->amX:Ljava/util/List;

    #@12
    if-eqz v4, :cond_1c

    #@14
    iget-object v4, p0, Lcom/google/android/gms/internal/c$i;->amX:Ljava/util/List;

    #@16
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_3d

    #@1c
    :cond_1c
    :goto_1c
    add-int/lit16 v0, v0, 0x20f

    #@1e
    mul-int/lit8 v0, v0, 0x1f

    #@20
    add-int/2addr v0, v2

    #@21
    mul-int/lit8 v0, v0, 0x1f

    #@23
    add-int/2addr v0, v3

    #@24
    mul-int/lit8 v0, v0, 0x1f

    #@26
    add-int/2addr v0, v1

    #@27
    return v0

    #@28
    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    #@2a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@2d
    move-result v0

    #@2e
    goto :goto_6

    #@2f
    :cond_2f
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;

    #@31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/d$a;->hashCode()I

    #@34
    move-result v2

    #@35
    goto :goto_b

    #@36
    :cond_36
    iget-object v3, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@38
    invoke-virtual {v3}, Lcom/google/android/gms/internal/c$d;->hashCode()I

    #@3b
    move-result v3

    #@3c
    goto :goto_10

    #@3d
    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->amX:Ljava/util/List;

    #@3f
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    #@42
    move-result v1

    #@43
    goto :goto_1c
.end method

.method public j(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$i;
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
    sparse-switch v0, :sswitch_data_38

    #@7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$i;->a(Lcom/google/android/gms/internal/ly;I)Z

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
    iput-object v0, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    #@14
    goto :goto_0

    #@15
    :sswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;

    #@17
    if-nez v0, :cond_20

    #@19
    new-instance v0, Lcom/google/android/gms/internal/d$a;

    #@1b
    invoke-direct {v0}, Lcom/google/android/gms/internal/d$a;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;

    #@20
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;

    #@22
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@25
    goto :goto_0

    #@26
    :sswitch_26
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@28
    if-nez v0, :cond_31

    #@2a
    new-instance v0, Lcom/google/android/gms/internal/c$d;

    #@2c
    invoke-direct {v0}, Lcom/google/android/gms/internal/c$d;-><init>()V

    #@2f
    iput-object v0, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@31
    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

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
        0xa -> :sswitch_e
        0x12 -> :sswitch_15
        0x1a -> :sswitch_26
    .end sparse-switch
.end method

.method public p()Lcom/google/android/gms/internal/c$i;
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    const-string v0, ""

    #@3
    iput-object v0, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    #@5
    iput-object v1, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;

    #@7
    iput-object v1, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;

    #@9
    iput-object v1, p0, Lcom/google/android/gms/internal/c$i;->amX:Ljava/util/List;

    #@b
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lcom/google/android/gms/internal/c$i;->anb:I

    #@e
    return-object p0
.end method
