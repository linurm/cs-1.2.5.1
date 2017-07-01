.class public final Lcom/google/android/gms/internal/iv$a$a;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iv$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/internal/iv$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile Uz:[Lcom/google/android/gms/internal/iv$a$a;


# instance fields
.field public UA:Ljava/lang/String;

.field public UB:Ljava/lang/String;

.field public viewId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/iv$a$a;->iS()Lcom/google/android/gms/internal/iv$a$a;

    #@6
    return-void
.end method

.method public static iR()[Lcom/google/android/gms/internal/iv$a$a;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iv$a$a;->Uz:[Lcom/google/android/gms/internal/iv$a$a;

    #@2
    if-nez v0, :cond_11

    #@4
    sget-object v1, Lcom/google/android/gms/internal/mc;->ana:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/iv$a$a;->Uz:[Lcom/google/android/gms/internal/iv$a$a;

    #@9
    if-nez v0, :cond_10

    #@b
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/google/android/gms/internal/iv$a$a;

    #@e
    sput-object v0, Lcom/google/android/gms/internal/iv$a$a;->Uz:[Lcom/google/android/gms/internal/iv$a$a;

    #@10
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    #@11
    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/iv$a$a;->Uz:[Lcom/google/android/gms/internal/iv$a$a;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/iv$a$a;->UA:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/iv$a$a;->UA:Ljava/lang/String;

    #@d
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->b(ILjava/lang/String;)V

    #@10
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/iv$a$a;->UB:Ljava/lang/String;

    #@12
    const-string v1, ""

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_20

    #@1a
    const/4 v0, 0x2

    #@1b
    iget-object v1, p0, Lcom/google/android/gms/internal/iv$a$a;->UB:Ljava/lang/String;

    #@1d
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->b(ILjava/lang/String;)V

    #@20
    :cond_20
    iget v0, p0, Lcom/google/android/gms/internal/iv$a$a;->viewId:I

    #@22
    if-eqz v0, :cond_2a

    #@24
    const/4 v0, 0x3

    #@25
    iget v1, p0, Lcom/google/android/gms/internal/iv$a$a;->viewId:I

    #@27
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@2a
    :cond_2a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/lz;)V

    #@2d
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iv$a$a;->o(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/iv$a$a;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/iv$a$a;->UA:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/google/android/gms/internal/iv$a$a;->UA:Ljava/lang/String;

    #@11
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->h(ILjava/lang/String;)I

    #@14
    move-result v1

    #@15
    add-int/2addr v0, v1

    #@16
    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/iv$a$a;->UB:Ljava/lang/String;

    #@18
    const-string v2, ""

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_28

    #@20
    const/4 v1, 0x2

    #@21
    iget-object v2, p0, Lcom/google/android/gms/internal/iv$a$a;->UB:Ljava/lang/String;

    #@23
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->h(ILjava/lang/String;)I

    #@26
    move-result v1

    #@27
    add-int/2addr v0, v1

    #@28
    :cond_28
    iget v1, p0, Lcom/google/android/gms/internal/iv$a$a;->viewId:I

    #@2a
    if-eqz v1, :cond_34

    #@2c
    const/4 v1, 0x3

    #@2d
    iget v2, p0, Lcom/google/android/gms/internal/iv$a$a;->viewId:I

    #@2f
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->r(II)I

    #@32
    move-result v1

    #@33
    add-int/2addr v0, v1

    #@34
    :cond_34
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
    instance-of v2, p1, Lcom/google/android/gms/internal/iv$a$a;

    #@7
    if-eqz v2, :cond_39

    #@9
    check-cast p1, Lcom/google/android/gms/internal/iv$a$a;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/internal/iv$a$a;->UA:Ljava/lang/String;

    #@d
    if-nez v2, :cond_3b

    #@f
    iget-object v2, p1, Lcom/google/android/gms/internal/iv$a$a;->UA:Ljava/lang/String;

    #@11
    if-nez v2, :cond_39

    #@13
    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/internal/iv$a$a;->UB:Ljava/lang/String;

    #@15
    if-nez v2, :cond_47

    #@17
    iget-object v2, p1, Lcom/google/android/gms/internal/iv$a$a;->UB:Ljava/lang/String;

    #@19
    if-nez v2, :cond_39

    #@1b
    :cond_1b
    iget v2, p0, Lcom/google/android/gms/internal/iv$a$a;->viewId:I

    #@1d
    iget v3, p1, Lcom/google/android/gms/internal/iv$a$a;->viewId:I

    #@1f
    if-ne v2, v3, :cond_39

    #@21
    iget-object v2, p0, Lcom/google/android/gms/internal/iv$a$a;->amX:Ljava/util/List;

    #@23
    if-eqz v2, :cond_2d

    #@25
    iget-object v2, p0, Lcom/google/android/gms/internal/iv$a$a;->amX:Ljava/util/List;

    #@27
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_53

    #@2d
    :cond_2d
    iget-object v2, p1, Lcom/google/android/gms/internal/iv$a$a;->amX:Ljava/util/List;

    #@2f
    if-eqz v2, :cond_4

    #@31
    iget-object v2, p1, Lcom/google/android/gms/internal/iv$a$a;->amX:Ljava/util/List;

    #@33
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@36
    move-result v2

    #@37
    if-nez v2, :cond_4

    #@39
    :cond_39
    move v0, v1

    #@3a
    goto :goto_4

    #@3b
    :cond_3b
    iget-object v2, p0, Lcom/google/android/gms/internal/iv$a$a;->UA:Ljava/lang/String;

    #@3d
    iget-object v3, p1, Lcom/google/android/gms/internal/iv$a$a;->UA:Ljava/lang/String;

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v2

    #@43
    if-nez v2, :cond_13

    #@45
    move v0, v1

    #@46
    goto :goto_4

    #@47
    :cond_47
    iget-object v2, p0, Lcom/google/android/gms/internal/iv$a$a;->UB:Ljava/lang/String;

    #@49
    iget-object v3, p1, Lcom/google/android/gms/internal/iv$a$a;->UB:Ljava/lang/String;

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v2

    #@4f
    if-nez v2, :cond_1b

    #@51
    move v0, v1

    #@52
    goto :goto_4

    #@53
    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/iv$a$a;->amX:Ljava/util/List;

    #@55
    iget-object v1, p1, Lcom/google/android/gms/internal/iv$a$a;->amX:Ljava/util/List;

    #@57
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v0

    #@5b
    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/iv$a$a;->UA:Ljava/lang/String;

    #@3
    if-nez v0, :cond_25

    #@5
    move v0, v1

    #@6
    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/iv$a$a;->UB:Ljava/lang/String;

    #@8
    if-nez v2, :cond_2c

    #@a
    move v2, v1

    #@b
    :goto_b
    iget v3, p0, Lcom/google/android/gms/internal/iv$a$a;->viewId:I

    #@d
    iget-object v4, p0, Lcom/google/android/gms/internal/iv$a$a;->amX:Ljava/util/List;

    #@f
    if-eqz v4, :cond_19

    #@11
    iget-object v4, p0, Lcom/google/android/gms/internal/iv$a$a;->amX:Ljava/util/List;

    #@13
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_33

    #@19
    :cond_19
    :goto_19
    add-int/lit16 v0, v0, 0x20f

    #@1b
    mul-int/lit8 v0, v0, 0x1f

    #@1d
    add-int/2addr v0, v2

    #@1e
    mul-int/lit8 v0, v0, 0x1f

    #@20
    add-int/2addr v0, v3

    #@21
    mul-int/lit8 v0, v0, 0x1f

    #@23
    add-int/2addr v0, v1

    #@24
    return v0

    #@25
    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/iv$a$a;->UA:Ljava/lang/String;

    #@27
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@2a
    move-result v0

    #@2b
    goto :goto_6

    #@2c
    :cond_2c
    iget-object v2, p0, Lcom/google/android/gms/internal/iv$a$a;->UB:Ljava/lang/String;

    #@2e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@31
    move-result v2

    #@32
    goto :goto_b

    #@33
    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/internal/iv$a$a;->amX:Ljava/util/List;

    #@35
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    #@38
    move-result v1

    #@39
    goto :goto_19
.end method

.method public iS()Lcom/google/android/gms/internal/iv$a$a;
    .registers 2

    #@0
    const-string v0, ""

    #@2
    iput-object v0, p0, Lcom/google/android/gms/internal/iv$a$a;->UA:Ljava/lang/String;

    #@4
    const-string v0, ""

    #@6
    iput-object v0, p0, Lcom/google/android/gms/internal/iv$a$a;->UB:Ljava/lang/String;

    #@8
    const/4 v0, 0x0

    #@9
    iput v0, p0, Lcom/google/android/gms/internal/iv$a$a;->viewId:I

    #@b
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/google/android/gms/internal/iv$a$a;->amX:Ljava/util/List;

    #@e
    const/4 v0, -0x1

    #@f
    iput v0, p0, Lcom/google/android/gms/internal/iv$a$a;->anb:I

    #@11
    return-object p0
.end method

.method public o(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/iv$a$a;
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
    sparse-switch v0, :sswitch_data_24

    #@7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/iv$a$a;->a(Lcom/google/android/gms/internal/ly;I)Z

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
    iput-object v0, p0, Lcom/google/android/gms/internal/iv$a$a;->UA:Ljava/lang/String;

    #@14
    goto :goto_0

    #@15
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/google/android/gms/internal/iv$a$a;->UB:Ljava/lang/String;

    #@1b
    goto :goto_0

    #@1c
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Lcom/google/android/gms/internal/iv$a$a;->viewId:I

    #@22
    goto :goto_0

    #@23
    nop

    #@24
    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_15
        0x18 -> :sswitch_1c
    .end sparse-switch
.end method
