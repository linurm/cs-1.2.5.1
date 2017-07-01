.class public final Lcom/google/android/gms/internal/c$g;
.super Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ma",
        "<",
        "Lcom/google/android/gms/internal/c$g;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile fm:[Lcom/google/android/gms/internal/c$g;


# instance fields
.field public fn:[I

.field public fo:[I

.field public fp:[I

.field public fq:[I

.field public fr:[I

.field public fs:[I

.field public ft:[I

.field public fu:[I

.field public fv:[I

.field public fw:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ma;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$g;->m()Lcom/google/android/gms/internal/c$g;

    #@6
    return-void
.end method

.method public static l()[Lcom/google/android/gms/internal/c$g;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/c$g;->fm:[Lcom/google/android/gms/internal/c$g;

    #@2
    if-nez v0, :cond_11

    #@4
    sget-object v1, Lcom/google/android/gms/internal/mc;->ana:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/c$g;->fm:[Lcom/google/android/gms/internal/c$g;

    #@9
    if-nez v0, :cond_10

    #@b
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/google/android/gms/internal/c$g;

    #@e
    sput-object v0, Lcom/google/android/gms/internal/c$g;->fm:[Lcom/google/android/gms/internal/c$g;

    #@10
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    #@11
    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/c$g;->fm:[Lcom/google/android/gms/internal/c$g;

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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    #@3
    if-eqz v0, :cond_1b

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    #@7
    array-length v0, v0

    #@8
    if-lez v0, :cond_1b

    #@a
    move v0, v1

    #@b
    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    #@d
    array-length v2, v2

    #@e
    if-ge v0, v2, :cond_1b

    #@10
    const/4 v2, 0x1

    #@11
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    #@1d
    if-eqz v0, :cond_35

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    #@21
    array-length v0, v0

    #@22
    if-lez v0, :cond_35

    #@24
    move v0, v1

    #@25
    :goto_25
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    #@27
    array-length v2, v2

    #@28
    if-ge v0, v2, :cond_35

    #@2a
    const/4 v2, 0x2

    #@2b
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    #@37
    if-eqz v0, :cond_4f

    #@39
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    #@3b
    array-length v0, v0

    #@3c
    if-lez v0, :cond_4f

    #@3e
    move v0, v1

    #@3f
    :goto_3f
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    #@41
    array-length v2, v2

    #@42
    if-ge v0, v2, :cond_4f

    #@44
    const/4 v2, 0x3

    #@45
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@51
    if-eqz v0, :cond_69

    #@53
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@55
    array-length v0, v0

    #@56
    if-lez v0, :cond_69

    #@58
    move v0, v1

    #@59
    :goto_59
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@5b
    array-length v2, v2

    #@5c
    if-ge v0, v2, :cond_69

    #@5e
    const/4 v2, 0x4

    #@5f
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@61
    aget v3, v3, v0

    #@63
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@66
    add-int/lit8 v0, v0, 0x1

    #@68
    goto :goto_59

    #@69
    :cond_69
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@6b
    if-eqz v0, :cond_83

    #@6d
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@6f
    array-length v0, v0

    #@70
    if-lez v0, :cond_83

    #@72
    move v0, v1

    #@73
    :goto_73
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@75
    array-length v2, v2

    #@76
    if-ge v0, v2, :cond_83

    #@78
    const/4 v2, 0x5

    #@79
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@7b
    aget v3, v3, v0

    #@7d
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@80
    add-int/lit8 v0, v0, 0x1

    #@82
    goto :goto_73

    #@83
    :cond_83
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@85
    if-eqz v0, :cond_9d

    #@87
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@89
    array-length v0, v0

    #@8a
    if-lez v0, :cond_9d

    #@8c
    move v0, v1

    #@8d
    :goto_8d
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@8f
    array-length v2, v2

    #@90
    if-ge v0, v2, :cond_9d

    #@92
    const/4 v2, 0x6

    #@93
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@95
    aget v3, v3, v0

    #@97
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@9a
    add-int/lit8 v0, v0, 0x1

    #@9c
    goto :goto_8d

    #@9d
    :cond_9d
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@9f
    if-eqz v0, :cond_b7

    #@a1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@a3
    array-length v0, v0

    #@a4
    if-lez v0, :cond_b7

    #@a6
    move v0, v1

    #@a7
    :goto_a7
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@a9
    array-length v2, v2

    #@aa
    if-ge v0, v2, :cond_b7

    #@ac
    const/4 v2, 0x7

    #@ad
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@af
    aget v3, v3, v0

    #@b1
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@b4
    add-int/lit8 v0, v0, 0x1

    #@b6
    goto :goto_a7

    #@b7
    :cond_b7
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@b9
    if-eqz v0, :cond_d2

    #@bb
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@bd
    array-length v0, v0

    #@be
    if-lez v0, :cond_d2

    #@c0
    move v0, v1

    #@c1
    :goto_c1
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@c3
    array-length v2, v2

    #@c4
    if-ge v0, v2, :cond_d2

    #@c6
    const/16 v2, 0x8

    #@c8
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@ca
    aget v3, v3, v0

    #@cc
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@cf
    add-int/lit8 v0, v0, 0x1

    #@d1
    goto :goto_c1

    #@d2
    :cond_d2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@d4
    if-eqz v0, :cond_ed

    #@d6
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@d8
    array-length v0, v0

    #@d9
    if-lez v0, :cond_ed

    #@db
    move v0, v1

    #@dc
    :goto_dc
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@de
    array-length v2, v2

    #@df
    if-ge v0, v2, :cond_ed

    #@e1
    const/16 v2, 0x9

    #@e3
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@e5
    aget v3, v3, v0

    #@e7
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@ea
    add-int/lit8 v0, v0, 0x1

    #@ec
    goto :goto_dc

    #@ed
    :cond_ed
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@ef
    if-eqz v0, :cond_107

    #@f1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@f3
    array-length v0, v0

    #@f4
    if-lez v0, :cond_107

    #@f6
    :goto_f6
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@f8
    array-length v0, v0

    #@f9
    if-ge v1, v0, :cond_107

    #@fb
    const/16 v0, 0xa

    #@fd
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@ff
    aget v2, v2, v1

    #@101
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/lz;->p(II)V

    #@104
    add-int/lit8 v1, v1, 0x1

    #@106
    goto :goto_f6

    #@107
    :cond_107
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/lz;)V

    #@10a
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$g;->h(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$g;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    #@7
    if-eqz v0, :cond_29

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    #@b
    array-length v0, v0

    #@c
    if-lez v0, :cond_29

    #@e
    move v0, v1

    #@f
    move v2, v1

    #@10
    :goto_10
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    #@12
    array-length v4, v4

    #@13
    if-ge v2, v4, :cond_21

    #@15
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    #@17
    aget v4, v4, v2

    #@19
    invoke-static {v4}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@1c
    move-result v4

    #@1d
    add-int/2addr v0, v4

    #@1e
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_10

    #@21
    :cond_21
    add-int/2addr v0, v3

    #@22
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    #@24
    array-length v2, v2

    #@25
    mul-int/lit8 v2, v2, 0x1

    #@27
    add-int v3, v0, v2

    #@29
    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    #@2b
    if-eqz v0, :cond_164

    #@2d
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    #@2f
    array-length v0, v0

    #@30
    if-lez v0, :cond_164

    #@32
    move v0, v1

    #@33
    move v2, v1

    #@34
    :goto_34
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    #@36
    array-length v4, v4

    #@37
    if-ge v2, v4, :cond_45

    #@39
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    #@3b
    aget v4, v4, v2

    #@3d
    invoke-static {v4}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@40
    move-result v4

    #@41
    add-int/2addr v0, v4

    #@42
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_34

    #@45
    :cond_45
    add-int/2addr v0, v3

    #@46
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    #@48
    array-length v2, v2

    #@49
    mul-int/lit8 v2, v2, 0x1

    #@4b
    add-int/2addr v0, v2

    #@4c
    :goto_4c
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    #@4e
    if-eqz v2, :cond_6f

    #@50
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    #@52
    array-length v2, v2

    #@53
    if-lez v2, :cond_6f

    #@55
    move v2, v1

    #@56
    move v3, v1

    #@57
    :goto_57
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    #@59
    array-length v4, v4

    #@5a
    if-ge v3, v4, :cond_68

    #@5c
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    #@5e
    aget v4, v4, v3

    #@60
    invoke-static {v4}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@63
    move-result v4

    #@64
    add-int/2addr v2, v4

    #@65
    add-int/lit8 v3, v3, 0x1

    #@67
    goto :goto_57

    #@68
    :cond_68
    add-int/2addr v0, v2

    #@69
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    #@6b
    array-length v2, v2

    #@6c
    mul-int/lit8 v2, v2, 0x1

    #@6e
    add-int/2addr v0, v2

    #@6f
    :cond_6f
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@71
    if-eqz v2, :cond_92

    #@73
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@75
    array-length v2, v2

    #@76
    if-lez v2, :cond_92

    #@78
    move v2, v1

    #@79
    move v3, v1

    #@7a
    :goto_7a
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@7c
    array-length v4, v4

    #@7d
    if-ge v2, v4, :cond_8b

    #@7f
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@81
    aget v4, v4, v2

    #@83
    invoke-static {v4}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@86
    move-result v4

    #@87
    add-int/2addr v3, v4

    #@88
    add-int/lit8 v2, v2, 0x1

    #@8a
    goto :goto_7a

    #@8b
    :cond_8b
    add-int/2addr v0, v3

    #@8c
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@8e
    array-length v2, v2

    #@8f
    mul-int/lit8 v2, v2, 0x1

    #@91
    add-int/2addr v0, v2

    #@92
    :cond_92
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@94
    if-eqz v2, :cond_b5

    #@96
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@98
    array-length v2, v2

    #@99
    if-lez v2, :cond_b5

    #@9b
    move v2, v1

    #@9c
    move v3, v1

    #@9d
    :goto_9d
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@9f
    array-length v4, v4

    #@a0
    if-ge v2, v4, :cond_ae

    #@a2
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@a4
    aget v4, v4, v2

    #@a6
    invoke-static {v4}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@a9
    move-result v4

    #@aa
    add-int/2addr v3, v4

    #@ab
    add-int/lit8 v2, v2, 0x1

    #@ad
    goto :goto_9d

    #@ae
    :cond_ae
    add-int/2addr v0, v3

    #@af
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@b1
    array-length v2, v2

    #@b2
    mul-int/lit8 v2, v2, 0x1

    #@b4
    add-int/2addr v0, v2

    #@b5
    :cond_b5
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@b7
    if-eqz v2, :cond_d8

    #@b9
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@bb
    array-length v2, v2

    #@bc
    if-lez v2, :cond_d8

    #@be
    move v2, v1

    #@bf
    move v3, v1

    #@c0
    :goto_c0
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@c2
    array-length v4, v4

    #@c3
    if-ge v2, v4, :cond_d1

    #@c5
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@c7
    aget v4, v4, v2

    #@c9
    invoke-static {v4}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@cc
    move-result v4

    #@cd
    add-int/2addr v3, v4

    #@ce
    add-int/lit8 v2, v2, 0x1

    #@d0
    goto :goto_c0

    #@d1
    :cond_d1
    add-int/2addr v0, v3

    #@d2
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@d4
    array-length v2, v2

    #@d5
    mul-int/lit8 v2, v2, 0x1

    #@d7
    add-int/2addr v0, v2

    #@d8
    :cond_d8
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@da
    if-eqz v2, :cond_fb

    #@dc
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@de
    array-length v2, v2

    #@df
    if-lez v2, :cond_fb

    #@e1
    move v2, v1

    #@e2
    move v3, v1

    #@e3
    :goto_e3
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@e5
    array-length v4, v4

    #@e6
    if-ge v3, v4, :cond_f4

    #@e8
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@ea
    aget v4, v4, v3

    #@ec
    invoke-static {v4}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@ef
    move-result v4

    #@f0
    add-int/2addr v2, v4

    #@f1
    add-int/lit8 v3, v3, 0x1

    #@f3
    goto :goto_e3

    #@f4
    :cond_f4
    add-int/2addr v0, v2

    #@f5
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@f7
    array-length v2, v2

    #@f8
    mul-int/lit8 v2, v2, 0x1

    #@fa
    add-int/2addr v0, v2

    #@fb
    :cond_fb
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@fd
    if-eqz v2, :cond_11e

    #@ff
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@101
    array-length v2, v2

    #@102
    if-lez v2, :cond_11e

    #@104
    move v2, v1

    #@105
    move v3, v1

    #@106
    :goto_106
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@108
    array-length v4, v4

    #@109
    if-ge v3, v4, :cond_117

    #@10b
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@10d
    aget v4, v4, v3

    #@10f
    invoke-static {v4}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@112
    move-result v4

    #@113
    add-int/2addr v2, v4

    #@114
    add-int/lit8 v3, v3, 0x1

    #@116
    goto :goto_106

    #@117
    :cond_117
    add-int/2addr v0, v2

    #@118
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@11a
    array-length v2, v2

    #@11b
    mul-int/lit8 v2, v2, 0x1

    #@11d
    add-int/2addr v0, v2

    #@11e
    :cond_11e
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@120
    if-eqz v2, :cond_141

    #@122
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@124
    array-length v2, v2

    #@125
    if-lez v2, :cond_141

    #@127
    move v2, v1

    #@128
    move v3, v1

    #@129
    :goto_129
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@12b
    array-length v4, v4

    #@12c
    if-ge v3, v4, :cond_13a

    #@12e
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@130
    aget v4, v4, v3

    #@132
    invoke-static {v4}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@135
    move-result v4

    #@136
    add-int/2addr v2, v4

    #@137
    add-int/lit8 v3, v3, 0x1

    #@139
    goto :goto_129

    #@13a
    :cond_13a
    add-int/2addr v0, v2

    #@13b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@13d
    array-length v2, v2

    #@13e
    mul-int/lit8 v2, v2, 0x1

    #@140
    add-int/2addr v0, v2

    #@141
    :cond_141
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@143
    if-eqz v2, :cond_163

    #@145
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@147
    array-length v2, v2

    #@148
    if-lez v2, :cond_163

    #@14a
    move v2, v1

    #@14b
    :goto_14b
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@14d
    array-length v3, v3

    #@14e
    if-ge v2, v3, :cond_15c

    #@150
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@152
    aget v3, v3, v2

    #@154
    invoke-static {v3}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@157
    move-result v3

    #@158
    add-int/2addr v1, v3

    #@159
    add-int/lit8 v2, v2, 0x1

    #@15b
    goto :goto_14b

    #@15c
    :cond_15c
    add-int/2addr v0, v1

    #@15d
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@15f
    array-length v1, v1

    #@160
    mul-int/lit8 v1, v1, 0x1

    #@162
    add-int/2addr v0, v1

    #@163
    :cond_163
    return v0

    #@164
    :cond_164
    move v0, v3

    #@165
    goto/16 :goto_4c
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
    instance-of v2, p1, Lcom/google/android/gms/internal/c$g;

    #@7
    if-eqz v2, :cond_87

    #@9
    check-cast p1, Lcom/google/android/gms/internal/c$g;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    #@d
    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fn:[I

    #@f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([I[I)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_87

    #@15
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    #@17
    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fo:[I

    #@19
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([I[I)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_87

    #@1f
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    #@21
    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fp:[I

    #@23
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([I[I)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_87

    #@29
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@2b
    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@2d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([I[I)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_87

    #@33
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@35
    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@37
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([I[I)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_87

    #@3d
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@3f
    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@41
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([I[I)Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_87

    #@47
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@49
    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@4b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([I[I)Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_87

    #@51
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@53
    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@55
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([I[I)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_87

    #@5b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@5d
    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@5f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([I[I)Z

    #@62
    move-result v2

    #@63
    if-eqz v2, :cond_87

    #@65
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@67
    iget-object v3, p1, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@69
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mc;->equals([I[I)Z

    #@6c
    move-result v2

    #@6d
    if-eqz v2, :cond_87

    #@6f
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->amX:Ljava/util/List;

    #@71
    if-eqz v2, :cond_7b

    #@73
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->amX:Ljava/util/List;

    #@75
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@78
    move-result v2

    #@79
    if-eqz v2, :cond_8a

    #@7b
    :cond_7b
    iget-object v2, p1, Lcom/google/android/gms/internal/c$g;->amX:Ljava/util/List;

    #@7d
    if-eqz v2, :cond_4

    #@7f
    iget-object v2, p1, Lcom/google/android/gms/internal/c$g;->amX:Ljava/util/List;

    #@81
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@84
    move-result v2

    #@85
    if-nez v2, :cond_4

    #@87
    :cond_87
    move v0, v1

    #@88
    goto/16 :goto_4

    #@8a
    :cond_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->amX:Ljava/util/List;

    #@8c
    iget-object v1, p1, Lcom/google/android/gms/internal/c$g;->amX:Ljava/util/List;

    #@8e
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v0

    #@92
    goto/16 :goto_4
.end method

.method public h(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/c$g;
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
    sparse-switch v0, :sswitch_data_4aa

    #@8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$g;->a(Lcom/google/android/gms/internal/ly;I)Z

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

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
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

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
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

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
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

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
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

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
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    #@7b
    array-length v2, v2

    #@7c
    goto :goto_63

    #@7d
    :cond_7d
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

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
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

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
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

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
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

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
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

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
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    #@f1
    array-length v2, v2

    #@f2
    goto :goto_d9

    #@f3
    :cond_f3
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

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
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

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
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

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
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

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
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

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
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    #@167
    array-length v2, v2

    #@168
    goto :goto_14f

    #@169
    :cond_169
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    #@16b
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@16e
    goto/16 :goto_1

    #@170
    :sswitch_170
    const/16 v0, 0x20

    #@172
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@175
    move-result v2

    #@176
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@178
    if-nez v0, :cond_196

    #@17a
    move v0, v1

    #@17b
    :goto_17b
    add-int/2addr v2, v0

    #@17c
    new-array v2, v2, [I

    #@17e
    if-eqz v0, :cond_185

    #@180
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@182
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@185
    :cond_185
    :goto_185
    array-length v3, v2

    #@186
    add-int/lit8 v3, v3, -0x1

    #@188
    if-ge v0, v3, :cond_19a

    #@18a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@18d
    move-result v3

    #@18e
    aput v3, v2, v0

    #@190
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@193
    add-int/lit8 v0, v0, 0x1

    #@195
    goto :goto_185

    #@196
    :cond_196
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@198
    array-length v0, v0

    #@199
    goto :goto_17b

    #@19a
    :cond_19a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@19d
    move-result v3

    #@19e
    aput v3, v2, v0

    #@1a0
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@1a2
    goto/16 :goto_1

    #@1a4
    :sswitch_1a4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nI()I

    #@1a7
    move-result v0

    #@1a8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->ex(I)I

    #@1ab
    move-result v3

    #@1ac
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@1af
    move-result v2

    #@1b0
    move v0, v1

    #@1b1
    :goto_1b1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nN()I

    #@1b4
    move-result v4

    #@1b5
    if-lez v4, :cond_1bd

    #@1b7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@1ba
    add-int/lit8 v0, v0, 0x1

    #@1bc
    goto :goto_1b1

    #@1bd
    :cond_1bd
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ly;->ez(I)V

    #@1c0
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@1c2
    if-nez v2, :cond_1db

    #@1c4
    move v2, v1

    #@1c5
    :goto_1c5
    add-int/2addr v0, v2

    #@1c6
    new-array v0, v0, [I

    #@1c8
    if-eqz v2, :cond_1cf

    #@1ca
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@1cc
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1cf
    :cond_1cf
    :goto_1cf
    array-length v4, v0

    #@1d0
    if-ge v2, v4, :cond_1df

    #@1d2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@1d5
    move-result v4

    #@1d6
    aput v4, v0, v2

    #@1d8
    add-int/lit8 v2, v2, 0x1

    #@1da
    goto :goto_1cf

    #@1db
    :cond_1db
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@1dd
    array-length v2, v2

    #@1de
    goto :goto_1c5

    #@1df
    :cond_1df
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@1e1
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@1e4
    goto/16 :goto_1

    #@1e6
    :sswitch_1e6
    const/16 v0, 0x28

    #@1e8
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@1eb
    move-result v2

    #@1ec
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@1ee
    if-nez v0, :cond_20c

    #@1f0
    move v0, v1

    #@1f1
    :goto_1f1
    add-int/2addr v2, v0

    #@1f2
    new-array v2, v2, [I

    #@1f4
    if-eqz v0, :cond_1fb

    #@1f6
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@1f8
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1fb
    :cond_1fb
    :goto_1fb
    array-length v3, v2

    #@1fc
    add-int/lit8 v3, v3, -0x1

    #@1fe
    if-ge v0, v3, :cond_210

    #@200
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@203
    move-result v3

    #@204
    aput v3, v2, v0

    #@206
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@209
    add-int/lit8 v0, v0, 0x1

    #@20b
    goto :goto_1fb

    #@20c
    :cond_20c
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@20e
    array-length v0, v0

    #@20f
    goto :goto_1f1

    #@210
    :cond_210
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@213
    move-result v3

    #@214
    aput v3, v2, v0

    #@216
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@218
    goto/16 :goto_1

    #@21a
    :sswitch_21a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nI()I

    #@21d
    move-result v0

    #@21e
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->ex(I)I

    #@221
    move-result v3

    #@222
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@225
    move-result v2

    #@226
    move v0, v1

    #@227
    :goto_227
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nN()I

    #@22a
    move-result v4

    #@22b
    if-lez v4, :cond_233

    #@22d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@230
    add-int/lit8 v0, v0, 0x1

    #@232
    goto :goto_227

    #@233
    :cond_233
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ly;->ez(I)V

    #@236
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@238
    if-nez v2, :cond_251

    #@23a
    move v2, v1

    #@23b
    :goto_23b
    add-int/2addr v0, v2

    #@23c
    new-array v0, v0, [I

    #@23e
    if-eqz v2, :cond_245

    #@240
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@242
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@245
    :cond_245
    :goto_245
    array-length v4, v0

    #@246
    if-ge v2, v4, :cond_255

    #@248
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@24b
    move-result v4

    #@24c
    aput v4, v0, v2

    #@24e
    add-int/lit8 v2, v2, 0x1

    #@250
    goto :goto_245

    #@251
    :cond_251
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@253
    array-length v2, v2

    #@254
    goto :goto_23b

    #@255
    :cond_255
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@257
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@25a
    goto/16 :goto_1

    #@25c
    :sswitch_25c
    const/16 v0, 0x30

    #@25e
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@261
    move-result v2

    #@262
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@264
    if-nez v0, :cond_282

    #@266
    move v0, v1

    #@267
    :goto_267
    add-int/2addr v2, v0

    #@268
    new-array v2, v2, [I

    #@26a
    if-eqz v0, :cond_271

    #@26c
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@26e
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@271
    :cond_271
    :goto_271
    array-length v3, v2

    #@272
    add-int/lit8 v3, v3, -0x1

    #@274
    if-ge v0, v3, :cond_286

    #@276
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@279
    move-result v3

    #@27a
    aput v3, v2, v0

    #@27c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@27f
    add-int/lit8 v0, v0, 0x1

    #@281
    goto :goto_271

    #@282
    :cond_282
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@284
    array-length v0, v0

    #@285
    goto :goto_267

    #@286
    :cond_286
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@289
    move-result v3

    #@28a
    aput v3, v2, v0

    #@28c
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@28e
    goto/16 :goto_1

    #@290
    :sswitch_290
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nI()I

    #@293
    move-result v0

    #@294
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->ex(I)I

    #@297
    move-result v3

    #@298
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@29b
    move-result v2

    #@29c
    move v0, v1

    #@29d
    :goto_29d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nN()I

    #@2a0
    move-result v4

    #@2a1
    if-lez v4, :cond_2a9

    #@2a3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@2a6
    add-int/lit8 v0, v0, 0x1

    #@2a8
    goto :goto_29d

    #@2a9
    :cond_2a9
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ly;->ez(I)V

    #@2ac
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@2ae
    if-nez v2, :cond_2c7

    #@2b0
    move v2, v1

    #@2b1
    :goto_2b1
    add-int/2addr v0, v2

    #@2b2
    new-array v0, v0, [I

    #@2b4
    if-eqz v2, :cond_2bb

    #@2b6
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@2b8
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2bb
    :cond_2bb
    :goto_2bb
    array-length v4, v0

    #@2bc
    if-ge v2, v4, :cond_2cb

    #@2be
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@2c1
    move-result v4

    #@2c2
    aput v4, v0, v2

    #@2c4
    add-int/lit8 v2, v2, 0x1

    #@2c6
    goto :goto_2bb

    #@2c7
    :cond_2c7
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@2c9
    array-length v2, v2

    #@2ca
    goto :goto_2b1

    #@2cb
    :cond_2cb
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@2cd
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@2d0
    goto/16 :goto_1

    #@2d2
    :sswitch_2d2
    const/16 v0, 0x38

    #@2d4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@2d7
    move-result v2

    #@2d8
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@2da
    if-nez v0, :cond_2f8

    #@2dc
    move v0, v1

    #@2dd
    :goto_2dd
    add-int/2addr v2, v0

    #@2de
    new-array v2, v2, [I

    #@2e0
    if-eqz v0, :cond_2e7

    #@2e2
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@2e4
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2e7
    :cond_2e7
    :goto_2e7
    array-length v3, v2

    #@2e8
    add-int/lit8 v3, v3, -0x1

    #@2ea
    if-ge v0, v3, :cond_2fc

    #@2ec
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@2ef
    move-result v3

    #@2f0
    aput v3, v2, v0

    #@2f2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@2f5
    add-int/lit8 v0, v0, 0x1

    #@2f7
    goto :goto_2e7

    #@2f8
    :cond_2f8
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@2fa
    array-length v0, v0

    #@2fb
    goto :goto_2dd

    #@2fc
    :cond_2fc
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@2ff
    move-result v3

    #@300
    aput v3, v2, v0

    #@302
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@304
    goto/16 :goto_1

    #@306
    :sswitch_306
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nI()I

    #@309
    move-result v0

    #@30a
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->ex(I)I

    #@30d
    move-result v3

    #@30e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@311
    move-result v2

    #@312
    move v0, v1

    #@313
    :goto_313
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nN()I

    #@316
    move-result v4

    #@317
    if-lez v4, :cond_31f

    #@319
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@31c
    add-int/lit8 v0, v0, 0x1

    #@31e
    goto :goto_313

    #@31f
    :cond_31f
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ly;->ez(I)V

    #@322
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@324
    if-nez v2, :cond_33d

    #@326
    move v2, v1

    #@327
    :goto_327
    add-int/2addr v0, v2

    #@328
    new-array v0, v0, [I

    #@32a
    if-eqz v2, :cond_331

    #@32c
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@32e
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@331
    :cond_331
    :goto_331
    array-length v4, v0

    #@332
    if-ge v2, v4, :cond_341

    #@334
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@337
    move-result v4

    #@338
    aput v4, v0, v2

    #@33a
    add-int/lit8 v2, v2, 0x1

    #@33c
    goto :goto_331

    #@33d
    :cond_33d
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@33f
    array-length v2, v2

    #@340
    goto :goto_327

    #@341
    :cond_341
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@343
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@346
    goto/16 :goto_1

    #@348
    :sswitch_348
    const/16 v0, 0x40

    #@34a
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@34d
    move-result v2

    #@34e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@350
    if-nez v0, :cond_36e

    #@352
    move v0, v1

    #@353
    :goto_353
    add-int/2addr v2, v0

    #@354
    new-array v2, v2, [I

    #@356
    if-eqz v0, :cond_35d

    #@358
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@35a
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@35d
    :cond_35d
    :goto_35d
    array-length v3, v2

    #@35e
    add-int/lit8 v3, v3, -0x1

    #@360
    if-ge v0, v3, :cond_372

    #@362
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@365
    move-result v3

    #@366
    aput v3, v2, v0

    #@368
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@36b
    add-int/lit8 v0, v0, 0x1

    #@36d
    goto :goto_35d

    #@36e
    :cond_36e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@370
    array-length v0, v0

    #@371
    goto :goto_353

    #@372
    :cond_372
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@375
    move-result v3

    #@376
    aput v3, v2, v0

    #@378
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@37a
    goto/16 :goto_1

    #@37c
    :sswitch_37c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nI()I

    #@37f
    move-result v0

    #@380
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->ex(I)I

    #@383
    move-result v3

    #@384
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@387
    move-result v2

    #@388
    move v0, v1

    #@389
    :goto_389
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nN()I

    #@38c
    move-result v4

    #@38d
    if-lez v4, :cond_395

    #@38f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@392
    add-int/lit8 v0, v0, 0x1

    #@394
    goto :goto_389

    #@395
    :cond_395
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ly;->ez(I)V

    #@398
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@39a
    if-nez v2, :cond_3b3

    #@39c
    move v2, v1

    #@39d
    :goto_39d
    add-int/2addr v0, v2

    #@39e
    new-array v0, v0, [I

    #@3a0
    if-eqz v2, :cond_3a7

    #@3a2
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@3a4
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3a7
    :cond_3a7
    :goto_3a7
    array-length v4, v0

    #@3a8
    if-ge v2, v4, :cond_3b7

    #@3aa
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@3ad
    move-result v4

    #@3ae
    aput v4, v0, v2

    #@3b0
    add-int/lit8 v2, v2, 0x1

    #@3b2
    goto :goto_3a7

    #@3b3
    :cond_3b3
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@3b5
    array-length v2, v2

    #@3b6
    goto :goto_39d

    #@3b7
    :cond_3b7
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@3b9
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@3bc
    goto/16 :goto_1

    #@3be
    :sswitch_3be
    const/16 v0, 0x48

    #@3c0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@3c3
    move-result v2

    #@3c4
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@3c6
    if-nez v0, :cond_3e4

    #@3c8
    move v0, v1

    #@3c9
    :goto_3c9
    add-int/2addr v2, v0

    #@3ca
    new-array v2, v2, [I

    #@3cc
    if-eqz v0, :cond_3d3

    #@3ce
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@3d0
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3d3
    :cond_3d3
    :goto_3d3
    array-length v3, v2

    #@3d4
    add-int/lit8 v3, v3, -0x1

    #@3d6
    if-ge v0, v3, :cond_3e8

    #@3d8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@3db
    move-result v3

    #@3dc
    aput v3, v2, v0

    #@3de
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@3e1
    add-int/lit8 v0, v0, 0x1

    #@3e3
    goto :goto_3d3

    #@3e4
    :cond_3e4
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@3e6
    array-length v0, v0

    #@3e7
    goto :goto_3c9

    #@3e8
    :cond_3e8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@3eb
    move-result v3

    #@3ec
    aput v3, v2, v0

    #@3ee
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@3f0
    goto/16 :goto_1

    #@3f2
    :sswitch_3f2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nI()I

    #@3f5
    move-result v0

    #@3f6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->ex(I)I

    #@3f9
    move-result v3

    #@3fa
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@3fd
    move-result v2

    #@3fe
    move v0, v1

    #@3ff
    :goto_3ff
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nN()I

    #@402
    move-result v4

    #@403
    if-lez v4, :cond_40b

    #@405
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@408
    add-int/lit8 v0, v0, 0x1

    #@40a
    goto :goto_3ff

    #@40b
    :cond_40b
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ly;->ez(I)V

    #@40e
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@410
    if-nez v2, :cond_429

    #@412
    move v2, v1

    #@413
    :goto_413
    add-int/2addr v0, v2

    #@414
    new-array v0, v0, [I

    #@416
    if-eqz v2, :cond_41d

    #@418
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@41a
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@41d
    :cond_41d
    :goto_41d
    array-length v4, v0

    #@41e
    if-ge v2, v4, :cond_42d

    #@420
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@423
    move-result v4

    #@424
    aput v4, v0, v2

    #@426
    add-int/lit8 v2, v2, 0x1

    #@428
    goto :goto_41d

    #@429
    :cond_429
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@42b
    array-length v2, v2

    #@42c
    goto :goto_413

    #@42d
    :cond_42d
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@42f
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@432
    goto/16 :goto_1

    #@434
    :sswitch_434
    const/16 v0, 0x50

    #@436
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mh;->b(Lcom/google/android/gms/internal/ly;I)I

    #@439
    move-result v2

    #@43a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@43c
    if-nez v0, :cond_45a

    #@43e
    move v0, v1

    #@43f
    :goto_43f
    add-int/2addr v2, v0

    #@440
    new-array v2, v2, [I

    #@442
    if-eqz v0, :cond_449

    #@444
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@446
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@449
    :cond_449
    :goto_449
    array-length v3, v2

    #@44a
    add-int/lit8 v3, v3, -0x1

    #@44c
    if-ge v0, v3, :cond_45e

    #@44e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@451
    move-result v3

    #@452
    aput v3, v2, v0

    #@454
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nB()I

    #@457
    add-int/lit8 v0, v0, 0x1

    #@459
    goto :goto_449

    #@45a
    :cond_45a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@45c
    array-length v0, v0

    #@45d
    goto :goto_43f

    #@45e
    :cond_45e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@461
    move-result v3

    #@462
    aput v3, v2, v0

    #@464
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@466
    goto/16 :goto_1

    #@468
    :sswitch_468
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nI()I

    #@46b
    move-result v0

    #@46c
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->ex(I)I

    #@46f
    move-result v3

    #@470
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@473
    move-result v2

    #@474
    move v0, v1

    #@475
    :goto_475
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nN()I

    #@478
    move-result v4

    #@479
    if-lez v4, :cond_481

    #@47b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@47e
    add-int/lit8 v0, v0, 0x1

    #@480
    goto :goto_475

    #@481
    :cond_481
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ly;->ez(I)V

    #@484
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@486
    if-nez v2, :cond_49f

    #@488
    move v2, v1

    #@489
    :goto_489
    add-int/2addr v0, v2

    #@48a
    new-array v0, v0, [I

    #@48c
    if-eqz v2, :cond_493

    #@48e
    iget-object v4, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@490
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@493
    :cond_493
    :goto_493
    array-length v4, v0

    #@494
    if-ge v2, v4, :cond_4a3

    #@496
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->nE()I

    #@499
    move-result v4

    #@49a
    aput v4, v0, v2

    #@49c
    add-int/lit8 v2, v2, 0x1

    #@49e
    goto :goto_493

    #@49f
    :cond_49f
    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@4a1
    array-length v2, v2

    #@4a2
    goto :goto_489

    #@4a3
    :cond_4a3
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@4a5
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ly;->ey(I)V

    #@4a8
    goto/16 :goto_1

    #@4aa
    :sswitch_data_4aa
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0xa -> :sswitch_42
        0x10 -> :sswitch_84
        0x12 -> :sswitch_b8
        0x18 -> :sswitch_fa
        0x1a -> :sswitch_12e
        0x20 -> :sswitch_170
        0x22 -> :sswitch_1a4
        0x28 -> :sswitch_1e6
        0x2a -> :sswitch_21a
        0x30 -> :sswitch_25c
        0x32 -> :sswitch_290
        0x38 -> :sswitch_2d2
        0x3a -> :sswitch_306
        0x40 -> :sswitch_348
        0x42 -> :sswitch_37c
        0x48 -> :sswitch_3be
        0x4a -> :sswitch_3f2
        0x50 -> :sswitch_434
        0x52 -> :sswitch_468
    .end sparse-switch
.end method

.method public hashCode()I
    .registers 12

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([I)I

    #@5
    move-result v1

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    #@8
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([I)I

    #@b
    move-result v2

    #@c
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    #@e
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([I)I

    #@11
    move-result v3

    #@12
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@14
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([I)I

    #@17
    move-result v4

    #@18
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([I)I

    #@1d
    move-result v5

    #@1e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@20
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([I)I

    #@23
    move-result v6

    #@24
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@26
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([I)I

    #@29
    move-result v7

    #@2a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@2c
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([I)I

    #@2f
    move-result v8

    #@30
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@32
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([I)I

    #@35
    move-result v9

    #@36
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@38
    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->hashCode([I)I

    #@3b
    move-result v10

    #@3c
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->amX:Ljava/util/List;

    #@3e
    if-eqz v0, :cond_48

    #@40
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->amX:Ljava/util/List;

    #@42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_6a

    #@48
    :cond_48
    const/4 v0, 0x0

    #@49
    :goto_49
    add-int/lit16 v1, v1, 0x20f

    #@4b
    mul-int/lit8 v1, v1, 0x1f

    #@4d
    add-int/2addr v1, v2

    #@4e
    mul-int/lit8 v1, v1, 0x1f

    #@50
    add-int/2addr v1, v3

    #@51
    mul-int/lit8 v1, v1, 0x1f

    #@53
    add-int/2addr v1, v4

    #@54
    mul-int/lit8 v1, v1, 0x1f

    #@56
    add-int/2addr v1, v5

    #@57
    mul-int/lit8 v1, v1, 0x1f

    #@59
    add-int/2addr v1, v6

    #@5a
    mul-int/lit8 v1, v1, 0x1f

    #@5c
    add-int/2addr v1, v7

    #@5d
    mul-int/lit8 v1, v1, 0x1f

    #@5f
    add-int/2addr v1, v8

    #@60
    mul-int/lit8 v1, v1, 0x1f

    #@62
    add-int/2addr v1, v9

    #@63
    mul-int/lit8 v1, v1, 0x1f

    #@65
    add-int/2addr v1, v10

    #@66
    mul-int/lit8 v1, v1, 0x1f

    #@68
    add-int/2addr v0, v1

    #@69
    return v0

    #@6a
    :cond_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->amX:Ljava/util/List;

    #@6c
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    #@6f
    move-result v0

    #@70
    goto :goto_49
.end method

.method public m()Lcom/google/android/gms/internal/c$g;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@2
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    #@4
    sget-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@6
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    #@8
    sget-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@a
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    #@c
    sget-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@e
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    #@10
    sget-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@12
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    #@14
    sget-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@16
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    #@18
    sget-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@1a
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    #@1c
    sget-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@1e
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    #@20
    sget-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@22
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    #@24
    sget-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@26
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    #@28
    const/4 v0, 0x0

    #@29
    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->amX:Ljava/util/List;

    #@2b
    const/4 v0, -0x1

    #@2c
    iput v0, p0, Lcom/google/android/gms/internal/c$g;->anb:I

    #@2e
    return-object p0
.end method
