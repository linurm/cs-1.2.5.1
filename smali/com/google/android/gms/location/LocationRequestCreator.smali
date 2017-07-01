.class public Lcom/google/android/gms/location/LocationRequestCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/location/LocationRequest;",
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

.method static a(Lcom/google/android/gms/location/LocationRequest;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    #@7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@a
    const/16 v1, 0x3e8

    #@c
    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getVersionCode()I

    #@f
    move-result v2

    #@10
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@13
    const/4 v1, 0x2

    #@14
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vl:J

    #@16
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@19
    const/4 v1, 0x3

    #@1a
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vm:J

    #@1c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@1f
    const/4 v1, 0x4

    #@20
    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vn:Z

    #@22
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@25
    const/4 v1, 0x5

    #@26
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@28
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@2b
    const/4 v1, 0x6

    #@2c
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vo:I

    #@2e
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@31
    const/4 v1, 0x7

    #@32
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vp:F

    #@34
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@37
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@3a
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;
    .registers 16

    #@0
    const/4 v8, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/16 v3, 0x66

    #@7
    const-wide/32 v4, 0x36ee80

    #@a
    const-wide/32 v6, 0x927c0

    #@d
    const-wide v9, 0x7fffffffffffffffL

    #@12
    const v11, 0x7fffffff

    #@15
    const/4 v12, 0x0

    #@16
    move v2, v8

    #@17
    :goto_17
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@1a
    move-result v1

    #@1b
    if-ge v1, v0, :cond_54

    #@1d
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@20
    move-result v1

    #@21
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@24
    move-result v13

    #@25
    sparse-switch v13, :sswitch_data_7a

    #@28
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@2b
    goto :goto_17

    #@2c
    :sswitch_2c
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2f
    move-result v3

    #@30
    goto :goto_17

    #@31
    :sswitch_31
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@34
    move-result v2

    #@35
    goto :goto_17

    #@36
    :sswitch_36
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@39
    move-result-wide v4

    #@3a
    goto :goto_17

    #@3b
    :sswitch_3b
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@3e
    move-result-wide v6

    #@3f
    goto :goto_17

    #@40
    :sswitch_40
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@43
    move-result v8

    #@44
    goto :goto_17

    #@45
    :sswitch_45
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@48
    move-result-wide v9

    #@49
    goto :goto_17

    #@4a
    :sswitch_4a
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@4d
    move-result v11

    #@4e
    goto :goto_17

    #@4f
    :sswitch_4f
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@52
    move-result v12

    #@53
    goto :goto_17

    #@54
    :cond_54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@57
    move-result v1

    #@58
    if-eq v1, v0, :cond_73

    #@5a
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@5c
    new-instance v2, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string v3, "Overread allowed size end="

    #@63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@72
    throw v1

    #@73
    :cond_73
    new-instance v1, Lcom/google/android/gms/location/LocationRequest;

    #@75
    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/location/LocationRequest;-><init>(IIJJZJIF)V

    #@78
    return-object v1

    #@79
    nop

    #@7a
    :sswitch_data_7a
    .sparse-switch
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_36
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_40
        0x5 -> :sswitch_45
        0x6 -> :sswitch_4a
        0x7 -> :sswitch_4f
        0x3e8 -> :sswitch_31
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/LocationRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/location/LocationRequest;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/location/LocationRequest;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/LocationRequestCreator;->newArray(I)[Lcom/google/android/gms/location/LocationRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
