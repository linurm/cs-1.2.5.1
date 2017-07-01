.class public final Lcom/android/dx/dex/file/MapItem;
.super Lcom/android/dx/dex/file/OffsettedItem;


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final WRITE_SIZE:I = 0xc


# instance fields
.field private final firstItem:Lcom/android/dx/dex/file/Item;

.field private final itemCount:I

.field private final lastItem:Lcom/android/dx/dex/file/Item;

.field private final section:Lcom/android/dx/dex/file/Section;

.field private final type:Lcom/android/dx/dex/file/ItemType;


# direct methods
.method private constructor <init>(Lcom/android/dx/dex/file/ItemType;Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/Item;Lcom/android/dx/dex/file/Item;I)V
    .registers 8

    #@0
    const/4 v0, 0x4

    #@1
    const/16 v1, 0xc

    #@3
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    #@6
    if-nez p1, :cond_10

    #@8
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string v1, "type == null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    :cond_10
    if-nez p2, :cond_1a

    #@12
    new-instance v0, Ljava/lang/NullPointerException;

    #@14
    const-string v1, "section == null"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    :cond_1a
    if-nez p3, :cond_24

    #@1c
    new-instance v0, Ljava/lang/NullPointerException;

    #@1e
    const-string v1, "firstItem == null"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    :cond_24
    if-nez p4, :cond_2e

    #@26
    new-instance v0, Ljava/lang/NullPointerException;

    #@28
    const-string v1, "lastItem == null"

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    :cond_2e
    if-gtz p5, :cond_38

    #@30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@32
    const-string v1, "itemCount <= 0"

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    :cond_38
    iput-object p1, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    #@3a
    iput-object p2, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    #@3c
    iput-object p3, p0, Lcom/android/dx/dex/file/MapItem;->firstItem:Lcom/android/dx/dex/file/Item;

    #@3e
    iput-object p4, p0, Lcom/android/dx/dex/file/MapItem;->lastItem:Lcom/android/dx/dex/file/Item;

    #@40
    iput p5, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    #@42
    return-void
.end method

.method private constructor <init>(Lcom/android/dx/dex/file/Section;)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x4

    #@2
    const/16 v1, 0xc

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    #@7
    if-nez p1, :cond_11

    #@9
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string v1, "section == null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_11
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

    #@13
    iput-object v0, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    #@15
    iput-object p1, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    #@17
    iput-object v2, p0, Lcom/android/dx/dex/file/MapItem;->firstItem:Lcom/android/dx/dex/file/Item;

    #@19
    iput-object v2, p0, Lcom/android/dx/dex/file/MapItem;->lastItem:Lcom/android/dx/dex/file/Item;

    #@1b
    const/4 v0, 0x1

    #@1c
    iput v0, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    #@1e
    return-void
.end method

