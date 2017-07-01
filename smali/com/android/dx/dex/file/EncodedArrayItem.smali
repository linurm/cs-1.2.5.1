.class public final Lcom/android/dx/dex/file/EncodedArrayItem;
.super Lcom/android/dx/dex/file/OffsettedItem;


# static fields
.field private static final ALIGNMENT:I = 0x1


# instance fields
.field private final array:Lcom/android/dx/rop/cst/CstArray;

.field private encodedForm:[B


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstArray;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    #@5
    if-nez p1, :cond_f

    #@7
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string v1, "array == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    iput-object p1, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lcom/android/dx/rop/cst/CstArray;

    #@11
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->encodedForm:[B

    #@14
    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lcom/android/dx/rop/cst/CstArray;

    #@2
    invoke-static {p1, v0}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/cst/Constant;)V

    #@5
    return-void
.end method

.method protected compareTo0(Lcom/android/dx/dex/file/OffsettedItem;)I
    .registers 4

    #@0
    check-cast p1, Lcom/android/dx/dex/file/EncodedArrayItem;

    #@2
    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lcom/android/dx/rop/cst/CstArray;

    #@4
    iget-object v1, p1, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lcom/android/dx/rop/cst/CstArray;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstArray;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lcom/android/dx/rop/cst/CstArray;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstArray;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .registers 2

    #@0
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ENCODED_ARRAY_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@2
    return-object v0
.end method

.method protected place0(Lcom/android/dx/dex/file/Section;I)V
    .registers 7

    #@0
    new-instance v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@2
    invoke-direct {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    #@5
    new-instance v1, Lcom/android/dx/dex/file/ValueEncoder;

    #@7
    invoke-virtual {p1}, Lcom/android/dx/dex/file/Section;->getFile()Lcom/android/dx/dex/file/DexFile;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v1, v2, v0}, Lcom/android/dx/dex/file/ValueEncoder;-><init>(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V

    #@e
    iget-object v2, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lcom/android/dx/rop/cst/CstArray;

    #@10
    const/4 v3, 0x0

    #@11
    invoke-virtual {v1, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeArray(Lcom/android/dx/rop/cst/CstArray;Z)V

    #@14
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->encodedForm:[B

    #@1a
    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->encodedForm:[B

    #@1c
    array-length v0, v0

    #@1d
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/file/EncodedArrayItem;->setWriteSize(I)V

    #@20
    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lcom/android/dx/rop/cst/CstArray;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstArray;->toHuman()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 6

    #@0
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_2d

    #@6
    const/4 v0, 0x0

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {p0}, Lcom/android/dx/dex/file/EncodedArrayItem;->offsetString()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string v2, " encoded array"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {p2, v0, v1}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@21
    new-instance v0, Lcom/android/dx/dex/file/ValueEncoder;

    #@23
    invoke-direct {v0, p1, p2}, Lcom/android/dx/dex/file/ValueEncoder;-><init>(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V

    #@26
    iget-object v1, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->array:Lcom/android/dx/rop/cst/CstArray;

    #@28
    const/4 v2, 0x1

    #@29
    invoke-virtual {v0, v1, v2}, Lcom/android/dx/dex/file/ValueEncoder;->writeArray(Lcom/android/dx/rop/cst/CstArray;Z)V

    #@2c
    :goto_2c
    return-void

    #@2d
    :cond_2d
    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedArrayItem;->encodedForm:[B

    #@2f
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->write([B)V

    #@32
    goto :goto_2c
.end method
