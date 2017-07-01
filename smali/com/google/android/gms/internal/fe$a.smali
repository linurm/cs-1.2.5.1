.class public abstract Lcom/google/android/gms/internal/fe$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/fe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fe$a$a;
    }
.end annotation


# direct methods
.method public static z(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fe;
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
    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/fe;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/fe;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/fe$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fe$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v6, 0x1

    #@1
    sparse-switch p1, :sswitch_data_56

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    move v0, v6

    #@f
    goto :goto_8

    #@10
    :sswitch_10
    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@24
    move-result-wide v2

    #@25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    sget-object v0, Lcom/google/android/gms/internal/fd;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@2e
    move-result-object v5

    #@2f
    move-object v0, p0

    #@30
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fe$a;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    #@33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@36
    move v0, v6

    #@37
    goto :goto_8

    #@38
    :sswitch_38
    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    #@3a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fe$a;->cl()V

    #@40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@43
    move v0, v6

    #@44
    goto :goto_8

    #@45
    :sswitch_45
    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    #@47
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fe$a;->getVersion()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@51
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@54
    move v0, v6

    #@55
    goto :goto_8

    #@56
    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_38
        0x3 -> :sswitch_45
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
