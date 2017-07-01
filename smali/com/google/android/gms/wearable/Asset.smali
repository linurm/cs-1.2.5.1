.class public Lcom/google/android/gms/wearable/Asset;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TF:[B

.field private alg:Ljava/lang/String;

.field public alh:Landroid/os/ParcelFileDescriptor;

.field public uri:Landroid/net/Uri;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/a;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wearable/a;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wearable/Asset;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(I[BLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wearable/Asset;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wearable/Asset;->TF:[B

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wearable/Asset;->alg:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/wearable/Asset;->alh:Landroid/os/ParcelFileDescriptor;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/wearable/Asset;->uri:Landroid/net/Uri;

    #@d
    return-void
.end method

.method public static createFromBytes([B)Lcom/google/android/gms/wearable/Asset;
    .registers 7

    #@0
    const/4 v3, 0x0

    #@1
    if-nez p0, :cond_b

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string v1, "Asset data cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    :cond_b
    new-instance v0, Lcom/google/android/gms/wearable/Asset;

    #@d
    const/4 v1, 0x1

    #@e
    move-object v2, p0

    #@f
    move-object v4, v3

    #@10
    move-object v5, v3

    #@11
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/Asset;-><init>(I[BLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V

    #@14
    return-object v0
.end method

.method public static createFromFd(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/wearable/Asset;
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    if-nez p0, :cond_b

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string v1, "Asset fd cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    :cond_b
    new-instance v0, Lcom/google/android/gms/wearable/Asset;

    #@d
    const/4 v1, 0x1

    #@e
    move-object v3, v2

    #@f
    move-object v4, p0

    #@10
    move-object v5, v2

    #@11
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/Asset;-><init>(I[BLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V

    #@14
    return-object v0
.end method

.method public static createFromRef(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    if-nez p0, :cond_b

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string v1, "Asset digest cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    :cond_b
    new-instance v0, Lcom/google/android/gms/wearable/Asset;

    #@d
    const/4 v1, 0x1

    #@e
    move-object v3, p0

    #@f
    move-object v4, v2

    #@10
    move-object v5, v2

    #@11
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/Asset;-><init>(I[BLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V

    #@14
    return-object v0
.end method

.method public static createFromUri(Landroid/net/Uri;)Lcom/google/android/gms/wearable/Asset;
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    if-nez p0, :cond_b

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string v1, "Asset uri cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    :cond_b
    new-instance v0, Lcom/google/android/gms/wearable/Asset;

    #@d
    const/4 v1, 0x1

    #@e
    move-object v3, v2

    #@f
    move-object v4, v2

    #@10
    move-object v5, p0

    #@11
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/Asset;-><init>(I[BLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V

    #@14
    return-object v0
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
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-ne p0, p1, :cond_6

    #@4
    :cond_4
    move v0, v1

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/wearable/Asset;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/wearable/Asset;

    #@c
    iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->TF:[B

    #@e
    iget-object v3, p1, Lcom/google/android/gms/wearable/Asset;->TF:[B

    #@10
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_5

    #@16
    iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->alg:Ljava/lang/String;

    #@18
    iget-object v3, p1, Lcom/google/android/gms/wearable/Asset;->alg:Ljava/lang/String;

    #@1a
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_5

    #@20
    iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->alh:Landroid/os/ParcelFileDescriptor;

    #@22
    iget-object v3, p1, Lcom/google/android/gms/wearable/Asset;->alh:Landroid/os/ParcelFileDescriptor;

    #@24
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_5

    #@2a
    iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->uri:Landroid/net/Uri;

    #@2c
    iget-object v3, p1, Lcom/google/android/gms/wearable/Asset;->uri:Landroid/net/Uri;

    #@2e
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    if-nez v2, :cond_4

    #@34
    goto :goto_5
.end method

.method public getData()[B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/Asset;->TF:[B

    #@2
    return-object v0
.end method

.method public getDigest()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/Asset;->alg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFd()Landroid/os/ParcelFileDescriptor;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/Asset;->alh:Landroid/os/ParcelFileDescriptor;

    #@2
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/Asset;->uri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->TF:[B

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->alg:Ljava/lang/String;

    #@b
    aput-object v2, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->alh:Landroid/os/ParcelFileDescriptor;

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x3

    #@13
    iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->uri:Landroid/net/Uri;

    #@15
    aput-object v2, v0, v1

    #@17
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "Asset[@"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/Asset;->hashCode()I

    #@d
    move-result v1

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->alg:Ljava/lang/String;

    #@17
    if-nez v1, :cond_53

    #@19
    const-string v1, ", nodigest"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    :goto_1e
    iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->TF:[B

    #@20
    if-eqz v1, :cond_2d

    #@22
    const-string v1, ", size="

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->TF:[B

    #@29
    array-length v1, v1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->alh:Landroid/os/ParcelFileDescriptor;

    #@2f
    if-eqz v1, :cond_3b

    #@31
    const-string v1, ", fd="

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->alh:Landroid/os/ParcelFileDescriptor;

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    :cond_3b
    iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->uri:Landroid/net/Uri;

    #@3d
    if-eqz v1, :cond_49

    #@3f
    const-string v1, ", uri="

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->uri:Landroid/net/Uri;

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    :cond_49
    const-string v1, "]"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    return-object v0

    #@53
    :cond_53
    const-string v1, ", "

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->alg:Ljava/lang/String;

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    goto :goto_1e
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    or-int/lit8 v0, p2, 0x1

    #@2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/wearable/a;->a(Lcom/google/android/gms/wearable/Asset;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
