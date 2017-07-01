.class Lcom/google/android/gms/internal/ja$1;
.super Lcom/google/android/gms/internal/ja$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ja;->requestActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vt:J

.field final synthetic Vu:Landroid/app/PendingIntent;

.field final synthetic Vv:Lcom/google/android/gms/internal/ja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ja;JLandroid/app/PendingIntent;)V
    .registers 7

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/ja$1;->Vv:Lcom/google/android/gms/internal/ja;

    #@2
    iput-wide p2, p0, Lcom/google/android/gms/internal/ja$1;->Vt:J

    #@4
    iput-object p4, p0, Lcom/google/android/gms/internal/ja$1;->Vu:Landroid/app/PendingIntent;

    #@6
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ja$a;-><init>(Lcom/google/android/gms/internal/ja$1;)V

    #@a
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ja$1;->a(Lcom/google/android/gms/internal/jg;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jg;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ja$1;->Vt:J

    #@2
    iget-object v2, p0, Lcom/google/android/gms/internal/ja$1;->Vu:Landroid/app/PendingIntent;

    #@4
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/jg;->requestActivityUpdates(JLandroid/app/PendingIntent;)V

    #@7
    sget-object v0, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ja$1;->b(Lcom/google/android/gms/common/api/Result;)V

    #@c
    return-void
.end method
