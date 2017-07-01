.class public abstract Lcom/google/android/gms/common/data/g;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private EU:Z

.field private EV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/g;->EU:Z

    #@6
    return-void
.end method

.method private fa()V
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    monitor-enter p0

    #@2
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/gms/common/data/g;->EU:Z

    #@4
    if-nez v1, :cond_57

    #@6
    iget-object v1, p0, Lcom/google/android/gms/common/data/g;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@8
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    #@b
    move-result v3

    #@c
    new-instance v1, Ljava/util/ArrayList;

    #@e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v1, p0, Lcom/google/android/gms/common/data/g;->EV:Ljava/util/ArrayList;

    #@13
    if-lez v3, :cond_54

    #@15
    iget-object v1, p0, Lcom/google/android/gms/common/data/g;->EV:Ljava/util/ArrayList;

    #@17
    const/4 v2, 0x0

    #@18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/g;->eZ()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    iget-object v1, p0, Lcom/google/android/gms/common/data/g;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@25
    const/4 v2, 0x0

    #@26
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->ae(I)I

    #@29
    move-result v1

    #@2a
    iget-object v2, p0, Lcom/google/android/gms/common/data/g;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2c
    const/4 v5, 0x0

    #@2d
    invoke-virtual {v2, v4, v5, v1}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    move v2, v0

    #@32
    :goto_32
    if-ge v2, v3, :cond_54

    #@34
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@36
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/data/DataHolder;->ae(I)I

    #@39
    move-result v0

    #@3a
    iget-object v5, p0, Lcom/google/android/gms/common/data/g;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@3c
    invoke-virtual {v5, v4, v2, v0}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v5

    #@44
    if-nez v5, :cond_5c

    #@46
    iget-object v1, p0, Lcom/google/android/gms/common/data/g;->EV:Ljava/util/ArrayList;

    #@48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f
    :goto_4f
    add-int/lit8 v1, v2, 0x1

    #@51
    move v2, v1

    #@52
    move-object v1, v0

    #@53
    goto :goto_32

    #@54
    :cond_54
    const/4 v0, 0x1

    #@55
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/g;->EU:Z

    #@57
    :cond_57
    monitor-exit p0

    #@58
    return-void

    #@59
    :catchall_59
    move-exception v0

    #@5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_2 .. :try_end_5b} :catchall_59

    #@5b
    throw v0

    #@5c
    :cond_5c
    move-object v0, v1

    #@5d
    goto :goto_4f
.end method


# virtual methods
.method ah(I)I
    .registers 5

    #@0
    if-ltz p1, :cond_a

    #@2
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->EV:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_29

    #@a
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string v2, "Position "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, " is out of bounds for this buffer"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->EV:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Ljava/lang/Integer;

    #@31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@34
    move-result v0

    #@35
    return v0
.end method

.method protected ai(I)I
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    if-ltz p1, :cond_b

    #@3
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->EV:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    if-ne p1, v0, :cond_d

    #@b
    :cond_b
    move v0, v1

    #@c
    :cond_c
    :goto_c
    return v0

    #@d
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->EV:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v0

    #@13
    add-int/lit8 v0, v0, -0x1

    #@15
    if-ne p1, v0, :cond_48

    #@17
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@19
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    #@1c
    move-result v2

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->EV:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/lang/Integer;

    #@25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@28
    move-result v0

    #@29
    sub-int v0, v2, v0

    #@2b
    :goto_2b
    const/4 v2, 0x1

    #@2c
    if-ne v0, v2, :cond_c

    #@2e
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/g;->ah(I)I

    #@31
    move-result v2

    #@32
    iget-object v3, p0, Lcom/google/android/gms/common/data/g;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@34
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/data/DataHolder;->ae(I)I

    #@37
    move-result v3

    #@38
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/g;->fb()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    if-eqz v4, :cond_c

    #@3e
    iget-object v5, p0, Lcom/google/android/gms/common/data/g;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@40
    invoke-virtual {v5, v4, v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    if-nez v2, :cond_c

    #@46
    move v0, v1

    #@47
    goto :goto_c

    #@48
    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->EV:Ljava/util/ArrayList;

    #@4a
    add-int/lit8 v2, p1, 0x1

    #@4c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Ljava/lang/Integer;

    #@52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@55
    move-result v2

    #@56
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->EV:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v0

    #@5c
    check-cast v0, Ljava/lang/Integer;

    #@5e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@61
    move-result v0

    #@62
    sub-int v0, v2, v0

    #@64
    goto :goto_2b
.end method

.method protected abstract c(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation
.end method

.method protected abstract eZ()Ljava/lang/String;
.end method

.method protected fb()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/common/data/g;->fa()V

    #@3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/g;->ah(I)I

    #@6
    move-result v0

    #@7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/g;->ai(I)I

    #@a
    move-result v1

    #@b
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/data/g;->c(II)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getCount()I
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/common/data/g;->fa()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->EV:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    return v0
.end method
