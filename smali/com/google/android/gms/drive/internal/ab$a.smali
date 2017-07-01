.class public abstract Lcom/google/android/gms/drive/internal/ab$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/drive/internal/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/internal/ab$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/drive/internal/ab$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/drive/internal/ab;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/drive/internal/ab;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/drive/internal/ab$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/ab$a$a;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_156

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v1

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_24

    #@1c
    sget-object v0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;

    #@24
    :cond_24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/ab$a;->a(Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;)V

    #@27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a
    move v0, v1

    #@2b
    goto :goto_9

    #@2c
    :sswitch_2c
    const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    #@2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_3f

    #@37
    sget-object v0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@39
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;

    #@3f
    :cond_3f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/ab$a;->a(Lcom/google/android/gms/drive/internal/OnListEntriesResponse;)V

    #@42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@45
    move v0, v1

    #@46
    goto :goto_9

    #@47
    :sswitch_47
    const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    #@49
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_5a

    #@52
    sget-object v0, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@54
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;

    #@5a
    :cond_5a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/ab$a;->a(Lcom/google/android/gms/drive/internal/OnDriveIdResponse;)V

    #@5d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@60
    move v0, v1

    #@61
    goto :goto_9

    #@62
    :sswitch_62
    const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    #@64
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6a
    move-result v2

    #@6b
    if-eqz v2, :cond_75

    #@6d
    sget-object v0, Lcom/google/android/gms/drive/internal/OnMetadataResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6f
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@72
    move-result-object v0

    #@73
    check-cast v0, Lcom/google/android/gms/drive/internal/OnMetadataResponse;

    #@75
    :cond_75
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/ab$a;->a(Lcom/google/android/gms/drive/internal/OnMetadataResponse;)V

    #@78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b
    move v0, v1

    #@7c
    goto :goto_9

    #@7d
    :sswitch_7d
    const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    #@7f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@85
    move-result v2

    #@86
    if-eqz v2, :cond_90

    #@88
    sget-object v0, Lcom/google/android/gms/drive/internal/OnContentsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8a
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8d
    move-result-object v0

    #@8e
    check-cast v0, Lcom/google/android/gms/drive/internal/OnContentsResponse;

    #@90
    :cond_90
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/ab$a;->a(Lcom/google/android/gms/drive/internal/OnContentsResponse;)V

    #@93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@96
    move v0, v1

    #@97
    goto/16 :goto_9

    #@99
    :sswitch_99
    const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    #@9b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a1
    move-result v2

    #@a2
    if-eqz v2, :cond_aa

    #@a4
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    #@a6
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    #@a9
    move-result-object v0

    #@aa
    :cond_aa
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/ab$a;->o(Lcom/google/android/gms/common/api/Status;)V

    #@ad
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b0
    move v0, v1

    #@b1
    goto/16 :goto_9

    #@b3
    :sswitch_b3
    const-string v0, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    #@b5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8
    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/ab$a;->onSuccess()V

    #@bb
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@be
    move v0, v1

    #@bf
    goto/16 :goto_9

    #@c1
    :sswitch_c1
    const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    #@c3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c9
    move-result v2

    #@ca
    if-eqz v2, :cond_d4

    #@cc
    sget-object v0, Lcom/google/android/gms/drive/internal/OnListParentsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ce
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d1
    move-result-object v0

    #@d2
    check-cast v0, Lcom/google/android/gms/drive/internal/OnListParentsResponse;

    #@d4
    :cond_d4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/ab$a;->a(Lcom/google/android/gms/drive/internal/OnListParentsResponse;)V

    #@d7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@da
    move v0, v1

    #@db
    goto/16 :goto_9

    #@dd
    :sswitch_dd
    const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    #@df
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e5
    move-result v2

    #@e6
    if-eqz v2, :cond_f0

    #@e8
    sget-object v0, Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ea
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ed
    move-result-object v0

    #@ee
    check-cast v0, Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;

    #@f0
    :cond_f0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/ab$a;->a(Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;)V

    #@f3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f6
    move v0, v1

    #@f7
    goto/16 :goto_9

    #@f9
    :sswitch_f9
    const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    #@fb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@101
    move-result v2

    #@102
    if-eqz v2, :cond_10c

    #@104
    sget-object v0, Lcom/google/android/gms/drive/internal/OnStorageStatsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@106
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@109
    move-result-object v0

    #@10a
    check-cast v0, Lcom/google/android/gms/drive/internal/OnStorageStatsResponse;

    #@10c
    :cond_10c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/ab$a;->a(Lcom/google/android/gms/drive/internal/OnStorageStatsResponse;)V

    #@10f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@112
    move v0, v1

    #@113
    goto/16 :goto_9

    #@115
    :sswitch_115
    const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    #@117
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11d
    move-result v2

    #@11e
    if-eqz v2, :cond_128

    #@120
    sget-object v0, Lcom/google/android/gms/drive/internal/OnLoadRealtimeResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@122
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@125
    move-result-object v0

    #@126
    check-cast v0, Lcom/google/android/gms/drive/internal/OnLoadRealtimeResponse;

    #@128
    :cond_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@12b
    move-result-object v2

    #@12c
    invoke-static {v2}, Lcom/google/android/gms/drive/realtime/internal/m$a;->ac(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/m;

    #@12f
    move-result-object v2

    #@130
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/ab$a;->a(Lcom/google/android/gms/drive/internal/OnLoadRealtimeResponse;Lcom/google/android/gms/drive/realtime/internal/m;)V

    #@133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@136
    move v0, v1

    #@137
    goto/16 :goto_9

    #@139
    :sswitch_139
    const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    #@13b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@141
    move-result v2

    #@142
    if-eqz v2, :cond_14c

    #@144
    sget-object v0, Lcom/google/android/gms/drive/internal/OnResourceIdSetResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@146
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@149
    move-result-object v0

    #@14a
    check-cast v0, Lcom/google/android/gms/drive/internal/OnResourceIdSetResponse;

    #@14c
    :cond_14c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/ab$a;->a(Lcom/google/android/gms/drive/internal/OnResourceIdSetResponse;)V

    #@14f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@152
    move v0, v1

    #@153
    goto/16 :goto_9

    #@155
    nop

    #@156
    :sswitch_data_156
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_47
        0x4 -> :sswitch_62
        0x5 -> :sswitch_7d
        0x6 -> :sswitch_99
        0x7 -> :sswitch_b3
        0x8 -> :sswitch_c1
        0x9 -> :sswitch_dd
        0xa -> :sswitch_f9
        0xb -> :sswitch_115
        0xc -> :sswitch_139
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
