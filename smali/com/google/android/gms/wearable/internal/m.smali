.class public Lcom/google/android/gms/wearable/internal/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/wearable/DataItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TF:[B

.field private final alK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wearable/DataItemAsset;",
            ">;"
        }
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/n;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/n;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wearable/internal/m;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;Landroid/os/Bundle;[B)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wearable/internal/m;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/m;->mUri:Landroid/net/Uri;

    #@7
    new-instance v2, Ljava/util/HashMap;

    #@9
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@c
    const-class v0, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    #@e
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@15
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@18
    move-result-object v0

    #@19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v3

    #@1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_33

    #@23
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/lang/String;

    #@29
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    #@2f
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    goto :goto_1d

    #@33
    :cond_33
    iput-object v2, p0, Lcom/google/android/gms/wearable/internal/m;->alK:Ljava/util/Map;

    #@35
    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/m;->TF:[B

    #@37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/m;->ns()Lcom/google/android/gms/wearable/internal/m;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAssets()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wearable/DataItemAsset;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->alK:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getData()[B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->TF:[B

    #@2
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->mUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public isDataValid()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public m([B)Lcom/google/android/gms/wearable/internal/m;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/m;->TF:[B

    #@2
    return-object p0
.end method

.method public nm()Landroid/os/Bundle;
    .registers 6

    #@0
    new-instance v2, Landroid/os/Bundle;

    #@2
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@5
    const-class v0, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@e
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->alK:Ljava/util/Map;

    #@10
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@13
    move-result-object v0

    #@14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v3

    #@18
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_39

    #@1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/util/Map$Entry;

    #@24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Ljava/lang/String;

    #@2a
    new-instance v4, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    #@2c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Lcom/google/android/gms/wearable/DataItemAsset;

    #@32
    invoke-direct {v4, v0}, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;-><init>(Lcom/google/android/gms/wearable/DataItemAsset;)V

    #@35
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@38
    goto :goto_18

    #@39
    :cond_39
    return-object v2
.end method

.method public ns()Lcom/google/android/gms/wearable/internal/m;
    .registers 1

    #@0
    return-object p0
.end method

.method public synthetic setData([B)Lcom/google/android/gms/wearable/DataItem;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/m;->m([B)Lcom/google/android/gms/wearable/internal/m;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, "DataItem"

    #@2
    const/4 v1, 0x3

    #@3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/m;->toString(Z)Ljava/lang/String;

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
    const-string v0, "DataItemParcelable["

    #@4
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    const-string v0, "@"

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@f
    move-result v0

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string v2, ",dataSz="

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->TF:[B

    #@24
    if-nez v0, :cond_73

    #@26
    const-string v0, "null"

    #@28
    :goto_28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string v2, ", numAssets="

    #@3a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/m;->alK:Ljava/util/Map;

    #@40
    invoke-interface {v2}, Ljava/util/Map;->size()I

    #@43
    move-result v2

    #@44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    new-instance v0, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string v2, ", uri="

    #@56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/m;->mUri:Landroid/net/Uri;

    #@5c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    if-nez p1, :cond_7b

    #@69
    const-string v0, "]"

    #@6b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    :goto_72
    return-object v0

    #@73
    :cond_73
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->TF:[B

    #@75
    array-length v0, v0

    #@76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v0

    #@7a
    goto :goto_28

    #@7b
    :cond_7b
    const-string v0, "]\n  assets: "

    #@7d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->alK:Ljava/util/Map;

    #@82
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@85
    move-result-object v0

    #@86
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@89
    move-result-object v2

    #@8a
    :goto_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@8d
    move-result v0

    #@8e
    if-eqz v0, :cond_bd

    #@90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@93
    move-result-object v0

    #@94
    check-cast v0, Ljava/lang/String;

    #@96
    new-instance v3, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string v4, "\n    "

    #@9d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v3

    #@a1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v3

    #@a5
    const-string v4, ": "

    #@a7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v3

    #@ab
    iget-object v4, p0, Lcom/google/android/gms/wearable/internal/m;->alK:Ljava/util/Map;

    #@ad
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b0
    move-result-object v0

    #@b1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v0

    #@b5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v0

    #@b9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    goto :goto_8a

    #@bd
    :cond_bd
    const-string v0, "\n  ]"

    #@bf
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v0

    #@c6
    goto :goto_72
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/n;->a(Lcom/google/android/gms/wearable/internal/m;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
