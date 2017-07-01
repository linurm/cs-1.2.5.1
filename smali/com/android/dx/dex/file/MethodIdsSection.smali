.class public final Lcom/android/dx/dex/file/MethodIdsSection;
.super Lcom/android/dx/dex/file/MemberIdsSection;


# instance fields
.field private final methodIds:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/android/dx/rop/cst/CstBaseMethodRef;",
            "Lcom/android/dx/dex/file/MethodIdItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/DexFile;)V
    .registers 3

    #@0
    const-string v0, "method_ids"

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/dx/dex/file/MemberIdsSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;)V

    #@5
    new-instance v0, Ljava/util/TreeMap;

    #@7
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/dx/dex/file/MethodIdsSection;->methodIds:Ljava/util/TreeMap;

    #@c
    return-void
.end method


# virtual methods
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
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MethodIdsSection;->throwIfNotPrepared()V

    #@d
    iget-object v0, p0, Lcom/android/dx/dex/file/MethodIdsSection;->methodIds:Ljava/util/TreeMap;

    #@f
    check-cast p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    #@11
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/dx/dex/file/IndexedItem;

    #@17
    if-nez v0, :cond_21

    #@19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string v1, "not found"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    return-object v0
.end method

.method public indexOf(Lcom/android/dx/rop/cst/CstBaseMethodRef;)I
    .registers 4

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "ref == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MethodIdsSection;->throwIfNotPrepared()V

    #@d
    iget-object v0, p0, Lcom/android/dx/dex/file/MethodIdsSection;->methodIds:Ljava/util/TreeMap;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/dx/dex/file/MethodIdItem;

    #@15
    if-nez v0, :cond_1f

    #@17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    const-string v1, "not found"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    :cond_1f
    invoke-virtual {v0}, Lcom/android/dx/dex/file/MethodIdItem;->getIndex()I

    #@22
    move-result v0

    #@23
    return v0
.end method

.method public intern(Lcom/android/dx/rop/cst/CstBaseMethodRef;)Lcom/android/dx/dex/file/MethodIdItem;
    .registers 4

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "method == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MethodIdsSection;->throwIfPrepared()V

    #@d
    iget-object v0, p0, Lcom/android/dx/dex/file/MethodIdsSection;->methodIds:Ljava/util/TreeMap;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/dx/dex/file/MethodIdItem;

    #@15
    if-nez v0, :cond_21

    #@17
    new-instance v0, Lcom/android/dx/dex/file/MethodIdItem;

    #@19
    invoke-direct {v0, p1}, Lcom/android/dx/dex/file/MethodIdItem;-><init>(Lcom/android/dx/rop/cst/CstBaseMethodRef;)V

    #@1c
    iget-object v1, p0, Lcom/android/dx/dex/file/MethodIdsSection;->methodIds:Ljava/util/TreeMap;

    #@1e
    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    :cond_21
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
    iget-object v0, p0, Lcom/android/dx/dex/file/MethodIdsSection;->methodIds:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public writeHeaderPart(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 7

    #@0
    const/4 v4, 0x4

    #@1
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MethodIdsSection;->throwIfNotPrepared()V

    #@4
    iget-object v0, p0, Lcom/android/dx/dex/file/MethodIdsSection;->methodIds:Ljava/util/TreeMap;

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
    const-string v3, "method_ids_size: "

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
    const-string v3, "method_ids_off:  "

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
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MethodIdsSection;->getFileOffset()I

    #@51
    move-result v0

    #@52
    goto :goto_d
.end method
