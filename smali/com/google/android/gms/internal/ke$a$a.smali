.class Lcom/google/android/gms/internal/ke$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ke;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ke$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ke$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/kd;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v3

    #@7
    :try_start_7
    const-string v4, "com.google.android.gms.panorama.internal.IPanoramaService"

    #@9
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    if-eqz p1, :cond_12

    #@e
    invoke-interface {p1}, Lcom/google/android/gms/internal/kd;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    :cond_12
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    if-eqz p2, :cond_3b

    #@17
    const/4 v2, 0x1

    #@18
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    const/4 v2, 0x0

    #@1c
    invoke-virtual {p2, v3, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f
    :goto_1f
    if-eqz p3, :cond_45

    #@21
    const/4 v2, 0x1

    #@22
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    const/4 v2, 0x0

    #@26
    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@29
    :goto_29
    if-eqz p4, :cond_2c

    #@2b
    move v0, v1

    #@2c
    :cond_2c
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    iget-object v0, p0, Lcom/google/android/gms/internal/ke$a$a;->kq:Landroid/os/IBinder;

    #@31
    const/4 v1, 0x1

    #@32
    const/4 v2, 0x0

    #@33
    const/4 v4, 0x1

    #@34
    invoke-interface {v0, v1, v3, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_40

    #@37
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-void

    #@3b
    :cond_3b
    const/4 v2, 0x0

    #@3c
    :try_start_3c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    #@3f
    goto :goto_1f

    #@40
    :catchall_40
    move-exception v0

    #@41
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@44
    throw v0

    #@45
    :cond_45
    const/4 v2, 0x0

    #@46
    :try_start_46
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_40

    #@49
    goto :goto_29
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ke$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method
