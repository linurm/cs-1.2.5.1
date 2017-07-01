.class public abstract Lcom/google/android/gms/wearable/internal/ac$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/wearable/internal/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/internal/ac$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.wearable.internal.IWearableListener"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/wearable/internal/ac$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static bx(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;
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
    const-string v0, "com.google.android.gms.wearable.internal.IWearableListener"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/wearable/internal/ac;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/wearable/internal/ac;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/wearable/internal/ac$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/ac$a$a;-><init>(Landroid/os/IBinder;)V

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
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    sparse-switch p1, :sswitch_data_70

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.wearable.internal.IWearableListener"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v1

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v2, "com.google.android.gms.wearable.internal.IWearableListener"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_22

    #@1c
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@1e
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@21
    move-result-object v0

    #@22
    :cond_22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ac$a;->Y(Lcom/google/android/gms/common/data/DataHolder;)V

    #@25
    move v0, v1

    #@26
    goto :goto_9

    #@27
    :sswitch_27
    const-string v2, "com.google.android.gms.wearable.internal.IWearableListener"

    #@29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_3a

    #@32
    sget-object v0, Lcom/google/android/gms/wearable/internal/af;->CREATOR:Landroid/os/Parcelable$Creator;

    #@34
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Lcom/google/android/gms/wearable/internal/af;

    #@3a
    :cond_3a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ac$a;->a(Lcom/google/android/gms/wearable/internal/af;)V

    #@3d
    move v0, v1

    #@3e
    goto :goto_9

    #@3f
    :sswitch_3f
    const-string v2, "com.google.android.gms.wearable.internal.IWearableListener"

    #@41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_52

    #@4a
    sget-object v0, Lcom/google/android/gms/wearable/internal/ai;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4c
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Lcom/google/android/gms/wearable/internal/ai;

    #@52
    :cond_52
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ac$a;->a(Lcom/google/android/gms/wearable/internal/ai;)V

    #@55
    move v0, v1

    #@56
    goto :goto_9

    #@57
    :sswitch_57
    const-string v2, "com.google.android.gms.wearable.internal.IWearableListener"

    #@59
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v2

    #@60
    if-eqz v2, :cond_6a

    #@62
    sget-object v0, Lcom/google/android/gms/wearable/internal/ai;->CREATOR:Landroid/os/Parcelable$Creator;

    #@64
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@67
    move-result-object v0

    #@68
    check-cast v0, Lcom/google/android/gms/wearable/internal/ai;

    #@6a
    :cond_6a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ac$a;->b(Lcom/google/android/gms/wearable/internal/ai;)V

    #@6d
    move v0, v1

    #@6e
    goto :goto_9

    #@6f
    nop

    #@70
    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_57
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
