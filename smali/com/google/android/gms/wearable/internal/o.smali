.class public final Lcom/google/android/gms/wearable/internal/o;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/wearable/DataItem;


# instance fields
.field private final RG:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    iput p3, p0, Lcom/google/android/gms/wearable/internal/o;->RG:I

    #@5
    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/o;->nr()Lcom/google/android/gms/wearable/DataItem;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAssets()Ljava/util/Map;
    .registers 6
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
    new-instance v1, Ljava/util/HashMap;

    #@2
    iget v0, p0, Lcom/google/android/gms/wearable/internal/o;->RG:I

    #@4
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    iget v2, p0, Lcom/google/android/gms/wearable/internal/o;->RG:I

    #@a
    if-ge v0, v2, :cond_27

    #@c
    new-instance v2, Lcom/google/android/gms/wearable/internal/k;

    #@e
    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/o;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@10
    iget v4, p0, Lcom/google/android/gms/wearable/internal/o;->EC:I

    #@12
    add-int/2addr v4, v0

    #@13
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/wearable/internal/k;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@16
    invoke-virtual {v2}, Lcom/google/android/gms/wearable/internal/k;->getDataItemKey()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    if-nez v3, :cond_1f

    #@1c
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_8

    #@1f
    :cond_1f
    invoke-virtual {v2}, Lcom/google/android/gms/wearable/internal/k;->getDataItemKey()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    goto :goto_1c

    #@27
    :cond_27
    return-object v1
.end method

.method public getData()[B
    .registers 2

    #@0
    const-string v0, "data"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/o;->getByteArray(Ljava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "path"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/o;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public nr()Lcom/google/android/gms/wearable/DataItem;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/l;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/l;-><init>(Lcom/google/android/gms/wearable/DataItem;)V

    #@5
    return-object v0
.end method

.method public setData([B)Lcom/google/android/gms/wearable/DataItem;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
