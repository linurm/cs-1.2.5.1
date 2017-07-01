.class Lcom/google/android/gms/drive/internal/r$1;
.super Lcom/google/android/gms/drive/internal/p$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/r;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/DriveEvent$Listener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IW:Lcom/google/android/gms/drive/DriveId;

.field final synthetic IX:I

.field final synthetic IY:Lcom/google/android/gms/drive/internal/x;

.field final synthetic IZ:Lcom/google/android/gms/drive/internal/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/r;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/internal/x;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/r$1;->IZ:Lcom/google/android/gms/drive/internal/r;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/drive/internal/r$1;->IW:Lcom/google/android/gms/drive/DriveId;

    #@4
    iput p3, p0, Lcom/google/android/gms/drive/internal/r$1;->IX:I

    #@6
    iput-object p4, p0, Lcom/google/android/gms/drive/internal/r$1;->IY:Lcom/google/android/gms/drive/internal/x;

    #@8
    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/p$j;-><init>()V

    #@b
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/r$1;->a(Lcom/google/android/gms/drive/internal/r;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v4, 0x0

    #@1
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gp()Lcom/google/android/gms/drive/internal/aa;

    #@4
    move-result-object v0

    #@5
    new-instance v1, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;

    #@7
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/r$1;->IW:Lcom/google/android/gms/drive/DriveId;

    #@9
    iget v3, p0, Lcom/google/android/gms/drive/internal/r$1;->IX:I

    #@b
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;-><init>(Lcom/google/android/gms/drive/DriveId;ILandroid/app/PendingIntent;)V

    #@e
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/r$1;->IY:Lcom/google/android/gms/drive/internal/x;

    #@10
    new-instance v3, Lcom/google/android/gms/drive/internal/aw;

    #@12
    invoke-direct {v3, p0}, Lcom/google/android/gms/drive/internal/aw;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@15
    invoke-interface {v0, v1, v2, v4, v3}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/AddEventListenerRequest;Lcom/google/android/gms/drive/internal/ac;Ljava/lang/String;Lcom/google/android/gms/drive/internal/ab;)V

    #@18
    return-void
.end method