.method public static addMap([Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/MixedItemSection;)V
    .registers 16

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    if-nez p0, :cond_c

    #@4
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    const-string v1, "sections == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    invoke-virtual {p1}, Lcom/android/dx/dex/file/MixedItemSection;->items()Ljava/util/Collection;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1e

    #@16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string v1, "mapSection.items().size() != 0"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    :cond_1e
    new-instance v11, Ljava/util/ArrayList;

    #@20
    const/16 v0, 0x32

    #@22
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@25
    array-length v12, p0

    #@26
    move v10, v8

    #@27
    :goto_27
    if-ge v10, v12, :cond_74

    #@29
    aget-object v2, p0, v10

    #@2b
    invoke-virtual {v2}, Lcom/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    #@2e
    move-result-object v0

    #@2f
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v13

    #@33
    move-object v1, v7

    #@34
    move-object v3, v7

    #@35
    move-object v4, v7

    #@36
    move v5, v8

    #@37
    :goto_37
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_5b

    #@3d
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    move-object v6, v0

    #@42
    check-cast v6, Lcom/android/dx/dex/file/Item;

    #@44
    invoke-virtual {v6}, Lcom/android/dx/dex/file/Item;->itemType()Lcom/android/dx/dex/file/ItemType;

    #@47
    move-result-object v9

    #@48
    if-eq v9, v1, :cond_57

    #@4a
    if-eqz v5, :cond_54

    #@4c
    new-instance v0, Lcom/android/dx/dex/file/MapItem;

    #@4e
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/MapItem;-><init>(Lcom/android/dx/dex/file/ItemType;Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/Item;Lcom/android/dx/dex/file/Item;I)V

    #@51
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@54
    :cond_54
    move-object v1, v9

    #@55
    move-object v3, v6

    #@56
    move v5, v8

    #@57
    :cond_57
    add-int/lit8 v5, v5, 0x1

    #@59
    move-object v4, v6

    #@5a
    goto :goto_37

    #@5b
    :cond_5b
    if-eqz v5, :cond_69

    #@5d
    new-instance v0, Lcom/android/dx/dex/file/MapItem;

    #@5f
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/MapItem;-><init>(Lcom/android/dx/dex/file/ItemType;Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/Item;Lcom/android/dx/dex/file/Item;I)V

    #@62
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@65
    :cond_65
    :goto_65
    add-int/lit8 v0, v10, 0x1

    #@67
    move v10, v0

    #@68
    goto :goto_27

    #@69
    :cond_69
    if-ne v2, p1, :cond_65

    #@6b
    new-instance v0, Lcom/android/dx/dex/file/MapItem;

    #@6d
    invoke-direct {v0, p1}, Lcom/android/dx/dex/file/MapItem;-><init>(Lcom/android/dx/dex/file/Section;)V

    #@70
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@73
    goto :goto_65

    #@74
    :cond_74
    new-instance v0, Lcom/android/dx/dex/file/UniformListItem;

    #@76
    sget-object v1, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

    #@78
    invoke-direct {v0, v1, v11}, Lcom/android/dx/dex/file/UniformListItem;-><init>(Lcom/android/dx/dex/file/ItemType;Ljava/util/List;)V

    #@7b
    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/MixedItemSection;->add(Lcom/android/dx/dex/file/OffsettedItem;)V

    #@7e
    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .registers 2

    #@0
    return-void
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .registers 2

    #@0
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@2
    return-object v0
.end method

.method public final toHuman()Ljava/lang/String;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MapItem;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const/16 v1, 0x64

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    const/16 v1, 0x7b

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@17
    iget-object v1, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    #@19
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    const/16 v1, 0x20

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@25
    iget-object v1, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    #@27
    invoke-virtual {v1}, Lcom/android/dx/dex/file/ItemType;->toHuman()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    const/16 v1, 0x7d

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method protected writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 10

    #@0
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x0

    #@3
    iget-object v0, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    #@5
    invoke-virtual {v0}, Lcom/android/dx/dex/file/ItemType;->getMapValue()I

    #@8
    move-result v1

    #@9
    iget-object v0, p0, Lcom/android/dx/dex/file/MapItem;->firstItem:Lcom/android/dx/dex/file/Item;

    #@b
    if-nez v0, :cond_b7

    #@d
    iget-object v0, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    #@f
    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->getFileOffset()I

    #@12
    move-result v0

    #@13
    :goto_13
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_a8

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MapItem;->offsetString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const/16 v3, 0x20

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    iget-object v3, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    #@2e
    invoke-virtual {v3}, Lcom/android/dx/dex/file/ItemType;->getTypeName()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    const-string v3, " map"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-interface {p2, v4, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@43
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string v3, "  type:   "

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    const-string v3, " // "

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    iget-object v3, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    #@5e
    invoke-virtual {v3}, Lcom/android/dx/dex/file/ItemType;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-interface {p2, v5, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@6d
    const-string v2, "  unused: 0"

    #@6f
    invoke-interface {p2, v5, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@72
    new-instance v2, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string v3, "  size:   "

    #@79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    iget v3, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    #@7f
    invoke-static {v3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    invoke-interface {p2, v6, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@8e
    new-instance v2, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string v3, "  offset: "

    #@95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v2

    #@99
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@9c
    move-result-object v3

    #@9d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    invoke-interface {p2, v6, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@a8
    :cond_a8
    invoke-interface {p2, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@ab
    invoke-interface {p2, v4}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@ae
    iget v1, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    #@b0
    invoke-interface {p2, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@b3
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@b6
    return-void

    #@b7
    :cond_b7
    iget-object v0, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    #@b9
    iget-object v2, p0, Lcom/android/dx/dex/file/MapItem;->firstItem:Lcom/android/dx/dex/file/Item;

    #@bb
    invoke-virtual {v0, v2}, Lcom/android/dx/dex/file/Section;->getAbsoluteItemOffset(Lcom/android/dx/dex/file/Item;)I

    #@be
    move-result v0

    #@bf
    goto/16 :goto_13
.end method
