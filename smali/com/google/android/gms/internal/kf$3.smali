.class Lcom/google/android/gms/internal/kf$3;
.super Lcom/google/android/gms/internal/kf$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/kf;->loadPanoramaInfoAndGrantAccess(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic abk:Landroid/net/Uri;

.field final synthetic abm:Lcom/google/android/gms/internal/kf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kf;Landroid/net/Uri;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/kf$3;->abm:Lcom/google/android/gms/internal/kf;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/kf$3;->abk:Landroid/net/Uri;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kf$b;-><init>(Lcom/google/android/gms/internal/kf$1;)V

    #@8
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/google/android/gms/internal/ke;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/internal/kf$c;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kf$c;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@5
    iget-object v1, p0, Lcom/google/android/gms/internal/kf$3;->abk:Landroid/net/Uri;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/android/gms/internal/kf;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/kd;Landroid/net/Uri;Landroid/os/Bundle;)V

    #@b
    return-void
.end method
