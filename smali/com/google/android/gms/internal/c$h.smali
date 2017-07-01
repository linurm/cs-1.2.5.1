.class public final Lcom/google/android/gms/internal/c$h;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/internal/c$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final fx:Lcom/google/android/gms/internal/mb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mb",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            "Lcom/google/android/gms/internal/c$h;",
            ">;"
        }
    .end annotation
.end field

.field private static final fy:[Lcom/google/android/gms/internal/c$h;


# instance fields
.field public fA:[I

.field public fB:[I

.field public fC:I

.field public fD:[I

.field public fE:I

.field public fF:I

.field public fz:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/16 v0, 0xb

    #@2
    const-class v1, Lcom/google/android/gms/internal/c$h;

    #@4
    const/16 v2, 0x32a

    #@6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mb;->a(ILjava/lang/Class;I)Lcom/google/android/gms/internal/mb;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/google/android/gms/internal/c$h;->fx:Lcom/google/android/gms/internal/mb;

    #@c
    const/4 v0, 0x0

    #@d
    new-array v0, v0, [Lcom/google/android/gms/internal/c$h;

    #@f
    sput-object v0, Lcom/google/android/gms/internal/c$h;->fy:[Lcom/google/android/gms/internal/c$h;

    #@11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$h;->n()Lcom/google/android/gms/internal/c$h;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@3
    if-eqz v0, :cond_1b

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@7
    array-length v0, v0

    #@8
    if-lez v0, :cond_1b

    #@a
    move v0, v1

    #@b
    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@d
    array-length v2, v2

    #@e
    if-ge v0, v2, :cond_1b

    #@10
    const/4 v2, 0x1

    #@11
    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@13
    aget v3, v3, v0

    #@15
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_b

    #@1b
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@1d
    if-eqz v0, :cond_35

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@21
    array-length v0, v0

    #@22
    if-lez v0, :cond_35

    #@24
    move v0, v1

    #@25
    :goto_25
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@27
    array-length v2, v2

    #@28
    if-ge v0, v2, :cond_35

    #@2a
    const/4 v2, 0x2

    #@2b
    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@2d
    aget v3, v3, v0

    #@2f
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@32
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_25

    #@35
    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@37
    if-eqz v0, :cond_4f

    #@39
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@3b
    array-length v0, v0

    #@3c
    if-lez v0, :cond_4f

    #@3e
    move v0, v1

    #@3f
    :goto_3f
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@41
    array-length v2, v2

    #@42
    if-ge v0, v2, :cond_4f

    #@44
    const/4 v2, 0x3

    #@45
    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@47
    aget v3, v3, v0

    #@49
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@4c
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_3f

    #@4f
    :cond_4f
    iget v0, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    #@51
    if-eqz v0, :cond_59

    #@53
    const/4 v0, 0x4

    #@54
    iget v2, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    #@56
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@59
    :cond_59
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@5b
    if-eqz v0, :cond_72

    #@5d
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@5f
    array-length v0, v0

    #@60
    if-lez v0, :cond_72

    #@62
    :goto_62
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@64
    array-length v0, v0

    #@65
    if-ge v1, v0, :cond_72

    #@67
    const/4 v0, 0x5

    #@68
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@6a
    aget v2, v2, v1

    #@6c
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@6f
    add-int/lit8 v1, v1, 0x1

    #@71
    goto :goto_62

    #@72
    :cond_72
    iget v0, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    #@74
    if-eqz v0, :cond_7c

    #@76
    const/4 v0, 0x6

    #@77
    iget v1, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    #@79
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@7c
    :cond_7c
    iget v0, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    #@7e
    if-eqz v0, :cond_86

    #@80
    const/4 v0, 0x7

    #@81
    iget v1, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    #@83
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@86
    :cond_86
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/lz;)V

    #@89
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$h;->i(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$h;

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
    move-result v3

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@7
    if-eqz v0, :cond_2a

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@b
    array-length v0, v0

    #@c
    if-lez v0, :cond_2a

    #@e
    move v0, v1

    #@f
    move v2, v1

    #@10
    :goto_10
    iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@12
    array-length v4, v4

    #@13
    if-ge v0, v4, :cond_21

    #@15
    iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@17
    aget v4, v4, v0

    #@19
    invoke-static {v4}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@1c
    move-result v4

    #@1d
    add-int/2addr v2, v4

    #@1e
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_10

    #@21
    :cond_21
    add-int v0, v3, v2

    #@23
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@25
    array-length v2, v2

    #@26
    mul-int/lit8 v2, v2, 0x1

    #@28
    add-int v3, v0, v2

    #@2a
    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@2c
    if-eqz v0, :cond_b7

    #@2e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@30
    array-length v0, v0

    #@31
    if-lez v0, :cond_b7

    #@33
    move v0, v1

    #@34
    move v2, v1

    #@35
    :goto_35
    iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@37
    array-length v4, v4

    #@38
    if-ge v2, v4, :cond_46

    #@3a
    iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@3c
    aget v4, v4, v2

    #@3e
    invoke-static {v4}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@41
    move-result v4

    #@42
    add-int/2addr v0, v4

    #@43
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_35

    #@46
    :cond_46
    add-int/2addr v0, v3

    #@47
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@49
    array-length v2, v2

    #@4a
    mul-int/lit8 v2, v2, 0x1

    #@4c
    add-int/2addr v0, v2

    #@4d
    :goto_4d
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@4f
    if-eqz v2, :cond_70

    #@51
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@53
    array-length v2, v2

    #@54
    if-lez v2, :cond_70

    #@56
    move v2, v1

    #@57
    move v3, v1

    #@58
    :goto_58
    iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@5a
    array-length v4, v4

    #@5b
    if-ge v3, v4, :cond_69

    #@5d
    iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@5f
    aget v4, v4, v3

    #@61
    invoke-static {v4}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@64
    move-result v4

    #@65
    add-int/2addr v2, v4

    #@66
    add-int/lit8 v3, v3, 0x1

    #@68
    goto :goto_58

    #@69
    :cond_69
    add-int/2addr v0, v2

    #@6a
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@6c
    array-length v2, v2

    #@6d
    mul-int/lit8 v2, v2, 0x1

    #@6f
    add-int/2addr v0, v2

    #@70
    :cond_70
    iget v2, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    #@72
    if-eqz v2, :cond_7c

    #@74
    const/4 v2, 0x4

    #@75
    iget v3, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    #@77
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lz;->r(II)I

    #@7a
    move-result v2

    #@7b
    add-int/2addr v0, v2

    #@7c
    :cond_7c
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@7e
    if-eqz v2, :cond_9e

    #@80
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@82
    array-length v2, v2

    #@83
    if-lez v2, :cond_9e

    #@85
    move v2, v1

    #@86
    :goto_86
    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@88
    array-length v3, v3

    #@89
    if-ge v1, v3, :cond_97

    #@8b
    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@8d
    aget v3, v3, v1

    #@8f
    invoke-static {v3}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@92
    move-result v3

    #@93
    add-int/2addr v2, v3

    #@94
    add-int/lit8 v1, v1, 0x1

    #@96
    goto :goto_86

    #@97
    :cond_97
    add-int/2addr v0, v2

    #@98
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@9a
    array-length v1, v1

    #@9b
    mul-int/lit8 v1, v1, 0x1

    #@9d
    add-int/2addr v0, v1

    #@9e
    :cond_9e
    iget v1, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    #@a0
    if-eqz v1, :cond_aa

    #@a2
    const/4 v1, 0x6

    #@a3
    iget v2, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    #@a5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->r(II)I

    #@a8
    move-result v1

    #@a9
    add-int/2addr v0, v1

    #@aa
    :cond_aa
    iget v1, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    #@ac
    if-eqz v1, :cond_b6

    #@ae
    const/4 v1, 0x7

    #@af
    iget v2, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    #@b1
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lz;->r(II)I

    #@b4
    move-result v1

    #@b5
    add-int/2addr v0, v1

    #@b6
    :cond_b6
    return v0

    #@b7
    :cond_b7
    move v0, v3

    #@b8
    goto :goto_4d
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
    instance-of v2, p1, Lcom/google/android/gms/internal/c$h;

    #@7
    if-eqz v2, :cond_5d

    #@9
    check-cast p1, Lcom/google/android/gms/internal/c$h;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@d
    iget-object v3, p1, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([I[I)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_5d

    #@15
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@17
    iget-object v3, p1, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@19
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([I[I)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_5d

    #@1f
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@21
    iget-object v3, p1, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@23
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([I[I)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_5d

    #@29
    iget v2, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    #@2b
    iget v3, p1, Lcom/google/android/gms/internal/c$h;->fC:I

    #@2d
    if-ne v2, v3, :cond_5d

    #@2f
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@31
    iget-object v3, p1, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@33
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([I[I)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_5d

    #@39
    iget v2, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    #@3b
    iget v3, p1, Lcom/google/android/gms/internal/c$h;->fE:I

    #@3d
    if-ne v2, v3, :cond_5d

    #@3f
    iget v2, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    #@41
    iget v3, p1, Lcom/google/android/gms/internal/c$h;->fF:I

    #@43
    if-ne v2, v3, :cond_5d

    #@45
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->amX:Ljava/util/List;

    #@47
    if-eqz v2, :cond_51

    #@49
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->amX:Ljava/util/List;

    #@4b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_5f

    #@51
    :cond_51
    iget-object v2, p1, Lcom/google/android/gms/internal/c$h;->amX:Ljava/util/List;

    #@53
    if-eqz v2, :cond_4

    #@55
    iget-object v2, p1, Lcom/google/android/gms/internal/c$h;->amX:Ljava/util/List;

    #@57
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@5a
    move-result v2

    #@5b
    if-nez v2, :cond_4

    #@5d
    :cond_5d
    move v0, v1

    #@5e
    goto :goto_4

    #@5f
    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->amX:Ljava/util/List;

    #@61
    iget-object v1, p1, Lcom/google/android/gms/internal/c$h;->amX:Ljava/util/List;

    #@63
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v0

    #@67
    goto :goto_4
.end method

.method public hashCode()I
    .registers 9

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([I)I

    #@5
    move-result v1

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@8
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([I)I

    #@b
    move-result v2

    #@c
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@e
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([I)I

    #@11
    move-result v3

    #@12
    iget v4, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    #@14
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@16
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([I)I

    #@19
    move-result v5

    #@1a
    iget v6, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    #@1c
    iget v7, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    #@1e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->amX:Ljava/util/List;

    #@20
    if-eqz v0, :cond_2a

    #@22
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->amX:Ljava/util/List;

    #@24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_43

    #@2a
    :cond_2a
    const/4 v0, 0x0

    #@2b
    :goto_2b
    add-int/lit16 v1, v1, 0x20f

    #@2d
    mul-int/lit8 v1, v1, 0x1f

    #@2f
    add-int/2addr v1, v2

    #@30
    mul-int/lit8 v1, v1, 0x1f

    #@32
    add-int/2addr v1, v3

    #@33
    mul-int/lit8 v1, v1, 0x1f

    #@35
    add-int/2addr v1, v4

    #@36
    mul-int/lit8 v1, v1, 0x1f

    #@38
    add-int/2addr v1, v5

    #@39
    mul-int/lit8 v1, v1, 0x1f

    #@3b
    add-int/2addr v1, v6

    #@3c
    mul-int/lit8 v1, v1, 0x1f

    #@3e
    add-int/2addr v1, v7

    #@3f
    mul-int/lit8 v1, v1, 0x1f

    #@41
    add-int/2addr v0, v1

    #@42
    return v0

    #@43
    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->amX:Ljava/util/List;

    #@45
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    #@48
    move-result v0

    #@49
    goto :goto_2b
.end method

.method public i(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$h;
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
    sparse-switch v0, :sswitch_data_1fe

    #@8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$h;->a(Lcom/google/android/gms/internal/ly;I)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    :sswitch_e
    return-object p0

    #@f
    :sswitch_f
    const/16 v0, 0x8

    #@11
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@14
    move-result v2

    #@15
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@17
    if-nez v0, :cond_35

    #@19
    move v0, v1

    #@1a
    :goto_1a
    add-int/2addr v2, v0

    #@1b
    new-array v2, v2, [I

    #@1d
    if-eqz v0, :cond_24

    #@1f
    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@21
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    :cond_24
    :goto_24
    array-length v3, v2

    #@25
    add-int/lit8 v3, v3, -0x1

    #@27
    if-ge v0, v3, :cond_39

    #@29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@2c
    move-result v3

    #@2d
    aput v3, v2, v0

    #@2f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@32
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_24

    #@35
    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@37
    array-length v0, v0

    #@38
    goto :goto_1a

    #@39
    :cond_39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@3c
    move-result v3

    #@3d
    aput v3, v2, v0

    #@3f
    iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@41
    goto :goto_1

    #@42
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nI()I

    #@45
    move-result v0

    #@46
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->ex(I)I

    #@49
    move-result v3

    #@4a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@4d
    move-result v2

    #@4e
    move v0, v1

    #@4f
    :goto_4f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nN()I

    #@52
    move-result v4

    #@53
    if-lez v4, :cond_5b

    #@55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@58
    add-int/lit8 v0, v0, 0x1

    #@5a
    goto :goto_4f

    #@5b
    :cond_5b
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ly;->ez(I)V

    #@5e
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@60
    if-nez v2, :cond_79

    #@62
    move v2, v1

    #@63
    :goto_63
    add-int/2addr v0, v2

    #@64
    new-array v0, v0, [I

    #@66
    if-eqz v2, :cond_6d

    #@68
    iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@6a
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@6d
    :cond_6d
    :goto_6d
    array-length v4, v0

    #@6e
    if-ge v2, v4, :cond_7d

    #@70
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@73
    move-result v4

    #@74
    aput v4, v0, v2

    #@76
    add-int/lit8 v2, v2, 0x1

    #@78
    goto :goto_6d

    #@79
    :cond_79
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@7b
    array-length v2, v2

    #@7c
    goto :goto_63

    #@7d
    :cond_7d
    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@7f
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@82
    goto/16 :goto_1

    #@84
    :sswitch_84
    const/16 v0, 0x10

    #@86
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@89
    move-result v2

    #@8a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@8c
    if-nez v0, :cond_aa

    #@8e
    move v0, v1

    #@8f
    :goto_8f
    add-int/2addr v2, v0

    #@90
    new-array v2, v2, [I

    #@92
    if-eqz v0, :cond_99

    #@94
    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@96
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@99
    :cond_99
    :goto_99
    array-length v3, v2

    #@9a
    add-int/lit8 v3, v3, -0x1

    #@9c
    if-ge v0, v3, :cond_ae

    #@9e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@a1
    move-result v3

    #@a2
    aput v3, v2, v0

    #@a4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@a7
    add-int/lit8 v0, v0, 0x1

    #@a9
    goto :goto_99

    #@aa
    :cond_aa
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@ac
    array-length v0, v0

    #@ad
    goto :goto_8f

    #@ae
    :cond_ae
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@b1
    move-result v3

    #@b2
    aput v3, v2, v0

    #@b4
    iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@b6
    goto/16 :goto_1

    #@b8
    :sswitch_b8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nI()I

    #@bb
    move-result v0

    #@bc
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->ex(I)I

    #@bf
    move-result v3

    #@c0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@c3
    move-result v2

    #@c4
    move v0, v1

    #@c5
    :goto_c5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nN()I

    #@c8
    move-result v4

    #@c9
    if-lez v4, :cond_d1

    #@cb
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@ce
    add-int/lit8 v0, v0, 0x1

    #@d0
    goto :goto_c5

    #@d1
    :cond_d1
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ly;->ez(I)V

    #@d4
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@d6
    if-nez v2, :cond_ef

    #@d8
    move v2, v1

    #@d9
    :goto_d9
    add-int/2addr v0, v2

    #@da
    new-array v0, v0, [I

    #@dc
    if-eqz v2, :cond_e3

    #@de
    iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@e0
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@e3
    :cond_e3
    :goto_e3
    array-length v4, v0

    #@e4
    if-ge v2, v4, :cond_f3

    #@e6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@e9
    move-result v4

    #@ea
    aput v4, v0, v2

    #@ec
    add-int/lit8 v2, v2, 0x1

    #@ee
    goto :goto_e3

    #@ef
    :cond_ef
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@f1
    array-length v2, v2

    #@f2
    goto :goto_d9

    #@f3
    :cond_f3
    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@f5
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@f8
    goto/16 :goto_1

    #@fa
    :sswitch_fa
    const/16 v0, 0x18

    #@fc
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@ff
    move-result v2

    #@100
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@102
    if-nez v0, :cond_120

    #@104
    move v0, v1

    #@105
    :goto_105
    add-int/2addr v2, v0

    #@106
    new-array v2, v2, [I

    #@108
    if-eqz v0, :cond_10f

    #@10a
    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@10c
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10f
    :cond_10f
    :goto_10f
    array-length v3, v2

    #@110
    add-int/lit8 v3, v3, -0x1

    #@112
    if-ge v0, v3, :cond_124

    #@114
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@117
    move-result v3

    #@118
    aput v3, v2, v0

    #@11a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@11d
    add-int/lit8 v0, v0, 0x1

    #@11f
    goto :goto_10f

    #@120
    :cond_120
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@122
    array-length v0, v0

    #@123
    goto :goto_105

    #@124
    :cond_124
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@127
    move-result v3

    #@128
    aput v3, v2, v0

    #@12a
    iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@12c
    goto/16 :goto_1

    #@12e
    :sswitch_12e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nI()I

    #@131
    move-result v0

    #@132
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->ex(I)I

    #@135
    move-result v3

    #@136
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@139
    move-result v2

    #@13a
    move v0, v1

    #@13b
    :goto_13b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nN()I

    #@13e
    move-result v4

    #@13f
    if-lez v4, :cond_147

    #@141
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@144
    add-int/lit8 v0, v0, 0x1

    #@146
    goto :goto_13b

    #@147
    :cond_147
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ly;->ez(I)V

    #@14a
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@14c
    if-nez v2, :cond_165

    #@14e
    move v2, v1

    #@14f
    :goto_14f
    add-int/2addr v0, v2

    #@150
    new-array v0, v0, [I

    #@152
    if-eqz v2, :cond_159

    #@154
    iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@156
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@159
    :cond_159
    :goto_159
    array-length v4, v0

    #@15a
    if-ge v2, v4, :cond_169

    #@15c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@15f
    move-result v4

    #@160
    aput v4, v0, v2

    #@162
    add-int/lit8 v2, v2, 0x1

    #@164
    goto :goto_159

    #@165
    :cond_165
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@167
    array-length v2, v2

    #@168
    goto :goto_14f

    #@169
    :cond_169
    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@16b
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@16e
    goto/16 :goto_1

    #@170
    :sswitch_170
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@173
    move-result v0

    #@174
    iput v0, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    #@176
    goto/16 :goto_1

    #@178
    :sswitch_178
    const/16 v0, 0x28

    #@17a
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@17d
    move-result v2

    #@17e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@180
    if-nez v0, :cond_19e

    #@182
    move v0, v1

    #@183
    :goto_183
    add-int/2addr v2, v0

    #@184
    new-array v2, v2, [I

    #@186
    if-eqz v0, :cond_18d

    #@188
    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@18a
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@18d
    :cond_18d
    :goto_18d
    array-length v3, v2

    #@18e
    add-int/lit8 v3, v3, -0x1

    #@190
    if-ge v0, v3, :cond_1a2

    #@192
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@195
    move-result v3

    #@196
    aput v3, v2, v0

    #@198
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@19b
    add-int/lit8 v0, v0, 0x1

    #@19d
    goto :goto_18d

    #@19e
    :cond_19e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@1a0
    array-length v0, v0

    #@1a1
    goto :goto_183

    #@1a2
    :cond_1a2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@1a5
    move-result v3

    #@1a6
    aput v3, v2, v0

    #@1a8
    iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@1aa
    goto/16 :goto_1

    #@1ac
    :sswitch_1ac
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nI()I

    #@1af
    move-result v0

    #@1b0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->ex(I)I

    #@1b3
    move-result v3

    #@1b4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@1b7
    move-result v2

    #@1b8
    move v0, v1

    #@1b9
    :goto_1b9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nN()I

    #@1bc
    move-result v4

    #@1bd
    if-lez v4, :cond_1c5

    #@1bf
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@1c2
    add-int/lit8 v0, v0, 0x1

    #@1c4
    goto :goto_1b9

    #@1c5
    :cond_1c5
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ly;->ez(I)V

    #@1c8
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@1ca
    if-nez v2, :cond_1e3

    #@1cc
    move v2, v1

    #@1cd
    :goto_1cd
    add-int/2addr v0, v2

    #@1ce
    new-array v0, v0, [I

    #@1d0
    if-eqz v2, :cond_1d7

    #@1d2
    iget-object v4, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@1d4
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d7
    :cond_1d7
    :goto_1d7
    array-length v4, v0

    #@1d8
    if-ge v2, v4, :cond_1e7

    #@1da
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@1dd
    move-result v4

    #@1de
    aput v4, v0, v2

    #@1e0
    add-int/lit8 v2, v2, 0x1

    #@1e2
    goto :goto_1d7

    #@1e3
    :cond_1e3
    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@1e5
    array-length v2, v2

    #@1e6
    goto :goto_1cd

    #@1e7
    :cond_1e7
    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@1e9
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@1ec
    goto/16 :goto_1

    #@1ee
    :sswitch_1ee
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@1f1
    move-result v0

    #@1f2
    iput v0, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    #@1f4
    goto/16 :goto_1

    #@1f6
    :sswitch_1f6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@1f9
    move-result v0

    #@1fa
    iput v0, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    #@1fc
    goto/16 :goto_1

    #@1fe
    :sswitch_data_1fe
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0xa -> :sswitch_42
        0x10 -> :sswitch_84
        0x12 -> :sswitch_b8
        0x18 -> :sswitch_fa
        0x1a -> :sswitch_12e
        0x20 -> :sswitch_170
        0x28 -> :sswitch_178
        0x2a -> :sswitch_1ac
        0x30 -> :sswitch_1ee
        0x38 -> :sswitch_1f6
    .end sparse-switch
.end method

.method public n()Lcom/google/android/gms/internal/c$h;
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    sget-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@3
    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    #@5
    sget-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@7
    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    #@9
    sget-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@b
    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    #@d
    iput v1, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    #@f
    sget-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@11
    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    #@13
    iput v1, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    #@15
    iput v1, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    #@17
    const/4 v0, 0x0

    #@18
    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->amX:Ljava/util/List;

    #@1a
    const/4 v0, -0x1

    #@1b
    iput v0, p0, Lcom/google/android/gms/internal/c$h;->anb:I

    #@1d
    return-object p0
.end method
