.class public abstract Lcom/google/android/gms/internal/gc$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/gc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gc$a$a;
    }
.end annotation


# direct methods
.method public static F(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gc;
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    const-string v0, "com.google.android.gms.appstate.internal.IAppStateService"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/gc;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/gc;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/gc$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gc$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    sparse-switch p1, :sswitch_data_dc

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    #@b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    goto :goto_8

    #@f
    :sswitch_f
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    #@11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gc$a;->dU()I

    #@17
    move-result v1

    #@18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    goto :goto_8

    #@1f
    :sswitch_1f
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    #@21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gc$a;->dV()I

    #@27
    move-result v1

    #@28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    goto :goto_8

    #@2f
    :sswitch_2f
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    #@31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@37
    move-result-object v1

    #@38
    invoke-static {v1}, Lcom/google/android/gms/internal/gb$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gb;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v2

    #@40
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@43
    move-result-object v3

    #@44
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/gc$a;->a(Lcom/google/android/gms/internal/gb;I[B)V

    #@47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a
    goto :goto_8

    #@4b
    :sswitch_4b
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    #@4d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@53
    move-result-object v1

    #@54
    invoke-static {v1}, Lcom/google/android/gms/internal/gb$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gb;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v2

    #@5c
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/gc$a;->a(Lcom/google/android/gms/internal/gb;I)V

    #@5f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@62
    goto :goto_8

    #@63
    :sswitch_63
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    #@65
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6b
    move-result-object v1

    #@6c
    invoke-static {v1}, Lcom/google/android/gms/internal/gb$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gb;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gc$a;->a(Lcom/google/android/gms/internal/gb;)V

    #@73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@76
    goto :goto_8

    #@77
    :sswitch_77
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    #@79
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7f
    move-result-object v1

    #@80
    invoke-static {v1}, Lcom/google/android/gms/internal/gb$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gb;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@87
    move-result v2

    #@88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/gc$a;->a(Lcom/google/android/gms/internal/gb;ILjava/lang/String;[B)V

    #@93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@96
    goto/16 :goto_8

    #@98
    :sswitch_98
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    #@9a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a0
    move-result-object v1

    #@a1
    invoke-static {v1}, Lcom/google/android/gms/internal/gb$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gb;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a8
    move-result v2

    #@a9
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/gc$a;->b(Lcom/google/android/gms/internal/gb;I)V

    #@ac
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@af
    goto/16 :goto_8

    #@b1
    :sswitch_b1
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    #@b3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b9
    move-result-object v1

    #@ba
    invoke-static {v1}, Lcom/google/android/gms/internal/gb$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gb;

    #@bd
    move-result-object v1

    #@be
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gc$a;->b(Lcom/google/android/gms/internal/gb;)V

    #@c1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c4
    goto/16 :goto_8

    #@c6
    :sswitch_c6
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    #@c8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ce
    move-result-object v1

    #@cf
    invoke-static {v1}, Lcom/google/android/gms/internal/gb$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gb;

    #@d2
    move-result-object v1

    #@d3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gc$a;->c(Lcom/google/android/gms/internal/gb;)V

    #@d6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d9
    goto/16 :goto_8

    #@db
    nop

    #@dc
    :sswitch_data_dc
    .sparse-switch
        0x1389 -> :sswitch_f
        0x138a -> :sswitch_1f
        0x138b -> :sswitch_2f
        0x138c -> :sswitch_4b
        0x138d -> :sswitch_63
        0x138e -> :sswitch_77
        0x138f -> :sswitch_98
        0x1390 -> :sswitch_b1
        0x1391 -> :sswitch_c6
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
