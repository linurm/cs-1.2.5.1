.class public Lcom/google/android/gms/games/PlayerLevelCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/PlayerLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static a(Lcom/google/android/gms/games/PlayerLevel;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getLevelNumber()I

    #@8
    move-result v2

    #@9
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@c
    const/16 v1, 0x3e8

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getVersionCode()I

    #@11
    move-result v2

    #@12
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@15
    const/4 v1, 0x2

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getMinXp()J

    #@19
    move-result-wide v2

    #@1a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@1d
    const/4 v1, 0x3

    #@1e
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getMaxXp()J

    #@21
    move-result-wide v2

    #@22
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@25
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@28
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerLevel;
    .registers 11

    #@0
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@6
    move-result v0

    #@7
    move-wide v6, v4

    #@8
    move v3, v2

    #@9
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@c
    move-result v1

    #@d
    if-ge v1, v0, :cond_32

    #@f
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@12
    move-result v1

    #@13
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@16
    move-result v8

    #@17
    sparse-switch v8, :sswitch_data_58

    #@1a
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1d
    goto :goto_9

    #@1e
    :sswitch_1e
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@21
    move-result v3

    #@22
    goto :goto_9

    #@23
    :sswitch_23
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@26
    move-result v2

    #@27
    goto :goto_9

    #@28
    :sswitch_28
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@2b
    move-result-wide v4

    #@2c
    goto :goto_9

    #@2d
    :sswitch_2d
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@30
    move-result-wide v6

    #@31
    goto :goto_9

    #@32
    :cond_32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@35
    move-result v1

    #@36
    if-eq v1, v0, :cond_51

    #@38
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@3a
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string v3, "Overread allowed size end="

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@50
    throw v1

    #@51
    :cond_51
    new-instance v1, Lcom/google/android/gms/games/PlayerLevel;

    #@53
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IIJJ)V

    #@56
    return-object v1

    #@57
    nop

    #@58
    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_28
        0x3 -> :sswitch_2d
        0x3e8 -> :sswitch_23
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/PlayerLevelCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerLevel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/games/PlayerLevel;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/games/PlayerLevel;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/PlayerLevelCreator;->newArray(I)[Lcom/google/android/gms/games/PlayerLevel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
