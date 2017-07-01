.class final Lcom/google/android/gms/internal/ga$f;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;
.implements Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;
.implements Lcom/google/android/gms/appstate/AppStateManager$StateResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private final yS:I

.field private final yT:Lcom/google/android/gms/appstate/AppStateBuffer;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    #@0
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/ga$f;->yS:I

    #@5
    new-instance v0, Lcom/google/android/gms/appstate/AppStateBuffer;

    #@7
    invoke-direct {v0, p2}, Lcom/google/android/gms/appstate/AppStateBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@a
    iput-object v0, p0, Lcom/google/android/gms/internal/ga$f;->yT:Lcom/google/android/gms/appstate/AppStateBuffer;

    #@c
    return-void
.end method

.method private dW()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga$f;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x7d0

    #@8
    if-ne v0, v1, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method


# virtual methods
.method public getConflictResult()Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ga$f;->dW()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    :goto_6
    return-object p0

    #@7
    :cond_7
    const/4 p0, 0x0

    #@8
    goto :goto_6
.end method

.method public getLoadedResult()Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ga$f;->dW()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    const/4 p0, 0x0

    #@7
    :cond_7
    return-object p0
.end method

.method public getLocalData()[B
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga$f;->yT:Lcom/google/android/gms/appstate/AppStateBuffer;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateBuffer;->getCount()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ga$f;->yT:Lcom/google/android/gms/appstate/AppStateBuffer;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v1}, Lcom/google/android/gms/appstate/AppStateBuffer;->get(I)Lcom/google/android/gms/appstate/AppState;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    #@14
    move-result-object v0

    #@15
    goto :goto_9
.end method

.method public getResolvedVersion()Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga$f;->yT:Lcom/google/android/gms/appstate/AppStateBuffer;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateBuffer;->getCount()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ga$f;->yT:Lcom/google/android/gms/appstate/AppStateBuffer;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v1}, Lcom/google/android/gms/appstate/AppStateBuffer;->get(I)Lcom/google/android/gms/appstate/AppState;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    goto :goto_9
.end method

.method public getServerData()[B
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga$f;->yT:Lcom/google/android/gms/appstate/AppStateBuffer;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateBuffer;->getCount()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ga$f;->yT:Lcom/google/android/gms/appstate/AppStateBuffer;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v1}, Lcom/google/android/gms/appstate/AppStateBuffer;->get(I)Lcom/google/android/gms/appstate/AppState;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    #@14
    move-result-object v0

    #@15
    goto :goto_9
.end method

.method public getStateKey()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ga$f;->yS:I

    #@2
    return v0
.end method

.method public release()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga$f;->yT:Lcom/google/android/gms/appstate/AppStateBuffer;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateBuffer;->close()V

    #@5
    return-void
.end method
