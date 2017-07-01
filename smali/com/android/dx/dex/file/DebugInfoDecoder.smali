.class public Lcom/android/dx/dex/file/DebugInfoDecoder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;,
        Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;
    }
.end annotation


# instance fields
.field private address:I

.field private final codesize:I

.field private final desc:Lcom/android/dx/rop/type/Prototype;

.field private final encoded:[B

.field private final file:Lcom/android/dx/dex/file/DexFile;

.field private final isStatic:Z

.field private final lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

.field private line:I

.field private final locals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final positions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final regSize:I

.field private final thisStringIdx:I


# direct methods
.method constructor <init>([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;)V
    .registers 11

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    #@6
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    #@9
    if-nez p1, :cond_13

    #@b
    new-instance v0, Ljava/lang/NullPointerException;

    #@d
    const-string v1, "encoded == null"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    :cond_13
    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->encoded:[B

    #@15
    iput-boolean p4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    #@17
    invoke-virtual {p5}, Lcom/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/android/dx/rop/type/Prototype;

    #@1d
    iput-object p6, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->file:Lcom/android/dx/dex/file/DexFile;

    #@1f
    iput p3, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->regSize:I

    #@21
    new-instance v0, Ljava/util/ArrayList;

    #@23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    #@28
    new-instance v0, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2d
    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    #@2f
    iput p2, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->codesize:I

    #@31
    new-array v0, p3, [Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@33
    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@35
    const/4 v0, -0x1

    #@36
    :try_start_36
    invoke-virtual {p6}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    #@39
    move-result-object v1

    #@3a
    new-instance v2, Lcom/android/dx/rop/cst/CstString;

    #@3c
    const-string v3, "this"

    #@3e
    invoke-direct {v2, v3}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    #@41
    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstString;)I
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_44} :catch_48

    #@44
    move-result v0

    #@45
    :goto_45
    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    #@47
    return-void

    #@48
    :catch_48
    move-exception v1

    #@49
    goto :goto_45
.end method

.method private decode0()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v12, -0x1

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    new-instance v10, Lcom/android/dx/util/ByteArrayByteInput;

    #@5
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->encoded:[B

    #@7
    invoke-direct {v10, v0}, Lcom/android/dx/util/ByteArrayByteInput;-><init>([B)V

    #@a
    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    #@10
    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    #@13
    move-result v8

    #@14
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/android/dx/rop/type/Prototype;

    #@16
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    #@19
    move-result-object v9

    #@1a
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getParamBase()I

    #@1d
    move-result v3

    #@1e
    invoke-virtual {v9}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    #@21
    move-result v0

    #@22
    if-eq v8, v0, :cond_2c

    #@24
    new-instance v0, Ljava/lang/RuntimeException;

    #@26
    const-string v1, "Mismatch between parameters_size and prototype"

    #@28
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    :cond_2c
    iget-boolean v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    #@2e
    if-nez v0, :cond_44

    #@30
    new-instance v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@32
    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    #@34
    move v5, v1

    #@35
    move v6, v1

    #@36
    invoke-direct/range {v0 .. v6}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    #@39
    iget-object v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e
    iget-object v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@40
    aput-object v0, v4, v3

    #@42
    add-int/lit8 v3, v3, 0x1

    #@44
    :cond_44
    move v7, v1

    #@45
    :goto_45
    if-ge v7, v8, :cond_91

    #@47
    invoke-virtual {v9, v7}, Lcom/android/dx/rop/type/StdTypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    #@4a
    move-result-object v11

    #@4b
    invoke-direct {p0, v10}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dx/util/ByteInput;)I

    #@4e
    move-result v4

    #@4f
    if-ne v4, v12, :cond_6b

    #@51
    new-instance v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@53
    move v4, v12

    #@54
    move v5, v1

    #@55
    move v6, v1

    #@56
    invoke-direct/range {v0 .. v6}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    #@59
    :goto_59
    iget-object v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5e
    iget-object v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@60
    aput-object v0, v4, v3

    #@62
    invoke-virtual {v11}, Lcom/android/dx/rop/type/Type;->getCategory()I

    #@65
    move-result v0

    #@66
    add-int/2addr v3, v0

    #@67
    add-int/lit8 v0, v7, 0x1

    #@69
    move v7, v0

    #@6a
    goto :goto_45

    #@6b
    :cond_6b
    new-instance v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@6d
    move v5, v1

    #@6e
    move v6, v1

    #@6f
    invoke-direct/range {v0 .. v6}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    #@72
    goto :goto_59

    #@73
    :pswitch_73
    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    #@76
    move-result v6

    #@77
    invoke-direct {p0, v10}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dx/util/ByteInput;)I

    #@7a
    move-result v7

    #@7b
    invoke-direct {p0, v10}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dx/util/ByteInput;)I

    #@7e
    move-result v8

    #@7f
    new-instance v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@81
    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    #@83
    move v5, v2

    #@84
    move v9, v1

    #@85
    invoke-direct/range {v3 .. v9}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    #@88
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    #@8a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8d
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@8f
    aput-object v3, v0, v6

    #@91
    :cond_91
    :goto_91
    :pswitch_91
    invoke-interface {v10}, Lcom/android/dx/util/ByteInput;->readByte()B

    #@94
    move-result v0

    #@95
    and-int/lit16 v0, v0, 0xff

    #@97
    packed-switch v0, :pswitch_data_1c2

    #@9a
    const/16 v3, 0xa

    #@9c
    if-ge v0, v3, :cond_19e

    #@9e
    new-instance v1, Ljava/lang/RuntimeException;

    #@a0
    new-instance v2, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string v3, "Invalid extended opcode encountered "

    #@a7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v2

    #@ab
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v0

    #@af
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v0

    #@b3
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b6
    throw v1

    #@b7
    :pswitch_b7
    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    #@ba
    move-result v6

    #@bb
    invoke-direct {p0, v10}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dx/util/ByteInput;)I

    #@be
    move-result v7

    #@bf
    invoke-direct {p0, v10}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dx/util/ByteInput;)I

    #@c2
    move-result v8

    #@c3
    invoke-direct {p0, v10}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dx/util/ByteInput;)I

    #@c6
    move-result v9

    #@c7
    new-instance v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@c9
    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    #@cb
    move v5, v2

    #@cc
    invoke-direct/range {v3 .. v9}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    #@cf
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    #@d1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d4
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@d6
    aput-object v3, v0, v6

    #@d8
    goto :goto_91

    #@d9
    :pswitch_d9
    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    #@dc
    move-result v6

    #@dd
    :try_start_dd
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@df
    aget-object v0, v0, v6

    #@e1
    iget-boolean v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    #@e3
    if-eqz v3, :cond_118

    #@e5
    new-instance v0, Ljava/lang/RuntimeException;

    #@e7
    new-instance v1, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    const-string v2, "nonsensical RESTART_LOCAL on live register v"

    #@ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v1

    #@f2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v1

    #@f6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v1

    #@fa
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@fd
    throw v0
    :try_end_fe
    .catch Ljava/lang/NullPointerException; {:try_start_dd .. :try_end_fe} :catch_fe

    #@fe
    :catch_fe
    move-exception v0

    #@ff
    new-instance v0, Ljava/lang/RuntimeException;

    #@101
    new-instance v1, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string v2, "Encountered RESTART_LOCAL on new v"

    #@108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v1

    #@10c
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v1

    #@110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113
    move-result-object v1

    #@114
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@117
    throw v0

    #@118
    :cond_118
    :try_start_118
    new-instance v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@11a
    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    #@11c
    const/4 v5, 0x1

    #@11d
    iget v7, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    #@11f
    iget v8, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    #@121
    const/4 v9, 0x0

    #@122
    invoke-direct/range {v3 .. v9}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V
    :try_end_125
    .catch Ljava/lang/NullPointerException; {:try_start_118 .. :try_end_125} :catch_fe

    #@125
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    #@127
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12a
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@12c
    aput-object v3, v0, v6

    #@12e
    goto/16 :goto_91

    #@130
    :pswitch_130
    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    #@133
    move-result v6

    #@134
    :try_start_134
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@136
    aget-object v0, v0, v6

    #@138
    iget-boolean v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    #@13a
    if-nez v3, :cond_16f

    #@13c
    new-instance v0, Ljava/lang/RuntimeException;

    #@13e
    new-instance v1, Ljava/lang/StringBuilder;

    #@140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@143
    const-string v2, "nonsensical END_LOCAL on dead register v"

    #@145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v1

    #@149
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v1

    #@14d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v1

    #@151
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@154
    throw v0
    :try_end_155
    .catch Ljava/lang/NullPointerException; {:try_start_134 .. :try_end_155} :catch_155

    #@155
    :catch_155
    move-exception v0

    #@156
    new-instance v0, Ljava/lang/RuntimeException;

    #@158
    new-instance v1, Ljava/lang/StringBuilder;

    #@15a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15d
    const-string v2, "Encountered END_LOCAL on new v"

    #@15f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v1

    #@163
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@166
    move-result-object v1

    #@167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16a
    move-result-object v1

    #@16b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16e
    throw v0

    #@16f
    :cond_16f
    :try_start_16f
    new-instance v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@171
    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    #@173
    const/4 v5, 0x0

    #@174
    iget v7, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    #@176
    iget v8, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    #@178
    iget v9, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->signatureIndex:I

    #@17a
    invoke-direct/range {v3 .. v9}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V
    :try_end_17d
    .catch Ljava/lang/NullPointerException; {:try_start_16f .. :try_end_17d} :catch_155

    #@17d
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    #@17f
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@182
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@184
    aput-object v3, v0, v6

    #@186
    goto/16 :goto_91

    #@188
    :pswitch_188
    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    #@18a
    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    #@18d
    move-result v3

    #@18e
    add-int/2addr v0, v3

    #@18f
    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    #@191
    goto/16 :goto_91

    #@193
    :pswitch_193
    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    #@195
    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readSignedLeb128(Lcom/android/dx/util/ByteInput;)I

    #@198
    move-result v3

    #@199
    add-int/2addr v0, v3

    #@19a
    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    #@19c
    goto/16 :goto_91

    #@19e
    :cond_19e
    add-int/lit8 v0, v0, -0xa

    #@1a0
    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    #@1a2
    div-int/lit8 v4, v0, 0xf

    #@1a4
    add-int/2addr v3, v4

    #@1a5
    iput v3, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    #@1a7
    rem-int/lit8 v0, v0, 0xf

    #@1a9
    add-int/lit8 v0, v0, -0x4

    #@1ab
    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    #@1ad
    add-int/2addr v0, v3

    #@1ae
    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    #@1b0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    #@1b2
    new-instance v3, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;

    #@1b4
    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    #@1b6
    iget v5, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    #@1b8
    invoke-direct {v3, v4, v5}, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;-><init>(II)V

    #@1bb
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1be
    goto/16 :goto_91

    #@1c0
    :pswitch_1c0
    return-void

    #@1c1
    nop

    #@1c2
    :pswitch_data_1c2
    .packed-switch 0x0
        :pswitch_1c0
        :pswitch_188
        :pswitch_193
        :pswitch_73
        :pswitch_b7
        :pswitch_130
        :pswitch_d9
        :pswitch_91
        :pswitch_91
        :pswitch_91
    .end packed-switch
