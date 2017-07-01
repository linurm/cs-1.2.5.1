.class Lcom/google/android/gms/internal/ar$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ar$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ar$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bt;I)Landroid/os/IBinder;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v2

    #@5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v3

    #@9
    :try_start_9
    const-string v1, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_45

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    if-eqz p2, :cond_47

    #@19
    const/4 v1, 0x1

    #@1a
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    const/4 v1, 0x0

    #@1e
    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/al;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    :goto_21
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    if-eqz p4, :cond_2a

    #@26
    invoke-interface {p4}, Lcom/google/android/gms/internal/bt;->asBinder()Landroid/os/IBinder;

    #@29
    move-result-object v0

    #@2a
    :cond_2a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2d
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    iget-object v0, p0, Lcom/google/android/gms/internal/ar$a$a;->kq:Landroid/os/IBinder;

    #@32
    const/4 v1, 0x1

    #@33
    const/4 v4, 0x0

    #@34
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@37
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    #@3a
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_4c

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@41
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@44
    return-object v0

    #@45
    :cond_45
    move-object v1, v0

    #@46
    goto :goto_14

    #@47
    :cond_47
    const/4 v1, 0x0

    #@48
    :try_start_48
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    #@4b
    goto :goto_21

    #@4c
    :catchall_4c
    move-exception v0

    #@4d
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@50
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@53
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ar$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method
