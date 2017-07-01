.class Lcom/google/android/gms/drive/realtime/internal/h$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/realtime/internal/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/realtime/internal/h$a;
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
    iput-object p1, p0, Lcom/google/android/gms/drive/realtime/internal/h$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/h$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public c(ZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_2b

    #@11
    move v2, v0

    #@12
    :goto_12
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    if-eqz p2, :cond_2d

    #@17
    :goto_17
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/h$a$a;->kq:Landroid/os/IBinder;

    #@1c
    const/4 v1, 0x1

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_2f

    #@24
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2a
    return-void

    #@2b
    :cond_2b
    move v2, v1

    #@2c
    goto :goto_12

    #@2d
    :cond_2d
    move v0, v1

    #@2e
    goto :goto_17

    #@2f
    :catchall_2f
    move-exception v0

    #@30
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@33
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@36
    throw v0
.end method
