.class public Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static a(Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;Landroid/os/Parcel;I)V
    .registers 8

    #@0
    const/4 v4, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->ip()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@d
    const/16 v1, 0x3e8

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->getVersionCode()I

    #@12
    move-result v2

    #@13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->iq()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->ir()J

    #@22
    move-result-wide v2

    #@23
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@26
    const/4 v1, 0x4

    #@27
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->is()Landroid/net/Uri;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@2e
    const/4 v1, 0x5

    #@2f
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->it()Landroid/net/Uri;

    #@32
    move-result-object v2

    #@33
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@36
    const/4 v1, 0x6

    #@37
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->iu()Landroid/net/Uri;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@3e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@41
    return-void
.end method


# virtual methods
.method public bj(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;
    .registers 13

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v9

    #@5
    const/4 v1, 0x0

    #@6
    const-wide/16 v4, 0x0

    #@8
    move-object v3, v2

    #@9
    move-object v6, v2

    #@a
    move-object v7, v2

    #@b
    move-object v8, v2

    #@c
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@f
    move-result v0

    #@10
    if-ge v0, v9, :cond_53

    #@12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@15
    move-result v0

    #@16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@19
    move-result v10

    #@1a
    sparse-switch v10, :sswitch_data_78

    #@1d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@20
    goto :goto_c

    #@21
    :sswitch_21
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    goto :goto_c

    #@26
    :sswitch_26
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@29
    move-result v1

    #@2a
    goto :goto_c

    #@2b
    :sswitch_2b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    goto :goto_c

    #@30
    :sswitch_30
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@33
    move-result-wide v4

    #@34
    goto :goto_c

    #@35
    :sswitch_35
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@37
    invoke-static {p1, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/net/Uri;

    #@3d
    move-object v6, v0

    #@3e
    goto :goto_c

    #@3f
    :sswitch_3f
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@41
    invoke-static {p1, v0, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/net/Uri;

    #@47
    move-object v7, v0

    #@48
    goto :goto_c

    #@49
    :sswitch_49
    sget-object v8, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4b
    invoke-static {p1, v0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Landroid/net/Uri;

    #@51
    move-object v8, v0

    #@52
    goto :goto_c

    #@53
    :cond_53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@56
    move-result v0

    #@57
    if-eq v0, v9, :cond_72

    #@59
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@5b
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string v2, "Overread allowed size end="

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@71
    throw v0

    #@72
    :cond_72
    new-instance v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    #@74
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;-><init>(ILjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    #@77
    return-object v0

    #@78
    :sswitch_data_78
    .sparse-switch
        0x1 -> :sswitch_21
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_30
        0x4 -> :sswitch_35
        0x5 -> :sswitch_3f
        0x6 -> :sswitch_49
        0x3e8 -> :sswitch_26
    .end sparse-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntityCreator;->bj(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public cu(I)[Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntityCreator;->cu(I)[Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
