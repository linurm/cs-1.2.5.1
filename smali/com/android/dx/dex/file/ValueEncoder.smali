.class public final Lcom/android/dx/dex/file/ValueEncoder;
.super Ljava/lang/Object;


# static fields
.field private static final VALUE_ANNOTATION:I = 0x1d

.field private static final VALUE_ARRAY:I = 0x1c

.field private static final VALUE_BOOLEAN:I = 0x1f

.field private static final VALUE_BYTE:I = 0x0

.field private static final VALUE_CHAR:I = 0x3

.field private static final VALUE_DOUBLE:I = 0x11

.field private static final VALUE_ENUM:I = 0x1b

.field private static final VALUE_FIELD:I = 0x19

.field private static final VALUE_FLOAT:I = 0x10

.field private static final VALUE_INT:I = 0x4

.field private static final VALUE_LONG:I = 0x6

.field private static final VALUE_METHOD:I = 0x1a

.field private static final VALUE_NULL:I = 0x1e

.field private static final VALUE_SHORT:I = 0x2

.field private static final VALUE_STRING:I = 0x17

.field private static final VALUE_TYPE:I = 0x18


# instance fields
.field private final file:Lcom/android/dx/dex/file/DexFile;

.field private final out:Lcom/android/dx/util/AnnotatedOutput;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "file == null"

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
    const-string v1, "out == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    iput-object p1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    #@19
    iput-object p2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@1b
    return-void
.end method

.method public static addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/annotation/Annotation;)V
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/Annotation;->getType()Lcom/android/dx/rop/cst/CstType;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v2}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Lcom/android/dx/rop/cst/CstType;)Lcom/android/dx/dex/file/TypeIdItem;

    #@f
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/Annotation;->getNameValuePairs()Ljava/util/Collection;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_32

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/dx/rop/annotation/NameValuePair;

    #@23
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/NameValuePair;->getName()Lcom/android/dx/rop/cst/CstString;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v1, v3}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/dex/file/StringIdItem;

    #@2a
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/NameValuePair;->getValue()Lcom/android/dx/rop/cst/Constant;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {p0, v0}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/cst/Constant;)V

    #@31
    goto :goto_17

    #@32
    :cond_32
    return-void
.end method

.method public static addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/cst/Constant;)V
    .registers 6

    #@0
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstAnnotation;

    #@2
    if-eqz v0, :cond_e

    #@4
    check-cast p1, Lcom/android/dx/rop/cst/CstAnnotation;

    #@6
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstAnnotation;->getAnnotation()Lcom/android/dx/rop/annotation/Annotation;

    #@9
    move-result-object v0

    #@a
    invoke-static {p0, v0}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/annotation/Annotation;)V

    #@d
    :cond_d
    :goto_d
    return-void

    #@e
    :cond_e
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstArray;

    #@10
    if-eqz v0, :cond_29

    #@12
    check-cast p1, Lcom/android/dx/rop/cst/CstArray;

    #@14
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstArray;->getList()Lcom/android/dx/rop/cst/CstArray$List;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstArray$List;->size()I

    #@1b
    move-result v2

    #@1c
    const/4 v0, 0x0

    #@1d
    :goto_1d
    if-ge v0, v2, :cond_d

    #@1f
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/cst/CstArray$List;->get(I)Lcom/android/dx/rop/cst/Constant;

    #@22
    move-result-object v3

    #@23
    invoke-static {p0, v3}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/cst/Constant;)V

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_1d

    #@29
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/DexFile;->internIfAppropriate(Lcom/android/dx/rop/cst/Constant;)V

    #@2c
    goto :goto_d
.end method

.method public static constantToHuman(Lcom/android/dx/rop/cst/Constant;)Ljava/lang/String;
    .registers 3

    #@0
    invoke-static {p0}, Lcom/android/dx/dex/file/ValueEncoder;->constantToValueType(Lcom/android/dx/rop/cst/Constant;)I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x1e

    #@6
    if-ne v0, v1, :cond_b

    #@8
    const-string v0, "null"

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/Constant;->typeName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    const/16 v1, 0x20

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    goto :goto_a
.end method

