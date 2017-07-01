.class public final Lcom/android/dx/dex/file/StringDataItem;
.super Lcom/android/dx/dex/file/OffsettedItem;


# instance fields
.field private final value:Lcom/android/dx/rop/cst/CstString;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstString;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    invoke-static {p1}, Lcom/android/dx/dex/file/StringDataItem;->writeSize(Lcom/android/dx/rop/cst/CstString;)I

    #@4
    move-result v1

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    #@8
    iput-object p1, p0, Lcom/android/dx/dex/file/StringDataItem;->value:Lcom/android/dx/rop/cst/CstString;

    #@a
    return-void
.end method

.method private static writeSize(Lcom/android/dx/rop/cst/CstString;)I
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstString;->getUtf16Size()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Lcom/android/dx/util/Leb128Utils;->unsignedLeb128Size(I)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstString;->getUtf8Size()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    return v0
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .registers 2

    #@0
    return-void
.end method

.method protected compareTo0(Lcom/android/dx/dex/file/OffsettedItem;)I
    .registers 4

    #@0
    check-cast p1, Lcom/android/dx/dex/file/StringDataItem;

    #@2
    iget-object v0, p0, Lcom/android/dx/dex/file/StringDataItem;->value:Lcom/android/dx/rop/cst/CstString;

    #@4
    iget-object v1, p1, Lcom/android/dx/dex/file/StringDataItem;->value:Lcom/android/dx/rop/cst/CstString;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstString;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .registers 2

    #@0
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_STRING_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@2
    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/StringDataItem;->value:Lcom/android/dx/rop/cst/CstString;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 8

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/StringDataItem;->value:Lcom/android/dx/rop/cst/CstString;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstString;->getBytes()Lcom/android/dx/util/ByteArray;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/dx/dex/file/StringDataItem;->value:Lcom/android/dx/rop/cst/CstString;

    #@8
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstString;->getUtf16Size()I

    #@b
    move-result v1

    #@c
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_3f

    #@12
    invoke-static {v1}, Lcom/android/dx/util/Leb128Utils;->unsignedLeb128Size(I)I

    #@15
    move-result v2

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string v4, "utf16_size: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-interface {p2, v2, v3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@30
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArray;->size()I

    #@33
    move-result v2

    #@34
    add-int/lit8 v2, v2, 0x1

    #@36
    iget-object v3, p0, Lcom/android/dx/dex/file/StringDataItem;->value:Lcom/android/dx/rop/cst/CstString;

    #@38
    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-interface {p2, v2, v3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@3f
    :cond_3f
    invoke-interface {p2, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    #@42
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->write(Lcom/android/dx/util/ByteArray;)V

    #@45
    const/4 v0, 0x0

    #@46
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    #@49
    return-void
.end method
