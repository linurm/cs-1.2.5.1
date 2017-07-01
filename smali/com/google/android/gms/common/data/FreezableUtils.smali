.class public final Lcom/google/android/gms/common/data/FreezableUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static freeze(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E::",
            "Lcom/google/android/gms/common/data/Freezable",
            "<TT;>;>(",
            "Ljava/util/ArrayList",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v3

    #@d
    const/4 v0, 0x0

    #@e
    move v1, v0

    #@f
    :goto_f
    if-ge v1, v3, :cond_22

    #@11
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/google/android/gms/common/data/Freezable;

    #@17
    invoke-interface {v0}, Lcom/google/android/gms/common/data/Freezable;->freeze()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    add-int/lit8 v0, v1, 0x1

    #@20
    move v1, v0

    #@21
    goto :goto_f

    #@22
    :cond_22
    return-object v2
.end method

.method public static freeze([Lcom/google/android/gms/common/data/Freezable;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E::",
            "Lcom/google/android/gms/common/data/Freezable",
            "<TT;>;>([TE;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    array-length v0, p0

    #@3
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    array-length v2, p0

    #@8
    if-ge v0, v2, :cond_16

    #@a
    aget-object v2, p0, v0

    #@c
    invoke-interface {v2}, Lcom/google/android/gms/common/data/Freezable;->freeze()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_7

    #@16
    :cond_16
    return-object v1
.end method

.method public static freezeIterable(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E::",
            "Lcom/google/android/gms/common/data/Freezable",
            "<TT;>;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1d

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/google/android/gms/common/data/Freezable;

    #@15
    invoke-interface {v0}, Lcom/google/android/gms/common/data/Freezable;->freeze()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    goto :goto_9

    #@1d
    :cond_1d
    return-object v1
.end method
