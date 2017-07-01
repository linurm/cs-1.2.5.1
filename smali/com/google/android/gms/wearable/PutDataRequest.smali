.class public Lcom/google/android/gms/wearable/PutDataRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/PutDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final WEAR_URI_SCHEME:Ljava/lang/String; = "wear"

.field private static final aln:Ljava/util/Random;


# instance fields
.field private TF:[B

.field private final alo:Landroid/os/Bundle;

.field private final mUri:Landroid/net/Uri;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/e;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wearable/e;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wearable/PutDataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    new-instance v0, Ljava/security/SecureRandom;

    #@9
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/gms/wearable/PutDataRequest;->aln:Ljava/util/Random;

    #@e
    return-void
.end method

.method private constructor <init>(ILandroid/net/Uri;)V
    .registers 5

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/wearable/PutDataRequest;-><init>(ILandroid/net/Uri;Landroid/os/Bundle;[B)V

    #@9
    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;Landroid/os/Bundle;[B)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wearable/PutDataRequest;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wearable/PutDataRequest;->mUri:Landroid/net/Uri;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wearable/PutDataRequest;->alo:Landroid/os/Bundle;

    #@9
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->alo:Landroid/os/Bundle;

    #@b
    const-class v1, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    #@d
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@14
    iput-object p4, p0, Lcom/google/android/gms/wearable/PutDataRequest;->TF:[B

    #@16
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataRequest;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->cx(Ljava/lang/String;)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/wearable/PutDataRequest;->k(Landroid/net/Uri;)Lcom/google/android/gms/wearable/PutDataRequest;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static createFromDataItem(Lcom/google/android/gms/wearable/DataItem;)Lcom/google/android/gms/wearable/PutDataRequest;
    .registers 5

    #@0
    invoke-interface {p0}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/wearable/PutDataRequest;->k(Landroid/net/Uri;)Lcom/google/android/gms/wearable/PutDataRequest;

    #@7
    move-result-object v2

    #@8
    invoke-interface {p0}, Lcom/google/android/gms/wearable/DataItem;->getAssets()Ljava/util/Map;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_63

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/util/Map$Entry;

    #@20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Lcom/google/android/gms/wearable/DataItemAsset;

    #@26
    invoke-interface {v1}, Lcom/google/android/gms/wearable/DataItemAsset;->getId()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    if-nez v1, :cond_4b

    #@2c
    new-instance v1, Ljava/lang/IllegalStateException;

    #@2e
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string v3, "Cannot create an asset for a put request without a digest: "

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Ljava/lang/String;

    #@3f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v1

    #@4b
    :cond_4b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4e
    move-result-object v1

    #@4f
    check-cast v1, Ljava/lang/String;

    #@51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@54
    move-result-object v0

    #@55
    check-cast v0, Lcom/google/android/gms/wearable/DataItemAsset;

    #@57
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataItemAsset;->getId()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    invoke-static {v0}, Lcom/google/android/gms/wearable/Asset;->createFromRef(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;

    #@62
    goto :goto_14

    #@63
    :cond_63
    invoke-interface {p0}, Lcom/google/android/gms/wearable/DataItem;->getData()[B

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v2, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->setData([B)Lcom/google/android/gms/wearable/PutDataRequest;

    #@6a
    return-object v2
.end method

.method public static createWithAutoAppendedId(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataRequest;
    .registers 5

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5
    const-string v1, "/"

    #@7
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_12

    #@d
    const-string v1, "/"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    :cond_12
    const-string v1, "PN"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    sget-object v2, Lcom/google/android/gms/wearable/PutDataRequest;->aln:Ljava/util/Random;

    #@1a
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    #@1d
    move-result-wide v2

    #@1e
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@21
    new-instance v1, Lcom/google/android/gms/wearable/PutDataRequest;

    #@23
    const/4 v2, 0x1

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-static {v0}, Lcom/google/android/gms/wearable/PutDataRequest;->cx(Ljava/lang/String;)Landroid/net/Uri;

    #@2b
    move-result-object v0

    #@2c
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/wearable/PutDataRequest;-><init>(ILandroid/net/Uri;)V

    #@2f
    return-object v1
.end method

.method private static cx(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    #@0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "An empty path was supplied."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    const-string v0, "/"

    #@10
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1e

    #@16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string v1, "A path must start with a single / ."

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    :cond_1e
    const-string v0, "//"

    #@20
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_2e

    #@26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    const-string v1, "A path must start with a single / ."

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    :cond_2e
    new-instance v0, Landroid/net/Uri$Builder;

    #@30
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@33
    const-string v1, "wear"

    #@35
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@40
    move-result-object v0

    #@41
    return-object v0
.end method

.method public static k(Landroid/net/Uri;)Lcom/google/android/gms/wearable/PutDataRequest;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/PutDataRequest;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/wearable/PutDataRequest;-><init>(ILandroid/net/Uri;)V

    #@6
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

.method public getAsset(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->alo:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    #@8
    return-object v0
.end method

.method public getAssets()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->alo:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v3

    #@f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_27

    #@15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    iget-object v1, p0, Lcom/google/android/gms/wearable/PutDataRequest;->alo:Landroid/os/Bundle;

    #@1d
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/google/android/gms/wearable/Asset;

    #@23
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    goto :goto_f

    #@27
    :cond_27
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method public getData()[B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->TF:[B

    #@2
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->mUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public hasAsset(Ljava/lang/String;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->alo:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nm()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->alo:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;
    .registers 4

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    invoke-static {p2}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->alo:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@b
    return-object p0
.end method

.method public removeAsset(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataRequest;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->alo:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public setData([B)Lcom/google/android/gms/wearable/PutDataRequest;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wearable/PutDataRequest;->TF:[B

    #@2
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, "DataMap"

    #@2
    const/4 v1, 0x3

    #@3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->toString(Z)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 7

    #@0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const-string v0, "PutDataRequest["

    #@4
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v2, "dataSz="

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->TF:[B

    #@14
    if-nez v0, :cond_63

    #@16
    const-string v0, "null"

    #@18
    :goto_18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string v2, ", numAssets="

    #@2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    iget-object v2, p0, Lcom/google/android/gms/wearable/PutDataRequest;->alo:Landroid/os/Bundle;

    #@30
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    #@33
    move-result v2

    #@34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    new-instance v0, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string v2, ", uri="

    #@46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    iget-object v2, p0, Lcom/google/android/gms/wearable/PutDataRequest;->mUri:Landroid/net/Uri;

    #@4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    if-nez p1, :cond_6b

    #@59
    const-string v0, "]"

    #@5b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    :goto_62
    return-object v0

    #@63
    :cond_63
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->TF:[B

    #@65
    array-length v0, v0

    #@66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@69
    move-result-object v0

    #@6a
    goto :goto_18

    #@6b
    :cond_6b
    const-string v0, "]\n  assets: "

    #@6d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    iget-object v0, p0, Lcom/google/android/gms/wearable/PutDataRequest;->alo:Landroid/os/Bundle;

    #@72
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@75
    move-result-object v0

    #@76
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@79
    move-result-object v2

    #@7a
    :goto_7a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_ad

    #@80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@83
    move-result-object v0

    #@84
    check-cast v0, Ljava/lang/String;

    #@86
    new-instance v3, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string v4, "\n    "

    #@8d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v3

    #@91
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v3

    #@95
    const-string v4, ": "

    #@97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v3

    #@9b
    iget-object v4, p0, Lcom/google/android/gms/wearable/PutDataRequest;->alo:Landroid/os/Bundle;

    #@9d
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@a0
    move-result-object v0

    #@a1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v0

    #@a5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v0

    #@a9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    goto :goto_7a

    #@ad
    :cond_ad
    const-string v0, "\n  ]"

    #@af
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v0

    #@b6
    goto :goto_62
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/e;->a(Lcom/google/android/gms/wearable/PutDataRequest;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
