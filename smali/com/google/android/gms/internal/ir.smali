.class public Lcom/google/android/gms/internal/ir;
.super Lcom/google/android/gms/drive/metadata/internal/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/j",
        "<",
        "Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 7

    #@0
    const-string v0, "customFileProperties"

    #@2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x1

    #@7
    new-array v2, v2, [Ljava/lang/String;

    #@9
    const/4 v3, 0x0

    #@a
    const-string v4, "customPropertiesExtra"

    #@c
    aput-object v4, v2, v3

    #@e
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@11
    move-result-object v2

    #@12
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/drive/metadata/internal/j;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    #@15
    return-void
.end method


# virtual methods
.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 5

    #@0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ir;->j(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected j(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;
    .registers 6

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->eU()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "customPropertiesExtra"

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@9
    move-result-object v0

    #@a
    sget-object v1, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;->JN:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    #@c
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    #@12
    return-object v0
.end method
