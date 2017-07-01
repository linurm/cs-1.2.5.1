.class Lcom/google/android/gms/internal/bu$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bu$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/bu$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V
    .registers 10
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
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_3e

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    if-eqz p2, :cond_40

    #@19
    const/4 v1, 0x1

    #@1a
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    const/4 v1, 0x0

    #@1e
    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/ai;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    :goto_21
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    if-eqz p4, :cond_2a

    #@26
    invoke-interface {p4}, Lcom/google/android/gms/internal/bv;->asBinder()Landroid/os/IBinder;

    #@29
    move-result-object v0

    #@2a
    :cond_2a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2d
    iget-object v0, p0, Lcom/google/android/gms/internal/bu$a$a;->kq:Landroid/os/IBinder;

    #@2f
    const/4 v1, 0x3

    #@30
    const/4 v4, 0x0

    #@31
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@34
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_45

    #@37
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3d
    return-void

    #@3e
    :cond_3e
    move-object v1, v0

    #@3f
    goto :goto_14

    #@40
    :cond_40
    const/4 v1, 0x0

    #@41
    :try_start_41
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    #@44
    goto :goto_21

    #@45
    :catchall_45
    move-exception v0

    #@46
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@49
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4c
    throw v0
.end method

.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V
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
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_41

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    if-eqz p2, :cond_43

    #@19
    const/4 v1, 0x1

    #@1a
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    const/4 v1, 0x0

    #@1e
    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/ai;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    :goto_21
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    if-eqz p5, :cond_2d

    #@29
    invoke-interface {p5}, Lcom/google/android/gms/internal/bv;->asBinder()Landroid/os/IBinder;

    #@2c
    move-result-object v0

    #@2d
    :cond_2d
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@30
    iget-object v0, p0, Lcom/google/android/gms/internal/bu$a$a;->kq:Landroid/os/IBinder;

    #@32
    const/4 v1, 0x7

    #@33
    const/4 v4, 0x0

    #@34
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@37
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_48

    #@3a
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@40
    return-void

    #@41
    :cond_41
    move-object v1, v0

    #@42
    goto :goto_14

    #@43
    :cond_43
    const/4 v1, 0x0

    #@44
    :try_start_44
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    #@47
    goto :goto_21

    #@48
    :catchall_48
    move-exception v0

    #@49
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@4c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4f
    throw v0
.end method

.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V
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
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_48

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    if-eqz p2, :cond_4a

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
    if-eqz p3, :cond_57

    #@23
    const/4 v1, 0x1

    #@24
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    const/4 v1, 0x0

    #@28
    invoke-virtual {p3, v2, v1}, Lcom/google/android/gms/internal/ai;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    :goto_2b
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2e
    if-eqz p5, :cond_34

    #@30
    invoke-interface {p5}, Lcom/google/android/gms/internal/bv;->asBinder()Landroid/os/IBinder;

    #@33
    move-result-object v0

    #@34
    :cond_34
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@37
    iget-object v0, p0, Lcom/google/android/gms/internal/bu$a$a;->kq:Landroid/os/IBinder;

    #@39
    const/4 v1, 0x1

    #@3a
    const/4 v4, 0x0

    #@3b
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3e
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_4f

    #@41
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@44
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@47
    return-void

    #@48
    :cond_48
    move-object v1, v0

    #@49
    goto :goto_14

    #@4a
    :cond_4a
    const/4 v1, 0x0

    #@4b
    :try_start_4b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    #@4e
    goto :goto_21

    #@4f
    :catchall_4f
    move-exception v0

    #@50
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@53
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@56
    throw v0

    #@57
    :cond_57
    const/4 v1, 0x0

    #@58
    :try_start_58
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_4f

    #@5b
    goto :goto_2b
.end method

.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V
    .registers 12
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
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_4b

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    if-eqz p2, :cond_4d

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
    if-eqz p3, :cond_5a

    #@23
    const/4 v1, 0x1

    #@24
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    const/4 v1, 0x0

    #@28
    invoke-virtual {p3, v2, v1}, Lcom/google/android/gms/internal/ai;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    :goto_2b
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2e
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@31
    if-eqz p6, :cond_37

    #@33
    invoke-interface {p6}, Lcom/google/android/gms/internal/bv;->asBinder()Landroid/os/IBinder;

    #@36
    move-result-object v0

    #@37
    :cond_37
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@3a
    iget-object v0, p0, Lcom/google/android/gms/internal/bu$a$a;->kq:Landroid/os/IBinder;

    #@3c
    const/4 v1, 0x6

    #@3d
    const/4 v4, 0x0

    #@3e
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@41
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_44
    .catchall {:try_start_9 .. :try_end_44} :catchall_52

    #@44
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@47
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4a
    return-void

    #@4b
    :cond_4b
    move-object v1, v0

    #@4c
    goto :goto_14

    #@4d
    :cond_4d
    const/4 v1, 0x0

    #@4e
    :try_start_4e
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    #@51
    goto :goto_21

    #@52
    :catchall_52
    move-exception v0

    #@53
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@56
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@59
    throw v0

    #@5a
    :cond_5a
    const/4 v1, 0x0

    #@5b
    :try_start_5b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_52

    #@5e
    goto :goto_2b
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/bu$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public destroy()V
    .registers 6
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
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/bu$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x5

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@14
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1d
    return-void

    #@1e
    :catchall_1e
    move-exception v0

    #@1f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@22
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    throw v0
.end method

.method public getView()Lcom/google/android/gms/dynamic/d;
    .registers 6
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
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/bu$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x2

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@14
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@22
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    return-object v0

    #@26
    :catchall_26
    move-exception v0

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    throw v0
.end method

.method public pause()V
    .registers 6
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
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/bu$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x8

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    return-void

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    throw v0
.end method

.method public resume()V
    .registers 6
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
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/bu$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x9

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    return-void

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    throw v0
.end method

.method public showInterstitial()V
    .registers 6
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
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/bu$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x4

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@14
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1d
    return-void

    #@1e
    :catchall_1e
    move-exception v0

    #@1f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@22
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    throw v0
.end method
