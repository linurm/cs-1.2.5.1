.class public final Lcom/android/dx/dex/file/DexFile;
.super Ljava/lang/Object;


# instance fields
.field private final byteData:Lcom/android/dx/dex/file/MixedItemSection;

.field private final classData:Lcom/android/dx/dex/file/MixedItemSection;

.field private final classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

.field private dexOptions:Lcom/android/dx/dex/DexOptions;

.field private dumpWidth:I

.field private final fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

.field private fileSize:I

.field private final header:Lcom/android/dx/dex/file/HeaderSection;

.field private final map:Lcom/android/dx/dex/file/MixedItemSection;

.field private final methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

.field private final protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

.field private final sections:[Lcom/android/dx/dex/file/Section;

.field private final stringData:Lcom/android/dx/dex/file/MixedItemSection;

.field private final stringIds:Lcom/android/dx/dex/file/StringIdsSection;

.field private final typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

.field private final typeLists:Lcom/android/dx/dex/file/MixedItemSection;

.field private final wordData:Lcom/android/dx/dex/file/MixedItemSection;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/DexOptions;)V
    .registers 8

    #@0
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x4

    #@2
    const/4 v3, 0x1

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    iput-object p1, p0, Lcom/android/dx/dex/file/DexFile;->dexOptions:Lcom/android/dx/dex/DexOptions;

    #@8
    new-instance v0, Lcom/android/dx/dex/file/HeaderSection;

    #@a
    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/HeaderSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    #@d
    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->header:Lcom/android/dx/dex/file/HeaderSection;

    #@f
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection;

    #@11
    sget-object v1, Lcom/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@13
    invoke-direct {v0, v5, p0, v4, v1}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    #@16
    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    #@18
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection;

    #@1a
    const-string v1, "word_data"

    #@1c
    sget-object v2, Lcom/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@1e
    invoke-direct {v0, v1, p0, v4, v2}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    #@21
    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    #@23
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection;

    #@25
    const-string v1, "string_data"

    #@27
    sget-object v2, Lcom/android/dx/dex/file/MixedItemSection$SortType;->INSTANCE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@29
    invoke-direct {v0, v1, p0, v3, v2}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    #@2c
    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    #@2e
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection;

    #@30
    sget-object v1, Lcom/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@32
    invoke-direct {v0, v5, p0, v3, v1}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    #@35
    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    #@37
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection;

    #@39
    const-string v1, "byte_data"

    #@3b
    sget-object v2, Lcom/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@3d
    invoke-direct {v0, v1, p0, v3, v2}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    #@40
    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    #@42
    new-instance v0, Lcom/android/dx/dex/file/StringIdsSection;

    #@44
    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/StringIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    #@47
    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    #@49
    new-instance v0, Lcom/android/dx/dex/file/TypeIdsSection;

    #@4b
    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/TypeIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    #@4e
    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    #@50
    new-instance v0, Lcom/android/dx/dex/file/ProtoIdsSection;

    #@52
    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/ProtoIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    #@55
    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    #@57
    new-instance v0, Lcom/android/dx/dex/file/FieldIdsSection;

    #@59
    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/FieldIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    #@5c
    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    #@5e
    new-instance v0, Lcom/android/dx/dex/file/MethodIdsSection;

    #@60
    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/MethodIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    #@63
    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    #@65
    new-instance v0, Lcom/android/dx/dex/file/ClassDefsSection;

    #@67
    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/ClassDefsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    #@6a
    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    #@6c
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection;

    #@6e
    const-string v1, "map"

    #@70
    sget-object v2, Lcom/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@72
    invoke-direct {v0, v1, p0, v4, v2}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    #@75
    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    #@77
    const/16 v0, 0xd

    #@79
    new-array v0, v0, [Lcom/android/dx/dex/file/Section;

    #@7b
    const/4 v1, 0x0

    #@7c
    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->header:Lcom/android/dx/dex/file/HeaderSection;

    #@7e
    aput-object v2, v0, v1

    #@80
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    #@82
    aput-object v1, v0, v3

    #@84
    const/4 v1, 0x2

    #@85
    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    #@87
    aput-object v2, v0, v1

    #@89
    const/4 v1, 0x3

    #@8a
    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    #@8c
    aput-object v2, v0, v1

    #@8e
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    #@90
    aput-object v1, v0, v4

    #@92
    const/4 v1, 0x5

    #@93
    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    #@95
    aput-object v2, v0, v1

    #@97
    const/4 v1, 0x6

    #@98
    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    #@9a
    aput-object v2, v0, v1

    #@9c
    const/4 v1, 0x7

    #@9d
    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    #@9f
    aput-object v2, v0, v1

    #@a1
    const/16 v1, 0x8

    #@a3
    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    #@a5
    aput-object v2, v0, v1

    #@a7
    const/16 v1, 0x9

    #@a9
    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    #@ab
    aput-object v2, v0, v1

    #@ad
    const/16 v1, 0xa

    #@af
    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    #@b1
    aput-object v2, v0, v1

    #@b3
    const/16 v1, 0xb

    #@b5
    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    #@b7
    aput-object v2, v0, v1

    #@b9
    const/16 v1, 0xc

    #@bb
    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    #@bd
    aput-object v2, v0, v1

    #@bf
    iput-object v0, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    #@c1
    const/4 v0, -0x1

    #@c2
    iput v0, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    #@c4
    const/16 v0, 0x4f

    #@c6
    iput v0, p0, Lcom/android/dx/dex/file/DexFile;->dumpWidth:I

    #@c8
    return-void
.end method

.method private static calcChecksum([B)V
    .registers 4

    #@0
    new-instance v0, Ljava/util/zip/Adler32;

    #@2
    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    #@5
    const/16 v1, 0xc

    #@7
    array-length v2, p0

    #@8
    add-int/lit8 v2, v2, -0xc

    #@a
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/zip/Adler32;->update([BII)V

    #@d
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    #@10
    move-result-wide v0

    #@11
    long-to-int v0, v0

    #@12
    const/16 v1, 0x8

    #@14
    int-to-byte v2, v0

    #@15
    int-to-byte v2, v2

    #@16
    aput-byte v2, p0, v1

    #@18
    const/16 v1, 0x9

    #@1a
    shr-int/lit8 v2, v0, 0x8

    #@1c
    int-to-byte v2, v2

    #@1d
    int-to-byte v2, v2

    #@1e
    aput-byte v2, p0, v1

    #@20
    const/16 v1, 0xa

    #@22
    shr-int/lit8 v2, v0, 0x10

    #@24
    int-to-byte v2, v2

    #@25
    int-to-byte v2, v2

    #@26
    aput-byte v2, p0, v1

    #@28
    const/16 v1, 0xb

    #@2a
    shr-int/lit8 v0, v0, 0x18

    #@2c
    int-to-byte v0, v0

    #@2d
    int-to-byte v0, v0

    #@2e
    aput-byte v0, p0, v1

    #@30
    return-void
.end method

.method private static calcSignature([B)V
    .registers 5

    #@0
    const/16 v3, 0x14

    #@2
    :try_start_2
    const-string v0, "SHA-1"

    #@4
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_7} :catch_40

    #@7
    move-result-object v0

    #@8
    const/16 v1, 0x20

    #@a
    array-length v2, p0

    #@b
    add-int/lit8 v2, v2, -0x20

    #@d
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    #@10
    const/16 v1, 0xc

    #@12
    const/16 v2, 0x14

    #@14
    :try_start_14
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I

    #@17
    move-result v0

    #@18
    if-eq v0, v3, :cond_47

    #@1a
    new-instance v1, Ljava/lang/RuntimeException;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string v3, "unexpected digest write: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    const-string v2, " bytes"

    #@2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@38
    throw v1
    :try_end_39
    .catch Ljava/security/DigestException; {:try_start_14 .. :try_end_39} :catch_39

    #@39
    :catch_39
    move-exception v0

    #@3a
    new-instance v1, Ljava/lang/RuntimeException;

    #@3c
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@3f
    throw v1

    #@40
    :catch_40
    move-exception v0

    #@41
    new-instance v1, Ljava/lang/RuntimeException;

    #@43
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@46
    throw v1

    #@47
    :cond_47
    return-void
.end method

.method private toDex0(ZZ)Lcom/android/dx/util/ByteArrayAnnotatedOutput;
    .registers 11

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    #@3
    invoke-virtual {v1}, Lcom/android/dx/dex/file/ClassDefsSection;->prepare()V

    #@6
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    #@8
    invoke-virtual {v1}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    #@b
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    #@d
    invoke-virtual {v1}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    #@10
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    #@12
    invoke-virtual {v1}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    #@15
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    #@17
    invoke-virtual {v1}, Lcom/android/dx/dex/file/MethodIdsSection;->prepare()V

    #@1a
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    #@1c
    invoke-virtual {v1}, Lcom/android/dx/dex/file/FieldIdsSection;->prepare()V

    #@1f
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    #@21
    invoke-virtual {v1}, Lcom/android/dx/dex/file/ProtoIdsSection;->prepare()V

    #@24
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    #@26
    invoke-virtual {v1}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    #@29
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    #@2b
    invoke-virtual {v1}, Lcom/android/dx/dex/file/TypeIdsSection;->prepare()V

    #@2e
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    #@30
    invoke-virtual {v1}, Lcom/android/dx/dex/file/StringIdsSection;->prepare()V

    #@33
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    #@35
    invoke-virtual {v1}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    #@38
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->header:Lcom/android/dx/dex/file/HeaderSection;

    #@3a
    invoke-virtual {v1}, Lcom/android/dx/dex/file/HeaderSection;->prepare()V

    #@3d
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    #@3f
    array-length v5, v1

    #@40
    move v1, v3

    #@41
    move v4, v3

    #@42
    :goto_42
    if-ge v4, v5, :cond_a4

    #@44
    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    #@46
    aget-object v2, v2, v4

    #@48
    invoke-virtual {v2, v1}, Lcom/android/dx/dex/file/Section;->setFileOffset(I)I

    #@4b
    move-result v6

    #@4c
    if-ge v6, v1, :cond_67

    #@4e
    new-instance v1, Ljava/lang/RuntimeException;

    #@50
    new-instance v2, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string v3, "bogus placement for section "

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@66
    throw v1

    #@67
    :cond_67
    :try_start_67
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    #@69
    if-ne v2, v1, :cond_77

    #@6b
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    #@6d
    iget-object v7, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    #@6f
    invoke-static {v1, v7}, Lcom/android/dx/dex/file/MapItem;->addMap([Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/MixedItemSection;)V

    #@72
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    #@74
    invoke-virtual {v1}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    #@77
    :cond_77
    instance-of v1, v2, Lcom/android/dx/dex/file/MixedItemSection;

    #@79
    if-eqz v1, :cond_82

    #@7b
    move-object v0, v2

    #@7c
    check-cast v0, Lcom/android/dx/dex/file/MixedItemSection;

    #@7e
    move-object v1, v0

    #@7f
    invoke-virtual {v1}, Lcom/android/dx/dex/file/MixedItemSection;->placeItems()V

    #@82
    :cond_82
    invoke-virtual {v2}, Lcom/android/dx/dex/file/Section;->writeSize()I
    :try_end_85
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_85} :catch_8b

    #@85
    move-result v1

    #@86
    add-int/lit8 v2, v4, 0x1

    #@88
    add-int/2addr v1, v6

    #@89
    move v4, v2

    #@8a
    goto :goto_42

    #@8b
    :catch_8b
    move-exception v1

    #@8c
    new-instance v2, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string v3, "...while writing section "

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v2

    #@9b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v2

    #@9f
    invoke-static {v1, v2}, Lcom/android/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;

    #@a2
    move-result-object v1

    #@a3
    throw v1

    #@a4
    :cond_a4
    iput v1, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    #@a6
    iget v1, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    #@a8
    new-array v2, v1, [B

    #@aa
    new-instance v4, Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@ac
    invoke-direct {v4, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>([B)V

    #@af
    if-eqz p1, :cond_b6

    #@b1
    iget v1, p0, Lcom/android/dx/dex/file/DexFile;->dumpWidth:I

    #@b3
    invoke-virtual {v4, v1, p2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->enableAnnotations(IZ)V

    #@b6
    :cond_b6
    :goto_b6
    if-ge v3, v5, :cond_119

    #@b8
    :try_start_b8
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    #@ba
    aget-object v1, v1, v3

    #@bc
    invoke-virtual {v1}, Lcom/android/dx/dex/file/Section;->getFileOffset()I

    #@bf
    move-result v6

    #@c0
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@c3
    move-result v7

    #@c4
    sub-int/2addr v6, v7

    #@c5
    if-gez v6, :cond_ff

    #@c7
    new-instance v1, Lcom/android/dx/util/ExceptionWithContext;

    #@c9
    new-instance v2, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-string v4, "excess write of "

    #@d0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v2

    #@d4
    neg-int v4, v6

    #@d5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v2

    #@d9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v2

    #@dd
    invoke-direct {v1, v2}, Lcom/android/dx/util/ExceptionWithContext;-><init>(Ljava/lang/String;)V

    #@e0
    throw v1
    :try_end_e1
    .catch Ljava/lang/RuntimeException; {:try_start_b8 .. :try_end_e1} :catch_e1

    #@e1
    :catch_e1
    move-exception v1

    #@e2
    instance-of v2, v1, Lcom/android/dx/util/ExceptionWithContext;

    #@e4
    if-eqz v2, :cond_112

    #@e6
    check-cast v1, Lcom/android/dx/util/ExceptionWithContext;

    #@e8
    :goto_e8
    new-instance v2, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    const-string v4, "...while writing section "

    #@ef
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v2

    #@f3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v2

    #@f7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v2

    #@fb
    invoke-virtual {v1, v2}, Lcom/android/dx/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    #@fe
    throw v1

    #@ff
    :cond_ff
    :try_start_ff
    invoke-virtual {v1}, Lcom/android/dx/dex/file/Section;->getFileOffset()I

    #@102
    move-result v6

    #@103
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@106
    move-result v7

    #@107
    sub-int/2addr v6, v7

    #@108
    invoke-virtual {v4, v6}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeZeroes(I)V

    #@10b
    invoke-virtual {v1, v4}, Lcom/android/dx/dex/file/Section;->writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    :try_end_10e
    .catch Ljava/lang/RuntimeException; {:try_start_ff .. :try_end_10e} :catch_e1

    #@10e
    add-int/lit8 v1, v3, 0x1

    #@110
    move v3, v1

    #@111
    goto :goto_b6

    #@112
    :cond_112
    new-instance v2, Lcom/android/dx/util/ExceptionWithContext;

    #@114
    invoke-direct {v2, v1}, Lcom/android/dx/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;)V

    #@117
    move-object v1, v2

    #@118
    goto :goto_e8

    #@119
    :cond_119
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    #@11c
    move-result v1

    #@11d
    iget v3, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    #@11f
    if-eq v1, v3, :cond_129

    #@121
    new-instance v1, Ljava/lang/RuntimeException;

    #@123
    const-string v2, "foreshortened write"

    #@125
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@128
    throw v1

    #@129
    :cond_129
    invoke-static {v2}, Lcom/android/dx/dex/file/DexFile;->calcSignature([B)V

    #@12c
    invoke-static {v2}, Lcom/android/dx/dex/file/DexFile;->calcChecksum([B)V

    #@12f
    if-eqz p1, :cond_144

    #@131
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    #@133
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@135
    const-string v3, "\nmethod code index:\n\n"

    #@137
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/dx/dex/file/MixedItemSection;->writeIndexAnnotation(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/file/ItemType;Ljava/lang/String;)V

    #@13a
    invoke-virtual {p0}, Lcom/android/dx/dex/file/DexFile;->getStatistics()Lcom/android/dx/dex/file/Statistics;

    #@13d
    move-result-object v1

    #@13e
    invoke-virtual {v1, v4}, Lcom/android/dx/dex/file/Statistics;->writeAnnotation(Lcom/android/dx/util/AnnotatedOutput;)V

    #@141
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->finishAnnotating()V

    #@144
    :cond_144
    return-object v4
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/file/ClassDefItem;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/ClassDefsSection;->add(Lcom/android/dx/dex/file/ClassDefItem;)V

    #@5
    return-void
.end method

.method findItemOrNull(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;
    .registers 3

    #@0
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstString;

    #@2
    if-eqz v0, :cond_b

    #@4
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/StringIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstType;

    #@d
    if-eqz v0, :cond_16

    #@f
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    #@11
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    #@14
    move-result-object v0

    #@15
    goto :goto_a

    #@16
    :cond_16
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    #@18
    if-eqz v0, :cond_21

    #@1a
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    #@1c
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/MethodIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    #@1f
    move-result-object v0

    #@20
    goto :goto_a

    #@21
    :cond_21
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstFieldRef;

    #@23
    if-eqz v0, :cond_2c

    #@25
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    #@27
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    #@2a
    move-result-object v0

    #@2b
    goto :goto_a

    #@2c
    :cond_2c
    const/4 v0, 0x0

    #@2d
    goto :goto_a
.end method

.method getByteData()Lcom/android/dx/dex/file/MixedItemSection;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    #@2
    return-object v0
.end method

.method getClassData()Lcom/android/dx/dex/file/MixedItemSection;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    #@2
    return-object v0
.end method

.method getClassDefs()Lcom/android/dx/dex/file/ClassDefsSection;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    #@2
    return-object v0
.end method

.method public getClassOrNull(Ljava/lang/String;)Lcom/android/dx/dex/file/ClassDefItem;
    .registers 5

    #@0
    :try_start_0
    invoke-static {p1}, Lcom/android/dx/rop/type/Type;->internClassName(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    #@6
    new-instance v2, Lcom/android/dx/rop/cst/CstType;

    #@8
    invoke-direct {v2, v0}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@b
    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/ClassDefsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/dx/dex/file/ClassDefItem;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_12

    #@11
    :goto_11
    return-object v0

    #@12
    :catch_12
    move-exception v0

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_11
.end method

.method public getDexOptions()Lcom/android/dx/dex/DexOptions;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->dexOptions:Lcom/android/dx/dex/DexOptions;

    #@2
    return-object v0
.end method

.method getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    #@2
    return-object v0
.end method

.method getFileSize()I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    #@2
    if-gez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "file size not yet known"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget v0, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    #@e
    return v0
.end method

.method getFirstDataSection()Lcom/android/dx/dex/file/Section;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    #@2
    return-object v0
.end method

.method getLastDataSection()Lcom/android/dx/dex/file/Section;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    #@2
    return-object v0
.end method

.method getMap()Lcom/android/dx/dex/file/MixedItemSection;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    #@2
    return-object v0
.end method

.method getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    #@2
    return-object v0
.end method

.method getProtoIds()Lcom/android/dx/dex/file/ProtoIdsSection;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    #@2
    return-object v0
.end method

.method public getStatistics()Lcom/android/dx/dex/file/Statistics;
    .registers 6

    #@0
    new-instance v1, Lcom/android/dx/dex/file/Statistics;

    #@2
    invoke-direct {v1}, Lcom/android/dx/dex/file/Statistics;-><init>()V

    #@5
    iget-object v2, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    #@7
    array-length v3, v2

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    if-ge v0, v3, :cond_13

    #@b
    aget-object v4, v2, v0

    #@d
    invoke-virtual {v1, v4}, Lcom/android/dx/dex/file/Statistics;->addAll(Lcom/android/dx/dex/file/Section;)V

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_9

    #@13
    :cond_13
    return-object v1
.end method

.method getStringData()Lcom/android/dx/dex/file/MixedItemSection;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    #@2
    return-object v0
.end method

.method getStringIds()Lcom/android/dx/dex/file/StringIdsSection;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    #@2
    return-object v0
.end method

.method getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    #@2
    return-object v0
.end method

.method getTypeLists()Lcom/android/dx/dex/file/MixedItemSection;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    #@2
    return-object v0
.end method

.method getWordData()Lcom/android/dx/dex/file/MixedItemSection;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    #@2
    return-object v0
.end method

.method internIfAppropriate(Lcom/android/dx/rop/cst/Constant;)V
    .registers 4

    #@0
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstString;

    #@2
    if-eqz v0, :cond_c

    #@4
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    #@6
    check-cast p1, Lcom/android/dx/rop/cst/CstString;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/dex/file/StringIdItem;

    #@b
    :cond_b
    :goto_b
    return-void

    #@c
    :cond_c
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstType;

    #@e
    if-eqz v0, :cond_18

    #@10
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    #@12
    check-cast p1, Lcom/android/dx/rop/cst/CstType;

    #@14
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Lcom/android/dx/rop/cst/CstType;)Lcom/android/dx/dex/file/TypeIdItem;

    #@17
    goto :goto_b

    #@18
    :cond_18
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    #@1a
    if-eqz v0, :cond_24

    #@1c
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    #@1e
    check-cast p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    #@20
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lcom/android/dx/rop/cst/CstBaseMethodRef;)Lcom/android/dx/dex/file/MethodIdItem;

    #@23
    goto :goto_b

    #@24
    :cond_24
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstFieldRef;

    #@26
    if-eqz v0, :cond_30

    #@28
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    #@2a
    check-cast p1, Lcom/android/dx/rop/cst/CstFieldRef;

    #@2c
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    #@2f
    goto :goto_b

    #@30
    :cond_30
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstEnumRef;

    #@32
    if-eqz v0, :cond_40

    #@34
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    #@36
    check-cast p1, Lcom/android/dx/rop/cst/CstEnumRef;

    #@38
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/android/dx/rop/cst/CstFieldRef;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    #@3f
    goto :goto_b

    #@40
    :cond_40
    if-nez p1, :cond_b

    #@42
    new-instance v0, Ljava/lang/NullPointerException;

    #@44
    const-string v1, "cst == null"

    #@46
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/dex/file/ClassDefsSection;->items()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public setDumpWidth(I)V
    .registers 4

    #@0
    const/16 v0, 0x28

    #@2
    if-ge p1, v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string v1, "dumpWidth < 40"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iput p1, p0, Lcom/android/dx/dex/file/DexFile;->dumpWidth:I

    #@e
    return-void
.end method

.method public toDex(Ljava/io/Writer;Z)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-eqz p1, :cond_11

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    invoke-direct {p0, v0, p2}, Lcom/android/dx/dex/file/DexFile;->toDex0(ZZ)Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@6
    move-result-object v1

    #@7
    if-eqz v0, :cond_c

    #@9
    invoke-virtual {v1, p1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeAnnotationsTo(Ljava/io/Writer;)V

    #@c
    :cond_c
    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getArray()[B

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_3
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/io/Writer;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-eqz p2, :cond_16

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    invoke-direct {p0, v0, p3}, Lcom/android/dx/dex/file/DexFile;->toDex0(ZZ)Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@6
    move-result-object v1

    #@7
    if-eqz p1, :cond_10

    #@9
    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getArray()[B

    #@c
    move-result-object v2

    #@d
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    #@10
    :cond_10
    if-eqz v0, :cond_15

    #@12
    invoke-virtual {v1, p2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeAnnotationsTo(Ljava/io/Writer;)V

    #@15
    :cond_15
    return-void

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    goto :goto_3
.end method
