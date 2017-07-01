.class public final Lcom/google/android/gms/internal/c$c;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/internal/c$c;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile eL:[Lcom/google/android/gms/internal/c$c;


# instance fields
.field public eM:Ljava/lang/String;

.field public eN:J

.field public eO:J

.field public eP:Z

.field public eQ:J


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$c;->g()Lcom/google/android/gms/internal/c$c;

    #@6
    return-void
.end method

.method public static f()[Lcom/google/android/gms/internal/c$c;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/c$c;->eL:[Lcom/google/android/gms/internal/c$c;

    #@2
    if-nez v0, :cond_11

    #@4
    sget-object v1, Lcom/google/android/gms/internal/mc;->ana:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/c$c;->eL:[Lcom/google/android/gms/internal/c$c;

    #@9
    if-nez v0, :cond_10

    #@b
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/google/android/gms/internal/c$c;

    #@e
    sput-object v0, Lcom/google/android/gms/internal/c$c;->eL:[Lcom/google/android/gms/internal/c$c;

    #@10
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    #@11
    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/c$c;->eL:[Lcom/google/android/gms/internal/c$c;

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
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const-wide/16 v4, 0x0

    #@2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@4
    const-string v1, ""

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_12

    #@c
    const/4 v0, 0x1

    #@d
    iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@f
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->b(ILjava/lang/String;)V

    #@12
    :cond_12
    iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    #@14
    cmp-long v0, v0, v4

    #@16
    if-eqz v0, :cond_1e

    #@18
    const/4 v0, 0x2

    #@19
    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    #@1b
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/lz;->b(IJ)V

    #@1e
    :cond_1e
    iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    #@20
    const-wide/32 v2, 0x7fffffff

    #@23
    cmp-long v0, v0, v2

    #@25
    if-eqz v0, :cond_2d

    #@27
    const/4 v0, 0x3

    #@28
    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    #@2a
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/lz;->b(IJ)V

    #@2d
    :cond_2d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    #@2f
    if-eqz v0, :cond_37

    #@31
    const/4 v0, 0x4

    #@32
    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    #@34
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->a(IZ)V

    #@37
    :cond_37
    iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    #@39
    cmp-long v0, v0, v4

    #@3b
    if-eqz v0, :cond_43

    #@3d
    const/4 v0, 0x5

    #@3e
    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    #@40
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/lz;->b(IJ)V

    #@43
    :cond_43
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/lz;)V

    #@46
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$c;->d(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$c;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected c()I
    .registers 9

    #@0
    const-wide/16 v6, 0x0

    #@2
    invoke-super {p0}, Lcom/google/android/gms/internal/ma;->c()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@8
    const-string v2, ""

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_18

    #@10
    const/4 v1, 0x1

    #@11
    iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@13
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->h(ILjava/lang/String;)I

    #@16
    move-result v1

    #@17
    add-int/2addr v0, v1

    #@18
    :cond_18
    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    #@1a
    cmp-long v1, v2, v6

    #@1c
    if-eqz v1, :cond_26

    #@1e
    const/4 v1, 0x2

    #@1f
    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    #@21
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/lz;->d(IJ)I

    #@24
    move-result v1

    #@25
    add-int/2addr v0, v1

    #@26
    :cond_26
    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    #@28
    const-wide/32 v4, 0x7fffffff

    #@2b
    cmp-long v1, v2, v4

    #@2d
    if-eqz v1, :cond_37

    #@2f
    const/4 v1, 0x3

    #@30
    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    #@32
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/lz;->d(IJ)I

    #@35
    move-result v1

    #@36
    add-int/2addr v0, v1

    #@37
    :cond_37
    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    #@39
    if-eqz v1, :cond_43

    #@3b
    const/4 v1, 0x4

    #@3c
    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    #@3e
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->b(IZ)I

    #@41
    move-result v1

    #@42
    add-int/2addr v0, v1

    #@43
    :cond_43
    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    #@45
    cmp-long v1, v2, v6

    #@47
    if-eqz v1, :cond_51

    #@49
    const/4 v1, 0x5

    #@4a
    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    #@4c
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/lz;->d(IJ)I

    #@4f
    move-result v1

    #@50
    add-int/2addr v0, v1

    #@51
    :cond_51
    return v0
.end method

.method public d(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$c;
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
    sparse-switch v0, :sswitch_data_32

    #@7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$c;->a(Lcom/google/android/gms/internal/ly;I)Z

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
    iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@14
    goto :goto_0

    #@15
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nD()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    #@1b
    goto :goto_0

    #@1c
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nD()J

    #@1f
    move-result-wide v0

    #@20
    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    #@22
    goto :goto_0

    #@23
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nF()Z

    #@26
    move-result v0

    #@27
    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    #@29
    goto :goto_0

    #@2a
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nD()J

    #@2d
    move-result-wide v0

    #@2e
    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    #@30
    goto :goto_0

    #@31
    nop

    #@32
    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_15
        0x18 -> :sswitch_1c
        0x20 -> :sswitch_23
        0x28 -> :sswitch_2a
    .end sparse-switch
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
    instance-of v2, p1, Lcom/google/android/gms/internal/c$c;

    #@7
    if-eqz v2, :cond_49

    #@9
    check-cast p1, Lcom/google/android/gms/internal/c$c;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@d
    if-nez v2, :cond_4b

    #@f
    iget-object v2, p1, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@11
    if-nez v2, :cond_49

    #@13
    :cond_13
    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    #@15
    iget-wide v4, p1, Lcom/google/android/gms/internal/c$c;->eN:J

    #@17
    cmp-long v2, v2, v4

    #@19
    if-nez v2, :cond_49

    #@1b
    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    #@1d
    iget-wide v4, p1, Lcom/google/android/gms/internal/c$c;->eO:J

    #@1f
    cmp-long v2, v2, v4

    #@21
    if-nez v2, :cond_49

    #@23
    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    #@25
    iget-boolean v3, p1, Lcom/google/android/gms/internal/c$c;->eP:Z

    #@27
    if-ne v2, v3, :cond_49

    #@29
    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    #@2b
    iget-wide v4, p1, Lcom/google/android/gms/internal/c$c;->eQ:J

    #@2d
    cmp-long v2, v2, v4

    #@2f
    if-nez v2, :cond_49

    #@31
    iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->amX:Ljava/util/List;

    #@33
    if-eqz v2, :cond_3d

    #@35
    iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->amX:Ljava/util/List;

    #@37
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_57

    #@3d
    :cond_3d
    iget-object v2, p1, Lcom/google/android/gms/internal/c$c;->amX:Ljava/util/List;

    #@3f
    if-eqz v2, :cond_4

    #@41
    iget-object v2, p1, Lcom/google/android/gms/internal/c$c;->amX:Ljava/util/List;

    #@43
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@46
    move-result v2

    #@47
    if-nez v2, :cond_4

    #@49
    :cond_49
    move v0, v1

    #@4a
    goto :goto_4

    #@4b
    :cond_4b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@4d
    iget-object v3, p1, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v2

    #@53
    if-nez v2, :cond_13

    #@55
    move v0, v1

    #@56
    goto :goto_4

    #@57
    :cond_57
    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->amX:Ljava/util/List;

    #@59
    iget-object v1, p1, Lcom/google/android/gms/internal/c$c;->amX:Ljava/util/List;

    #@5b
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v0

    #@5f
    goto :goto_4
.end method

.method public g()Lcom/google/android/gms/internal/c$c;
    .registers 5

    #@0
    const-wide/16 v2, 0x0

    #@2
    const-string v0, ""

    #@4
    iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@6
    iput-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    #@8
    const-wide/32 v0, 0x7fffffff

    #@b
    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    #@d
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    #@10
    iput-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    #@12
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->amX:Ljava/util/List;

    #@15
    const/4 v0, -0x1

    #@16
    iput v0, p0, Lcom/google/android/gms/internal/c$c;->anb:I

    #@18
    return-object p0
.end method

.method public hashCode()I
    .registers 12

    #@0
    const/4 v1, 0x0

    #@1
    const/16 v10, 0x20

    #@3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@5
    if-nez v0, :cond_41

    #@7
    move v0, v1

    #@8
    :goto_8
    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    #@a
    iget-wide v4, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    #@c
    ushr-long/2addr v4, v10

    #@d
    xor-long/2addr v2, v4

    #@e
    long-to-int v3, v2

    #@f
    iget-wide v4, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    #@11
    iget-wide v6, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    #@13
    ushr-long/2addr v6, v10

    #@14
    xor-long/2addr v4, v6

    #@15
    long-to-int v4, v4

    #@16
    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    #@18
    if-eqz v2, :cond_48

    #@1a
    const/16 v2, 0x4cf

    #@1c
    :goto_1c
    iget-wide v6, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    #@1e
    iget-wide v8, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    #@20
    ushr-long/2addr v8, v10

    #@21
    xor-long/2addr v6, v8

    #@22
    long-to-int v5, v6

    #@23
    iget-object v6, p0, Lcom/google/android/gms/internal/c$c;->amX:Ljava/util/List;

    #@25
    if-eqz v6, :cond_2f

    #@27
    iget-object v6, p0, Lcom/google/android/gms/internal/c$c;->amX:Ljava/util/List;

    #@29
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_4b

    #@2f
    :cond_2f
    :goto_2f
    add-int/lit16 v0, v0, 0x20f

    #@31
    mul-int/lit8 v0, v0, 0x1f

    #@33
    add-int/2addr v0, v3

    #@34
    mul-int/lit8 v0, v0, 0x1f

    #@36
    add-int/2addr v0, v4

    #@37
    mul-int/lit8 v0, v0, 0x1f

    #@39
    add-int/2addr v0, v2

    #@3a
    mul-int/lit8 v0, v0, 0x1f

    #@3c
    add-int/2addr v0, v5

    #@3d
    mul-int/lit8 v0, v0, 0x1f

    #@3f
    add-int/2addr v0, v1

    #@40
    return v0

    #@41
    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    #@43
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@46
    move-result v0

    #@47
    goto :goto_8

    #@48
    :cond_48
    const/16 v2, 0x4d5

    #@4a
    goto :goto_1c

    #@4b
    :cond_4b
    iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->amX:Ljava/util/List;

    #@4d
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    #@50
    move-result v1

    #@51
    goto :goto_2f
.end method
