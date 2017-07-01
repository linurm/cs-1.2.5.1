.class Lcom/google/android/gms/drive/query/internal/e;
.super Ljava/lang/Object;


# direct methods
.method static b(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/MetadataField;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;",
            ")",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<*>;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->gG()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x1

    #@9
    if-eq v1, v2, :cond_13

    #@b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string v1, "bundle should have exactly 1 populated field"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    :cond_13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v0

    #@17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/google/android/gms/drive/metadata/MetadataField;

    #@1d
    return-object v0
.end method
