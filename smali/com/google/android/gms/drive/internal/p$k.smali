.class Lcom/google/android/gms/drive/internal/p$k;
.super Lcom/google/android/gms/drive/internal/p$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Status;)V
    .registers 5

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/p$j;-><init>()V

    #@3
    new-instance v1, Lcom/google/android/gms/common/api/a$c;

    #@5
    sget-object v0, Lcom/google/android/gms/drive/Drive;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@7
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/google/android/gms/drive/internal/r;

    #@d
    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/r;->getLooper()Landroid/os/Looper;

    #@10
    move-result-object v0

    #@11
    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/a$c;-><init>(Landroid/os/Looper;)V

    #@14
    invoke-virtual {p0, v1}, Lcom/google/android/gms/drive/internal/p$k;->a(Lcom/google/android/gms/common/api/a$c;)V

    #@17
    invoke-virtual {p0, p2}, Lcom/google/android/gms/drive/internal/p$k;->b(Lcom/google/android/gms/common/api/Result;)V

    #@1a
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/p$k;->a(Lcom/google/android/gms/drive/internal/r;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .registers 2

    #@0
    return-void
.end method
