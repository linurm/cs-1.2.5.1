.class public abstract Lcom/google/android/gms/internal/fv$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/fv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fv$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/fv$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static B(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fv;
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
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/fv;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/fv;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/fv$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fv$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    #@0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    sparse-switch p1, :sswitch_data_6c

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v2

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v1, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_22

    #@1c
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    #@1e
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    #@21
    move-result-object v0

    #@22
    :cond_22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fv$a;->a(Lcom/google/android/gms/common/api/Status;)V

    #@25
    move v0, v2

    #@26
    goto :goto_9

    #@27
    :sswitch_27
    const-string v1, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks"

    #@29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_4b

    #@32
    sget-object v1, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    #@34
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    #@37
    move-result-object v1

    #@38
    :goto_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_46

    #@3e
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    #@46
    :cond_46
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/fv$a;->a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V

    #@49
    move v0, v2

    #@4a
    goto :goto_9

    #@4b
    :cond_4b
    move-object v1, v0

    #@4c
    goto :goto_38

    #@4d
    :sswitch_4d
    const-string v1, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks"

    #@4f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v1

    #@56
    if-eqz v1, :cond_5e

    #@58
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    #@5a
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    #@5d
    move-result-object v0

    #@5e
    :cond_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v1

    #@62
    if-eqz v1, :cond_6a

    #@64
    move v1, v2

    #@65
    :goto_65
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/fv$a;->a(Lcom/google/android/gms/common/api/Status;Z)V

    #@68
    move v0, v2

    #@69
    goto :goto_9

    #@6a
    :cond_6a
    const/4 v1, 0x0

    #@6b
    goto :goto_65

    #@6c
    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_27
        0x3 -> :sswitch_4d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
