.class public abstract Lcom/android/dx/dex/file/UniformItemSection;
.super Lcom/android/dx/dex/file/Section;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/file/Section;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    #@3
    return-void
.end method


# virtual methods
.method public abstract get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;
.end method

.method public final getAbsoluteItemOffset(Lcom/android/dx/dex/file/Item;)I
    .registers 4

    #@0
    check-cast p1, Lcom/android/dx/dex/file/IndexedItem;

    #@2
    invoke-virtual {p1}, Lcom/android/dx/dex/file/IndexedItem;->getIndex()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p1}, Lcom/android/dx/dex/file/IndexedItem;->writeSize()I

    #@9
    move-result v1

    #@a
    mul-int/2addr v0, v1

    #@b
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/file/UniformItemSection;->getAbsoluteOffset(I)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method protected abstract orderItems()V
.end method

.method protected final prepare0()V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->getFile()Lcom/android/dx/dex/file/DexFile;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->orderItems()V

    #@7
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->items()Ljava/util/Collection;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1f

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/dx/dex/file/Item;

    #@1b
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/Item;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    #@1e
    goto :goto_f

    #@1f
    :cond_1f
    return-void
.end method

.method public final writeSize()I
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->items()Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/dx/dex/file/Item;

    #@16
    invoke-virtual {v0}, Lcom/android/dx/dex/file/Item;->writeSize()I

    #@19
    move-result v0

    #@1a
    mul-int/2addr v0, v1

    #@1b
    goto :goto_b
.end method

.method protected final writeTo0(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->getFile()Lcom/android/dx/dex/file/DexFile;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->getAlignment()I

    #@7
    move-result v2

    #@8
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->items()Ljava/util/Collection;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v3

    #@10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_23

    #@16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/dx/dex/file/Item;

    #@1c
    invoke-virtual {v0, v1, p1}, Lcom/android/dx/dex/file/Item;->writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V

    #@1f
    invoke-interface {p1, v2}, Lcom/android/dx/util/AnnotatedOutput;->alignTo(I)V

    #@22
    goto :goto_10

    #@23
    :cond_23
    return-void
.end method
