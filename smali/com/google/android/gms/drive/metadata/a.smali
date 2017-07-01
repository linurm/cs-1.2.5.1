.class public abstract Lcom/google/android/gms/drive/metadata/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/metadata/MetadataField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/drive/metadata/MetadataField",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final JH:Ljava/lang/String;

.field private final JI:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final JJ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final JK:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "fieldName"

    #@5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    iput-object v0, p0, Lcom/google/android/gms/drive/metadata/a;->JH:Ljava/lang/String;

    #@d
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/google/android/gms/drive/metadata/a;->JI:Ljava/util/Set;

    #@13
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/google/android/gms/drive/metadata/a;->JJ:Ljava/util/Set;

    #@19
    iput p2, p0, Lcom/google/android/gms/drive/metadata/a;->JK:I

    #@1b
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "fieldName"

    #@5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    iput-object v0, p0, Lcom/google/android/gms/drive/metadata/a;->JH:Ljava/lang/String;

    #@d
    new-instance v0, Ljava/util/HashSet;

    #@f
    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/google/android/gms/drive/metadata/a;->JI:Ljava/util/Set;

    #@18
    new-instance v0, Ljava/util/HashSet;

    #@1a
    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@1d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/google/android/gms/drive/metadata/a;->JJ:Ljava/util/Set;

    #@23
    iput p4, p0, Lcom/google/android/gms/drive/metadata/a;->JK:I

    #@25
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "II)TT;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/a;->JI:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1a

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/String;

    #@12
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->h(Ljava/lang/String;II)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_6

    #@18
    const/4 v0, 0x0

    #@19
    :goto_19
    return-object v0

    #@1a
    :cond_1a
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/a;->b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    goto :goto_19
.end method

.method protected abstract a(Landroid/os/Bundle;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final a(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;II)V
    .registers 6

    #@0
    const-string v0, "dataHolder"

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    const-string v0, "bundle"

    #@7
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/drive/metadata/a;->a(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p2, p0, v0}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    #@11
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    if-nez p1, :cond_10

    #@7
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/a;->getName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/drive/metadata/a;->a(Landroid/os/Bundle;Ljava/lang/Object;)V

    #@13
    goto :goto_f
.end method

.method protected abstract b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "II)TT;"
        }
    .end annotation
.end method

.method public final e(Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/a;->getName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_14

    #@f
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/a;->f(Landroid/os/Bundle;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    :goto_13
    return-object v0

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    goto :goto_13
.end method

.method protected abstract f(Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method public final gC()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/a;->JI:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/a;->JH:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/a;->JH:Ljava/lang/String;

    #@2
    return-object v0
.end method
