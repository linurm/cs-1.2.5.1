.class public final Lcom/google/android/gms/internal/c$b;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/internal/c$b;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile eG:[Lcom/google/android/gms/internal/c$b;


# instance fields
.field public eH:[I

.field public eI:I

.field public eJ:Z

.field public eK:Z

.field public name:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$b;->e()Lcom/google/android/gms/internal/c$b;

    #@6
    return-void
.end method

.method public static d()[Lcom/google/android/gms/internal/c$b;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/c$b;->eG:[Lcom/google/android/gms/internal/c$b;

    #@2
    if-nez v0, :cond_11

    #@4
    sget-object v1, Lcom/google/android/gms/internal/mc;->ana:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/c$b;->eG:[Lcom/google/android/gms/internal/c$b;

    #@9
    if-nez v0, :cond_10

    #@b
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/google/android/gms/internal/c$b;

    #@e
    sput-object v0, Lcom/google/android/gms/internal/c$b;->eG:[Lcom/google/android/gms/internal/c$b;

    #@10
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    #@11
    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/c$b;->eG:[Lcom/google/android/gms/internal/c$b;

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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    const/4 v0, 0x1

    #@5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    #@7
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->a(IZ)V

    #@a
    :cond_a
    const/4 v0, 0x2

    #@b
    iget v1, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    #@d
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@12
    if-eqz v0, :cond_2a

    #@14
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@16
    array-length v0, v0

    #@17
    if-lez v0, :cond_2a

    #@19
    const/4 v0, 0x0

    #@1a
    :goto_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@1c
    array-length v1, v1

    #@1d
    if-ge v0, v1, :cond_2a

    #@1f
    const/4 v1, 0x3

    #@20
    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@22
    aget v2, v2, v0

    #@24
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@27
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_1a

    #@2a
    :cond_2a
    iget v0, p0, Lcom/google/android/gms/internal/c$b;->name:I

    #@2c
    if-eqz v0, :cond_34

    #@2e
    const/4 v0, 0x4

    #@2f
    iget v1, p0, Lcom/google/android/gms/internal/c$b;->name:I

    #@31
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@34
    :cond_34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    #@36
    if-eqz v0, :cond_3e

    #@38
    const/4 v0, 0x6

    #@39
    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    #@3b
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->a(IZ)V

    #@3e
    :cond_3e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/lz;)V

    #@41
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$b;->c(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$b;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected c()I
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    invoke-super {p0}, Lcom/google/android/gms/internal/ma;->c()I

    #@4
    move-result v0

    #@5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    #@7
    if-eqz v2, :cond_11

    #@9
    const/4 v2, 0x1

    #@a
    iget-boolean v3, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    #@c
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lz;->b(IZ)I

    #@f
    move-result v2

    #@10
    add-int/2addr v0, v2

    #@11
    :cond_11
    const/4 v2, 0x2

    #@12
    iget v3, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    #@14
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lz;->r(II)I

    #@17
    move-result v2

    #@18
    add-int/2addr v2, v0

    #@19
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@1b
    if-eqz v0, :cond_55

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@1f
    array-length v0, v0

    #@20
    if-lez v0, :cond_55

    #@22
    move v0, v1

    #@23
    :goto_23
    iget-object v3, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@25
    array-length v3, v3

    #@26
    if-ge v0, v3, :cond_34

    #@28
    iget-object v3, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@2a
    aget v3, v3, v0

    #@2c
    invoke-static {v3}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@2f
    move-result v3

    #@30
    add-int/2addr v1, v3

    #@31
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_23

    #@34
    :cond_34
    add-int v0, v2, v1

    #@36
    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@38
    array-length v1, v1

    #@39
    mul-int/lit8 v1, v1, 0x1

    #@3b
    add-int/2addr v0, v1

    #@3c
    :goto_3c
    iget v1, p0, Lcom/google/android/gms/internal/c$b;->name:I

    #@3e
    if-eqz v1, :cond_48

    #@40
    const/4 v1, 0x4

    #@41
    iget v2, p0, Lcom/google/android/gms/internal/c$b;->name:I

    #@43
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->r(II)I

    #@46
    move-result v1

    #@47
    add-int/2addr v0, v1

    #@48
    :cond_48
    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    #@4a
    if-eqz v1, :cond_54

    #@4c
    const/4 v1, 0x6

    #@4d
    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    #@4f
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->b(IZ)I

    #@52
    move-result v1

    #@53
    add-int/2addr v0, v1

    #@54
    :cond_54
    return v0

    #@55
    :cond_55
    move v0, v2

    #@56
    goto :goto_3c
.end method

.method public c(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$b;
    .registers 7
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
    sparse-switch v0, :sswitch_data_a2

    #@8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$b;->a(Lcom/google/android/gms/internal/ly;I)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    :sswitch_e
    return-object p0

    #@f
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nF()Z

    #@12
    move-result v0

    #@13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    #@15
    goto :goto_1

    #@16
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    #@1c
    goto :goto_1

    #@1d
    :sswitch_1d
    const/16 v0, 0x18

    #@1f
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@22
    move-result v2

    #@23
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@25
    if-nez v0, :cond_43

    #@27
    move v0, v1

    #@28
    :goto_28
    add-int/2addr v2, v0

    #@29
    new-array v2, v2, [I

    #@2b
    if-eqz v0, :cond_32

    #@2d
    iget-object v3, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@2f
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@32
    :cond_32
    :goto_32
    array-length v3, v2

    #@33
    add-int/lit8 v3, v3, -0x1

    #@35
    if-ge v0, v3, :cond_47

    #@37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@3a
    move-result v3

    #@3b
    aput v3, v2, v0

    #@3d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@40
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_32

    #@43
    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@45
    array-length v0, v0

    #@46
    goto :goto_28

    #@47
    :cond_47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@4a
    move-result v3

    #@4b
    aput v3, v2, v0

    #@4d
    iput-object v2, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@4f
    goto :goto_1

    #@50
    :sswitch_50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nI()I

    #@53
    move-result v0

    #@54
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->ex(I)I

    #@57
    move-result v3

    #@58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@5b
    move-result v2

    #@5c
    move v0, v1

    #@5d
    :goto_5d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nN()I

    #@60
    move-result v4

    #@61
    if-lez v4, :cond_69

    #@63
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@66
    add-int/lit8 v0, v0, 0x1

    #@68
    goto :goto_5d

    #@69
    :cond_69
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ly;->ez(I)V

    #@6c
    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@6e
    if-nez v2, :cond_87

    #@70
    move v2, v1

    #@71
    :goto_71
    add-int/2addr v0, v2

    #@72
    new-array v0, v0, [I

    #@74
    if-eqz v2, :cond_7b

    #@76
    iget-object v4, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@78
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@7b
    :cond_7b
    :goto_7b
    array-length v4, v0

    #@7c
    if-ge v2, v4, :cond_8b

    #@7e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@81
    move-result v4

    #@82
    aput v4, v0, v2

    #@84
    add-int/lit8 v2, v2, 0x1

    #@86
    goto :goto_7b

    #@87
    :cond_87
    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@89
    array-length v2, v2

    #@8a
    goto :goto_71

    #@8b
    :cond_8b
    iput-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@8d
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@90
    goto/16 :goto_1

    #@92
    :sswitch_92
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@95
    move-result v0

    #@96
    iput v0, p0, Lcom/google/android/gms/internal/c$b;->name:I

    #@98
    goto/16 :goto_1

    #@9a
    :sswitch_9a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nF()Z

    #@9d
    move-result v0

    #@9e
    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    #@a0
    goto/16 :goto_1

    #@a2
    :sswitch_data_a2
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1d
        0x1a -> :sswitch_50
        0x20 -> :sswitch_92
        0x30 -> :sswitch_9a
    .end sparse-switch
.end method

.method public e()Lcom/google/android/gms/internal/c$b;
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    sget-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@3
    iput-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@5
    iput v1, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    #@7
    iput v1, p0, Lcom/google/android/gms/internal/c$b;->name:I

    #@9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    #@b
    iput-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    #@d
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/google/android/gms/internal/c$b;->amX:Ljava/util/List;

    #@10
    const/4 v0, -0x1

    #@11
    iput v0, p0, Lcom/google/android/gms/internal/c$b;->anb:I

    #@13
    return-object p0
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
    instance-of v2, p1, Lcom/google/android/gms/internal/c$b;

    #@7
    if-eqz v2, :cond_45

    #@9
    check-cast p1, Lcom/google/android/gms/internal/c$b;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@d
    iget-object v3, p1, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([I[I)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_45

    #@15
    iget v2, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    #@17
    iget v3, p1, Lcom/google/android/gms/internal/c$b;->eI:I

    #@19
    if-ne v2, v3, :cond_45

    #@1b
    iget v2, p0, Lcom/google/android/gms/internal/c$b;->name:I

    #@1d
    iget v3, p1, Lcom/google/android/gms/internal/c$b;->name:I

    #@1f
    if-ne v2, v3, :cond_45

    #@21
    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    #@23
    iget-boolean v3, p1, Lcom/google/android/gms/internal/c$b;->eJ:Z

    #@25
    if-ne v2, v3, :cond_45

    #@27
    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    #@29
    iget-boolean v3, p1, Lcom/google/android/gms/internal/c$b;->eK:Z

    #@2b
    if-ne v2, v3, :cond_45

    #@2d
    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->amX:Ljava/util/List;

    #@2f
    if-eqz v2, :cond_39

    #@31
    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->amX:Ljava/util/List;

    #@33
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_47

    #@39
    :cond_39
    iget-object v2, p1, Lcom/google/android/gms/internal/c$b;->amX:Ljava/util/List;

    #@3b
    if-eqz v2, :cond_4

    #@3d
    iget-object v2, p1, Lcom/google/android/gms/internal/c$b;->amX:Ljava/util/List;

    #@3f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@42
    move-result v2

    #@43
    if-nez v2, :cond_4

    #@45
    :cond_45
    move v0, v1

    #@46
    goto :goto_4

    #@47
    :cond_47
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->amX:Ljava/util/List;

    #@49
    iget-object v1, p1, Lcom/google/android/gms/internal/c$b;->amX:Ljava/util/List;

    #@4b
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v0

    #@4f
    goto :goto_4
.end method

.method public hashCode()I
    .registers 8

    #@0
    const/16 v2, 0x4d5

    #@2
    const/16 v1, 0x4cf

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    #@6
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([I)I

    #@9
    move-result v3

    #@a
    iget v4, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    #@c
    iget v5, p0, Lcom/google/android/gms/internal/c$b;->name:I

    #@e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    #@10
    if-eqz v0, :cond_37

    #@12
    move v0, v1

    #@13
    :goto_13
    iget-boolean v6, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    #@15
    if-eqz v6, :cond_18

    #@17
    move v2, v1

    #@18
    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->amX:Ljava/util/List;

    #@1a
    if-eqz v1, :cond_24

    #@1c
    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->amX:Ljava/util/List;

    #@1e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_39

    #@24
    :cond_24
    const/4 v1, 0x0

    #@25
    :goto_25
    add-int/lit16 v3, v3, 0x20f

    #@27
    mul-int/lit8 v3, v3, 0x1f

    #@29
    add-int/2addr v3, v4

    #@2a
    mul-int/lit8 v3, v3, 0x1f

    #@2c
    add-int/2addr v3, v5

    #@2d
    mul-int/lit8 v3, v3, 0x1f

    #@2f
    add-int/2addr v0, v3

    #@30
    mul-int/lit8 v0, v0, 0x1f

    #@32
    add-int/2addr v0, v2

    #@33
    mul-int/lit8 v0, v0, 0x1f

    #@35
    add-int/2addr v0, v1

    #@36
    return v0

    #@37
    :cond_37
    move v0, v2

    #@38
    goto :goto_13

    #@39
    :cond_39
    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->amX:Ljava/util/List;

    #@3b
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    #@3e
    move-result v1

    #@3f
    goto :goto_25
.end method
