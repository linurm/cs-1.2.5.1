.class public final Lcom/google/android/gms/appstate/AppStateBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/appstate/AppState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3
    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/appstate/AppState;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/appstate/b;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/appstate/AppStateBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@4
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/appstate/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@7
    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateBuffer;->get(I)Lcom/google/android/gms/appstate/AppState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
