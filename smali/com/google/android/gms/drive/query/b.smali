.class public Lcom/google/android/gms/drive/query/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/query/SortOrder;",
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

.method static a(Lcom/google/android/gms/drive/query/SortOrder;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    iget v2, p0, Lcom/google/android/gms/drive/query/SortOrder;->xM:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x1

    #@c
    iget-object v2, p0, Lcom/google/android/gms/drive/query/SortOrder;->KK:Ljava/util/List;

    #@e
    const/4 v3, 0x0

    #@f
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@12
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@15
    return-void
.end method


# virtual methods
.method public aE(Landroid/os/Parcel;)Lcom/google/android/gms/drive/query/SortOrder;
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v2

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@9
    move-result v3

    #@a
    if-ge v3, v2, :cond_27

    #@c
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@f
    move-result v3

    #@10
    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@13
    move-result v4

    #@14
    sparse-switch v4, :sswitch_data_4c

    #@17
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1a
    goto :goto_6

    #@1b
    :sswitch_1b
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@1e
    move-result v1

    #@1f
    goto :goto_6

    #@20
    :sswitch_20
    sget-object v0, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;->CREATOR:Lcom/google/android/gms/drive/query/internal/c;

    #@22
    invoke-static {p1, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@25
    move-result-object v0

    #@26
    goto :goto_6

    #@27
    :cond_27
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@2a
    move-result v3

    #@2b
    if-eq v3, v2, :cond_46

    #@2d
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string v3, "Overread allowed size end="

    #@36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@45
    throw v0

    #@46
    :cond_46
    new-instance v2, Lcom/google/android/gms/drive/query/SortOrder;

    #@48
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/drive/query/SortOrder;-><init>(ILjava/util/List;)V

    #@4b
    return-object v2

    #@4c
    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_20
        0x3e8 -> :sswitch_1b
    .end sparse-switch
.end method

.method public bA(I)[Lcom/google/android/gms/drive/query/SortOrder;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/query/SortOrder;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/b;->aE(Landroid/os/Parcel;)Lcom/google/android/gms/drive/query/SortOrder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/b;->bA(I)[Lcom/google/android/gms/drive/query/SortOrder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
