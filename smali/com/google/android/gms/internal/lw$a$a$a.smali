.class public final Lcom/google/android/gms/internal/lw$a$a$a;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lw$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/internal/lw$a$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public amA:J

.field public amB:I

.field public amC:I

.field public amD:Z

.field public amE:[Lcom/google/android/gms/internal/lw$a;

.field public amF:[Lcom/google/android/gms/internal/lw$a$a;

.field public amG:[Ljava/lang/String;

.field public amH:[J

.field public amI:[F

.field public amJ:J

.field public amw:[B

.field public amx:Ljava/lang/String;

.field public amy:D

.field public amz:F


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lw$a$a$a;->nA()Lcom/google/android/gms/internal/lw$a$a$a;

    #@6
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/lz;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const-wide/16 v6, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amw:[B

    #@5
    sget-object v2, Lcom/google/android/gms/internal/mh;->ank:[B

    #@7
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_13

    #@d
    const/4 v0, 0x1

    #@e
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amw:[B

    #@10
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/lz;->a(I[B)V

    #@13
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amx:Ljava/lang/String;

    #@15
    const-string v2, ""

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_23

    #@1d
    const/4 v0, 0x2

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amx:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/lz;->b(ILjava/lang/String;)V

    #@23
    :cond_23
    iget-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amy:D

    #@25
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@28
    move-result-wide v2

    #@29
    const-wide/16 v4, 0x0

    #@2b
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@2e
    move-result-wide v4

    #@2f
    cmp-long v0, v2, v4

    #@31
    if-eqz v0, :cond_39

    #@33
    const/4 v0, 0x3

    #@34
    iget-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amy:D

    #@36
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/lz;->a(ID)V

    #@39
    :cond_39
    iget v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amz:F

    #@3b
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@3e
    move-result v0

    #@3f
    const/4 v2, 0x0

    #@40
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@43
    move-result v2

    #@44
    if-eq v0, v2, :cond_4c

    #@46
    const/4 v0, 0x4

    #@47
    iget v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amz:F

    #@49
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/lz;->b(IF)V

    #@4c
    :cond_4c
    iget-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amA:J

    #@4e
    cmp-long v0, v2, v6

    #@50
    if-eqz v0, :cond_58

    #@52
    const/4 v0, 0x5

    #@53
    iget-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amA:J

    #@55
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/lz;->b(IJ)V

    #@58
    :cond_58
    iget v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amB:I

    #@5a
    if-eqz v0, :cond_62

    #@5c
    const/4 v0, 0x6

    #@5d
    iget v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amB:I

    #@5f
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@62
    :cond_62
    iget v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amC:I

    #@64
    if-eqz v0, :cond_6c

    #@66
    const/4 v0, 0x7

    #@67
    iget v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amC:I

    #@69
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/lz;->q(II)V

    #@6c
    :cond_6c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amD:Z

    #@6e
    if-eqz v0, :cond_77

    #@70
    const/16 v0, 0x8

    #@72
    iget-boolean v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amD:Z

    #@74
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/lz;->a(IZ)V

    #@77
    :cond_77
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@79
    if-eqz v0, :cond_94

    #@7b
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@7d
    array-length v0, v0

    #@7e
    if-lez v0, :cond_94

    #@80
    move v0, v1

    #@81
    :goto_81
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@83
    array-length v2, v2

    #@84
    if-ge v0, v2, :cond_94

    #@86
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@88
    aget-object v2, v2, v0

    #@8a
    if-eqz v2, :cond_91

    #@8c
    const/16 v3, 0x9

    #@8e
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/lz;->a(ILcom/google/android/gms/internal/me;)V

    #@91
    :cond_91
    add-int/lit8 v0, v0, 0x1

    #@93
    goto :goto_81

    #@94
    :cond_94
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@96
    if-eqz v0, :cond_b1

    #@98
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@9a
    array-length v0, v0

    #@9b
    if-lez v0, :cond_b1

    #@9d
    move v0, v1

    #@9e
    :goto_9e
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@a0
    array-length v2, v2

    #@a1
    if-ge v0, v2, :cond_b1

    #@a3
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@a5
    aget-object v2, v2, v0

    #@a7
    if-eqz v2, :cond_ae

    #@a9
    const/16 v3, 0xa

    #@ab
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/lz;->a(ILcom/google/android/gms/internal/me;)V

    #@ae
    :cond_ae
    add-int/lit8 v0, v0, 0x1

    #@b0
    goto :goto_9e

    #@b1
    :cond_b1
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@b3
    if-eqz v0, :cond_ce

    #@b5
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@b7
    array-length v0, v0

    #@b8
    if-lez v0, :cond_ce

    #@ba
    move v0, v1

    #@bb
    :goto_bb
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@bd
    array-length v2, v2

    #@be
    if-ge v0, v2, :cond_ce

    #@c0
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@c2
    aget-object v2, v2, v0

    #@c4
    if-eqz v2, :cond_cb

    #@c6
    const/16 v3, 0xb

    #@c8
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/lz;->b(ILjava/lang/String;)V

    #@cb
    :cond_cb
    add-int/lit8 v0, v0, 0x1

    #@cd
    goto :goto_bb

    #@ce
    :cond_ce
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@d0
    if-eqz v0, :cond_e9

    #@d2
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@d4
    array-length v0, v0

    #@d5
    if-lez v0, :cond_e9

    #@d7
    move v0, v1

    #@d8
    :goto_d8
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@da
    array-length v2, v2

    #@db
    if-ge v0, v2, :cond_e9

    #@dd
    const/16 v2, 0xc

    #@df
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@e1
    aget-wide v4, v3, v0

    #@e3
    invoke-virtual {p1, v2, v4, v5}, Lcom/google/android/gms/internal/lz;->b(IJ)V

    #@e6
    add-int/lit8 v0, v0, 0x1

    #@e8
    goto :goto_d8

    #@e9
    :cond_e9
    iget-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amJ:J

    #@eb
    cmp-long v0, v2, v6

    #@ed
    if-eqz v0, :cond_f6

    #@ef
    const/16 v0, 0xd

    #@f1
    iget-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amJ:J

    #@f3
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/lz;->b(IJ)V

    #@f6
    :cond_f6
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@f8
    if-eqz v0, :cond_110

    #@fa
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@fc
    array-length v0, v0

    #@fd
    if-lez v0, :cond_110

    #@ff
    :goto_ff
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@101
    array-length v0, v0

    #@102
    if-ge v1, v0, :cond_110

    #@104
    const/16 v0, 0xe

    #@106
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@108
    aget v2, v2, v1

    #@10a
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/lz;->b(IF)V

    #@10d
    add-int/lit8 v1, v1, 0x1

    #@10f
    goto :goto_ff

    #@110
    :cond_110
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/lz;)V

    #@113
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lw$a$a$a;->t(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/lw$a$a$a;

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
    const/4 v1, 0x0

    #@3
    invoke-super {p0}, Lcom/google/android/gms/internal/ma;->c()I

    #@6
    move-result v0

    #@7
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amw:[B

    #@9
    sget-object v3, Lcom/google/android/gms/internal/mh;->ank:[B

    #@b
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_19

    #@11
    const/4 v2, 0x1

    #@12
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amw:[B

    #@14
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lz;->b(I[B)I

    #@17
    move-result v2

    #@18
    add-int/2addr v0, v2

    #@19
    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amx:Ljava/lang/String;

    #@1b
    const-string v3, ""

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_2b

    #@23
    const/4 v2, 0x2

    #@24
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amx:Ljava/lang/String;

    #@26
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lz;->h(ILjava/lang/String;)I

    #@29
    move-result v2

    #@2a
    add-int/2addr v0, v2

    #@2b
    :cond_2b
    iget-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amy:D

    #@2d
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@30
    move-result-wide v2

    #@31
    const-wide/16 v4, 0x0

    #@33
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@36
    move-result-wide v4

    #@37
    cmp-long v2, v2, v4

    #@39
    if-eqz v2, :cond_43

    #@3b
    const/4 v2, 0x3

    #@3c
    iget-wide v4, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amy:D

    #@3e
    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/lz;->b(ID)I

    #@41
    move-result v2

    #@42
    add-int/2addr v0, v2

    #@43
    :cond_43
    iget v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amz:F

    #@45
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@48
    move-result v2

    #@49
    const/4 v3, 0x0

    #@4a
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@4d
    move-result v3

    #@4e
    if-eq v2, v3, :cond_58

    #@50
    const/4 v2, 0x4

    #@51
    iget v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amz:F

    #@53
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lz;->c(IF)I

    #@56
    move-result v2

    #@57
    add-int/2addr v0, v2

    #@58
    :cond_58
    iget-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amA:J

    #@5a
    cmp-long v2, v2, v6

    #@5c
    if-eqz v2, :cond_66

    #@5e
    const/4 v2, 0x5

    #@5f
    iget-wide v4, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amA:J

    #@61
    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/lz;->d(IJ)I

    #@64
    move-result v2

    #@65
    add-int/2addr v0, v2

    #@66
    :cond_66
    iget v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amB:I

    #@68
    if-eqz v2, :cond_72

    #@6a
    const/4 v2, 0x6

    #@6b
    iget v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amB:I

    #@6d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lz;->r(II)I

    #@70
    move-result v2

    #@71
    add-int/2addr v0, v2

    #@72
    :cond_72
    iget v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amC:I

    #@74
    if-eqz v2, :cond_7e

    #@76
    const/4 v2, 0x7

    #@77
    iget v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amC:I

    #@79
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lz;->s(II)I

    #@7c
    move-result v2

    #@7d
    add-int/2addr v0, v2

    #@7e
    :cond_7e
    iget-boolean v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amD:Z

    #@80
    if-eqz v2, :cond_8b

    #@82
    const/16 v2, 0x8

    #@84
    iget-boolean v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amD:Z

    #@86
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lz;->b(IZ)I

    #@89
    move-result v2

    #@8a
    add-int/2addr v0, v2

    #@8b
    :cond_8b
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@8d
    if-eqz v2, :cond_ac

    #@8f
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@91
    array-length v2, v2

    #@92
    if-lez v2, :cond_ac

    #@94
    move v2, v0

    #@95
    move v0, v1

    #@96
    :goto_96
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@98
    array-length v3, v3

    #@99
    if-ge v0, v3, :cond_ab

    #@9b
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@9d
    aget-object v3, v3, v0

    #@9f
    if-eqz v3, :cond_a8

    #@a1
    const/16 v4, 0x9

    #@a3
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/lz;->b(ILcom/google/android/gms/internal/me;)I

    #@a6
    move-result v3

    #@a7
    add-int/2addr v2, v3

    #@a8
    :cond_a8
    add-int/lit8 v0, v0, 0x1

    #@aa
    goto :goto_96

    #@ab
    :cond_ab
    move v0, v2

    #@ac
    :cond_ac
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@ae
    if-eqz v2, :cond_cd

    #@b0
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@b2
    array-length v2, v2

    #@b3
    if-lez v2, :cond_cd

    #@b5
    move v2, v0

    #@b6
    move v0, v1

    #@b7
    :goto_b7
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@b9
    array-length v3, v3

    #@ba
    if-ge v0, v3, :cond_cc

    #@bc
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@be
    aget-object v3, v3, v0

    #@c0
    if-eqz v3, :cond_c9

    #@c2
    const/16 v4, 0xa

    #@c4
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/lz;->b(ILcom/google/android/gms/internal/me;)I

    #@c7
    move-result v3

    #@c8
    add-int/2addr v2, v3

    #@c9
    :cond_c9
    add-int/lit8 v0, v0, 0x1

    #@cb
    goto :goto_b7

    #@cc
    :cond_cc
    move v0, v2

    #@cd
    :cond_cd
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@cf
    if-eqz v2, :cond_f2

    #@d1
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@d3
    array-length v2, v2

    #@d4
    if-lez v2, :cond_f2

    #@d6
    move v2, v1

    #@d7
    move v3, v1

    #@d8
    move v4, v1

    #@d9
    :goto_d9
    iget-object v5, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@db
    array-length v5, v5

    #@dc
    if-ge v3, v5, :cond_ee

    #@de
    iget-object v5, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@e0
    aget-object v5, v5, v3

    #@e2
    if-eqz v5, :cond_eb

    #@e4
    add-int/lit8 v2, v2, 0x1

    #@e6
    invoke-static {v5}, Lcom/google/android/gms/internal/lz;->cz(Ljava/lang/String;)I

    #@e9
    move-result v5

    #@ea
    add-int/2addr v4, v5

    #@eb
    :cond_eb
    add-int/lit8 v3, v3, 0x1

    #@ed
    goto :goto_d9

    #@ee
    :cond_ee
    add-int/2addr v0, v4

    #@ef
    mul-int/lit8 v2, v2, 0x1

    #@f1
    add-int/2addr v0, v2

    #@f2
    :cond_f2
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@f4
    if-eqz v2, :cond_114

    #@f6
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@f8
    array-length v2, v2

    #@f9
    if-lez v2, :cond_114

    #@fb
    move v2, v1

    #@fc
    :goto_fc
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@fe
    array-length v3, v3

    #@ff
    if-ge v1, v3, :cond_10d

    #@101
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@103
    aget-wide v4, v3, v1

    #@105
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/lz;->D(J)I

    #@108
    move-result v3

    #@109
    add-int/2addr v2, v3

    #@10a
    add-int/lit8 v1, v1, 0x1

    #@10c
    goto :goto_fc

    #@10d
    :cond_10d
    add-int/2addr v0, v2

    #@10e
    iget-object v1, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@110
    array-length v1, v1

    #@111
    mul-int/lit8 v1, v1, 0x1

    #@113
    add-int/2addr v0, v1

    #@114
    :cond_114
    iget-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amJ:J

    #@116
    cmp-long v1, v2, v6

    #@118
    if-eqz v1, :cond_123

    #@11a
    const/16 v1, 0xd

    #@11c
    iget-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amJ:J

    #@11e
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/lz;->d(IJ)I

    #@121
    move-result v1

    #@122
    add-int/2addr v0, v1

    #@123
    :cond_123
    iget-object v1, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@125
    if-eqz v1, :cond_138

    #@127
    iget-object v1, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@129
    array-length v1, v1

    #@12a
    if-lez v1, :cond_138

    #@12c
    iget-object v1, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@12e
    array-length v1, v1

    #@12f
    mul-int/lit8 v1, v1, 0x4

    #@131
    add-int/2addr v0, v1

    #@132
    iget-object v1, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@134
    array-length v1, v1

    #@135
    mul-int/lit8 v1, v1, 0x1

    #@137
    add-int/2addr v0, v1

    #@138
    :cond_138
    return v0
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
    instance-of v2, p1, Lcom/google/android/gms/internal/lw$a$a$a;

    #@7
    if-eqz v2, :cond_a7

    #@9
    check-cast p1, Lcom/google/android/gms/internal/lw$a$a$a;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amw:[B

    #@d
    iget-object v3, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amw:[B

    #@f
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_a7

    #@15
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amx:Ljava/lang/String;

    #@17
    if-nez v2, :cond_aa

    #@19
    iget-object v2, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amx:Ljava/lang/String;

    #@1b
    if-nez v2, :cond_a7

    #@1d
    :cond_1d
    iget-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amy:D

    #@1f
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@22
    move-result-wide v2

    #@23
    iget-wide v4, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amy:D

    #@25
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@28
    move-result-wide v4

    #@29
    cmp-long v2, v2, v4

    #@2b
    if-nez v2, :cond_a7

    #@2d
    iget v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amz:F

    #@2f
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@32
    move-result v2

    #@33
    iget v3, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amz:F

    #@35
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@38
    move-result v3

    #@39
    if-ne v2, v3, :cond_a7

    #@3b
    iget-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amA:J

    #@3d
    iget-wide v4, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amA:J

    #@3f
    cmp-long v2, v2, v4

    #@41
    if-nez v2, :cond_a7

    #@43
    iget v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amB:I

    #@45
    iget v3, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amB:I

    #@47
    if-ne v2, v3, :cond_a7

    #@49
    iget v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amC:I

    #@4b
    iget v3, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amC:I

    #@4d
    if-ne v2, v3, :cond_a7

    #@4f
    iget-boolean v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amD:Z

    #@51
    iget-boolean v3, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amD:Z

    #@53
    if-ne v2, v3, :cond_a7

    #@55
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@57
    iget-object v3, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@59
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_a7

    #@5f
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@61
    iget-object v3, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@63
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@66
    move-result v2

    #@67
    if-eqz v2, :cond_a7

    #@69
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@6b
    iget-object v3, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@6d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@70
    move-result v2

    #@71
    if-eqz v2, :cond_a7

    #@73
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@75
    iget-object v3, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@77
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([J[J)Z

    #@7a
    move-result v2

    #@7b
    if-eqz v2, :cond_a7

    #@7d
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@7f
    iget-object v3, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@81
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([F[F)Z

    #@84
    move-result v2

    #@85
    if-eqz v2, :cond_a7

    #@87
    iget-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amJ:J

    #@89
    iget-wide v4, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amJ:J

    #@8b
    cmp-long v2, v2, v4

    #@8d
    if-nez v2, :cond_a7

    #@8f
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amX:Ljava/util/List;

    #@91
    if-eqz v2, :cond_9b

    #@93
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amX:Ljava/util/List;

    #@95
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@98
    move-result v2

    #@99
    if-eqz v2, :cond_b7

    #@9b
    :cond_9b
    iget-object v2, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amX:Ljava/util/List;

    #@9d
    if-eqz v2, :cond_4

    #@9f
    iget-object v2, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amX:Ljava/util/List;

    #@a1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@a4
    move-result v2

    #@a5
    if-nez v2, :cond_4

    #@a7
    :cond_a7
    move v0, v1

    #@a8
    goto/16 :goto_4

    #@aa
    :cond_aa
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amx:Ljava/lang/String;

    #@ac
    iget-object v3, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amx:Ljava/lang/String;

    #@ae
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v2

    #@b2
    if-nez v2, :cond_1d

    #@b4
    move v0, v1

    #@b5
    goto/16 :goto_4

    #@b7
    :cond_b7
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amX:Ljava/util/List;

    #@b9
    iget-object v1, p1, Lcom/google/android/gms/internal/lw$a$a$a;->amX:Ljava/util/List;

    #@bb
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@be
    move-result v0

    #@bf
    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 22

    #@0
    const/4 v4, 0x0

    #@1
    move-object/from16 v0, p0

    #@3
    iget-object v2, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amw:[B

    #@5
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    #@8
    move-result v5

    #@9
    move-object/from16 v0, p0

    #@b
    iget-object v2, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amx:Ljava/lang/String;

    #@d
    if-nez v2, :cond_c4

    #@f
    const/4 v2, 0x0

    #@10
    :goto_10
    move-object/from16 v0, p0

    #@12
    iget-wide v6, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amy:D

    #@14
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@17
    move-result-wide v6

    #@18
    const/16 v3, 0x20

    #@1a
    ushr-long v8, v6, v3

    #@1c
    xor-long/2addr v6, v8

    #@1d
    long-to-int v6, v6

    #@1e
    move-object/from16 v0, p0

    #@20
    iget v3, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amz:F

    #@22
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@25
    move-result v7

    #@26
    move-object/from16 v0, p0

    #@28
    iget-wide v8, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amA:J

    #@2a
    move-object/from16 v0, p0

    #@2c
    iget-wide v10, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amA:J

    #@2e
    const/16 v3, 0x20

    #@30
    ushr-long/2addr v10, v3

    #@31
    xor-long/2addr v8, v10

    #@32
    long-to-int v8, v8

    #@33
    move-object/from16 v0, p0

    #@35
    iget v9, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amB:I

    #@37
    move-object/from16 v0, p0

    #@39
    iget v10, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amC:I

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-boolean v3, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amD:Z

    #@3f
    if-eqz v3, :cond_ce

    #@41
    const/16 v3, 0x4cf

    #@43
    :goto_43
    move-object/from16 v0, p0

    #@45
    iget-object v11, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@47
    invoke-static {v11}, Lcom/google/android/gms/internal/mc;->hashCode([Ljava/lang/Object;)I

    #@4a
    move-result v11

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget-object v12, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@4f
    invoke-static {v12}, Lcom/google/android/gms/internal/mc;->hashCode([Ljava/lang/Object;)I

    #@52
    move-result v12

    #@53
    move-object/from16 v0, p0

    #@55
    iget-object v13, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@57
    invoke-static {v13}, Lcom/google/android/gms/internal/mc;->hashCode([Ljava/lang/Object;)I

    #@5a
    move-result v13

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget-object v14, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@5f
    invoke-static {v14}, Lcom/google/android/gms/internal/mc;->hashCode([J)I

    #@62
    move-result v14

    #@63
    move-object/from16 v0, p0

    #@65
    iget-object v15, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@67
    invoke-static {v15}, Lcom/google/android/gms/internal/mc;->hashCode([F)I

    #@6a
    move-result v15

    #@6b
    move-object/from16 v0, p0

    #@6d
    iget-wide v0, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amJ:J

    #@6f
    move-wide/from16 v16, v0

    #@71
    move-object/from16 v0, p0

    #@73
    iget-wide v0, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amJ:J

    #@75
    move-wide/from16 v18, v0

    #@77
    const/16 v20, 0x20

    #@79
    ushr-long v18, v18, v20

    #@7b
    xor-long v16, v16, v18

    #@7d
    move-wide/from16 v0, v16

    #@7f
    long-to-int v0, v0

    #@80
    move/from16 v16, v0

    #@82
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amX:Ljava/util/List;

    #@86
    move-object/from16 v17, v0

    #@88
    if-eqz v17, :cond_96

    #@8a
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amX:Ljava/util/List;

    #@8e
    move-object/from16 v17, v0

    #@90
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    #@93
    move-result v17

    #@94
    if-eqz v17, :cond_d2

    #@96
    :cond_96
    :goto_96
    add-int/lit16 v5, v5, 0x20f

    #@98
    mul-int/lit8 v5, v5, 0x1f

    #@9a
    add-int/2addr v2, v5

    #@9b
    mul-int/lit8 v2, v2, 0x1f

    #@9d
    add-int/2addr v2, v6

    #@9e
    mul-int/lit8 v2, v2, 0x1f

    #@a0
    add-int/2addr v2, v7

    #@a1
    mul-int/lit8 v2, v2, 0x1f

    #@a3
    add-int/2addr v2, v8

    #@a4
    mul-int/lit8 v2, v2, 0x1f

    #@a6
    add-int/2addr v2, v9

    #@a7
    mul-int/lit8 v2, v2, 0x1f

    #@a9
    add-int/2addr v2, v10

    #@aa
    mul-int/lit8 v2, v2, 0x1f

    #@ac
    add-int/2addr v2, v3

    #@ad
    mul-int/lit8 v2, v2, 0x1f

    #@af
    add-int/2addr v2, v11

    #@b0
    mul-int/lit8 v2, v2, 0x1f

    #@b2
    add-int/2addr v2, v12

    #@b3
    mul-int/lit8 v2, v2, 0x1f

    #@b5
    add-int/2addr v2, v13

    #@b6
    mul-int/lit8 v2, v2, 0x1f

    #@b8
    add-int/2addr v2, v14

    #@b9
    mul-int/lit8 v2, v2, 0x1f

    #@bb
    add-int/2addr v2, v15

    #@bc
    mul-int/lit8 v2, v2, 0x1f

    #@be
    add-int v2, v2, v16

    #@c0
    mul-int/lit8 v2, v2, 0x1f

    #@c2
    add-int/2addr v2, v4

    #@c3
    return v2

    #@c4
    :cond_c4
    move-object/from16 v0, p0

    #@c6
    iget-object v2, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amx:Ljava/lang/String;

    #@c8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@cb
    move-result v2

    #@cc
    goto/16 :goto_10

    #@ce
    :cond_ce
    const/16 v3, 0x4d5

    #@d0
    goto/16 :goto_43

    #@d2
    :cond_d2
    move-object/from16 v0, p0

    #@d4
    iget-object v4, v0, Lcom/google/android/gms/internal/lw$a$a$a;->amX:Ljava/util/List;

    #@d6
    invoke-interface {v4}, Ljava/util/List;->hashCode()I

    #@d9
    move-result v4

    #@da
    goto :goto_96
.end method

.method public nA()Lcom/google/android/gms/internal/lw$a$a$a;
    .registers 7

    #@0
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    sget-object v0, Lcom/google/android/gms/internal/mh;->ank:[B

    #@5
    iput-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amw:[B

    #@7
    const-string v0, ""

    #@9
    iput-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amx:Ljava/lang/String;

    #@b
    const-wide/16 v0, 0x0

    #@d
    iput-wide v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amy:D

    #@f
    const/4 v0, 0x0

    #@10
    iput v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amz:F

    #@12
    iput-wide v4, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amA:J

    #@14
    iput v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amB:I

    #@16
    iput v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amC:I

    #@18
    iput-boolean v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amD:Z

    #@1a
    invoke-static {}, Lcom/google/android/gms/internal/lw$a;->nw()[Lcom/google/android/gms/internal/lw$a;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@20
    invoke-static {}, Lcom/google/android/gms/internal/lw$a$a;->ny()[Lcom/google/android/gms/internal/lw$a$a;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@26
    sget-object v0, Lcom/google/android/gms/internal/mh;->ani:[Ljava/lang/String;

    #@28
    iput-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@2a
    sget-object v0, Lcom/google/android/gms/internal/mh;->ane:[J

    #@2c
    iput-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@2e
    sget-object v0, Lcom/google/android/gms/internal/mh;->anf:[F

    #@30
    iput-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@32
    iput-wide v4, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amJ:J

    #@34
    const/4 v0, 0x0

    #@35
    iput-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amX:Ljava/util/List;

    #@37
    const/4 v0, -0x1

    #@38
    iput v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->anb:I

    #@3a
    return-object p0
.end method

.method public t(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/lw$a$a$a;
    .registers 8
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
    sparse-switch v0, :sswitch_data_1de

    #@8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lw$a$a$a;->a(Lcom/google/android/gms/internal/ly;I)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    :sswitch_e
    return-object p0

    #@f
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->readBytes()[B

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amw:[B

    #@15
    goto :goto_1

    #@16
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->readString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amx:Ljava/lang/String;

    #@1c
    goto :goto_1

    #@1d
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->readDouble()D

    #@20
    move-result-wide v2

    #@21
    iput-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amy:D

    #@23
    goto :goto_1

    #@24
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->readFloat()F

    #@27
    move-result v0

    #@28
    iput v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amz:F

    #@2a
    goto :goto_1

    #@2b
    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nD()J

    #@2e
    move-result-wide v2

    #@2f
    iput-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amA:J

    #@31
    goto :goto_1

    #@32
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@35
    move-result v0

    #@36
    iput v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amB:I

    #@38
    goto :goto_1

    #@39
    :sswitch_39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nG()I

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amC:I

    #@3f
    goto :goto_1

    #@40
    :sswitch_40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nF()Z

    #@43
    move-result v0

    #@44
    iput-boolean v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amD:Z

    #@46
    goto :goto_1

    #@47
    :sswitch_47
    const/16 v0, 0x4a

    #@49
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@4c
    move-result v2

    #@4d
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@4f
    if-nez v0, :cond_73

    #@51
    move v0, v1

    #@52
    :goto_52
    add-int/2addr v2, v0

    #@53
    new-array v2, v2, [Lcom/google/android/gms/internal/lw$a;

    #@55
    if-eqz v0, :cond_5c

    #@57
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@59
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5c
    :cond_5c
    :goto_5c
    array-length v3, v2

    #@5d
    add-int/lit8 v3, v3, -0x1

    #@5f
    if-ge v0, v3, :cond_77

    #@61
    new-instance v3, Lcom/google/android/gms/internal/lw$a;

    #@63
    invoke-direct {v3}, Lcom/google/android/gms/internal/lw$a;-><init>()V

    #@66
    aput-object v3, v2, v0

    #@68
    aget-object v3, v2, v0

    #@6a
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@6d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@70
    add-int/lit8 v0, v0, 0x1

    #@72
    goto :goto_5c

    #@73
    :cond_73
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@75
    array-length v0, v0

    #@76
    goto :goto_52

    #@77
    :cond_77
    new-instance v3, Lcom/google/android/gms/internal/lw$a;

    #@79
    invoke-direct {v3}, Lcom/google/android/gms/internal/lw$a;-><init>()V

    #@7c
    aput-object v3, v2, v0

    #@7e
    aget-object v0, v2, v0

    #@80
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@83
    iput-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amE:[Lcom/google/android/gms/internal/lw$a;

    #@85
    goto/16 :goto_1

    #@87
    :sswitch_87
    const/16 v0, 0x52

    #@89
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@8c
    move-result v2

    #@8d
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@8f
    if-nez v0, :cond_b3

    #@91
    move v0, v1

    #@92
    :goto_92
    add-int/2addr v2, v0

    #@93
    new-array v2, v2, [Lcom/google/android/gms/internal/lw$a$a;

    #@95
    if-eqz v0, :cond_9c

    #@97
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@99
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@9c
    :cond_9c
    :goto_9c
    array-length v3, v2

    #@9d
    add-int/lit8 v3, v3, -0x1

    #@9f
    if-ge v0, v3, :cond_b7

    #@a1
    new-instance v3, Lcom/google/android/gms/internal/lw$a$a;

    #@a3
    invoke-direct {v3}, Lcom/google/android/gms/internal/lw$a$a;-><init>()V

    #@a6
    aput-object v3, v2, v0

    #@a8
    aget-object v3, v2, v0

    #@aa
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@ad
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@b0
    add-int/lit8 v0, v0, 0x1

    #@b2
    goto :goto_9c

    #@b3
    :cond_b3
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@b5
    array-length v0, v0

    #@b6
    goto :goto_92

    #@b7
    :cond_b7
    new-instance v3, Lcom/google/android/gms/internal/lw$a$a;

    #@b9
    invoke-direct {v3}, Lcom/google/android/gms/internal/lw$a$a;-><init>()V

    #@bc
    aput-object v3, v2, v0

    #@be
    aget-object v0, v2, v0

    #@c0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V

    #@c3
    iput-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amF:[Lcom/google/android/gms/internal/lw$a$a;

    #@c5
    goto/16 :goto_1

    #@c7
    :sswitch_c7
    const/16 v0, 0x5a

    #@c9
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@cc
    move-result v2

    #@cd
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@cf
    if-nez v0, :cond_ed

    #@d1
    move v0, v1

    #@d2
    :goto_d2
    add-int/2addr v2, v0

    #@d3
    new-array v2, v2, [Ljava/lang/String;

    #@d5
    if-eqz v0, :cond_dc

    #@d7
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@d9
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@dc
    :cond_dc
    :goto_dc
    array-length v3, v2

    #@dd
    add-int/lit8 v3, v3, -0x1

    #@df
    if-ge v0, v3, :cond_f1

    #@e1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->readString()Ljava/lang/String;

    #@e4
    move-result-object v3

    #@e5
    aput-object v3, v2, v0

    #@e7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@ea
    add-int/lit8 v0, v0, 0x1

    #@ec
    goto :goto_dc

    #@ed
    :cond_ed
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@ef
    array-length v0, v0

    #@f0
    goto :goto_d2

    #@f1
    :cond_f1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->readString()Ljava/lang/String;

    #@f4
    move-result-object v3

    #@f5
    aput-object v3, v2, v0

    #@f7
    iput-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amG:[Ljava/lang/String;

    #@f9
    goto/16 :goto_1

    #@fb
    :sswitch_fb
    const/16 v0, 0x60

    #@fd
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@100
    move-result v2

    #@101
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@103
    if-nez v0, :cond_121

    #@105
    move v0, v1

    #@106
    :goto_106
    add-int/2addr v2, v0

    #@107
    new-array v2, v2, [J

    #@109
    if-eqz v0, :cond_110

    #@10b
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@10d
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@110
    :cond_110
    :goto_110
    array-length v3, v2

    #@111
    add-int/lit8 v3, v3, -0x1

    #@113
    if-ge v0, v3, :cond_125

    #@115
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nD()J

    #@118
    move-result-wide v4

    #@119
    aput-wide v4, v2, v0

    #@11b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@11e
    add-int/lit8 v0, v0, 0x1

    #@120
    goto :goto_110

    #@121
    :cond_121
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@123
    array-length v0, v0

    #@124
    goto :goto_106

    #@125
    :cond_125
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nD()J

    #@128
    move-result-wide v4

    #@129
    aput-wide v4, v2, v0

    #@12b
    iput-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@12d
    goto/16 :goto_1

    #@12f
    :sswitch_12f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nI()I

    #@132
    move-result v0

    #@133
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->ex(I)I

    #@136
    move-result v3

    #@137
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@13a
    move-result v2

    #@13b
    move v0, v1

    #@13c
    :goto_13c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nN()I

    #@13f
    move-result v4

    #@140
    if-lez v4, :cond_148

    #@142
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nD()J

    #@145
    add-int/lit8 v0, v0, 0x1

    #@147
    goto :goto_13c

    #@148
    :cond_148
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ly;->ez(I)V

    #@14b
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@14d
    if-nez v2, :cond_166

    #@14f
    move v2, v1

    #@150
    :goto_150
    add-int/2addr v0, v2

    #@151
    new-array v0, v0, [J

    #@153
    if-eqz v2, :cond_15a

    #@155
    iget-object v4, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@157
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15a
    :cond_15a
    :goto_15a
    array-length v4, v0

    #@15b
    if-ge v2, v4, :cond_16a

    #@15d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nD()J

    #@160
    move-result-wide v4

    #@161
    aput-wide v4, v0, v2

    #@163
    add-int/lit8 v2, v2, 0x1

    #@165
    goto :goto_15a

    #@166
    :cond_166
    iget-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@168
    array-length v2, v2

    #@169
    goto :goto_150

    #@16a
    :cond_16a
    iput-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amH:[J

    #@16c
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@16f
    goto/16 :goto_1

    #@171
    :sswitch_171
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nD()J

    #@174
    move-result-wide v2

    #@175
    iput-wide v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amJ:J

    #@177
    goto/16 :goto_1

    #@179
    :sswitch_179
    const/16 v0, 0x75

    #@17b
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@17e
    move-result v2

    #@17f
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@181
    if-nez v0, :cond_19f

    #@183
    move v0, v1

    #@184
    :goto_184
    add-int/2addr v2, v0

    #@185
    new-array v2, v2, [F

    #@187
    if-eqz v0, :cond_18e

    #@189
    iget-object v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@18b
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@18e
    :cond_18e
    :goto_18e
    array-length v3, v2

    #@18f
    add-int/lit8 v3, v3, -0x1

    #@191
    if-ge v0, v3, :cond_1a3

    #@193
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->readFloat()F

    #@196
    move-result v3

    #@197
    aput v3, v2, v0

    #@199
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@19c
    add-int/lit8 v0, v0, 0x1

    #@19e
    goto :goto_18e

    #@19f
    :cond_19f
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@1a1
    array-length v0, v0

    #@1a2
    goto :goto_184

    #@1a3
    :cond_1a3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->readFloat()F

    #@1a6
    move-result v3

    #@1a7
    aput v3, v2, v0

    #@1a9
    iput-object v2, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@1ab
    goto/16 :goto_1

    #@1ad
    :sswitch_1ad
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nI()I

    #@1b0
    move-result v0

    #@1b1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->ex(I)I

    #@1b4
    move-result v2

    #@1b5
    div-int/lit8 v3, v0, 0x4

    #@1b7
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@1b9
    if-nez v0, :cond_1d2

    #@1bb
    move v0, v1

    #@1bc
    :goto_1bc
    add-int/2addr v3, v0

    #@1bd
    new-array v3, v3, [F

    #@1bf
    if-eqz v0, :cond_1c6

    #@1c1
    iget-object v4, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@1c3
    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1c6
    :cond_1c6
    :goto_1c6
    array-length v4, v3

    #@1c7
    if-ge v0, v4, :cond_1d6

    #@1c9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->readFloat()F

    #@1cc
    move-result v4

    #@1cd
    aput v4, v3, v0

    #@1cf
    add-int/lit8 v0, v0, 0x1

    #@1d1
    goto :goto_1c6

    #@1d2
    :cond_1d2
    iget-object v0, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@1d4
    array-length v0, v0

    #@1d5
    goto :goto_1bc

    #@1d6
    :cond_1d6
    iput-object v3, p0, Lcom/google/android/gms/internal/lw$a$a$a;->amI:[F

    #@1d8
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@1db
    goto/16 :goto_1

    #@1dd
    nop

    #@1de
    :sswitch_data_1de
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_16
        0x19 -> :sswitch_1d
        0x25 -> :sswitch_24
        0x28 -> :sswitch_2b
        0x30 -> :sswitch_32
        0x38 -> :sswitch_39
        0x40 -> :sswitch_40
        0x4a -> :sswitch_47
        0x52 -> :sswitch_87
        0x5a -> :sswitch_c7
        0x60 -> :sswitch_fb
        0x62 -> :sswitch_12f
        0x68 -> :sswitch_171
        0x72 -> :sswitch_1ad
        0x75 -> :sswitch_179
    .end sparse-switch
.end method
