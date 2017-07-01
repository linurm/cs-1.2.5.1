.class public abstract Landroid/support/v4/app/INotificationSideChannel$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/support/v4/app/INotificationSideChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/INotificationSideChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.app.INotificationSideChannel"

.field static final TRANSACTION_cancel:I = 0x2

.field static final TRANSACTION_cancelAll:I = 0x3

.field static final TRANSACTION_notify:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "android.support.v4.app.INotificationSideChannel"

    #@5
    invoke-virtual {p0, p0, v0}, Landroid/support/v4/app/INotificationSideChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/app/INotificationSideChannel;
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
    const-string v0, "android.support.v4.app.INotificationSideChannel"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Landroid/support/v4/app/INotificationSideChannel;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Landroid/support/v4/app/INotificationSideChannel;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;

    #@15
    invoke-direct {v0, p0}, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    sparse-switch p1, :sswitch_data_5a

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const-string v0, "android.support.v4.app.INotificationSideChannel"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    move v0, v1

    #@f
    goto :goto_8

    #@10
    :sswitch_10
    const-string v0, "android.support.v4.app.INotificationSideChannel"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_34

    #@27
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@29
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/app/Notification;

    #@2f
    :goto_2f
    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/support/v4/app/INotificationSideChannel$Stub;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    #@32
    move v0, v1

    #@33
    goto :goto_8

    #@34
    :cond_34
    const/4 v0, 0x0

    #@35
    goto :goto_2f

    #@36
    :sswitch_36
    const-string v0, "android.support.v4.app.INotificationSideChannel"

    #@38
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v2

    #@43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v4/app/INotificationSideChannel$Stub;->cancel(Ljava/lang/String;ILjava/lang/String;)V

    #@4a
    move v0, v1

    #@4b
    goto :goto_8

    #@4c
    :sswitch_4c
    const-string v0, "android.support.v4.app.INotificationSideChannel"

    #@4e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {p0, v0}, Landroid/support/v4/app/INotificationSideChannel$Stub;->cancelAll(Ljava/lang/String;)V

    #@58
    move v0, v1

    #@59
    goto :goto_8

    #@5a
    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_36
        0x3 -> :sswitch_4c
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
