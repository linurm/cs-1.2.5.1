.class Lcom/google/android/gms/maps/model/internal/i$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private kq:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/maps/model/internal/i$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/i$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getTile(III)Lcom/google/android/gms/maps/model/Tile;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    :try_start_8
    const-string v0, "com.google.android.gms.maps.model.internal.ITileProviderDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/i$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/4 v3, 0x1

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_33

    #@26
    sget-object v0, Lcom/google/android/gms/maps/model/Tile;->CREATOR:Lcom/google/android/gms/maps/model/TileCreator;

    #@28
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/TileCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/Tile;
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_35

    #@2b
    move-result-object v0

    #@2c
    :goto_2c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    return-object v0

    #@33
    :cond_33
    const/4 v0, 0x0

    #@34
    goto :goto_2c

    #@35
    :catchall_35
    move-exception v0

    #@36
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    throw v0
.end method
