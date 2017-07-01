.class Lcom/google/android/gms/drive/MetadataBuffer$a;
.super Lcom/google/android/gms/drive/Metadata;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/MetadataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final DG:Lcom/google/android/gms/common/data/DataHolder;

.field private final ED:I

.field private final HU:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/drive/Metadata;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@5
    iput p2, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->HU:I

    #@7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->ae(I)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->ED:I

    #@d
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/drive/MetadataBuffer$a;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->HU:I

    #@2
    return v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .registers 5
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
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    iget v1, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->HU:I

    #@4
    iget v2, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->ED:I

    #@6
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/drive/metadata/MetadataField;->a(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/MetadataBuffer$a;->gl()Lcom/google/android/gms/drive/Metadata;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public gl()Lcom/google/android/gms/drive/Metadata;
    .registers 7

    #@0
    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->gF()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@3
    move-result-object v1

    #@4
    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/e;->gE()Ljava/util/Collection;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_2a

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/google/android/gms/drive/metadata/MetadataField;

    #@18
    instance-of v3, v0, Lcom/google/android/gms/drive/metadata/b;

    #@1a
    if-nez v3, :cond_c

    #@1c
    sget-object v3, Lcom/google/android/gms/internal/iq;->Kq:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@1e
    if-eq v0, v3, :cond_c

    #@20
    iget-object v3, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@22
    iget v4, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->HU:I

    #@24
    iget v5, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->ED:I

    #@26
    invoke-interface {v0, v3, v1, v4, v5}, Lcom/google/android/gms/drive/metadata/MetadataField;->a(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;II)V

    #@29
    goto :goto_c

    #@2a
    :cond_2a
    new-instance v0, Lcom/google/android/gms/drive/internal/l;

    #@2c
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/internal/l;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    #@2f
    return-object v0
.end method

.method public isDataValid()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method
