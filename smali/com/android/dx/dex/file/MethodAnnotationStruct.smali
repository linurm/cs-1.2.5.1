.class public final Lcom/android/dx/dex/file/MethodAnnotationStruct;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/util/ToHuman;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/dx/util/ToHuman;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/dex/file/MethodAnnotationStruct;",
        ">;"
    }
.end annotation


# instance fields
.field private annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

.field private final method:Lcom/android/dx/rop/cst/CstMethodRef;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/AnnotationSetItem;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "method == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    if-nez p2, :cond_17

    #@f
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string v1, "annotations == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    iput-object p1, p0, Lcom/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/android/dx/rop/cst/CstMethodRef;

    #@19
    iput-object p2, p0, Lcom/android/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    #@1b
    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getWordData()Lcom/android/dx/dex/file/MixedItemSection;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Lcom/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/android/dx/rop/cst/CstMethodRef;

    #@a
    invoke-virtual {v0, v2}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lcom/android/dx/rop/cst/CstBaseMethodRef;)Lcom/android/dx/dex/file/MethodIdItem;

    #@d
    iget-object v0, p0, Lcom/android/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    #@f
    invoke-virtual {v1, v0}, Lcom/android/dx/dex/file/MixedItemSection;->intern(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/dx/dex/file/AnnotationSetItem;

    #@15
    iput-object v0, p0, Lcom/android/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    #@17
    return-void
.end method

.method public compareTo(Lcom/android/dx/dex/file/MethodAnnotationStruct;)I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/android/dx/rop/cst/CstMethodRef;

    #@2
    iget-object v1, p1, Lcom/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/android/dx/rop/cst/CstMethodRef;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstMethodRef;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/dex/file/MethodAnnotationStruct;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/MethodAnnotationStruct;->compareTo(Lcom/android/dx/dex/file/MethodAnnotationStruct;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/android/dx/dex/file/MethodAnnotationStruct;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/android/dx/rop/cst/CstMethodRef;

    #@8
    check-cast p1, Lcom/android/dx/dex/file/MethodAnnotationStruct;

    #@a
    iget-object v1, p1, Lcom/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/android/dx/rop/cst/CstMethodRef;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstMethodRef;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    goto :goto_5
.end method

.method public getAnnotations()Lcom/android/dx/rop/annotation/Annotations;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/dex/file/AnnotationSetItem;->getAnnotations()Lcom/android/dx/rop/annotation/Annotations;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMethod()Lcom/android/dx/rop/cst/CstMethodRef;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/android/dx/rop/cst/CstMethodRef;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/android/dx/rop/cst/CstMethodRef;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstMethodRef;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/android/dx/rop/cst/CstMethodRef;

    #@7
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, ": "

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Lcom/android/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 9

    #@0
    const/4 v5, 0x4

    #@1
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    #@4
    move-result-object v0

    #@5
    iget-object v1, p0, Lcom/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/android/dx/rop/cst/CstMethodRef;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/MethodIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstBaseMethodRef;)I

    #@a
    move-result v0

    #@b
    iget-object v1, p0, Lcom/android/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    #@d
    invoke-virtual {v1}, Lcom/android/dx/dex/file/AnnotationSetItem;->getAbsoluteOffset()I

    #@10
    move-result v1

    #@11
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_68

    #@17
    const/4 v2, 0x0

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string v4, "    "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    iget-object v4, p0, Lcom/android/dx/dex/file/MethodAnnotationStruct;->method:Lcom/android/dx/rop/cst/CstMethodRef;

    #@25
    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-interface {p2, v2, v3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@34
    new-instance v2, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string v3, "      method_idx:      "

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-interface {p2, v5, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@4e
    new-instance v2, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string v3, "      annotations_off: "

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-interface {p2, v5, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@68
    :cond_68
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@6b
    invoke-interface {p2, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@6e
    return-void
.end method
