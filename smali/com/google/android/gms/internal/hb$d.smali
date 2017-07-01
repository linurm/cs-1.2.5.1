.class public abstract Lcom/google/android/gms/internal/hb$d;
.super Lcom/google/android/gms/internal/hb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/hb",
        "<TT;>.b<TT",
        "Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private final DG:Lcom/google/android/gms/common/data/DataHolder;

.field final synthetic Gi:Lcom/google/android/gms/internal/hb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hb;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/hb$d;->Gi:Lcom/google/android/gms/internal/hb;

    #@2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hb$b;-><init>(Lcom/google/android/gms/internal/hb;Ljava/lang/Object;)V

    #@5
    iput-object p3, p0, Lcom/google/android/gms/internal/hb$d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@7
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation
.end method

.method protected final d(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/hb$d;->a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V

    #@5
    return-void
.end method

.method protected fu()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$d;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@6
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    #@9
    :cond_9
    return-void
.end method

.method public bridge synthetic fv()V
    .registers 1

    #@0
    invoke-super {p0}, Lcom/google/android/gms/internal/hb$b;->fv()V

    #@3
    return-void
.end method

.method public bridge synthetic fw()V
    .registers 1

    #@0
    invoke-super {p0}, Lcom/google/android/gms/internal/hb$b;->fw()V

    #@3
    return-void
.end method

.method public bridge synthetic unregister()V
    .registers 1

    #@0
    invoke-super {p0}, Lcom/google/android/gms/internal/hb$b;->unregister()V

    #@3
    return-void
.end method
