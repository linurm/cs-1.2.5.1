.class public final Lcom/google/android/gms/drive/internal/l;
.super Lcom/google/android/gms/drive/Metadata;


# instance fields
.field private final II:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/drive/Metadata;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/l;->II:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@5
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/l;->II:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/l;->gl()Lcom/google/android/gms/drive/Metadata;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public gl()Lcom/google/android/gms/drive/Metadata;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/l;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/l;->II:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@4
    invoke-static {v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/internal/l;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    #@b
    return-object v0
.end method

.method public isDataValid()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/l;->II:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "Metadata [mImpl="

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/l;->II:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, "]"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method
