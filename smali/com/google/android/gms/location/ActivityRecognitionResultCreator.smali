.class public Lcom/google/android/gms/location/ActivityRecognitionResultCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/location/ActivityRecognitionResult;",
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

.method static a(Lcom/google/android/gms/location/ActivityRecognitionResult;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    iget-object v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UV:Ljava/util/List;

    #@7
    const/4 v3, 0x0

    #@8
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@b
    const/16 v1, 0x3e8

    #@d
    invoke-virtual {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->getVersionCode()I

    #@10
    move-result v2

    #@11
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@14
    const/4 v1, 0x2

    #@15
    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UW:J

    #@17
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@1a
    const/4 v1, 0x3

    #@1b
    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UX:J

    #@1d
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@20
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@23
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/ActivityRecognitionResult;
    .registers 11

    #@0
    const-wide/16 v4, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v0

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v3, 0x0

    #@8
    move-wide v6, v4

    #@9
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@c
    move-result v1

    #@d
    if-ge v1, v0, :cond_34

    #@f
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@12
    move-result v1

    #@13
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@16
    move-result v8

    #@17
    sparse-switch v8, :sswitch_data_5a

    #@1a
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1d
    goto :goto_9

    #@1e
    :sswitch_1e
    sget-object v3, Lcom/google/android/gms/location/DetectedActivity;->CREATOR:Lcom/google/android/gms/location/DetectedActivityCreator;

    #@20
    invoke-static {p1, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@23
    move-result-object v3

    #@24
    goto :goto_9

    #@25
    :sswitch_25
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@28
    move-result v2

    #@29
    goto :goto_9

    #@2a
    :sswitch_2a
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@2d
    move-result-wide v4

    #@2e
    goto :goto_9

    #@2f
    :sswitch_2f
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@32
    move-result-wide v6

    #@33
    goto :goto_9

    #@34
    :cond_34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@37
    move-result v1

    #@38
    if-eq v1, v0, :cond_53

    #@3a
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@3c
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string v3, "Overread allowed size end="

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@52
    throw v1

    #@53
    :cond_53
    new-instance v1, Lcom/google/android/gms/location/ActivityRecognitionResult;

    #@55
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(ILjava/util/List;JJ)V

    #@58
    return-object v1

    #@59
    nop

    #@5a
    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_2f
        0x3e8 -> :sswitch_25
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/ActivityRecognitionResultCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/location/ActivityRecognitionResult;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/location/ActivityRecognitionResult;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/ActivityRecognitionResultCreator;->newArray(I)[Lcom/google/android/gms/location/ActivityRecognitionResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
