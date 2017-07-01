.class public abstract Lcom/google/android/gms/drive/metadata/b;
.super Lcom/google/android/gms/drive/metadata/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/drive/metadata/a",
        "<",
        "Ljava/util/Collection",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 5

    #@0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/drive/metadata/a;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    #@b
    return-void
.end method


# virtual methods
.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 5

    #@0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/b;->c(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected c(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "II)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Cannot read collections from a dataHolder."

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method
