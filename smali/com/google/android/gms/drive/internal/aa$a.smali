.class public abstract Lcom/google/android/gms/drive/internal/aa$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/drive/internal/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/internal/aa$a$a;
    }
.end annotation


# direct methods
.method public static P(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/aa;
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/drive/internal/aa;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/drive/internal/aa;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/drive/internal/aa$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/aa$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    sparse-switch p1, :sswitch_data_3f8

    #@6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :sswitch_b
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    move v0, v1

    #@11
    goto :goto_a

    #@12
    :sswitch_12
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_25

    #@1d
    sget-object v0, Lcom/google/android/gms/drive/internal/GetMetadataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/google/android/gms/drive/internal/GetMetadataRequest;

    #@25
    :cond_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@28
    move-result-object v2

    #@29
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/GetMetadataRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@33
    move v0, v1

    #@34
    goto :goto_a

    #@35
    :sswitch_35
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_48

    #@40
    sget-object v0, Lcom/google/android/gms/drive/internal/QueryRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@42
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Lcom/google/android/gms/drive/internal/QueryRequest;

    #@48
    :cond_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/QueryRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@56
    move v0, v1

    #@57
    goto :goto_a

    #@58
    :sswitch_58
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@5a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_6b

    #@63
    sget-object v0, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@65
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@68
    move-result-object v0

    #@69
    check-cast v0, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;

    #@6b
    :cond_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6e
    move-result-object v2

    #@6f
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@79
    move v0, v1

    #@7a
    goto :goto_a

    #@7b
    :sswitch_7b
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@7d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v2

    #@84
    if-eqz v2, :cond_8e

    #@86
    sget-object v0, Lcom/google/android/gms/drive/internal/CreateContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@88
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8b
    move-result-object v0

    #@8c
    check-cast v0, Lcom/google/android/gms/drive/internal/CreateContentsRequest;

    #@8e
    :cond_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@91
    move-result-object v2

    #@92
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@95
    move-result-object v2

    #@96
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/CreateContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9c
    move v0, v1

    #@9d
    goto/16 :goto_a

    #@9f
    :sswitch_9f
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@a1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v2

    #@a8
    if-eqz v2, :cond_b2

    #@aa
    sget-object v0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ac
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@af
    move-result-object v0

    #@b0
    check-cast v0, Lcom/google/android/gms/drive/internal/CreateFileRequest;

    #@b2
    :cond_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b5
    move-result-object v2

    #@b6
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@b9
    move-result-object v2

    #@ba
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/CreateFileRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@bd
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c0
    move v0, v1

    #@c1
    goto/16 :goto_a

    #@c3
    :sswitch_c3
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@c5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@cb
    move-result v2

    #@cc
    if-eqz v2, :cond_d6

    #@ce
    sget-object v0, Lcom/google/android/gms/drive/internal/CreateFolderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d0
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d3
    move-result-object v0

    #@d4
    check-cast v0, Lcom/google/android/gms/drive/internal/CreateFolderRequest;

    #@d6
    :cond_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d9
    move-result-object v2

    #@da
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@dd
    move-result-object v2

    #@de
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/CreateFolderRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@e1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e4
    move v0, v1

    #@e5
    goto/16 :goto_a

    #@e7
    :sswitch_e7
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@e9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ef
    move-result v2

    #@f0
    if-eqz v2, :cond_fa

    #@f2
    sget-object v0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f4
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f7
    move-result-object v0

    #@f8
    check-cast v0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;

    #@fa
    :cond_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@fd
    move-result-object v2

    #@fe
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@101
    move-result-object v2

    #@102
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/OpenContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@108
    move v0, v1

    #@109
    goto/16 :goto_a

    #@10b
    :sswitch_10b
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@10d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@113
    move-result v2

    #@114
    if-eqz v2, :cond_11e

    #@116
    sget-object v0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@118
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11b
    move-result-object v0

    #@11c
    check-cast v0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;

    #@11e
    :cond_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@121
    move-result-object v2

    #@122
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@125
    move-result-object v2

    #@126
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@12c
    move v0, v1

    #@12d
    goto/16 :goto_a

    #@12f
    :sswitch_12f
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@131
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@137
    move-result-object v0

    #@138
    invoke-static {v0}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@13b
    move-result-object v0

    #@13c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/ab;)V

    #@13f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@142
    move v0, v1

    #@143
    goto/16 :goto_a

    #@145
    :sswitch_145
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@147
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@14d
    move-result v2

    #@14e
    if-eqz v2, :cond_158

    #@150
    sget-object v0, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@152
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@155
    move-result-object v0

    #@156
    check-cast v0, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;

    #@158
    :cond_158
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;)Landroid/content/IntentSender;

    #@15b
    move-result-object v0

    #@15c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15f
    if-eqz v0, :cond_16a

    #@161
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@164
    invoke-virtual {v0, p3, v1}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    #@167
    :goto_167
    move v0, v1

    #@168
    goto/16 :goto_a

    #@16a
    :cond_16a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@16d
    goto :goto_167

    #@16e
    :sswitch_16e
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@170
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@176
    move-result v2

    #@177
    if-eqz v2, :cond_181

    #@179
    sget-object v0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17b
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17e
    move-result-object v0

    #@17f
    check-cast v0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;

    #@181
    :cond_181
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;)Landroid/content/IntentSender;

    #@184
    move-result-object v0

    #@185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@188
    if-eqz v0, :cond_193

    #@18a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@18d
    invoke-virtual {v0, p3, v1}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    #@190
    :goto_190
    move v0, v1

    #@191
    goto/16 :goto_a

    #@193
    :cond_193
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@196
    goto :goto_190

    #@197
    :sswitch_197
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@199
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19f
    move-result v2

    #@1a0
    if-eqz v2, :cond_1aa

    #@1a2
    sget-object v0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a4
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a7
    move-result-object v0

    #@1a8
    check-cast v0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;

    #@1aa
    :cond_1aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1ad
    move-result-object v2

    #@1ae
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@1b1
    move-result-object v2

    #@1b2
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@1b5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b8
    move v0, v1

    #@1b9
    goto/16 :goto_a

    #@1bb
    :sswitch_1bb
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@1bd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1c3
    move-result v2

    #@1c4
    if-eqz v2, :cond_1ce

    #@1c6
    sget-object v0, Lcom/google/android/gms/drive/internal/ListParentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c8
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1cb
    move-result-object v0

    #@1cc
    check-cast v0, Lcom/google/android/gms/drive/internal/ListParentsRequest;

    #@1ce
    :cond_1ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d1
    move-result-object v2

    #@1d2
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@1d5
    move-result-object v2

    #@1d6
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/ListParentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@1d9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1dc
    move v0, v1

    #@1dd
    goto/16 :goto_a

    #@1df
    :sswitch_1df
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@1e1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1e7
    move-result v2

    #@1e8
    if-eqz v2, :cond_1f2

    #@1ea
    sget-object v0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ec
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ef
    move-result-object v0

    #@1f0
    check-cast v0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;

    #@1f2
    :cond_1f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f5
    move-result-object v2

    #@1f6
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ac$a;->R(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ac;

    #@1f9
    move-result-object v2

    #@1fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1fd
    move-result-object v3

    #@1fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@201
    move-result-object v4

    #@202
    invoke-static {v4}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@205
    move-result-object v4

    #@206
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/AddEventListenerRequest;Lcom/google/android/gms/drive/internal/ac;Ljava/lang/String;Lcom/google/android/gms/drive/internal/ab;)V

    #@209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@20c
    move v0, v1

    #@20d
    goto/16 :goto_a

    #@20f
    :sswitch_20f
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@211
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@217
    move-result v2

    #@218
    if-eqz v2, :cond_222

    #@21a
    sget-object v0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21c
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21f
    move-result-object v0

    #@220
    check-cast v0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;

    #@222
    :cond_222
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@225
    move-result-object v2

    #@226
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ac$a;->R(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ac;

    #@229
    move-result-object v2

    #@22a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22d
    move-result-object v3

    #@22e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@231
    move-result-object v4

    #@232
    invoke-static {v4}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@235
    move-result-object v4

    #@236
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;Lcom/google/android/gms/drive/internal/ac;Ljava/lang/String;Lcom/google/android/gms/drive/internal/ab;)V

    #@239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@23c
    move v0, v1

    #@23d
    goto/16 :goto_a

    #@23f
    :sswitch_23f
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@241
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@247
    move-result v2

    #@248
    if-eqz v2, :cond_252

    #@24a
    sget-object v0, Lcom/google/android/gms/drive/internal/DisconnectRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24c
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24f
    move-result-object v0

    #@250
    check-cast v0, Lcom/google/android/gms/drive/internal/DisconnectRequest;

    #@252
    :cond_252
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/DisconnectRequest;)V

    #@255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@258
    move v0, v1

    #@259
    goto/16 :goto_a

    #@25b
    :sswitch_25b
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@25d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@263
    move-result v2

    #@264
    if-eqz v2, :cond_26e

    #@266
    sget-object v0, Lcom/google/android/gms/drive/internal/TrashResourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@268
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26b
    move-result-object v0

    #@26c
    check-cast v0, Lcom/google/android/gms/drive/internal/TrashResourceRequest;

    #@26e
    :cond_26e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@271
    move-result-object v2

    #@272
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@275
    move-result-object v2

    #@276
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/TrashResourceRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@27c
    move v0, v1

    #@27d
    goto/16 :goto_a

    #@27f
    :sswitch_27f
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@281
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@287
    move-result v2

    #@288
    if-eqz v2, :cond_292

    #@28a
    sget-object v0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@28c
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28f
    move-result-object v0

    #@290
    check-cast v0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;

    #@292
    :cond_292
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@295
    move-result-object v2

    #@296
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@299
    move-result-object v2

    #@29a
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@29d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a0
    move v0, v1

    #@2a1
    goto/16 :goto_a

    #@2a3
    :sswitch_2a3
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@2a5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2ab
    move-result v2

    #@2ac
    if-eqz v2, :cond_2b6

    #@2ae
    sget-object v0, Lcom/google/android/gms/drive/internal/QueryRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b0
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b3
    move-result-object v0

    #@2b4
    check-cast v0, Lcom/google/android/gms/drive/internal/QueryRequest;

    #@2b6
    :cond_2b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b9
    move-result-object v2

    #@2ba
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@2bd
    move-result-object v2

    #@2be
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->b(Lcom/google/android/gms/drive/internal/QueryRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@2c1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c4
    move v0, v1

    #@2c5
    goto/16 :goto_a

    #@2c7
    :sswitch_2c7
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@2c9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2cf
    move-result-object v0

    #@2d0
    invoke-static {v0}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@2d3
    move-result-object v0

    #@2d4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->b(Lcom/google/android/gms/drive/internal/ab;)V

    #@2d7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2da
    move v0, v1

    #@2db
    goto/16 :goto_a

    #@2dd
    :sswitch_2dd
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@2df
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2e5
    move-result-object v0

    #@2e6
    invoke-static {v0}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@2e9
    move-result-object v0

    #@2ea
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->c(Lcom/google/android/gms/drive/internal/ab;)V

    #@2ed
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f0
    move v0, v1

    #@2f1
    goto/16 :goto_a

    #@2f3
    :sswitch_2f3
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@2f5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2fb
    move-result-object v0

    #@2fc
    invoke-static {v0}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@2ff
    move-result-object v0

    #@300
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->d(Lcom/google/android/gms/drive/internal/ab;)V

    #@303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@306
    move v0, v1

    #@307
    goto/16 :goto_a

    #@309
    :sswitch_309
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@30b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@311
    move-result-object v0

    #@312
    invoke-static {v0}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@315
    move-result-object v0

    #@316
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/aa$a;->e(Lcom/google/android/gms/drive/internal/ab;)V

    #@319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@31c
    move v0, v1

    #@31d
    goto/16 :goto_a

    #@31f
    :sswitch_31f
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@321
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@327
    move-result v2

    #@328
    if-eqz v2, :cond_332

    #@32a
    sget-object v0, Lcom/google/android/gms/drive/internal/DeleteResourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32c
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32f
    move-result-object v0

    #@330
    check-cast v0, Lcom/google/android/gms/drive/internal/DeleteResourceRequest;

    #@332
    :cond_332
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@335
    move-result-object v2

    #@336
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@339
    move-result-object v2

    #@33a
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/DeleteResourceRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@33d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@340
    move v0, v1

    #@341
    goto/16 :goto_a

    #@343
    :sswitch_343
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@345
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@34b
    move-result v2

    #@34c
    if-eqz v2, :cond_356

    #@34e
    sget-object v0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@350
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@353
    move-result-object v0

    #@354
    check-cast v0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;

    #@356
    :cond_356
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@359
    move-result-object v2

    #@35a
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@35d
    move-result-object v2

    #@35e
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@364
    move v0, v1

    #@365
    goto/16 :goto_a

    #@367
    :sswitch_367
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@369
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@36f
    move-result v2

    #@370
    if-eqz v2, :cond_37a

    #@372
    sget-object v0, Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@374
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@377
    move-result-object v0

    #@378
    check-cast v0, Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;

    #@37a
    :cond_37a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@37d
    move-result-object v2

    #@37e
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@381
    move-result-object v2

    #@382
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@388
    move v0, v1

    #@389
    goto/16 :goto_a

    #@38b
    :sswitch_38b
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@38d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@393
    move-result v2

    #@394
    if-eqz v2, :cond_39e

    #@396
    sget-object v0, Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@398
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@39b
    move-result-object v0

    #@39c
    check-cast v0, Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;

    #@39e
    :cond_39e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3a1
    move-result-object v2

    #@3a2
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@3a5
    move-result-object v2

    #@3a6
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@3a9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ac
    move v0, v1

    #@3ad
    goto/16 :goto_a

    #@3af
    :sswitch_3af
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@3b1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b7
    move-result v2

    #@3b8
    if-eqz v2, :cond_3c2

    #@3ba
    sget-object v0, Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3bc
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3bf
    move-result-object v0

    #@3c0
    check-cast v0, Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;

    #@3c2
    :cond_3c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3c5
    move-result-object v2

    #@3c6
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@3c9
    move-result-object v2

    #@3ca
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@3cd
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d0
    move v0, v1

    #@3d1
    goto/16 :goto_a

    #@3d3
    :sswitch_3d3
    const-string v2, "com.google.android.gms.drive.internal.IDriveService"

    #@3d5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3db
    move-result v2

    #@3dc
    if-eqz v2, :cond_3e6

    #@3de
    sget-object v0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e0
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e3
    move-result-object v0

    #@3e4
    check-cast v0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;

    #@3e6
    :cond_3e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3e9
    move-result-object v2

    #@3ea
    invoke-static {v2}, Lcom/google/android/gms/drive/internal/ab$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/ab;

    #@3ed
    move-result-object v2

    #@3ee
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/internal/aa$a;->a(Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;Lcom/google/android/gms/drive/internal/ab;)V

    #@3f1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f4
    move v0, v1

    #@3f5
    goto/16 :goto_a

    #@3f7
    nop

    #@3f8
    :sswitch_data_3f8
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_35
        0x3 -> :sswitch_58
        0x4 -> :sswitch_7b
        0x5 -> :sswitch_9f
        0x6 -> :sswitch_c3
        0x7 -> :sswitch_e7
        0x8 -> :sswitch_10b
        0x9 -> :sswitch_12f
        0xa -> :sswitch_145
        0xb -> :sswitch_16e
        0xc -> :sswitch_197
        0xd -> :sswitch_1bb
        0xe -> :sswitch_1df
        0xf -> :sswitch_20f
        0x10 -> :sswitch_23f
        0x11 -> :sswitch_25b
        0x12 -> :sswitch_27f
        0x13 -> :sswitch_2a3
        0x14 -> :sswitch_2c7
        0x15 -> :sswitch_2dd
        0x16 -> :sswitch_2f3
        0x17 -> :sswitch_309
        0x18 -> :sswitch_31f
        0x1a -> :sswitch_343
        0x1b -> :sswitch_367
        0x1c -> :sswitch_38b
        0x1d -> :sswitch_3af
        0x1e -> :sswitch_3d3
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
