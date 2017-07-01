.class public final Lcom/google/android/gms/internal/c$d;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/internal/c$d;",
        ">;"
    }
.end annotation


# instance fields
.field public eR:[Lcom/google/android/gms/internal/d$a;

.field public eS:[Lcom/google/android/gms/internal/d$a;

.field public eT:[Lcom/google/android/gms/internal/c$c;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$d;->h()Lcom/google/android/gms/internal/c$d;

    #@6
    return-void
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
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@3
    if-eqz v0, :cond_1d

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@7
    array-length v0, v0

    #@8
    if-lez v0, :cond_1d

    #@a
    move v0, v1

    #@b
    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@d
    array-length v2, v2

    #@e
    if-ge v0, v2, :cond_1d

    #@10
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@12
    aget-object v2, v2, v0

    #@14
    if-eqz v2, :cond_1a

    #@16
    const/4 v3, 0x1

    #@17
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/lz;->a(ILcom/google/android/gms/internal/me;)V

    #@1a
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_b

    #@1d
    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@1f
    if-eqz v0, :cond_39

    #@21
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@23
    array-length v0, v0

    #@24
    if-lez v0, :cond_39

    #@26
    move v0, v1

    #@27
    :goto_27
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@29
    array-length v2, v2

    #@2a
    if-ge v0, v2, :cond_39

    #@2c
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@2e
    aget-object v2, v2, v0

    #@30
    if-eqz v2, :cond_36

    #@32
    const/4 v3, 0x2

    #@33
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/lz;->a(ILcom/google/android/gms/internal/me;)V

    #@36
    :cond_36
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_27

    #@39
    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@3b
    if-eqz v0, :cond_54

    #@3d
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@3f
    array-length v0, v0

    #@40
    if-lez v0, :cond_54

    #@42
    :goto_42
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@44
    array-length v0, v0

    #@45
    if-ge v1, v0, :cond_54

    #@47
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@49
    aget-object v0, v0, v1

    #@4b
    if-eqz v0, :cond_51

    #@4d
    const/4 v2, 0x3

    #@4e
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/lz;->a(ILcom/google/android/gms/internal/me;)V

    #@51
    :cond_51
    add-int/lit8 v1, v1, 0x1

    #@53
    goto :goto_42

    #@54
    :cond_54
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/lz;)V

    #@57
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$d;->e(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$d;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected c()I
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    invoke-super {p0}, Lcom/google/android/gms/internal/ma;->c()I

    #@4
    move-result v0

    #@5
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@7
    if-eqz v2, :cond_25

    #@9
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@b
    array-length v2, v2

    #@c
    if-lez v2, :cond_25

    #@e
    move v2, v0

    #@f
    move v0, v1

    #@10
    :goto_10
    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@12
    array-length v3, v3

    #@13
    if-ge v0, v3, :cond_24

    #@15
    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@17
    aget-object v3, v3, v0

    #@19
    if-eqz v3, :cond_21

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/lz;->b(ILcom/google/android/gms/internal/me;)I

    #@1f
    move-result v3

    #@20
    add-int/2addr v2, v3

    #@21
    :cond_21
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_10

    #@24
    :cond_24
    move v0, v2

    #@25
    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@27
    if-eqz v2, :cond_45

    #@29
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@2b
    array-length v2, v2

    #@2c
    if-lez v2, :cond_45

    #@2e
    move v2, v0

    #@2f
    move v0, v1

    #@30
    :goto_30
    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@32
    array-length v3, v3

    #@33
    if-ge v0, v3, :cond_44

    #@35
    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@37
    aget-object v3, v3, v0

    #@39
    if-eqz v3, :cond_41

    #@3b
    const/4 v4, 0x2

    #@3c
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/lz;->b(ILcom/google/android/gms/internal/me;)I

    #@3f
    move-result v3

    #@40
    add-int/2addr v2, v3

    #@41
    :cond_41
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_30

    #@44
    :cond_44
    move v0, v2

    #@45
    :cond_45
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@47
    if-eqz v2, :cond_62

    #@49
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@4b
    array-length v2, v2

    #@4c
    if-lez v2, :cond_62

    #@4e
    :goto_4e
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@50
    array-length v2, v2

    #@51
    if-ge v1, v2, :cond_62

    #@53
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@55
    aget-object v2, v2, v1

    #@57
    if-eqz v2, :cond_5f

    #@59
    const/4 v3, 0x3

    #@5a
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/lz;->b(ILcom/google/android/gms/internal/me;)I

    #@5d
    move-result v2

    #@5e
    add-int/2addr v0, v2

    #@5f
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    #@61
    goto :goto_4e

    #@62
    :cond_62
    return v0
.end method

.method public e(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$d;
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
    sparse-switch v0, :sswitch_data_ce

    #@8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$d;->a(Lcom/google/android/gms/internal/ly;I)Z

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@17
    if-nez v0, :cond_3b

    #@19
    move v0, v1

    #@1a
    :goto_1a
    add-int/2addr v2, v0

    #@1b
    new-array v2, v2, [Lcom/google/android/gms/internal/d$a;

    #@1d
    if-eqz v0, :cond_24

    #@1f
    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

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
    new-instance v3, Lcom/google/android/gms/internal/d$a;

    #@2b
    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@3d
    array-length v0, v0

    #@3e
    goto :goto_1a

    #@3f
    :cond_3f
    new-instance v3, Lcom/google/android/gms/internal/d$a;

    #@41
    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    #@44
    aput-object v3, v2, v0

    #@46
    aget-object v0, v2, v0

    #@48
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@4b
    iput-object v2, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@4d
    goto :goto_1

    #@4e
    :sswitch_4e
    const/16 v0, 0x12

    #@50
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@53
    move-result v2

    #@54
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@56
    if-nez v0, :cond_7a

    #@58
    move v0, v1

    #@59
    :goto_59
    add-int/2addr v2, v0

    #@5a
    new-array v2, v2, [Lcom/google/android/gms/internal/d$a;

    #@5c
    if-eqz v0, :cond_63

    #@5e
    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@60
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@63
    :cond_63
    :goto_63
    array-length v3, v2

    #@64
    add-int/lit8 v3, v3, -0x1

    #@66
    if-ge v0, v3, :cond_7e

    #@68
    new-instance v3, Lcom/google/android/gms/internal/d$a;

    #@6a
    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    #@6d
    aput-object v3, v2, v0

    #@6f
    aget-object v3, v2, v0

    #@71
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@74
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@77
    add-int/lit8 v0, v0, 0x1

    #@79
    goto :goto_63

    #@7a
    :cond_7a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@7c
    array-length v0, v0

    #@7d
    goto :goto_59

    #@7e
    :cond_7e
    new-instance v3, Lcom/google/android/gms/internal/d$a;

    #@80
    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    #@83
    aput-object v3, v2, v0

    #@85
    aget-object v0, v2, v0

    #@87
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@8a
    iput-object v2, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@8c
    goto/16 :goto_1

    #@8e
    :sswitch_8e
    const/16 v0, 0x1a

    #@90
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@93
    move-result v2

    #@94
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@96
    if-nez v0, :cond_ba

    #@98
    move v0, v1

    #@99
    :goto_99
    add-int/2addr v2, v0

    #@9a
    new-array v2, v2, [Lcom/google/android/gms/internal/c$c;

    #@9c
    if-eqz v0, :cond_a3

    #@9e
    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@a0
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a3
    :cond_a3
    :goto_a3
    array-length v3, v2

    #@a4
    add-int/lit8 v3, v3, -0x1

    #@a6
    if-ge v0, v3, :cond_be

    #@a8
    new-instance v3, Lcom/google/android/gms/internal/c$c;

    #@aa
    invoke-direct {v3}, Lcom/google/android/gms/internal/c$c;-><init>()V

    #@ad
    aput-object v3, v2, v0

    #@af
    aget-object v3, v2, v0

    #@b1
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@b4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@b7
    add-int/lit8 v0, v0, 0x1

    #@b9
    goto :goto_a3

    #@ba
    :cond_ba
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@bc
    array-length v0, v0

    #@bd
    goto :goto_99

    #@be
    :cond_be
    new-instance v3, Lcom/google/android/gms/internal/c$c;

    #@c0
    invoke-direct {v3}, Lcom/google/android/gms/internal/c$c;-><init>()V

    #@c3
    aput-object v3, v2, v0

    #@c5
    aget-object v0, v2, v0

    #@c7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@ca
    iput-object v2, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@cc
    goto/16 :goto_1

    #@ce
    :sswitch_data_ce
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_4e
        0x1a -> :sswitch_8e
    .end sparse-switch
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
    instance-of v2, p1, Lcom/google/android/gms/internal/c$d;

    #@7
    if-eqz v2, :cond_41

    #@9
    check-cast p1, Lcom/google/android/gms/internal/c$d;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@d
    iget-object v3, p1, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_41

    #@15
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@17
    iget-object v3, p1, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@19
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_41

    #@1f
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@21
    iget-object v3, p1, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@23
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_41

    #@29
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->amX:Ljava/util/List;

    #@2b
    if-eqz v2, :cond_35

    #@2d
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->amX:Ljava/util/List;

    #@2f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_43

    #@35
    :cond_35
    iget-object v2, p1, Lcom/google/android/gms/internal/c$d;->amX:Ljava/util/List;

    #@37
    if-eqz v2, :cond_4

    #@39
    iget-object v2, p1, Lcom/google/android/gms/internal/c$d;->amX:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->amX:Ljava/util/List;

    #@45
    iget-object v1, p1, Lcom/google/android/gms/internal/c$d;->amX:Ljava/util/List;

    #@47
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v0

    #@4b
    goto :goto_4
.end method

.method public h()Lcom/google/android/gms/internal/c$d;
    .registers 2

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@6
    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@c
    invoke-static {}, Lcom/google/android/gms/internal/c$c;->f()[Lcom/google/android/gms/internal/c$c;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@12
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->amX:Ljava/util/List;

    #@15
    const/4 v0, -0x1

    #@16
    iput v0, p0, Lcom/google/android/gms/internal/c$d;->anb:I

    #@18
    return-object p0
.end method

.method public hashCode()I
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([Ljava/lang/Object;)I

    #@5
    move-result v1

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    #@8
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([Ljava/lang/Object;)I

    #@b
    move-result v2

    #@c
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    #@e
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([Ljava/lang/Object;)I

    #@11
    move-result v3

    #@12
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->amX:Ljava/util/List;

    #@14
    if-eqz v0, :cond_1e

    #@16
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->amX:Ljava/util/List;

    #@18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2b

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    :goto_1f
    add-int/lit16 v1, v1, 0x20f

    #@21
    mul-int/lit8 v1, v1, 0x1f

    #@23
    add-int/2addr v1, v2

    #@24
    mul-int/lit8 v1, v1, 0x1f

    #@26
    add-int/2addr v1, v3

    #@27
    mul-int/lit8 v1, v1, 0x1f

    #@29
    add-int/2addr v0, v1

    #@2a
    return v0

    #@2b
    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->amX:Ljava/util/List;

    #@2d
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    #@30
    move-result v0

    #@31
    goto :goto_1f
.end method
