.class public Lcom/google/android/gms/common/api/StatusCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
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

.method static a(Lcom/google/android/gms/common/api/Status;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    const/4 v3, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/16 v1, 0x3e8

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getVersionCode()I

    #@12
    move-result v2

    #@13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->eQ()Landroid/app/PendingIntent;

    #@22
    move-result-object v2

    #@23
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@26
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@29
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v4

    #@6
    move v2, v1

    #@7
    move v3, v1

    #@8
    move-object v1, v0

    #@9
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@c
    move-result v5

    #@d
    if-ge v5, v4, :cond_36

    #@f
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@12
    move-result v5

    #@13
    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@16
    move-result v6

    #@17
    sparse-switch v6, :sswitch_data_5c

    #@1a
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1d
    goto :goto_9

    #@1e
    :sswitch_1e
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@21
    move-result v2

    #@22
    goto :goto_9

    #@23
    :sswitch_23
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@26
    move-result v3

    #@27
    goto :goto_9

    #@28
    :sswitch_28
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    goto :goto_9

    #@2d
    :sswitch_2d
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f
    invoke-static {p1, v5, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/app/PendingIntent;

    #@35
    goto :goto_9

    #@36
    :cond_36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@39
    move-result v5

    #@3a
    if-eq v5, v4, :cond_55

    #@3c
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@3e
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string v2, "Overread allowed size end="

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@54
    throw v0

    #@55
    :cond_55
    new-instance v4, Lcom/google/android/gms/common/api/Status;

    #@57
    invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    #@5a
    return-object v4

    #@5b
    nop

    #@5c
    :sswitch_data_5c
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/common/api/Status;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/StatusCreator;->newArray(I)[Lcom/google/android/gms/common/api/Status;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
