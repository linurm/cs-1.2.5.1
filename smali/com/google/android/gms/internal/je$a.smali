.class public abstract Lcom/google/android/gms/internal/je$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/je;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/je$a$a;
    }
.end annotation


# direct methods
.method public static as(Landroid/os/IBinder;)Lcom/google/android/gms/internal/je;
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/je;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/je;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/je$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/je$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    sparse-switch p1, :sswitch_data_51c

    #@6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v7

    #@a
    :goto_a
    return v7

    #@b
    :sswitch_b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    goto :goto_a

    #@11
    :sswitch_11
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    sget-object v0, Lcom/google/android/gms/internal/jh;->CREATOR:Lcom/google/android/gms/internal/ji;

    #@18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_3d

    #@22
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Landroid/app/PendingIntent;

    #@2a
    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v2}, Lcom/google/android/gms/internal/jd$a;->ar(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jd;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/je$a;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/jd;Ljava/lang/String;)V

    #@39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c
    goto :goto_a

    #@3d
    :cond_3d
    move-object v0, v5

    #@3e
    goto :goto_2a

    #@3f
    :sswitch_3f
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@41
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_65

    #@4a
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4c
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Landroid/app/PendingIntent;

    #@52
    :goto_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@55
    move-result-object v1

    #@56
    invoke-static {v1}, Lcom/google/android/gms/internal/jd$a;->ar(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jd;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/je$a;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/jd;Ljava/lang/String;)V

    #@61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@64
    goto :goto_a

    #@65
    :cond_65
    move-object v0, v5

    #@66
    goto :goto_52

    #@67
    :sswitch_67
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@73
    move-result-object v1

    #@74
    invoke-static {v1}, Lcom/google/android/gms/internal/jd$a;->ar(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jd;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/je$a;->a([Ljava/lang/String;Lcom/google/android/gms/internal/jd;Ljava/lang/String;)V

    #@7f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@82
    goto :goto_a

    #@83
    :sswitch_83
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8b
    move-result-object v0

    #@8c
    invoke-static {v0}, Lcom/google/android/gms/internal/jd$a;->ar(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jd;

    #@8f
    move-result-object v0

    #@90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/android/gms/internal/jd;Ljava/lang/String;)V

    #@97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9a
    goto/16 :goto_a

    #@9c
    :sswitch_9c
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@9e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@a4
    move-result-wide v2

    #@a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a8
    move-result v1

    #@a9
    if-eqz v1, :cond_c2

    #@ab
    move v1, v7

    #@ac
    :goto_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@af
    move-result v0

    #@b0
    if-eqz v0, :cond_c4

    #@b2
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b4
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b7
    move-result-object v0

    #@b8
    check-cast v0, Landroid/app/PendingIntent;

    #@ba
    :goto_ba
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/google/android/gms/internal/je$a;->a(JZLandroid/app/PendingIntent;)V

    #@bd
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c0
    goto/16 :goto_a

    #@c2
    :cond_c2
    move v1, v0

    #@c3
    goto :goto_ac

    #@c4
    :cond_c4
    move-object v0, v5

    #@c5
    goto :goto_ba

    #@c6
    :sswitch_c6
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@c8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ce
    move-result v0

    #@cf
    if-eqz v0, :cond_e1

    #@d1
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d3
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d6
    move-result-object v0

    #@d7
    check-cast v0, Landroid/app/PendingIntent;

    #@d9
    :goto_d9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/je$a;->removeActivityUpdates(Landroid/app/PendingIntent;)V

    #@dc
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@df
    goto/16 :goto_a

    #@e1
    :cond_e1
    move-object v0, v5

    #@e2
    goto :goto_d9

    #@e3
    :sswitch_e3
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@e5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/je$a;->iW()Landroid/location/Location;

    #@eb
    move-result-object v1

    #@ec
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ef
    if-eqz v1, :cond_f9

    #@f1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@f4
    invoke-virtual {v1, p3, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    #@f7
    goto/16 :goto_a

    #@f9
    :cond_f9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@fc
    goto/16 :goto_a

    #@fe
    :sswitch_fe
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@100
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@106
    move-result v0

    #@107
    if-eqz v0, :cond_10f

    #@109
    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

    #@10b
    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/LocationRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    #@10e
    move-result-object v5

    #@10f
    :cond_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@112
    move-result-object v0

    #@113
    invoke-static {v0}, Lcom/google/android/gms/location/a$a;->aq(Landroid/os/IBinder;)Lcom/google/android/gms/location/a;

    #@116
    move-result-object v0

    #@117
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/a;)V

    #@11a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@11d
    goto/16 :goto_a

    #@11f
    :sswitch_11f
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@127
    move-result v0

    #@128
    if-eqz v0, :cond_147

    #@12a
    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

    #@12c
    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/LocationRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    #@12f
    move-result-object v0

    #@130
    move-object v1, v0

    #@131
    :goto_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@134
    move-result v0

    #@135
    if-eqz v0, :cond_149

    #@137
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@139
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13c
    move-result-object v0

    #@13d
    check-cast v0, Landroid/app/PendingIntent;

    #@13f
    :goto_13f
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    #@142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@145
    goto/16 :goto_a

    #@147
    :cond_147
    move-object v1, v5

    #@148
    goto :goto_131

    #@149
    :cond_149
    move-object v0, v5

    #@14a
    goto :goto_13f

    #@14b
    :sswitch_14b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@14d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@153
    move-result-object v0

    #@154
    invoke-static {v0}, Lcom/google/android/gms/location/a$a;->aq(Landroid/os/IBinder;)Lcom/google/android/gms/location/a;

    #@157
    move-result-object v0

    #@158
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/android/gms/location/a;)V

    #@15b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15e
    goto/16 :goto_a

    #@160
    :sswitch_160
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@162
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@168
    move-result v0

    #@169
    if-eqz v0, :cond_17b

    #@16b
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16d
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@170
    move-result-object v0

    #@171
    check-cast v0, Landroid/app/PendingIntent;

    #@173
    :goto_173
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/je$a;->a(Landroid/app/PendingIntent;)V

    #@176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@179
    goto/16 :goto_a

    #@17b
    :cond_17b
    move-object v0, v5

    #@17c
    goto :goto_173

    #@17d
    :sswitch_17d
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@17f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@185
    move-result v1

    #@186
    if-eqz v1, :cond_189

    #@188
    move v0, v7

    #@189
    :cond_189
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/je$a;->setMockMode(Z)V

    #@18c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@18f
    goto/16 :goto_a

    #@191
    :sswitch_191
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@193
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@199
    move-result v0

    #@19a
    if-eqz v0, :cond_1ac

    #@19c
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a1
    move-result-object v0

    #@1a2
    check-cast v0, Landroid/location/Location;

    #@1a4
    :goto_1a4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/je$a;->setMockLocation(Landroid/location/Location;)V

    #@1a7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1aa
    goto/16 :goto_a

    #@1ac
    :cond_1ac
    move-object v0, v5

    #@1ad
    goto :goto_1a4

    #@1ae
    :sswitch_1ae
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@1b0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1b6
    move-result v0

    #@1b7
    if-eqz v0, :cond_1ec

    #@1b9
    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    #@1bb
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    #@1be
    move-result-object v1

    #@1bf
    :goto_1bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1c2
    move-result v2

    #@1c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1c6
    move-result v0

    #@1c7
    if-eqz v0, :cond_1ee

    #@1c9
    sget-object v0, Lcom/google/android/gms/internal/jm;->CREATOR:Lcom/google/android/gms/internal/jn;

    #@1cb
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jn;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jm;

    #@1ce
    move-result-object v3

    #@1cf
    :goto_1cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d2
    move-result v0

    #@1d3
    if-eqz v0, :cond_1f0

    #@1d5
    sget-object v0, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@1d7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kb;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ka;

    #@1da
    move-result-object v4

    #@1db
    :goto_1db
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1de
    move-result-object v0

    #@1df
    invoke-static {v0}, Lcom/google/android/gms/internal/jy$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jy;

    #@1e2
    move-result-object v5

    #@1e3
    move-object v0, p0

    #@1e4
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V

    #@1e7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ea
    goto/16 :goto_a

    #@1ec
    :cond_1ec
    move-object v1, v5

    #@1ed
    goto :goto_1bf

    #@1ee
    :cond_1ee
    move-object v3, v5

    #@1ef
    goto :goto_1cf

    #@1f0
    :cond_1f0
    move-object v4, v5

    #@1f1
    goto :goto_1db

    #@1f2
    :sswitch_1f2
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@1f4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1fa
    move-result v0

    #@1fb
    if-eqz v0, :cond_234

    #@1fd
    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    #@1ff
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    #@202
    move-result-object v1

    #@203
    :goto_203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@206
    move-result v2

    #@207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20a
    move-result-object v3

    #@20b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@20e
    move-result v0

    #@20f
    if-eqz v0, :cond_236

    #@211
    sget-object v0, Lcom/google/android/gms/internal/jm;->CREATOR:Lcom/google/android/gms/internal/jn;

    #@213
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jn;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jm;

    #@216
    move-result-object v4

    #@217
    :goto_217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21a
    move-result v0

    #@21b
    if-eqz v0, :cond_223

    #@21d
    sget-object v0, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@21f
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kb;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ka;

    #@222
    move-result-object v5

    #@223
    :cond_223
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@226
    move-result-object v0

    #@227
    invoke-static {v0}, Lcom/google/android/gms/internal/jy$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jy;

    #@22a
    move-result-object v6

    #@22b
    move-object v0, p0

    #@22c
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V

    #@22f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@232
    goto/16 :goto_a

    #@234
    :cond_234
    move-object v1, v5

    #@235
    goto :goto_203

    #@236
    :cond_236
    move-object v4, v5

    #@237
    goto :goto_217

    #@238
    :sswitch_238
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@23a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@240
    move-result-object v0

    #@241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@244
    move-result v1

    #@245
    if-eqz v1, :cond_24d

    #@247
    sget-object v1, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@249
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kb;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ka;

    #@24c
    move-result-object v5

    #@24d
    :cond_24d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@250
    move-result-object v1

    #@251
    invoke-static {v1}, Lcom/google/android/gms/internal/jy$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jy;

    #@254
    move-result-object v1

    #@255
    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/je$a;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V

    #@258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@25b
    goto/16 :goto_a

    #@25d
    :sswitch_25d
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@25f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@265
    move-result v0

    #@266
    if-eqz v0, :cond_296

    #@268
    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@26a
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    #@26d
    move-result-object v0

    #@26e
    :goto_26e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@271
    move-result v1

    #@272
    if-eqz v1, :cond_298

    #@274
    sget-object v1, Lcom/google/android/gms/internal/jm;->CREATOR:Lcom/google/android/gms/internal/jn;

    #@276
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/jn;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jm;

    #@279
    move-result-object v1

    #@27a
    :goto_27a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27d
    move-result v2

    #@27e
    if-eqz v2, :cond_286

    #@280
    sget-object v2, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@282
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/kb;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ka;

    #@285
    move-result-object v5

    #@286
    :cond_286
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@289
    move-result-object v2

    #@28a
    invoke-static {v2}, Lcom/google/android/gms/internal/jy$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jy;

    #@28d
    move-result-object v2

    #@28e
    invoke-virtual {p0, v0, v1, v5, v2}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V

    #@291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@294
    goto/16 :goto_a

    #@296
    :cond_296
    move-object v0, v5

    #@297
    goto :goto_26e

    #@298
    :cond_298
    move-object v1, v5

    #@299
    goto :goto_27a

    #@29a
    :sswitch_29a
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@29c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2a2
    move-result v0

    #@2a3
    if-eqz v0, :cond_2c7

    #@2a5
    sget-object v0, Lcom/google/android/gms/internal/jm;->CREATOR:Lcom/google/android/gms/internal/jn;

    #@2a7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jn;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jm;

    #@2aa
    move-result-object v0

    #@2ab
    :goto_2ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2ae
    move-result v1

    #@2af
    if-eqz v1, :cond_2b7

    #@2b1
    sget-object v1, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@2b3
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kb;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ka;

    #@2b6
    move-result-object v5

    #@2b7
    :cond_2b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2ba
    move-result-object v1

    #@2bb
    invoke-static {v1}, Lcom/google/android/gms/internal/jy$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jy;

    #@2be
    move-result-object v1

    #@2bf
    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V

    #@2c2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c5
    goto/16 :goto_a

    #@2c7
    :cond_2c7
    move-object v0, v5

    #@2c8
    goto :goto_2ab

    #@2c9
    :sswitch_2c9
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@2cb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d1
    move-result-object v0

    #@2d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2d5
    move-result v1

    #@2d6
    if-eqz v1, :cond_2de

    #@2d8
    sget-object v1, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@2da
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kb;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ka;

    #@2dd
    move-result-object v5

    #@2de
    :cond_2de
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2e1
    move-result-object v1

    #@2e2
    invoke-static {v1}, Lcom/google/android/gms/internal/jy$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jy;

    #@2e5
    move-result-object v1

    #@2e6
    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/je$a;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V

    #@2e9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ec
    goto/16 :goto_a

    #@2ee
    :sswitch_2ee
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@2f0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f6
    move-result-object v1

    #@2f7
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@2fa
    move-result-object v2

    #@2fb
    sget-object v0, Lcom/google/android/gms/internal/jw;->CREATOR:Lcom/google/android/gms/internal/jx;

    #@2fd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@300
    move-result-object v3

    #@301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@304
    move-result v0

    #@305
    if-eqz v0, :cond_31e

    #@307
    sget-object v0, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@309
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kb;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ka;

    #@30c
    move-result-object v4

    #@30d
    :goto_30d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@310
    move-result-object v0

    #@311
    invoke-static {v0}, Lcom/google/android/gms/internal/jy$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jy;

    #@314
    move-result-object v5

    #@315
    move-object v0, p0

    #@316
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/je$a;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V

    #@319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@31c
    goto/16 :goto_a

    #@31e
    :cond_31e
    move-object v4, v5

    #@31f
    goto :goto_30d

    #@320
    :sswitch_320
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@322
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@328
    move-result v0

    #@329
    if-eqz v0, :cond_355

    #@32b
    sget-object v0, Lcom/google/android/gms/internal/jq;->CREATOR:Lcom/google/android/gms/internal/jr;

    #@32d
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jr;->bx(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jq;

    #@330
    move-result-object v0

    #@331
    move-object v1, v0

    #@332
    :goto_332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@335
    move-result v0

    #@336
    if-eqz v0, :cond_357

    #@338
    sget-object v0, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@33a
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kb;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ka;

    #@33d
    move-result-object v0

    #@33e
    move-object v2, v0

    #@33f
    :goto_33f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@342
    move-result v0

    #@343
    if-eqz v0, :cond_359

    #@345
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@347
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34a
    move-result-object v0

    #@34b
    check-cast v0, Landroid/app/PendingIntent;

    #@34d
    :goto_34d
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/android/gms/internal/jq;Lcom/google/android/gms/internal/ka;Landroid/app/PendingIntent;)V

    #@350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@353
    goto/16 :goto_a

    #@355
    :cond_355
    move-object v1, v5

    #@356
    goto :goto_332

    #@357
    :cond_357
    move-object v2, v5

    #@358
    goto :goto_33f

    #@359
    :cond_359
    move-object v0, v5

    #@35a
    goto :goto_34d

    #@35b
    :sswitch_35b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@35d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@363
    move-result v0

    #@364
    if-eqz v0, :cond_383

    #@366
    sget-object v0, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@368
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kb;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ka;

    #@36b
    move-result-object v0

    #@36c
    move-object v1, v0

    #@36d
    :goto_36d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@370
    move-result v0

    #@371
    if-eqz v0, :cond_385

    #@373
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@375
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@378
    move-result-object v0

    #@379
    check-cast v0, Landroid/app/PendingIntent;

    #@37b
    :goto_37b
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/android/gms/internal/ka;Landroid/app/PendingIntent;)V

    #@37e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@381
    goto/16 :goto_a

    #@383
    :cond_383
    move-object v1, v5

    #@384
    goto :goto_36d

    #@385
    :cond_385
    move-object v0, v5

    #@386
    goto :goto_37b

    #@387
    :sswitch_387
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@389
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@38f
    move-result v0

    #@390
    if-eqz v0, :cond_3bc

    #@392
    sget-object v0, Lcom/google/android/gms/internal/jk;->CREATOR:Lcom/google/android/gms/internal/jl;

    #@394
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jl;->bu(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jk;

    #@397
    move-result-object v0

    #@398
    move-object v1, v0

    #@399
    :goto_399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@39c
    move-result v0

    #@39d
    if-eqz v0, :cond_3be

    #@39f
    sget-object v0, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@3a1
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kb;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ka;

    #@3a4
    move-result-object v0

    #@3a5
    move-object v2, v0

    #@3a6
    :goto_3a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3a9
    move-result v0

    #@3aa
    if-eqz v0, :cond_3c0

    #@3ac
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3ae
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b1
    move-result-object v0

    #@3b2
    check-cast v0, Landroid/app/PendingIntent;

    #@3b4
    :goto_3b4
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/android/gms/internal/jk;Lcom/google/android/gms/internal/ka;Landroid/app/PendingIntent;)V

    #@3b7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ba
    goto/16 :goto_a

    #@3bc
    :cond_3bc
    move-object v1, v5

    #@3bd
    goto :goto_399

    #@3be
    :cond_3be
    move-object v2, v5

    #@3bf
    goto :goto_3a6

    #@3c0
    :cond_3c0
    move-object v0, v5

    #@3c1
    goto :goto_3b4

    #@3c2
    :sswitch_3c2
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@3c4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3ca
    move-result v0

    #@3cb
    if-eqz v0, :cond_3ea

    #@3cd
    sget-object v0, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@3cf
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kb;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ka;

    #@3d2
    move-result-object v0

    #@3d3
    move-object v1, v0

    #@3d4
    :goto_3d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3d7
    move-result v0

    #@3d8
    if-eqz v0, :cond_3ec

    #@3da
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3dc
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3df
    move-result-object v0

    #@3e0
    check-cast v0, Landroid/app/PendingIntent;

    #@3e2
    :goto_3e2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/je$a;->b(Lcom/google/android/gms/internal/ka;Landroid/app/PendingIntent;)V

    #@3e5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e8
    goto/16 :goto_a

    #@3ea
    :cond_3ea
    move-object v1, v5

    #@3eb
    goto :goto_3d4

    #@3ec
    :cond_3ec
    move-object v0, v5

    #@3ed
    goto :goto_3e2

    #@3ee
    :sswitch_3ee
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@3f0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3f6
    move-result-object v1

    #@3f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3fa
    move-result v0

    #@3fb
    if-eqz v0, :cond_42c

    #@3fd
    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    #@3ff
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    #@402
    move-result-object v2

    #@403
    :goto_403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@406
    move-result v0

    #@407
    if-eqz v0, :cond_42e

    #@409
    sget-object v0, Lcom/google/android/gms/internal/jm;->CREATOR:Lcom/google/android/gms/internal/jn;

    #@40b
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jn;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jm;

    #@40e
    move-result-object v3

    #@40f
    :goto_40f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@412
    move-result v0

    #@413
    if-eqz v0, :cond_430

    #@415
    sget-object v0, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@417
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kb;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ka;

    #@41a
    move-result-object v4

    #@41b
    :goto_41b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@41e
    move-result-object v0

    #@41f
    invoke-static {v0}, Lcom/google/android/gms/internal/jy$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jy;

    #@422
    move-result-object v5

    #@423
    move-object v0, p0

    #@424
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/je$a;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V

    #@427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@42a
    goto/16 :goto_a

    #@42c
    :cond_42c
    move-object v2, v5

    #@42d
    goto :goto_403

    #@42e
    :cond_42e
    move-object v3, v5

    #@42f
    goto :goto_40f

    #@430
    :cond_430
    move-object v4, v5

    #@431
    goto :goto_41b

    #@432
    :sswitch_432
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@434
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@43a
    move-result v0

    #@43b
    if-eqz v0, :cond_461

    #@43d
    sget-object v0, Lcom/google/android/gms/internal/ju;->CREATOR:Landroid/os/Parcelable$Creator;

    #@43f
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@442
    move-result-object v0

    #@443
    check-cast v0, Lcom/google/android/gms/internal/ju;

    #@445
    :goto_445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@448
    move-result v1

    #@449
    if-eqz v1, :cond_451

    #@44b
    sget-object v1, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@44d
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kb;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ka;

    #@450
    move-result-object v5

    #@451
    :cond_451
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@454
    move-result-object v1

    #@455
    invoke-static {v1}, Lcom/google/android/gms/internal/jy$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jy;

    #@458
    move-result-object v1

    #@459
    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V

    #@45c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@45f
    goto/16 :goto_a

    #@461
    :cond_461
    move-object v0, v5

    #@462
    goto :goto_445

    #@463
    :sswitch_463
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@465
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@46b
    move-result v0

    #@46c
    if-eqz v0, :cond_474

    #@46e
    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

    #@470
    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/LocationRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    #@473
    move-result-object v5

    #@474
    :cond_474
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@477
    move-result-object v0

    #@478
    invoke-static {v0}, Lcom/google/android/gms/location/a$a;->aq(Landroid/os/IBinder;)Lcom/google/android/gms/location/a;

    #@47b
    move-result-object v0

    #@47c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@47f
    move-result-object v1

    #@480
    invoke-virtual {p0, v5, v0, v1}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/a;Ljava/lang/String;)V

    #@483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@486
    goto/16 :goto_a

    #@488
    :sswitch_488
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@48a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@490
    move-result-object v1

    #@491
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/je$a;->bo(Ljava/lang/String;)Landroid/location/Location;

    #@494
    move-result-object v1

    #@495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@498
    if-eqz v1, :cond_4a2

    #@49a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@49d
    invoke-virtual {v1, p3, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    #@4a0
    goto/16 :goto_a

    #@4a2
    :cond_4a2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4a5
    goto/16 :goto_a

    #@4a7
    :sswitch_4a7
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@4a9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4af
    move-result v0

    #@4b0
    if-eqz v0, :cond_4c9

    #@4b2
    sget-object v0, Lcom/google/android/gms/internal/jo;->CREATOR:Lcom/google/android/gms/internal/jp;

    #@4b4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jp;->bw(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jo;

    #@4b7
    move-result-object v0

    #@4b8
    :goto_4b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4bb
    move-result v1

    #@4bc
    if-eqz v1, :cond_4c4

    #@4be
    sget-object v1, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@4c0
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kb;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ka;

    #@4c3
    move-result-object v5

    #@4c4
    :cond_4c4
    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/android/gms/internal/jo;Lcom/google/android/gms/internal/ka;)V

    #@4c7
    goto/16 :goto_a

    #@4c9
    :cond_4c9
    move-object v0, v5

    #@4ca
    goto :goto_4b8

    #@4cb
    :sswitch_4cb
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@4cd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4d3
    move-result v0

    #@4d4
    if-eqz v0, :cond_4ea

    #@4d6
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d8
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4db
    move-result-object v0

    #@4dc
    check-cast v0, Landroid/location/Location;

    #@4de
    :goto_4de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4e1
    move-result v1

    #@4e2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/je$a;->a(Landroid/location/Location;I)V

    #@4e5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e8
    goto/16 :goto_a

    #@4ea
    :cond_4ea
    move-object v0, v5

    #@4eb
    goto :goto_4de

    #@4ec
    :sswitch_4ec
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@4ee
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f4
    move-result-object v1

    #@4f5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/je$a;->bp(Ljava/lang/String;)Lcom/google/android/gms/location/b;

    #@4f8
    move-result-object v1

    #@4f9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4fc
    if-eqz v1, :cond_506

    #@4fe
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@501
    invoke-virtual {v1, p3, v7}, Lcom/google/android/gms/location/b;->writeToParcel(Landroid/os/Parcel;I)V

    #@504
    goto/16 :goto_a

    #@506
    :cond_506
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@509
    goto/16 :goto_a

    #@50b
    :sswitch_50b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@50d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@510
    invoke-virtual {p0}, Lcom/google/android/gms/internal/je$a;->iX()Landroid/os/IBinder;

    #@513
    move-result-object v0

    #@514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@517
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@51a
    goto/16 :goto_a

    #@51c
    :sswitch_data_51c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_3f
        0x3 -> :sswitch_67
        0x4 -> :sswitch_83
        0x5 -> :sswitch_9c
        0x6 -> :sswitch_c6
        0x7 -> :sswitch_e3
        0x8 -> :sswitch_fe
        0x9 -> :sswitch_11f
        0xa -> :sswitch_14b
        0xb -> :sswitch_160
        0xc -> :sswitch_17d
        0xd -> :sswitch_191
        0xe -> :sswitch_1ae
        0xf -> :sswitch_238
        0x10 -> :sswitch_25d
        0x11 -> :sswitch_29a
        0x12 -> :sswitch_320
        0x13 -> :sswitch_35b
        0x14 -> :sswitch_463
        0x15 -> :sswitch_488
        0x19 -> :sswitch_4a7
        0x1a -> :sswitch_4cb
        0x22 -> :sswitch_4ec
        0x2a -> :sswitch_2c9
        0x2d -> :sswitch_3ee
        0x2e -> :sswitch_432
        0x2f -> :sswitch_1f2
        0x30 -> :sswitch_387
        0x31 -> :sswitch_3c2
        0x32 -> :sswitch_2ee
        0x33 -> :sswitch_50b
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
