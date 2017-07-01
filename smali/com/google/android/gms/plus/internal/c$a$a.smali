.class Lcom/google/android/gms/plus/internal/c$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/c$a;
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
    iput-object p1, p0, Lcom/google/android/gms/plus/internal/c$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/dynamic/d;IILjava/lang/String;I)Lcom/google/android/gms/dynamic/d;
    .registers 11
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusOneButtonCreator"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/c$a$a;->kq:Landroid/os/IBinder;

    #@24
    const/4 v3, 0x1

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@2c
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2f
    move-result-object v0

    #@30
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_3d

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-object v0

    #@3b
    :cond_3b
    const/4 v0, 0x0

    #@3c
    goto :goto_13

    #@3d
    :catchall_3d
    move-exception v0

    #@3e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    throw v0
.end method

.method public a(Lcom/google/android/gms/dynamic/d;IILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/d;
    .registers 11
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusOneButtonCreator"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@22
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/c$a$a;->kq:Landroid/os/IBinder;

    #@24
    const/4 v3, 0x2

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@2c
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2f
    move-result-object v0

    #@30
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_3d

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-object v0

    #@3b
    :cond_3b
    const/4 v0, 0x0

    #@3c
    goto :goto_13

    #@3d
    :catchall_3d
    move-exception v0

    #@3e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/c$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method
