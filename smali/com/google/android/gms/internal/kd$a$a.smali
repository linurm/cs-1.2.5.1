.class Lcom/google/android/gms/internal/kd$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/kd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kd$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/kd$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .registers 10
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
    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaCallbacks"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    if-eqz p2, :cond_38

    #@12
    const/4 v0, 0x1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    const/4 v0, 0x0

    #@17
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    :goto_1a
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    if-eqz p4, :cond_45

    #@1f
    const/4 v0, 0x1

    #@20
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    const/4 v0, 0x0

    #@24
    invoke-virtual {p4, v1, v0}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@27
    :goto_27
    iget-object v0, p0, Lcom/google/android/gms/internal/kd$a$a;->kq:Landroid/os/IBinder;

    #@29
    const/4 v3, 0x1

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3d

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    return-void

    #@38
    :cond_38
    const/4 v0, 0x0

    #@39
    :try_start_39
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    #@3c
    goto :goto_1a

    #@3d
    :catchall_3d
    move-exception v0

    #@3e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    throw v0

    #@45
    :cond_45
    const/4 v0, 0x0

    #@46
    :try_start_46
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_3d

    #@49
    goto :goto_27
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kd$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method
