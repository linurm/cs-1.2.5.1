.class public abstract Lcom/google/android/gms/internal/jd$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/jd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jd$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.location.internal.IGeofencerCallbacks"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/jd$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static ar(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jd;
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
    const-string v0, "com.google.android.gms.location.internal.IGeofencerCallbacks"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/jd;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/jd;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/jd$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jd$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x1

    #@1
    sparse-switch p1, :sswitch_data_5c

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const-string v0, "com.google.android.gms.location.internal.IGeofencerCallbacks"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    move v0, v1

    #@f
    goto :goto_8

    #@10
    :sswitch_10
    const-string v0, "com.google.android.gms.location.internal.IGeofencerCallbacks"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/jd$a;->onAddGeofencesResult(I[Ljava/lang/String;)V

    #@20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@23
    move v0, v1

    #@24
    goto :goto_8

    #@25
    :sswitch_25
    const-string v0, "com.google.android.gms.location.internal.IGeofencerCallbacks"

    #@27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v0

    #@2e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/jd$a;->onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V

    #@35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@38
    move v0, v1

    #@39
    goto :goto_8

    #@3a
    :sswitch_3a
    const-string v0, "com.google.android.gms.location.internal.IGeofencerCallbacks"

    #@3c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v2

    #@43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_59

    #@49
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4b
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Landroid/app/PendingIntent;

    #@51
    :goto_51
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/jd$a;->onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V

    #@54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@57
    move v0, v1

    #@58
    goto :goto_8

    #@59
    :cond_59
    const/4 v0, 0x0

    #@5a
    goto :goto_51

    #@5b
    nop

    #@5c
    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_25
        0x3 -> :sswitch_3a
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
