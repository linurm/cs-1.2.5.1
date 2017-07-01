.class public final Lcom/android/dx/dex/file/TypeIdsSection;
.super Lcom/android/dx/dex/file/UniformItemSection;


# instance fields
.field private final typeIds:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/android/dx/rop/type/Type;",
            "Lcom/android/dx/dex/file/TypeIdItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/DexFile;)V
    .registers 4

    #@0
    const-string v0, "type_ids"

    #@2
    const/4 v1, 0x4

    #@3
    invoke-direct {p0, v0, p1, v1}, Lcom/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    #@6
    new-instance v0, Ljava/util/TreeMap;

    #@8
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    #@d
    return-void
.end method


# virtual methods
.method public get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;
    .registers 5

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "cst == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeIdsSection;->throwIfNotPrepared()V

    #@d
    move-object v0, p1

    #@e
    check-cast v0, Lcom/android/dx/rop/cst/CstType;

    #@10
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    #@16
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/dx/dex/file/IndexedItem;

    #@1c
    if-nez v0, :cond_37

    #@1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string v2, "not found: "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    :cond_37
    return-object v0
.end method

.method public indexOf(Lcom/android/dx/rop/cst/CstType;)I
    .registers 4

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "type == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/type/Type;)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public indexOf(Lcom/android/dx/rop/type/Type;)I
    .registers 5

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "type == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeIdsSection;->throwIfNotPrepared()V

    #@d
    iget-object v0, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/dx/dex/file/TypeIdItem;

    #@15
    if-nez v0, :cond_30

    #@17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string v2, "not found: "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    :cond_30
    invoke-virtual {v0}, Lcom/android/dx/dex/file/TypeIdItem;->getIndex()I

    #@33
    move-result v0

    #@34
    return v0
.end method

.method public intern(Lcom/android/dx/rop/cst/CstType;)Lcom/android/dx/dex/file/TypeIdItem;
    .registers 5

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "type == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeIdsSection;->throwIfPrepared()V

    #@d
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    #@10
    move-result-object v1

    #@11
    iget-object v0, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    #@13
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/dx/dex/file/TypeIdItem;

    #@19
    if-nez v0, :cond_25

    #@1b
    new-instance v0, Lcom/android/dx/dex/file/TypeIdItem;

    #@1d
    invoke-direct {v0, p1}, Lcom/android/dx/dex/file/TypeIdItem;-><init>(Lcom/android/dx/rop/cst/CstType;)V

    #@20
    iget-object v2, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    #@22
    invoke-virtual {v2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    :cond_25
    return-object v0
.end method

.method public intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/dex/file/TypeIdItem;
    .registers 4

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "type == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeIdsSection;->throwIfPrepared()V

    #@d
    iget-object v0, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/dx/dex/file/TypeIdItem;

    #@15
    if-nez v0, :cond_26

    #@17
    new-instance v0, Lcom/android/dx/dex/file/TypeIdItem;

    #@19
    new-instance v1, Lcom/android/dx/rop/cst/CstType;

    #@1b
    invoke-direct {v1, p1}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@1e
    invoke-direct {v0, v1}, Lcom/android/dx/dex/file/TypeIdItem;-><init>(Lcom/android/dx/rop/cst/CstType;)V

    #@21
    iget-object v1, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    #@23
    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    :cond_26
    return-object v0
.end method

.method public items()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/dx/dex/file/Item;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected orderItems()V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeIdsSection;->items()Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    const/4 v0, 0x0

    #@9
    move v1, v0

    #@a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1d

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/dx/dex/file/TypeIdItem;

    #@16
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/TypeIdItem;->setIndex(I)V

    #@19
    add-int/lit8 v0, v1, 0x1

    #@1b
    move v1, v0

    #@1c
    goto :goto_a

    #@1d
    :cond_1d
    return-void
.end method

.method public writeHeaderPart(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 7

    #@0
    const/4 v4, 0x4

    #@1
    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeIdsSection;->throwIfNotPrepared()V

    #@4
    iget-object v0, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    #@6
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_19

    #@c
    const/4 v0, 0x0

    #@d
    :goto_d
    const/high16 v2, 0x10000

    #@f
    if-le v1, v2, :cond_1e

    #@11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@13
    const-string v1, "too many type ids"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    :cond_19
    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeIdsSection;->getFileOffset()I

    #@1c
    move-result v0

    #@1d
    goto :goto_d

    #@1e
    :cond_1e
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_58

    #@24
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string v3, "type_ids_size:   "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-interface {p1, v4, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@3e
    new-instance v2, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string v3, "type_ids_off:    "

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-interface {p1, v4, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@58
    :cond_58
    invoke-interface {p1, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@5b
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@5e
    return-void
.end method