.end method

.method private getParamBase()I
    .registers 4

    #@0
    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->regSize:I

    #@2
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/android/dx/rop/type/Prototype;

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/dx/rop/type/StdTypeList;->getWordCount()I

    #@b
    move-result v2

    #@c
    iget-boolean v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    #@e
    if-eqz v0, :cond_15

    #@10
    const/4 v0, 0x0

    #@11
    :goto_11
    sub-int/2addr v1, v2

    #@12
    sub-int v0, v1, v0

    #@14
    return v0

    #@15
    :cond_15
    const/4 v0, 0x1

    #@16
    goto :goto_11
.end method

.method private readStringIndex(Lcom/android/dx/util/ByteInput;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-static {p1}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    return v0
.end method

.method public static validateEncode([BLcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/code/DalvCode;Z)V
    .registers 14

    #@0
    invoke-virtual {p3}, Lcom/android/dx/dex/code/DalvCode;->getPositions()Lcom/android/dx/dex/code/PositionList;

    #@3
    move-result-object v6

    #@4
    invoke-virtual {p3}, Lcom/android/dx/dex/code/DalvCode;->getLocals()Lcom/android/dx/dex/code/LocalList;

    #@7
    move-result-object v7

    #@8
    invoke-virtual {p3}, Lcom/android/dx/dex/code/DalvCode;->getInsns()Lcom/android/dx/dex/code/DalvInsnList;

    #@b
    move-result-object v8

    #@c
    invoke-virtual {v8}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    #@f
    move-result v1

    #@10
    invoke-virtual {v8}, Lcom/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    #@13
    move-result v2

    #@14
    move-object v0, p0

    #@15
    move v3, p4

    #@16
    move-object v4, p2

    #@17
    move-object v5, p1

    #@18
    :try_start_18
    invoke-static/range {v0 .. v7}, Lcom/android/dx/dex/file/DebugInfoDecoder;->validateEncode0([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/dex/code/PositionList;Lcom/android/dx/dex/code/LocalList;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1b} :catch_1c

    #@1b
    return-void

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1f
    const-string v2, "instructions:"

    #@21
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@26
    const-string v2, "  "

    #@28
    const/4 v3, 0x1

    #@29
    invoke-virtual {v8, v1, v2, v3}, Lcom/android/dx/dex/code/DalvInsnList;->debugPrint(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    #@2c
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2e
    const-string v2, "local list:"

    #@30
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@33
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@35
    const-string v2, "  "

    #@37
    invoke-virtual {v7, v1, v2}, Lcom/android/dx/dex/code/LocalList;->debugPrint(Ljava/io/PrintStream;Ljava/lang/String;)V

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string v2, "while processing "

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-static {v0, v1}, Lcom/android/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;

    #@54
    move-result-object v0

    #@55
    throw v0
.end method

.method private static validateEncode0([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/dex/code/PositionList;Lcom/android/dx/dex/code/LocalList;)V
    .registers 20

    #@0
    new-instance v1, Lcom/android/dx/dex/file/DebugInfoDecoder;

    #@2
    move-object v2, p0

    #@3
    move v3, p1

    #@4
    move v4, p2

    #@5
    move v5, p3

    #@6
    move-object/from16 v6, p4

    #@8
    move-object/from16 v7, p5

    #@a
    invoke-direct/range {v1 .. v7}, Lcom/android/dx/dex/file/DebugInfoDecoder;-><init>([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;)V

    #@d
    invoke-virtual {v1}, Lcom/android/dx/dex/file/DebugInfoDecoder;->decode()V

    #@10
    invoke-virtual {v1}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getPositionList()Ljava/util/List;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@17
    move-result v3

    #@18
    invoke-virtual/range {p6 .. p6}, Lcom/android/dx/dex/code/PositionList;->size()I

    #@1b
    move-result v4

    #@1c
    if-eq v3, v4, :cond_49

    #@1e
    new-instance v1, Ljava/lang/RuntimeException;

    #@20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string v4, "Decoded positions table not same size was "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@2e
    move-result v2

    #@2f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    const-string v3, " expected "

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual/range {p6 .. p6}, Lcom/android/dx/dex/code/PositionList;->size()I

    #@3c
    move-result v3

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@48
    throw v1

    #@49
    :cond_49
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@4c
    move-result-object v5

    #@4d
    :cond_4d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_a9

    #@53
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@56
    move-result-object v2

    #@57
    check-cast v2, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;

    #@59
    const/4 v4, 0x0

    #@5a
    invoke-virtual/range {p6 .. p6}, Lcom/android/dx/dex/code/PositionList;->size()I

    #@5d
    move-result v3

    #@5e
    add-int/lit8 v3, v3, -0x1

    #@60
    :goto_60
    if-ltz v3, :cond_1ef

    #@62
    move-object/from16 v0, p6

    #@64
    invoke-virtual {v0, v3}, Lcom/android/dx/dex/code/PositionList;->get(I)Lcom/android/dx/dex/code/PositionList$Entry;

    #@67
    move-result-object v6

    #@68
    iget v7, v2, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->line:I

    #@6a
    invoke-virtual {v6}, Lcom/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@6d
    move-result-object v8

    #@6e
    invoke-virtual {v8}, Lcom/android/dx/rop/code/SourcePosition;->getLine()I

    #@71
    move-result v8

    #@72
    if-ne v7, v8, :cond_a6

    #@74
    iget v7, v2, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->address:I

    #@76
    invoke-virtual {v6}, Lcom/android/dx/dex/code/PositionList$Entry;->getAddress()I

    #@79
    move-result v6

    #@7a
    if-ne v7, v6, :cond_a6

    #@7c
    const/4 v3, 0x1

    #@7d
    :goto_7d
    if-nez v3, :cond_4d

    #@7f
    new-instance v1, Ljava/lang/RuntimeException;

    #@81
    new-instance v3, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string v4, "Could not match position entry: "

    #@88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v3

    #@8c
    iget v4, v2, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->address:I

    #@8e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object v3

    #@92
    const-string v4, ", "

    #@94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    iget v2, v2, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->line:I

    #@9a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v2

    #@a2
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a5
    throw v1

    #@a6
    :cond_a6
    add-int/lit8 v3, v3, -0x1

    #@a8
    goto :goto_60

    #@a9
    :cond_a9
    invoke-virtual {v1}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getLocals()Ljava/util/List;

    #@ac
    move-result-object v6

    #@ad
    iget v7, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    #@af
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@b2
    move-result v3

    #@b3
    invoke-direct {v1}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getParamBase()I

    #@b6
    move-result v8

    #@b7
    const/4 v1, 0x0

    #@b8
    move v4, v1

    #@b9
    :goto_b9
    if-ge v4, v3, :cond_f4

    #@bb
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@be
    move-result-object v1

    #@bf
    move-object v2, v1

    #@c0
    check-cast v2, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@c2
    iget v1, v2, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    #@c4
    if-ltz v1, :cond_c8

    #@c6
    if-ne v1, v7, :cond_1eb

    #@c8
    :cond_c8
    add-int/lit8 v1, v4, 0x1

    #@ca
    move v5, v1

    #@cb
    :goto_cb
    if-ge v5, v3, :cond_1eb

    #@cd
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d0
    move-result-object v1

    #@d1
    check-cast v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@d3
    iget v9, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    #@d5
    if-eqz v9, :cond_dd

    #@d7
    move v1, v3

    #@d8
    :goto_d8
    add-int/lit8 v2, v4, 0x1

    #@da
    move v4, v2

    #@db
    move v3, v1

    #@dc
    goto :goto_b9

    #@dd
    :cond_dd
    iget v9, v2, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    #@df
    iget v10, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    #@e1
    if-ne v9, v10, :cond_f0

    #@e3
    iget-boolean v9, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    #@e5
    if-eqz v9, :cond_f0

    #@e7
    invoke-interface {v6, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@ea
    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@ed
    add-int/lit8 v1, v3, -0x1

    #@ef
    goto :goto_d8

    #@f0
    :cond_f0
    add-int/lit8 v1, v5, 0x1

    #@f2
    move v5, v1

    #@f3
    goto :goto_cb

    #@f4
    :cond_f4
    invoke-virtual/range {p7 .. p7}, Lcom/android/dx/dex/code/LocalList;->size()I

    #@f7
    move-result v5

    #@f8
    const/4 v1, 0x0

    #@f9
    const/4 v2, 0x0

    #@fa
    move v4, v1

    #@fb
    move v1, v2

    #@fc
    :goto_fc
    if-ge v4, v5, :cond_1e8

    #@fe
    move-object/from16 v0, p7

    #@100
    invoke-virtual {v0, v4}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    #@103
    move-result-object v7

    #@104
    invoke-virtual {v7}, Lcom/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;

    #@107
    move-result-object v2

    #@108
    sget-object v9, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@10a
    if-ne v2, v9, :cond_110

    #@10c
    :goto_10c
    add-int/lit8 v2, v4, 0x1

    #@10e
    move v4, v2

    #@10f
    goto :goto_fc

    #@110
    :cond_110
    move v2, v1

    #@111
    :cond_111
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@114
    move-result-object v1

    #@115
    check-cast v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@117
    iget v9, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    #@119
    if-ltz v9, :cond_17a

    #@11b
    :goto_11b
    iget v9, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    #@11d
    iget v10, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    #@11f
    invoke-virtual {v7}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    #@122
    move-result v11

    #@123
    if-eq v10, v11, :cond_17f

    #@125
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@127
    new-instance v3, Ljava/lang/StringBuilder;

    #@129
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12c
    const-string v5, "local register mismatch at orig "

    #@12e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v3

    #@132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@135
    move-result-object v3

    #@136
    const-string v4, " / decoded "

    #@138
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v3

    #@13c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v2

    #@140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@143
    move-result-object v2

    #@144
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@147
    const/4 v1, 0x1

    #@148
    :goto_148
    if-eqz v1, :cond_1ee

    #@14a
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14c
    const-string v2, "decoded locals:"

    #@14e
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@151
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@154
    move-result-object v2

    #@155
    :goto_155
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@158
    move-result v1

    #@159
    if-eqz v1, :cond_1e0

    #@15b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15e
    move-result-object v1

    #@15f
    check-cast v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    #@161
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@163
    new-instance v4, Ljava/lang/StringBuilder;

    #@165
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@168
    const-string v5, "  "

    #@16a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v4

    #@16e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v1

    #@172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v1

    #@176
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@179
    goto :goto_155

    #@17a
    :cond_17a
    add-int/lit8 v2, v2, 0x1

    #@17c
    if-lt v2, v3, :cond_111

    #@17e
    goto :goto_11b

    #@17f
    :cond_17f
    iget-boolean v10, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    #@181
    invoke-virtual {v7}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    #@184
    move-result v11

    #@185
    if-eq v10, v11, :cond_1ab

    #@187
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@189
    new-instance v3, Ljava/lang/StringBuilder;

    #@18b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18e
    const-string v5, "local start/end mismatch at orig "

    #@190
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v3

    #@194
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@197
    move-result-object v3

    #@198
    const-string v4, " / decoded "

    #@19a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v3

    #@19e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v2

    #@1a2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v2

    #@1a6
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a9
    const/4 v1, 0x1

    #@1aa
    goto :goto_148

    #@1ab
    :cond_1ab
    invoke-virtual {v7}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    #@1ae
    move-result v7

    #@1af
    if-eq v9, v7, :cond_1dc

    #@1b1
    if-nez v9, :cond_1b7

    #@1b3
    iget v1, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    #@1b5
    if-ge v1, v8, :cond_1dc

    #@1b7
    :cond_1b7
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b9
    new-instance v3, Ljava/lang/StringBuilder;

    #@1bb
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1be
    const-string v5, "local address mismatch at orig "

    #@1c0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v3

    #@1c4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v3

    #@1c8
    const-string v4, " / decoded "

    #@1ca
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v3

    #@1ce
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v2

    #@1d2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d5
    move-result-object v2

    #@1d6
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d9
    const/4 v1, 0x1

    #@1da
    goto/16 :goto_148

    #@1dc
    :cond_1dc
    add-int/lit8 v1, v2, 0x1

    #@1de
    goto/16 :goto_10c

    #@1e0
    :cond_1e0
    new-instance v1, Ljava/lang/RuntimeException;

    #@1e2
    const-string v2, "local table problem"

    #@1e4
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e7
    throw v1

    #@1e8
    :cond_1e8
    const/4 v1, 0x0

    #@1e9
    goto/16 :goto_148

    #@1eb
    :cond_1eb
    move v1, v3

    #@1ec
    goto/16 :goto_d8

    #@1ee
    :cond_1ee
    return-void

    #@1ef
    :cond_1ef
    move v3, v4

    #@1f0
    goto/16 :goto_7d
.end method


# virtual methods
.method public decode()V
    .registers 3

    #@0
    :try_start_0
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoDecoder;->decode0()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    #@3
    return-void

    #@4
    :catch_4
    move-exception v0

    #@5
    const-string v1, "...while decoding debug info"

    #@7
    invoke-static {v0, v1}, Lcom/android/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;

    #@a
    move-result-object v0

    #@b
    throw v0
.end method

.method public getLocals()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getPositionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method
