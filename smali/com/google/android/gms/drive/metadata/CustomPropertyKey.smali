.class public Lcom/google/android/gms/drive/metadata/CustomPropertyKey;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/metadata/CustomPropertyKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final JL:Ljava/lang/String;

.field final JM:I

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/metadata/c;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/c;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput p1, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->xM:I

    #@6
    const-string v1, "key"

    #@8
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    if-eqz p3, :cond_f

    #@d
    if-ne p3, v0, :cond_19

    #@f
    :cond_f
    :goto_f
    const-string v1, "visibility must be either PUBLIC or PRIVATE"

    #@11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@14
    iput-object p2, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->JL:Ljava/lang/String;

    #@16
    iput p3, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->JM:I

    #@18
    return-void

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    goto :goto_f
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-nez p1, :cond_6

    #@4
    :cond_4
    move v0, v1

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    if-eq p1, p0, :cond_5

    #@8
    instance-of v2, p1, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    #@a
    if-eqz v2, :cond_4

    #@c
    check-cast p1, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    #@e
    invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->getKey()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    iget-object v3, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->JL:Ljava/lang/String;

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_22

    #@1a
    invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->getVisibility()I

    #@1d
    move-result v2

    #@1e
    iget v3, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->JM:I

    #@20
    if-eq v2, v3, :cond_5

    #@22
    :cond_22
    move v0, v1

    #@23
    goto :goto_5
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->JL:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->JM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->JL:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget v1, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->JM:I

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "CustomPropertyKey("

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->JL:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, ","

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget v1, p0, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->JM:I

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v1, ")"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/c;->a(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
