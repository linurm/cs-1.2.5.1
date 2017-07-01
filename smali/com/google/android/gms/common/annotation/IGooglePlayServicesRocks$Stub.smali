.class public abstract Lcom/google/android/gms/common/annotation/IGooglePlayServicesRocks$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/common/annotation/IGooglePlayServicesRocks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/annotation/IGooglePlayServicesRocks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/annotation/IGooglePlayServicesRocks$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.common.annotation.IGooglePlayServicesRocks"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/common/annotation/IGooglePlayServicesRocks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/annotation/IGooglePlayServicesRocks;
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
    const-string v0, "com.google.android.gms.common.annotation.IGooglePlayServicesRocks"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/common/annotation/IGooglePlayServicesRocks;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/common/annotation/IGooglePlayServicesRocks;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/common/annotation/IGooglePlayServicesRocks$Stub$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/annotation/IGooglePlayServicesRocks$Stub$a;-><init>(Landroid/os/IBinder;)V

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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    packed-switch p1, :pswitch_data_10

    #@3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v0

    #@7
    :goto_7
    return v0

    #@8
    :pswitch_8
    const-string v0, "com.google.android.gms.common.annotation.IGooglePlayServicesRocks"

    #@a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    const/4 v0, 0x1

    #@e
    goto :goto_7

    #@f
    nop

    #@10
    :pswitch_data_10
    .packed-switch 0x5f4e5446
        :pswitch_8
    .end packed-switch
.end method
