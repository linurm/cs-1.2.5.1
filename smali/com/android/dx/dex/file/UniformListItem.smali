.class public final Lcom/android/dx/dex/file/UniformListItem;
.super Lcom/android/dx/dex/file/OffsettedItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/dx/dex/file/OffsettedItem;",
        ">",
        "Lcom/android/dx/dex/file/OffsettedItem;"
    }
.end annotation


# static fields
.field private static final HEADER_SIZE:I = 0x4


# instance fields
.field private final itemType:Lcom/android/dx/dex/file/ItemType;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/ItemType;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/dex/file/ItemType;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    invoke-static {p2}, Lcom/android/dx/dex/file/UniformListItem;->getAlignment(Ljava/util/List;)I

    #@3
    move-result v0

    #@4
    invoke-static {p2}, Lcom/android/dx/dex/file/UniformListItem;->writeSize(Ljava/util/List;)I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    #@b
    if-nez p1, :cond_15

    #@d
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string v1, "itemType == null"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    :cond_15
    iput-object p2, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    #@17
    iput-object p1, p0, Lcom/android/dx/dex/file/UniformListItem;->itemType:Lcom/android/dx/dex/file/ItemType;

    #@19
    return-void
.end method

.method private static getAlignment(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">;)I"
        }
    .end annotation

    #@0
    const/4 v1, 0x4

    #@1
    const/4 v0, 0x0

    #@2
    :try_start_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    #@8
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->getAlignment()I

    #@b
    move-result v0

    #@c
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_f} :catch_1a

    #@f
    move-result v0

    #@10
    return v0

    #@11
    :catch_11
    move-exception v0

    #@12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string v1, "items.size() == 0"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    :catch_1a
    move-exception v0

    #@1b
    new-instance v0, Ljava/lang/NullPointerException;

    #@1d
    const-string v1, "items == null"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
.end method

.method private headerSize()I
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformListItem;->getAlignment()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static writeSize(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">;)I"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    #@7
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->writeSize()I

    #@e
    move-result v0

    #@f
    mul-int/2addr v0, v1

    #@10
    invoke-static {p0}, Lcom/android/dx/dex/file/UniformListItem;->getAlignment(Ljava/util/List;)I

    #@13
    move-result v1

    #@14
    add-int/2addr v0, v1

    #@15
    return v0
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_16

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    #@12
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/OffsettedItem;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    #@15
    goto :goto_6

    #@16
    :cond_16
    return-void
.end method

.method public final getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/UniformListItem;->itemType:Lcom/android/dx/dex/file/ItemType;

    #@2
    return-object v0
.end method

.method protected place0(Lcom/android/dx/dex/file/Section;I)V
    .registers 11

    #@0
    const/4 v0, -0x1

    #@1
    invoke-direct {p0}, Lcom/android/dx/dex/file/UniformListItem;->headerSize()I

    #@4
    move-result v2

    #@5
    iget-object v1, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    #@7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v6

    #@b
    const/4 v1, 0x1

    #@c
    add-int/2addr v2, p2

    #@d
    move v3, v1

    #@e
    move v4, v2

    #@f
    move v1, v0

    #@10
    move v2, v0

    #@11
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_48

    #@17
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    #@1d
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->writeSize()I

    #@20
    move-result v5

    #@21
    if-eqz v3, :cond_30

    #@23
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->getAlignment()I

    #@26
    move-result v1

    #@27
    const/4 v3, 0x0

    #@28
    move v2, v5

    #@29
    :cond_29
    invoke-virtual {v0, p1, v4}, Lcom/android/dx/dex/file/OffsettedItem;->place(Lcom/android/dx/dex/file/Section;I)I

    #@2c
    move-result v0

    #@2d
    add-int/2addr v0, v5

    #@2e
    move v4, v0

    #@2f
    goto :goto_11

    #@30
    :cond_30
    if-eq v5, v2, :cond_3a

    #@32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@34
    const-string v1, "item size mismatch"

    #@36
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    :cond_3a
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->getAlignment()I

    #@3d
    move-result v7

    #@3e
    if-eq v7, v1, :cond_29

    #@40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@42
    const-string v1, "item alignment mismatch"

    #@44
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@47
    throw v0

    #@48
    :cond_48
    return-void
.end method

.method public final toHuman()Ljava/lang/String;
    .registers 6

    #@0
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    const/16 v0, 0x64

    #@4
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    const-string v0, "{"

    #@9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c
    iget-object v0, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    #@e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v3

    #@12
    const/4 v0, 0x1

    #@13
    move v1, v0

    #@14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_31

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    #@20
    if-eqz v1, :cond_2b

    #@22
    const/4 v1, 0x0

    #@23
    :goto_23
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->toHuman()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    goto :goto_14

    #@2b
    :cond_2b
    const-string v4, ", "

    #@2d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    goto :goto_23

    #@31
    :cond_31
    const-string v0, "}"

    #@33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
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
    iget-object v1, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method protected writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_4a

    #@c
    const/4 v1, 0x0

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformListItem;->offsetString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string v3, " "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformListItem;->typeName()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {p2, v1, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@2f
    const/4 v1, 0x4

    #@30
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string v3, "  size: "

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-interface {p2, v1, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@4a
    :cond_4a
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@4d
    iget-object v0, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    #@4f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@52
    move-result-object v1

    #@53
    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@56
    move-result v0

    #@57
    if-eqz v0, :cond_63

    #@59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5c
    move-result-object v0

    #@5d
    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    #@5f
    invoke-virtual {v0, p1, p2}, Lcom/android/dx/dex/file/OffsettedItem;->writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V

    #@62
    goto :goto_53

    #@63
    :cond_63
    return-void
.end method
