.class public final Lcom/google/android/gms/common/data/DataBufferUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static freezeAndClose(Lcom/google/android/gms/common/data/DataBuffer;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E::",
            "Lcom/google/android/gms/common/data/Freezable",
            "<TT;>;>(",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    #@5
    move-result v0

    #@6
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataBuffer;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_26

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/common/data/Freezable;

    #@19
    invoke-interface {v0}, Lcom/google/android/gms/common/data/Freezable;->freeze()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_21

    #@20
    goto :goto_d

    #@21
    :catchall_21
    move-exception v0

    #@22
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataBuffer;->close()V

    #@25
    throw v0

    #@26
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataBuffer;->close()V

    #@29
    return-object v1
.end method

.method public static hasNextPage(Lcom/google/android/gms/common/data/DataBuffer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<*>;)Z"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataBuffer;->eU()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_10

    #@6
    const-string v1, "next_page_token"

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_f
.end method

.method public static hasPrevPage(Lcom/google/android/gms/common/data/DataBuffer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<*>;)Z"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataBuffer;->eU()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_10

    #@6
    const-string v1, "prev_page_token"

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_f
.end method
