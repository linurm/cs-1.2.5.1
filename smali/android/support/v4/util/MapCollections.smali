.class abstract Landroid/support/v4/util/MapCollections;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/util/MapCollections$ArrayIterator;,
        Landroid/support/v4/util/MapCollections$EntrySet;,
        Landroid/support/v4/util/MapCollections$KeySet;,
        Landroid/support/v4/util/MapCollections$MapIterator;,
        Landroid/support/v4/util/MapCollections$ValuesCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mEntrySet:Landroid/support/v4/util/MapCollections$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/MapCollections",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field mKeySet:Landroid/support/v4/util/MapCollections$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/MapCollections",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field mValues:Landroid/support/v4/util/MapCollections$ValuesCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/MapCollections",
            "<TK;TV;>.ValuesCollection;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_16

    #@a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_4

    #@14
    const/4 v0, 0x0

    #@15
    :goto_15
    return v0

    #@16
    :cond_16
    const/4 v0, 0x1

    #@17
    goto :goto_15
.end method

.method public static equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-ne p0, p1, :cond_6

    #@4
    move v1, v0

    #@5
    :cond_5
    :goto_5
    return v1

    #@6
    :cond_6
    instance-of v2, p1, Ljava/util/Set;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Ljava/util/Set;

    #@c
    :try_start_c
    invoke-interface {p0}, Ljava/util/Set;->size()I

    #@f
    move-result v2

    #@10
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@13
    move-result v3

    #@14
    if-ne v2, v3, :cond_1e

    #@16
    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_19} :catch_22
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_19} :catch_20

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1e

    #@1c
    :goto_1c
    move v1, v0

    #@1d
    goto :goto_5

    #@1e
    :cond_1e
    move v0, v1

    #@1f
    goto :goto_1c

    #@20
    :catch_20
    move-exception v0

    #@21
    goto :goto_5

    #@22
    :catch_22
    move-exception v0

    #@23
    goto :goto_5
.end method

.method public static removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@3
    move-result v0

    #@4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_16

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    goto :goto_8

    #@16
    :cond_16
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@19
    move-result v1

    #@1a
    if-eq v0, v1, :cond_1e

    #@1c
    const/4 v0, 0x1

    #@1d
    :goto_1d
    return v0

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_1d
.end method

.method public static retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@3
    move-result v0

    #@4
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_20

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_c

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@1f
    goto :goto_c

    #@20
    :cond_20
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@23
    move-result v1

    #@24
    if-eq v0, v1, :cond_28

    #@26
    const/4 v0, 0x1

    #@27
    :goto_27
    return v0

    #@28
    :cond_28
    const/4 v0, 0x0

    #@29
    goto :goto_27
.end method


# virtual methods
.method protected abstract colClear()V
.end method

.method protected abstract colGetEntry(II)Ljava/lang/Object;
.end method

.method protected abstract colGetMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract colGetSize()I
.end method

.method protected abstract colIndexOfKey(Ljava/lang/Object;)I
.end method

.method protected abstract colIndexOfValue(Ljava/lang/Object;)I
.end method

.method protected abstract colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method protected abstract colRemoveAt(I)V
.end method

.method protected abstract colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public getEntrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/MapCollections;->mEntrySet:Landroid/support/v4/util/MapCollections$EntrySet;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Landroid/support/v4/util/MapCollections$EntrySet;

    #@6
    invoke-direct {v0, p0}, Landroid/support/v4/util/MapCollections$EntrySet;-><init>(Landroid/support/v4/util/MapCollections;)V

    #@9
    iput-object v0, p0, Landroid/support/v4/util/MapCollections;->mEntrySet:Landroid/support/v4/util/MapCollections$EntrySet;

    #@b
    :cond_b
    iget-object v0, p0, Landroid/support/v4/util/MapCollections;->mEntrySet:Landroid/support/v4/util/MapCollections$EntrySet;

    #@d
    return-object v0
.end method

.method public getKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/MapCollections;->mKeySet:Landroid/support/v4/util/MapCollections$KeySet;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Landroid/support/v4/util/MapCollections$KeySet;

    #@6
    invoke-direct {v0, p0}, Landroid/support/v4/util/MapCollections$KeySet;-><init>(Landroid/support/v4/util/MapCollections;)V

    #@9
    iput-object v0, p0, Landroid/support/v4/util/MapCollections;->mKeySet:Landroid/support/v4/util/MapCollections$KeySet;

    #@b
    :cond_b
    iget-object v0, p0, Landroid/support/v4/util/MapCollections;->mKeySet:Landroid/support/v4/util/MapCollections$KeySet;

    #@d
    return-object v0
.end method

.method public getValues()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/MapCollections;->mValues:Landroid/support/v4/util/MapCollections$ValuesCollection;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Landroid/support/v4/util/MapCollections$ValuesCollection;

    #@6
    invoke-direct {v0, p0}, Landroid/support/v4/util/MapCollections$ValuesCollection;-><init>(Landroid/support/v4/util/MapCollections;)V

    #@9
    iput-object v0, p0, Landroid/support/v4/util/MapCollections;->mValues:Landroid/support/v4/util/MapCollections$ValuesCollection;

    #@b
    :cond_b
    iget-object v0, p0, Landroid/support/v4/util/MapCollections;->mValues:Landroid/support/v4/util/MapCollections$ValuesCollection;

    #@d
    return-object v0
.end method

.method public toArrayHelper(I)[Ljava/lang/Object;
    .registers 6

    #@0
    invoke-virtual {p0}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    #@3
    move-result v1

    #@4
    new-array v2, v1, [Ljava/lang/Object;

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    if-ge v0, v1, :cond_12

    #@9
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    aput-object v3, v2, v0

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_7

    #@12
    :cond_12
    return-object v2
.end method

.method public toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    #@3
    move-result v2

    #@4
    array-length v0, p1

    #@5
    if-ge v0, v2, :cond_28

    #@7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, [Ljava/lang/Object;

    #@15
    :goto_15
    const/4 v1, 0x0

    #@16
    :goto_16
    if-ge v1, v2, :cond_21

    #@18
    invoke-virtual {p0, v1, p2}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    aput-object v3, v0, v1

    #@1e
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_16

    #@21
    :cond_21
    array-length v1, v0

    #@22
    if-le v1, v2, :cond_27

    #@24
    const/4 v1, 0x0

    #@25
    aput-object v1, v0, v2

    #@27
    :cond_27
    return-object v0

    #@28
    :cond_28
    move-object v0, p1

    #@29
    goto :goto_15
.end method
