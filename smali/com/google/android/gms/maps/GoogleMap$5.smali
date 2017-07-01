.class Lcom/google/android/gms/maps/GoogleMap$5;
.super Lcom/google/android/gms/maps/internal/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Zc:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic Zg:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$5;->Zc:Lcom/google/android/gms/maps/GoogleMap;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$5;->Zg:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/s$a;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public g(Lcom/google/android/gms/dynamic/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap$5;->Zg:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;

    #@2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Bitmap;

    #@8
    invoke-interface {v1, v0}, Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    #@b
    return-void
.end method

.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$5;->Zg:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    #@5
    return-void
.end method
