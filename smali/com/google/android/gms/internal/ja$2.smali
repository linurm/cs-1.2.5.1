.class Lcom/google/android/gms/internal/ja$2;
.super Lcom/google/android/gms/internal/ja$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ja;->removeActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vu:Landroid/app/PendingIntent;

.field final synthetic Vv:Lcom/google/android/gms/internal/ja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ja;Landroid/app/PendingIntent;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/ja$2;->Vv:Lcom/google/android/gms/internal/ja;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/ja$2;->Vu:Landroid/app/PendingIntent;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ja$a;-><init>(Lcom/google/android/gms/internal/ja$1;)V

    #@8
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
    check-cast p1, Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ja$2;->a(Lcom/google/android/gms/internal/jg;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jg;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja$2;->Vu:Landroid/app/PendingIntent;

    #@2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jg;->removeActivityUpdates(Landroid/app/PendingIntent;)V

    #@5
    sget-object v0, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ja$2;->b(Lcom/google/android/gms/common/api/Result;)V

    #@a
    return-void
.end method
