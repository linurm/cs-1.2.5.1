.class public final Lcom/android/dx/dex/file/ClassDefsSection;
.super Lcom/android/dx/dex/file/UniformItemSection;


# instance fields
.field private final classDefs:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/android/dx/rop/type/Type;",
            "Lcom/android/dx/dex/file/ClassDefItem;",
            ">;"
        }
    .end annotation
.end field

.field private orderedDefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/file/ClassDefItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/DexFile;)V
    .registers 4

    #@0
    const-string v0, "class_defs"

    #@2
    const/4 v1, 0x4

    #@3
    invoke-direct {p0, v0, p1, v1}, Lcom/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    #@6
    new-instance v0, Ljava/util/TreeMap;

    #@8
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    #@d
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/dx/dex/file/ClassDefsSection;->orderedDefs:Ljava/util/ArrayList;

    #@10
    return-void
.end method

.method private orderItems0(Lcom/android/dx/rop/type/Type;II)I
    .registers 10

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/dx/dex/file/ClassDefItem;

    #@8
    if-eqz v0, :cond_10

    #@a
    invoke-virtual {v0}, Lcom/android/dx/dex/file/ClassDefItem;->hasIndex()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_11

    #@10
    :cond_10
    :goto_10
    return p2

    #@11
    :cond_11
    if-gez p3, :cond_2c

    #@13
    new-instance v0, Ljava/lang/RuntimeException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v2, "class circularity with "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    :cond_2c
    add-int/lit8 v2, p3, -0x1

    #@2e
    invoke-virtual {v0}, Lcom/android/dx/dex/file/ClassDefItem;->getSuperclass()Lcom/android/dx/rop/cst/CstType;

    #@31
    move-result-object v1

    #@32
    if-eqz v1, :cond_3c

    #@34
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    #@37
    move-result-object v1

    #@38
    invoke-direct {p0, v1, p2, v2}, Lcom/android/dx/dex/file/ClassDefsSection;->orderItems0(Lcom/android/dx/rop/type/Type;II)I

    #@3b
    move-result p2

    #@3c
    :cond_3c
    invoke-virtual {v0}, Lcom/android/dx/dex/file/ClassDefItem;->getInterfaces()Lcom/android/dx/rop/type/TypeList;

    #@3f
    move-result-object v3

    #@40
    invoke-interface {v3}, Lcom/android/dx/rop/type/TypeList;->size()I

    #@43
    move-result v4

    #@44
    const/4 v1, 0x0

    #@45
    :goto_45
    if-ge v1, v4, :cond_52

    #@47
    invoke-interface {v3, v1}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    #@4a
    move-result-object v5

    #@4b
    invoke-direct {p0, v5, p2, v2}, Lcom/android/dx/dex/file/ClassDefsSection;->orderItems0(Lcom/android/dx/rop/type/Type;II)I

    #@4e
    move-result p2

    #@4f
    add-int/lit8 v1, v1, 0x1

    #@51
    goto :goto_45

    #@52
    :cond_52
    invoke-virtual {v0, p2}, Lcom/android/dx/dex/file/ClassDefItem;->setIndex(I)V

    #@55
    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDefsSection;->orderedDefs:Ljava/util/ArrayList;

    #@57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    add-int/lit8 p2, p2, 0x1

    #@5c
    goto :goto_10
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/file/ClassDefItem;)V
    .registers 6

    #@0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/dx/dex/file/ClassDefItem;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_2c

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0}, Lcom/android/dx/dex/file/ClassDefsSection;->throwIfPrepared()V

    #@b
    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    if-eqz v1, :cond_35

    #@13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v3, "already added: "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    :catch_2c
    move-exception v0

    #@2d
    new-instance v0, Ljava/lang/NullPointerException;

    #@2f
    const-string v1, "clazz == null"

    #@31
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    :cond_35
    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    #@37
    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    return-void
.end method

.method public get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;
    .registers 4

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
    invoke-virtual {p0}, Lcom/android/dx/dex/file/ClassDefsSection;->throwIfNotPrepared()V

    #@d
    check-cast p1, Lcom/android/dx/rop/cst/CstType;

    #@f
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    #@15
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/dx/dex/file/IndexedItem;

    #@1b
    if-nez v0, :cond_25

    #@1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string v1, "not found"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    :cond_25
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
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefsSection;->orderedDefs:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefsSection;->orderedDefs:Ljava/util/ArrayList;

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    #@9
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@c
    move-result-object v0

    #@d
    goto :goto_6
.end method

.method protected orderItems()V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    #@5
    move-result v2

    #@6
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    iput-object v0, p0, Lcom/android/dx/dex/file/ClassDefsSection;->orderedDefs:Ljava/util/ArrayList;

    #@d
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    #@f
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v3

    #@17
    const/4 v0, 0x0

    #@18
    move v1, v0

    #@19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2d

    #@1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/android/dx/rop/type/Type;

    #@25
    sub-int v4, v2, v1

    #@27
    invoke-direct {p0, v0, v1, v4}, Lcom/android/dx/dex/file/ClassDefsSection;->orderItems0(Lcom/android/dx/rop/type/Type;II)I

    #@2a
    move-result v0

    #@2b
    move v1, v0

    #@2c
    goto :goto_19

    #@2d
    :cond_2d
    return-void
.end method

.method public writeHeaderPart(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 7

    #@0
    const/4 v4, 0x4

    #@1
    invoke-virtual {p0}, Lcom/android/dx/dex/file/ClassDefsSection;->throwIfNotPrepared()V

    #@4
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    #@6
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_4e

    #@c
    const/4 v0, 0x0

    #@d
    :goto_d
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_47

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string v3, "class_defs_size: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-interface {p1, v4, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@2d
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string v3, "class_defs_off:  "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-interface {p1, v4, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@47
    :cond_47
    invoke-interface {p1, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@4a
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@4d
    return-void

    #@4e
    :cond_4e
    invoke-virtual {p0}, Lcom/android/dx/dex/file/ClassDefsSection;->getFileOffset()I

    #@51
    move-result v0

    #@52
    goto :goto_d
.end method