.method private static constantToValueType(Lcom/android/dx/rop/cst/Constant;)I
    .registers 3

    #@0
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstByte;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstShort;

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x2

    #@b
    goto :goto_5

    #@c
    :cond_c
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstChar;

    #@e
    if-eqz v0, :cond_12

    #@10
    const/4 v0, 0x3

    #@11
    goto :goto_5

    #@12
    :cond_12
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstInteger;

    #@14
    if-eqz v0, :cond_18

    #@16
    const/4 v0, 0x4

    #@17
    goto :goto_5

    #@18
    :cond_18
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstLong;

    #@1a
    if-eqz v0, :cond_1e

    #@1c
    const/4 v0, 0x6

    #@1d
    goto :goto_5

    #@1e
    :cond_1e
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstFloat;

    #@20
    if-eqz v0, :cond_25

    #@22
    const/16 v0, 0x10

    #@24
    goto :goto_5

    #@25
    :cond_25
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstDouble;

    #@27
    if-eqz v0, :cond_2c

    #@29
    const/16 v0, 0x11

    #@2b
    goto :goto_5

    #@2c
    :cond_2c
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstString;

    #@2e
    if-eqz v0, :cond_33

    #@30
    const/16 v0, 0x17

    #@32
    goto :goto_5

    #@33
    :cond_33
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstType;

    #@35
    if-eqz v0, :cond_3a

    #@37
    const/16 v0, 0x18

    #@39
    goto :goto_5

    #@3a
    :cond_3a
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstFieldRef;

    #@3c
    if-eqz v0, :cond_41

    #@3e
    const/16 v0, 0x19

    #@40
    goto :goto_5

    #@41
    :cond_41
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstMethodRef;

    #@43
    if-eqz v0, :cond_48

    #@45
    const/16 v0, 0x1a

    #@47
    goto :goto_5

    #@48
    :cond_48
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstEnumRef;

    #@4a
    if-eqz v0, :cond_4f

    #@4c
    const/16 v0, 0x1b

    #@4e
    goto :goto_5

    #@4f
    :cond_4f
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstArray;

    #@51
    if-eqz v0, :cond_56

    #@53
    const/16 v0, 0x1c

    #@55
    goto :goto_5

    #@56
    :cond_56
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstAnnotation;

    #@58
    if-eqz v0, :cond_5d

    #@5a
    const/16 v0, 0x1d

    #@5c
    goto :goto_5

    #@5d
    :cond_5d
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstKnownNull;

    #@5f
    if-eqz v0, :cond_64

    #@61
    const/16 v0, 0x1e

    #@63
    goto :goto_5

    #@64
    :cond_64
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstBoolean;

    #@66
    if-eqz v0, :cond_6b

    #@68
    const/16 v0, 0x1f

    #@6a
    goto :goto_5

    #@6b
    :cond_6b
    new-instance v0, Ljava/lang/RuntimeException;

    #@6d
    const-string v1, "Shouldn\'t happen"

    #@6f
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@72
    throw v0
.end method

.method private writeRightZeroExtendedValue(IJ)V
    .registers 10

    #@0
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@3
    move-result v0

    #@4
    rsub-int/lit8 v0, v0, 0x40

    #@6
    if-nez v0, :cond_9

    #@8
    const/4 v0, 0x1

    #@9
    :cond_9
    add-int/lit8 v0, v0, 0x7

    #@b
    shr-int/lit8 v2, v0, 0x3

    #@d
    mul-int/lit8 v0, v2, 0x8

    #@f
    rsub-int/lit8 v0, v0, 0x40

    #@11
    shr-long v0, p2, v0

    #@13
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@15
    add-int/lit8 v4, v2, -0x1

    #@17
    shl-int/lit8 v4, v4, 0x5

    #@19
    or-int/2addr v4, p1

    #@1a
    invoke-interface {v3, v4}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    #@1d
    :goto_1d
    if-lez v2, :cond_2c

    #@1f
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@21
    long-to-int v4, v0

    #@22
    int-to-byte v4, v4

    #@23
    invoke-interface {v3, v4}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    #@26
    const/16 v3, 0x8

    #@28
    shr-long/2addr v0, v3

    #@29
    add-int/lit8 v2, v2, -0x1

    #@2b
    goto :goto_1d

    #@2c
    :cond_2c
    return-void
.end method

