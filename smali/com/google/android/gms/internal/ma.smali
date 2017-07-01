.class public abstract Lcom/google/android/gms/internal/ma;
.super Lcom/google/android/gms/internal/me;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/ma",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/me;"
    }
.end annotation


# instance fields
.field protected amX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/mg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/me;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mb;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/mb",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ma;->amX:Ljava/util/List;

    #@2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mb;->i(Ljava/util/List;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/lz;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/google/android/gms/internal/ma;->amX:Ljava/util/List;

    #@3
    if-nez v1, :cond_1f

    #@5
    move v1, v0

    #@6
    :goto_6
    move v2, v0

    #@7
    :goto_7
    if-ge v2, v1, :cond_26

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/ma;->amX:Ljava/util/List;

    #@b
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/google/android/gms/internal/mg;

    #@11
    iget v3, v0, Lcom/google/android/gms/internal/mg;->tag:I

    #@13
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->eI(I)V

    #@16
    iget-object v0, v0, Lcom/google/android/gms/internal/mg;->anc:[B

    #@18
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->t([B)V

    #@1b
    add-int/lit8 v0, v2, 0x1

    #@1d
    move v2, v0

    #@1e
    goto :goto_7

    #@1f
    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/ma;->amX:Ljava/util/List;

    #@21
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@24
    move-result v1

    #@25
    goto :goto_6

    #@26
    :cond_26
    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/ly;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ly;->ev(I)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ma;->amX:Ljava/util/List;

    #@e
    if-nez v1, :cond_17

    #@10
    new-instance v1, Ljava/util/ArrayList;

    #@12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@15
    iput-object v1, p0, Lcom/google/android/gms/internal/ma;->amX:Ljava/util/List;

    #@17
    :cond_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@1a
    move-result v1

    #@1b
    sub-int/2addr v1, v0

    #@1c
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ly;->o(II)[B

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Lcom/google/android/gms/internal/ma;->amX:Ljava/util/List;

    #@22
    new-instance v2, Lcom/google/android/gms/internal/mg;

    #@24
    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/mg;-><init>(I[B)V

    #@27
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    const/4 v0, 0x1

    #@2b
    goto :goto_b
.end method

.method protected c()I
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/google/android/gms/internal/ma;->amX:Ljava/util/List;

    #@3
    if-nez v1, :cond_21

    #@5
    move v1, v0

    #@6
    :goto_6
    move v2, v0

    #@7
    move v3, v0

    #@8
    :goto_8
    if-ge v2, v1, :cond_28

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/ma;->amX:Ljava/util/List;

    #@c
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/internal/mg;

    #@12
    iget v4, v0, Lcom/google/android/gms/internal/mg;->tag:I

    #@14
    invoke-static {v4}, Lcom/google/android/gms/internal/lz;->eJ(I)I

    #@17
    move-result v4

    #@18
    add-int/2addr v3, v4

    #@19
    iget-object v0, v0, Lcom/google/android/gms/internal/mg;->anc:[B

    #@1b
    array-length v0, v0

    #@1c
    add-int/2addr v3, v0

    #@1d
    add-int/lit8 v0, v2, 0x1

    #@1f
    move v2, v0

    #@20
    goto :goto_8

    #@21
    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/internal/ma;->amX:Ljava/util/List;

    #@23
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@26
    move-result v1

    #@27
    goto :goto_6

    #@28
    :cond_28
    return v3
.end method
