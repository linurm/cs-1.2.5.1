.class Lcom/google/android/gms/drive/internal/p$3;
.super Lcom/google/android/gms/drive/internal/p$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/p;->discardContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IL:Lcom/google/android/gms/drive/internal/p;

.field final synthetic IM:Lcom/google/android/gms/drive/Contents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/p;Lcom/google/android/gms/drive/Contents;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/p$3;->IL:Lcom/google/android/gms/drive/internal/p;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/drive/internal/p$3;->IM:Lcom/google/android/gms/drive/Contents;

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/p$j;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/p$3;->a(Lcom/google/android/gms/drive/internal/r;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gp()Lcom/google/android/gms/drive/internal/aa;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/google/android/gms/drive/internal/CloseContentsRequest;

    #@6
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/p$3;->IM:Lcom/google/android/gms/drive/Contents;

    #@8
    const/4 v3, 0x0

    #@9
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/CloseContentsRequest;-><init>(Lcom/google/android/gms/drive/Contents;Z)V

    #@c
    new-instance v2, Lcom/google/android/gms/drive/internal/aw;

    #@e
    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/aw;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@11
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@14
    return-void
.end method