.method private writeSignedIntegralValue(IJ)V
    .registers 8

    #@0
    const/16 v0, 0x3f

    #@2
    shr-long v0, p2, v0

    #@4
    xor-long/2addr v0, p2

    #@5
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    #@8
    move-result v0

    #@9
    rsub-int/lit8 v0, v0, 0x41

    #@b
    add-int/lit8 v0, v0, 0x7

    #@d
    shr-int/lit8 v0, v0, 0x3

    #@f
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@11
    add-int/lit8 v2, v0, -0x1

    #@13
    shl-int/lit8 v2, v2, 0x5

    #@15
    or-int/2addr v2, p1

    #@16
    invoke-interface {v1, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    #@19
    :goto_19
    if-lez v0, :cond_28

    #@1b
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@1d
    long-to-int v2, p2

    #@1e
    int-to-byte v2, v2

    #@1f
    invoke-interface {v1, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    #@22
    const/16 v1, 0x8

    #@24
    shr-long/2addr p2, v1

    #@25
    add-int/lit8 v0, v0, -0x1

    #@27
    goto :goto_19

    #@28
    :cond_28
    return-void
.end method

.method private writeUnsignedIntegralValue(IJ)V
    .registers 8

    #@0
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    #@3
    move-result v0

    #@4
    rsub-int/lit8 v0, v0, 0x40

    #@6
    if-nez v0, :cond_9

    #@8
    const/4 v0, 0x1

    #@9
    :cond_9
    add-int/lit8 v0, v0, 0x7

    #@b
    shr-int/lit8 v0, v0, 0x3

    #@d
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@f
    add-int/lit8 v2, v0, -0x1

    #@11
    shl-int/lit8 v2, v2, 0x5

    #@13
    or-int/2addr v2, p1

    #@14
    invoke-interface {v1, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    #@17
    :goto_17
    if-lez v0, :cond_26

    #@19
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@1b
    long-to-int v2, p2

    #@1c
    int-to-byte v2, v2

    #@1d
    invoke-interface {v1, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    #@20
    const/16 v1, 0x8

    #@22
    shr-long/2addr p2, v1

    #@23
    add-int/lit8 v0, v0, -0x1

    #@25
    goto :goto_17

    #@26
    :cond_26
    return-void
.end method


# virtual methods
.method public writeAnnotation(Lcom/android/dx/rop/annotation/Annotation;Z)V
    .registers 14

    #@0
    const/4 v2, 0x0

    #@1
    if-eqz p2, :cond_117

    #@3
    iget-object v0, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@5
    invoke-interface {v0}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_117

    #@b
    const/4 v0, 0x1

    #@c
    move v1, v0

    #@d
    :goto_d
    iget-object v0, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    #@f
    invoke-virtual {v0}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    #@12
    move-result-object v4

    #@13
    iget-object v0, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    #@15
    invoke-virtual {v0}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/Annotation;->getType()Lcom/android/dx/rop/cst/CstType;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v0, v3}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstType;)I

    #@20
    move-result v5

    #@21
    if-eqz v1, :cond_4d

    #@23
    iget-object v6, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@25
    new-instance v7, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string v8, "  type_idx: "

    #@2c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    invoke-static {v5}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    const-string v7, " // "

    #@3a
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-interface {v6, v3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    #@4d
    :cond_4d
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@4f
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/Annotation;->getType()Lcom/android/dx/rop/cst/CstType;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v0, v5}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstType;)I

    #@56
    move-result v0

    #@57
    invoke-interface {v3, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    #@5a
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/Annotation;->getNameValuePairs()Ljava/util/Collection;

    #@5d
    move-result-object v0

    #@5e
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@61
    move-result v3

    #@62
    if-eqz v1, :cond_80

    #@64
    iget-object v5, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@66
    new-instance v6, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string v7, "  size: "

    #@6d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    invoke-static {v3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v6

    #@79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v6

    #@7d
    invoke-interface {v5, v6}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    #@80
    :cond_80
    iget-object v5, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@82
    invoke-interface {v5, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    #@85
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@88
    move-result-object v5

    #@89
    move v3, v2

    #@8a
    :goto_8a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@8d
    move-result v0

    #@8e
    if-eqz v0, :cond_11a

    #@90
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@93
    move-result-object v0

    #@94
    check-cast v0, Lcom/android/dx/rop/annotation/NameValuePair;

    #@96
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/NameValuePair;->getName()Lcom/android/dx/rop/cst/CstString;

    #@99
    move-result-object v6

    #@9a
    invoke-virtual {v4, v6}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstString;)I

    #@9d
    move-result v7

    #@9e
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/NameValuePair;->getValue()Lcom/android/dx/rop/cst/Constant;

    #@a1
    move-result-object v8

    #@a2
    if-eqz v1, :cond_122

    #@a4
    iget-object v0, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@a6
    new-instance v9, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string v10, "  elements["

    #@ad
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v9

    #@b1
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v9

    #@b5
    const-string v10, "]:"

    #@b7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v9

    #@bb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v9

    #@bf
    invoke-interface {v0, v2, v9}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@c2
    add-int/lit8 v0, v3, 0x1

    #@c4
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@c6
    new-instance v9, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string v10, "    name_idx: "

    #@cd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v9

    #@d1
    invoke-static {v7}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@d4
    move-result-object v10

    #@d5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v9

    #@d9
    const-string v10, " // "

    #@db
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v9

    #@df
    invoke-virtual {v6}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    #@e2
    move-result-object v6

    #@e3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v6

    #@e7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v6

    #@eb
    invoke-interface {v3, v6}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    #@ee
    :goto_ee
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@f0
    invoke-interface {v3, v7}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    #@f3
    if-eqz v1, :cond_111

    #@f5
    iget-object v3, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@f7
    new-instance v6, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string v7, "    value: "

    #@fe
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v6

    #@102
    invoke-static {v8}, Lcom/android/dx/dex/file/ValueEncoder;->constantToHuman(Lcom/android/dx/rop/cst/Constant;)Ljava/lang/String;

    #@105
    move-result-object v7

    #@106
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v6

    #@10a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v6

    #@10e
    invoke-interface {v3, v6}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    #@111
    :cond_111
    invoke-virtual {p0, v8}, Lcom/android/dx/dex/file/ValueEncoder;->writeConstant(Lcom/android/dx/rop/cst/Constant;)V

    #@114
    move v3, v0

    #@115
    goto/16 :goto_8a

    #@117
    :cond_117
    move v1, v2

    #@118
    goto/16 :goto_d

    #@11a
    :cond_11a
    if-eqz v1, :cond_121

    #@11c
    iget-object v0, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@11e
    invoke-interface {v0}, Lcom/android/dx/util/AnnotatedOutput;->endAnnotation()V

    #@121
    :cond_121
    return-void

    #@122
    :cond_122
    move v0, v3

    #@123
    goto :goto_ee
.end method

.method public writeArray(Lcom/android/dx/rop/cst/CstArray;Z)V
    .registers 11

    #@0
    const/4 v1, 0x0

    #@1
    if-eqz p2, :cond_6f

    #@3
    iget-object v0, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@5
    invoke-interface {v0}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_6f

    #@b
    const/4 v0, 0x1

    #@c
    :goto_c
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstArray;->getList()Lcom/android/dx/rop/cst/CstArray$List;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstArray$List;->size()I

    #@13
    move-result v3

    #@14
    if-eqz v0, :cond_32

    #@16
    iget-object v4, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@18
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string v6, "  size: "

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-static {v3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-interface {v4, v5}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    #@32
    :cond_32
    iget-object v4, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@34
    invoke-interface {v4, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    #@37
    :goto_37
    if-ge v1, v3, :cond_71

    #@39
    invoke-virtual {v2, v1}, Lcom/android/dx/rop/cst/CstArray$List;->get(I)Lcom/android/dx/rop/cst/Constant;

    #@3c
    move-result-object v4

    #@3d
    if-eqz v0, :cond_69

    #@3f
    iget-object v5, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@41
    new-instance v6, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string v7, "  ["

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    const-string v7, "] "

    #@56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v6

    #@5a
    invoke-static {v4}, Lcom/android/dx/dex/file/ValueEncoder;->constantToHuman(Lcom/android/dx/rop/cst/Constant;)Ljava/lang/String;

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    invoke-interface {v5, v6}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    #@69
    :cond_69
    invoke-virtual {p0, v4}, Lcom/android/dx/dex/file/ValueEncoder;->writeConstant(Lcom/android/dx/rop/cst/Constant;)V

    #@6c
    add-int/lit8 v1, v1, 0x1

    #@6e
    goto :goto_37

    #@6f
    :cond_6f
    move v0, v1

    #@70
    goto :goto_c

    #@71
    :cond_71
    if-eqz v0, :cond_78

    #@73
    iget-object v0, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@75
    invoke-interface {v0}, Lcom/android/dx/util/AnnotatedOutput;->endAnnotation()V

    #@78
    :cond_78
    return-void
.end method

.method public writeConstant(Lcom/android/dx/rop/cst/Constant;)V
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/android/dx/dex/file/ValueEncoder;->constantToValueType(Lcom/android/dx/rop/cst/Constant;)I

    #@4
    move-result v0

    #@5
    packed-switch v0, :pswitch_data_c8

    #@8
    :pswitch_8
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    const-string v1, "Shouldn\'t happen"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    :pswitch_10
    check-cast p1, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@12
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    #@15
    move-result-wide v2

    #@16
    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeSignedIntegralValue(IJ)V

    #@19
    :goto_19
    return-void

    #@1a
    :pswitch_1a
    check-cast p1, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@1c
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    #@1f
    move-result-wide v2

    #@20
    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    #@23
    goto :goto_19

    #@24
    :pswitch_24
    check-cast p1, Lcom/android/dx/rop/cst/CstFloat;

    #@26
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstFloat;->getLongBits()J

    #@29
    move-result-wide v2

    #@2a
    const/16 v1, 0x20

    #@2c
    shl-long/2addr v2, v1

    #@2d
    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeRightZeroExtendedValue(IJ)V

    #@30
    goto :goto_19

    #@31
    :pswitch_31
    check-cast p1, Lcom/android/dx/rop/cst/CstDouble;

    #@33
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstDouble;->getLongBits()J

    #@36
    move-result-wide v2

    #@37
    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeRightZeroExtendedValue(IJ)V

    #@3a
    goto :goto_19

    #@3b
    :pswitch_3b
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    #@3d
    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    #@40
    move-result-object v1

    #@41
    check-cast p1, Lcom/android/dx/rop/cst/CstString;

    #@43
    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstString;)I

    #@46
    move-result v1

    #@47
    int-to-long v2, v1

    #@48
    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    #@4b
    goto :goto_19

    #@4c
    :pswitch_4c
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    #@4e
    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    #@51
    move-result-object v1

    #@52
    check-cast p1, Lcom/android/dx/rop/cst/CstType;

    #@54
    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstType;)I

    #@57
    move-result v1

    #@58
    int-to-long v2, v1

    #@59
    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    #@5c
    goto :goto_19

    #@5d
    :pswitch_5d
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    #@5f
    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    #@62
    move-result-object v1

    #@63
    check-cast p1, Lcom/android/dx/rop/cst/CstFieldRef;

    #@65
    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstFieldRef;)I

    #@68
    move-result v1

    #@69
    int-to-long v2, v1

    #@6a
    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    #@6d
    goto :goto_19

    #@6e
    :pswitch_6e
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    #@70
    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    #@73
    move-result-object v1

    #@74
    check-cast p1, Lcom/android/dx/rop/cst/CstMethodRef;

    #@76
    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/MethodIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstBaseMethodRef;)I

    #@79
    move-result v1

    #@7a
    int-to-long v2, v1

    #@7b
    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    #@7e
    goto :goto_19

    #@7f
    :pswitch_7f
    check-cast p1, Lcom/android/dx/rop/cst/CstEnumRef;

    #@81
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/android/dx/rop/cst/CstFieldRef;

    #@84
    move-result-object v1

    #@85
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    #@87
    invoke-virtual {v2}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v2, v1}, Lcom/android/dx/dex/file/FieldIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstFieldRef;)I

    #@8e
    move-result v1

    #@8f
    int-to-long v2, v1

    #@90
    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    #@93
    goto :goto_19

    #@94
    :pswitch_94
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@96
    invoke-interface {v1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    #@99
    check-cast p1, Lcom/android/dx/rop/cst/CstArray;

    #@9b
    invoke-virtual {p0, p1, v2}, Lcom/android/dx/dex/file/ValueEncoder;->writeArray(Lcom/android/dx/rop/cst/CstArray;Z)V

    #@9e
    goto/16 :goto_19

    #@a0
    :pswitch_a0
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@a2
    invoke-interface {v1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    #@a5
    check-cast p1, Lcom/android/dx/rop/cst/CstAnnotation;

    #@a7
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstAnnotation;->getAnnotation()Lcom/android/dx/rop/annotation/Annotation;

    #@aa
    move-result-object v0

    #@ab
    invoke-virtual {p0, v0, v2}, Lcom/android/dx/dex/file/ValueEncoder;->writeAnnotation(Lcom/android/dx/rop/annotation/Annotation;Z)V

    #@ae
    goto/16 :goto_19

    #@b0
    :pswitch_b0
    iget-object v1, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@b2
    invoke-interface {v1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    #@b5
    goto/16 :goto_19

    #@b7
    :pswitch_b7
    check-cast p1, Lcom/android/dx/rop/cst/CstBoolean;

    #@b9
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstBoolean;->getIntBits()I

    #@bc
    move-result v1

    #@bd
    iget-object v2, p0, Lcom/android/dx/dex/file/ValueEncoder;->out:Lcom/android/dx/util/AnnotatedOutput;

    #@bf
    shl-int/lit8 v1, v1, 0x5

    #@c1
    or-int/2addr v0, v1

    #@c2
    invoke-interface {v2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    #@c5
    goto/16 :goto_19

    #@c7
    nop

    #@c8
    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_10
        :pswitch_8
        :pswitch_10
        :pswitch_1a
        :pswitch_10
        :pswitch_8
        :pswitch_10
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_24
        :pswitch_31
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_3b
        :pswitch_4c
        :pswitch_5d
        :pswitch_6e
        :pswitch_7f
        :pswitch_94
        :pswitch_a0
        :pswitch_b0
        :pswitch_b7
    .end packed-switch
.end method
