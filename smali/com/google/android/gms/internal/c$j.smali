.class public final Lcom/google/android/gms/internal/c$j;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/internal/c$j;",
        ">;"
    }
.end annotation


# instance fields
.field public fJ:[Lcom/google/android/gms/internal/c$i;

.field public fK:Lcom/google/android/gms/internal/c$f;

.field public fL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$j;->q()Lcom/google/android/gms/internal/c$j;

    #@6
    return-void
.end method

.method public static b([B)Lcom/google/android/gms/internal/c$j;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/md;
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/internal/c$j;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/me;->a(Lcom/google/android/gms/internal/me;[B)Lcom/google/android/gms/internal/me;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/internal/c$j;

    #@b
    return-object v0
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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@2
    if-eqz v0, :cond_1c

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@6
    array-length v0, v0

    #@7
    if-lez v0, :cond_1c

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@c
    array-length v1, v1

    #@d
    if-ge v0, v1, :cond_1c

    #@f
    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@11
    aget-object v1, v1, v0

    #@13
    if-eqz v1, :cond_19

    #@15
    const/4 v2, 0x1

    #@16
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/lz;->a(ILcom/google/android/gms/internal/me;)V

    #@19
    :cond_19
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_a

    #@1c
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@1e
    if-eqz v0, :cond_26

    #@20
    const/4 v0, 0x2

    #@21
    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@23
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->a(ILcom/google/android/gms/internal/me;)V

    #@26
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    #@28
    const-string v1, ""

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_36

    #@30
    const/4 v0, 0x3

    #@31
    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    #@33
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->b(ILjava/lang/String;)V

    #@36
    :cond_36
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/lz;)V

    #@39
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$j;->k(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$j;

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
    move-result v1

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@6
    if-eqz v0, :cond_22

    #@8
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@a
    array-length v0, v0

    #@b
    if-lez v0, :cond_22

    #@d
    const/4 v0, 0x0

    #@e
    :goto_e
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@10
    array-length v2, v2

    #@11
    if-ge v0, v2, :cond_22

    #@13
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@15
    aget-object v2, v2, v0

    #@17
    if-eqz v2, :cond_1f

    #@19
    const/4 v3, 0x1

    #@1a
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/lz;->b(ILcom/google/android/gms/internal/me;)I

    #@1d
    move-result v2

    #@1e
    add-int/2addr v1, v2

    #@1f
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_e

    #@22
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@24
    if-eqz v0, :cond_2e

    #@26
    const/4 v0, 0x2

    #@27
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@29
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/lz;->b(ILcom/google/android/gms/internal/me;)I

    #@2c
    move-result v0

    #@2d
    add-int/2addr v1, v0

    #@2e
    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    #@30
    const-string v2, ""

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-nez v0, :cond_40

    #@38
    const/4 v0, 0x3

    #@39
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    #@3b
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/lz;->h(ILjava/lang/String;)I

    #@3e
    move-result v0

    #@3f
    add-int/2addr v1, v0

    #@40
    :cond_40
    return v1
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
    instance-of v2, p1, Lcom/google/android/gms/internal/c$j;

    #@7
    if-eqz v2, :cond_3d

    #@9
    check-cast p1, Lcom/google/android/gms/internal/c$j;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@d
    iget-object v3, p1, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_3d

    #@15
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@17
    if-nez v2, :cond_3f

    #@19
    iget-object v2, p1, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@1b
    if-nez v2, :cond_3d

    #@1d
    :cond_1d
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    #@1f
    if-nez v2, :cond_4b

    #@21
    iget-object v2, p1, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    #@23
    if-nez v2, :cond_3d

    #@25
    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->amX:Ljava/util/List;

    #@27
    if-eqz v2, :cond_31

    #@29
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->amX:Ljava/util/List;

    #@2b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_57

    #@31
    :cond_31
    iget-object v2, p1, Lcom/google/android/gms/internal/c$j;->amX:Ljava/util/List;

    #@33
    if-eqz v2, :cond_4

    #@35
    iget-object v2, p1, Lcom/google/android/gms/internal/c$j;->amX:Ljava/util/List;

    #@37
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@3a
    move-result v2

    #@3b
    if-nez v2, :cond_4

    #@3d
    :cond_3d
    move v0, v1

    #@3e
    goto :goto_4

    #@3f
    :cond_3f
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@41
    iget-object v3, p1, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@43
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/c$f;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v2

    #@47
    if-nez v2, :cond_1d

    #@49
    move v0, v1

    #@4a
    goto :goto_4

    #@4b
    :cond_4b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    #@4d
    iget-object v3, p1, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v2

    #@53
    if-nez v2, :cond_25

    #@55
    move v0, v1

    #@56
    goto :goto_4

    #@57
    :cond_57
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->amX:Ljava/util/List;

    #@59
    iget-object v1, p1, Lcom/google/android/gms/internal/c$j;->amX:Ljava/util/List;

    #@5b
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v0

    #@5f
    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@3
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([Ljava/lang/Object;)I

    #@6
    move-result v3

    #@7
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@9
    if-nez v0, :cond_29

    #@b
    move v0, v1

    #@c
    :goto_c
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    #@e
    if-nez v2, :cond_30

    #@10
    move v2, v1

    #@11
    :goto_11
    iget-object v4, p0, Lcom/google/android/gms/internal/c$j;->amX:Ljava/util/List;

    #@13
    if-eqz v4, :cond_1d

    #@15
    iget-object v4, p0, Lcom/google/android/gms/internal/c$j;->amX:Ljava/util/List;

    #@17
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_37

    #@1d
    :cond_1d
    :goto_1d
    add-int/lit16 v3, v3, 0x20f

    #@1f
    mul-int/lit8 v3, v3, 0x1f

    #@21
    add-int/2addr v0, v3

    #@22
    mul-int/lit8 v0, v0, 0x1f

    #@24
    add-int/2addr v0, v2

    #@25
    mul-int/lit8 v0, v0, 0x1f

    #@27
    add-int/2addr v0, v1

    #@28
    return v0

    #@29
    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@2b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/c$f;->hashCode()I

    #@2e
    move-result v0

    #@2f
    goto :goto_c

    #@30
    :cond_30
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    #@32
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@35
    move-result v2

    #@36
    goto :goto_11

    #@37
    :cond_37
    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->amX:Ljava/util/List;

    #@39
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    #@3c
    move-result v1

    #@3d
    goto :goto_1d
.end method

.method public k(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$j;
    .registers 6
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
    sparse-switch v0, :sswitch_data_66

    #@8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$j;->a(Lcom/google/android/gms/internal/ly;I)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    :sswitch_e
    return-object p0

    #@f
    :sswitch_f
    const/16 v0, 0xa

    #@11
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@14
    move-result v2

    #@15
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@17
    if-nez v0, :cond_3b

    #@19
    move v0, v1

    #@1a
    :goto_1a
    add-int/2addr v2, v0

    #@1b
    new-array v2, v2, [Lcom/google/android/gms/internal/c$i;

    #@1d
    if-eqz v0, :cond_24

    #@1f
    iget-object v3, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@21
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    :cond_24
    :goto_24
    array-length v3, v2

    #@25
    add-int/lit8 v3, v3, -0x1

    #@27
    if-ge v0, v3, :cond_3f

    #@29
    new-instance v3, Lcom/google/android/gms/internal/c$i;

    #@2b
    invoke-direct {v3}, Lcom/google/android/gms/internal/c$i;-><init>()V

    #@2e
    aput-object v3, v2, v0

    #@30
    aget-object v3, v2, v0

    #@32
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@38
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_24

    #@3b
    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@3d
    array-length v0, v0

    #@3e
    goto :goto_1a

    #@3f
    :cond_3f
    new-instance v3, Lcom/google/android/gms/internal/c$i;

    #@41
    invoke-direct {v3}, Lcom/google/android/gms/internal/c$i;-><init>()V

    #@44
    aput-object v3, v2, v0

    #@46
    aget-object v0, v2, v0

    #@48
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@4b
    iput-object v2, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@4d
    goto :goto_1

    #@4e
    :sswitch_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@50
    if-nez v0, :cond_59

    #@52
    new-instance v0, Lcom/google/android/gms/internal/c$f;

    #@54
    invoke-direct {v0}, Lcom/google/android/gms/internal/c$f;-><init>()V

    #@57
    iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@59
    :cond_59
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@5b
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@5e
    goto :goto_1

    #@5f
    :sswitch_5f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->readString()Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    #@65
    goto :goto_1

    #@66
    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_4e
        0x1a -> :sswitch_5f
    .end sparse-switch
.end method

.method public q()Lcom/google/android/gms/internal/c$j;
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    invoke-static {}, Lcom/google/android/gms/internal/c$i;->o()[Lcom/google/android/gms/internal/c$i;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@7
    iput-object v1, p0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@9
    const-string v0, ""

    #@b
    iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    #@d
    iput-object v1, p0, Lcom/google/android/gms/internal/c$j;->amX:Ljava/util/List;

    #@f
    const/4 v0, -0x1

    #@10
    iput v0, p0, Lcom/google/android/gms/internal/c$j;->anb:I

    #@12
    return-object p0
.end method
