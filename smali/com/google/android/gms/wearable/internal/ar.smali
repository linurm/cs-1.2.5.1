.class public Lcom/google/android/gms/wearable/internal/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wearable/internal/aq;",
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

.method static a(Lcom/google/android/gms/wearable/internal/aq;Landroid/os/Parcel;I)V
    .registers 6

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    iget v2, p0, Lcom/google/android/gms/wearable/internal/aq;->versionCode:I

    #@7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@a
    const/4 v1, 0x2

    #@b
    iget v2, p0, Lcom/google/android/gms/wearable/internal/aq;->statusCode:I

    #@d
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@10
    const/4 v1, 0x3

    #@11
    iget v2, p0, Lcom/google/android/gms/wearable/internal/aq;->amc:I

    #@13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@16
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@19
    return-void
.end method


# virtual methods
.method public cJ(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/internal/aq;
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v3

    #@5
    move v1, v0

    #@6
    move v2, v0

    #@7
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@a
    move-result v4

    #@b
    if-ge v4, v3, :cond_2b

    #@d
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@10
    move-result v4

    #@11
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@14
    move-result v5

    #@15
    packed-switch v5, :pswitch_data_50

    #@18
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1b
    goto :goto_7

    #@1c
    :pswitch_1c
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@1f
    move-result v2

    #@20
    goto :goto_7

    #@21
    :pswitch_21
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@24
    move-result v1

    #@25
    goto :goto_7

    #@26
    :pswitch_26
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@29
    move-result v0

    #@2a
    goto :goto_7

    #@2b
    :cond_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@2e
    move-result v4

    #@2f
    if-eq v4, v3, :cond_4a

    #@31
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@33
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string v2, "Overread allowed size end="

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@49
    throw v0

    #@4a
    :cond_4a
    new-instance v3, Lcom/google/android/gms/wearable/internal/aq;

    #@4c
    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/wearable/internal/aq;-><init>(III)V

    #@4f
    return-object v3

    #@50
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_21
        :pswitch_26
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ar;->cJ(Landroid/os/Parcel;)Lcom/google/android/gms/wearable/internal/aq;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public es(I)[Lcom/google/android/gms/wearable/internal/aq;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wearable/internal/aq;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ar;->es(I)[Lcom/google/android/gms/wearable/internal/aq;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
