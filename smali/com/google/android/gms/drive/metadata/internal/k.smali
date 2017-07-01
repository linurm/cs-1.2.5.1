.class public Lcom/google/android/gms/drive/metadata/internal/k;
.super Lcom/google/android/gms/drive/metadata/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/b;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static final aO(Ljava/lang/String;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    new-instance v2, Lorg/json/JSONArray;

    #@b
    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    #@e
    const/4 v0, 0x0

    #@f
    :goto_f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    #@12
    move-result v3

    #@13
    if-ge v0, v3, :cond_1f

    #@15
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_f

    #@1f
    :cond_1f
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@22
    move-result-object v0

    #@23
    goto :goto_3
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 3

    #@0
    check-cast p2, Ljava/util/Collection;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/k;->a(Landroid/os/Bundle;Ljava/util/Collection;)V

    #@5
    return-void
.end method

.method protected a(Landroid/os/Bundle;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/k;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@c
    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 5

    #@0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/k;->c(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected c(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "II)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/k;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/k;->aO(Ljava/lang/String;)Ljava/util/Collection;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_d

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    :catch_d
    move-exception v0

    #@e
    new-instance v1, Ljava/lang/IllegalStateException;

    #@10
    const-string v2, "DataHolder supplied invalid JSON"

    #@12
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@15
    throw v1
.end method

.method protected synthetic f(Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/k;->k(Landroid/os/Bundle;)Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected k(Landroid/os/Bundle;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/k;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
