.class public final Lcom/android/dx/dex/file/HeaderItem;
.super Lcom/android/dx/dex/file/IndexedItem;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/android/dx/dex/file/IndexedItem;-><init>()V

    #@3
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
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_HEADER_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@2
    return-object v0
.end method

.method public writeSize()I
    .registers 2

    #@0
    const/16 v0, 0x70

    #@2
    return v0
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 13

    #@0
    const v9, 0x12345678

    #@3
    const/16 v8, 0x70

    #@5
    const/16 v7, 0x8

    #@7
    const/4 v6, 0x4

    #@8
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getMap()Lcom/android/dx/dex/file/MixedItemSection;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/dx/dex/file/MixedItemSection;->getFileOffset()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getFirstDataSection()Lcom/android/dx/dex/file/Section;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getLastDataSection()Lcom/android/dx/dex/file/Section;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->getFileOffset()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {v2}, Lcom/android/dx/dex/file/Section;->getFileOffset()I

    #@1f
    move-result v0

    #@20
    invoke-virtual {v2}, Lcom/android/dx/dex/file/Section;->writeSize()I

    #@23
    move-result v2

    #@24
    add-int/2addr v0, v2

    #@25
    sub-int v2, v0, v3

    #@27
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getDexOptions()Lcom/android/dx/dex/DexOptions;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Lcom/android/dx/dex/DexOptions;->getMagic()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_d6

    #@35
    new-instance v0, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string v5, "magic: "

    #@3c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    new-instance v5, Lcom/android/dx/rop/cst/CstString;

    #@42
    invoke-direct {v5, v4}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    #@45
    invoke-virtual {v5}, Lcom/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    invoke-interface {p2, v7, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@54
    const-string v0, "checksum"

    #@56
    invoke-interface {p2, v6, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@59
    const/16 v0, 0x14

    #@5b
    const-string v5, "signature"

    #@5d
    invoke-interface {p2, v0, v5}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@60
    new-instance v0, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string v5, "file_size:       "

    #@67
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getFileSize()I

    #@6e
    move-result v5

    #@6f
    invoke-static {v5}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v0

    #@7b
    invoke-interface {p2, v6, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@7e
    new-instance v0, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string v5, "header_size:     "

    #@85
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    invoke-static {v8}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v0

    #@95
    invoke-interface {p2, v6, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@98
    new-instance v0, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string v5, "endian_tag:      "

    #@9f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    invoke-static {v9}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@a6
    move-result-object v5

    #@a7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v0

    #@af
    invoke-interface {p2, v6, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@b2
    const-string v0, "link_size:       0"

    #@b4
    invoke-interface {p2, v6, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@b7
    const-string v0, "link_off:        0"

    #@b9
    invoke-interface {p2, v6, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@bc
    new-instance v0, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string v5, "map_off:         "

    #@c3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v0

    #@c7
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@ca
    move-result-object v5

    #@cb
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v0

    #@cf
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v0

    #@d3
    invoke-interface {p2, v6, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@d6
    :cond_d6
    const/4 v0, 0x0

    #@d7
    :goto_d7
    if-ge v0, v7, :cond_e3

    #@d9
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    #@dc
    move-result v5

    #@dd
    invoke-interface {p2, v5}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    #@e0
    add-int/lit8 v0, v0, 0x1

    #@e2
    goto :goto_d7

    #@e3
    :cond_e3
    const/16 v0, 0x18

    #@e5
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeZeroes(I)V

    #@e8
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getFileSize()I

    #@eb
    move-result v0

    #@ec
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@ef
    invoke-interface {p2, v8}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@f2
    invoke-interface {p2, v9}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@f5
    invoke-interface {p2, v7}, Lcom/android/dx/util/AnnotatedOutput;->writeZeroes(I)V

    #@f8
    invoke-interface {p2, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@fb
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    #@fe
    move-result-object v0

    #@ff
    invoke-virtual {v0, p2}, Lcom/android/dx/dex/file/StringIdsSection;->writeHeaderPart(Lcom/android/dx/util/AnnotatedOutput;)V

    #@102
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    #@105
    move-result-object v0

    #@106
    invoke-virtual {v0, p2}, Lcom/android/dx/dex/file/TypeIdsSection;->writeHeaderPart(Lcom/android/dx/util/AnnotatedOutput;)V

    #@109
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getProtoIds()Lcom/android/dx/dex/file/ProtoIdsSection;

    #@10c
    move-result-object v0

    #@10d
    invoke-virtual {v0, p2}, Lcom/android/dx/dex/file/ProtoIdsSection;->writeHeaderPart(Lcom/android/dx/util/AnnotatedOutput;)V

    #@110
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    #@113
    move-result-object v0

    #@114
    invoke-virtual {v0, p2}, Lcom/android/dx/dex/file/FieldIdsSection;->writeHeaderPart(Lcom/android/dx/util/AnnotatedOutput;)V

    #@117
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    #@11a
    move-result-object v0

    #@11b
    invoke-virtual {v0, p2}, Lcom/android/dx/dex/file/MethodIdsSection;->writeHeaderPart(Lcom/android/dx/util/AnnotatedOutput;)V

    #@11e
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getClassDefs()Lcom/android/dx/dex/file/ClassDefsSection;

    #@121
    move-result-object v0

    #@122
    invoke-virtual {v0, p2}, Lcom/android/dx/dex/file/ClassDefsSection;->writeHeaderPart(Lcom/android/dx/util/AnnotatedOutput;)V

    #@125
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@128
    move-result v0

    #@129
    if-eqz v0, :cond_15f

    #@12b
    new-instance v0, Ljava/lang/StringBuilder;

    #@12d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@130
    const-string v1, "data_size:       "

    #@132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v0

    #@136
    invoke-static {v2}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@139
    move-result-object v1

    #@13a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v0

    #@13e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@141
    move-result-object v0

    #@142
    invoke-interface {p2, v6, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@145
    new-instance v0, Ljava/lang/StringBuilder;

    #@147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14a
    const-string v1, "data_off:        "

    #@14c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v0

    #@150
    invoke-static {v3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@153
    move-result-object v1

    #@154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v0

    #@158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v0

    #@15c
    invoke-interface {p2, v6, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@15f
    :cond_15f
    invoke-interface {p2, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@162
    invoke-interface {p2, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@165
    return-void
.end method
