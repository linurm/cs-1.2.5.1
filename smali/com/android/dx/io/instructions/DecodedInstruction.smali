.class public abstract Lcom/android/dx/io/instructions/DecodedInstruction;
.super Ljava/lang/Object;


# instance fields
.field private final format:Lcom/android/dx/io/instructions/InstructionCodec;

.field private final index:I

.field private final indexType:Lcom/android/dx/io/IndexType;

.field private final literal:J

.field private final opcode:I

.field private final target:I


# direct methods
.method public constructor <init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJ)V
    .registers 10

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "format == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    invoke-static {p2}, Lcom/android/dx/io/Opcodes;->isValidShape(I)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1b

    #@13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string v1, "invalid opcode"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :cond_1b
    iput-object p1, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->format:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1d
    iput p2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->opcode:I

    #@1f
    iput p3, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->index:I

    #@21
    iput-object p4, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->indexType:Lcom/android/dx/io/IndexType;

    #@23
    iput p5, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->target:I

    #@25
    iput-wide p6, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@27
    return-void
.end method

.method public static decode(Lcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    invoke-interface {p0}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Lcom/android/dx/io/Opcodes;->extractOpcodeFromUnit(I)I

    #@7
    move-result v1

    #@8
    invoke-static {v1}, Lcom/android/dx/io/OpcodeInfo;->getFormat(I)Lcom/android/dx/io/instructions/InstructionCodec;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, v0, p0}, Lcom/android/dx/io/instructions/InstructionCodec;->decode(ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public static decodeAll([S)[Lcom/android/dx/io/instructions/DecodedInstruction;
    .registers 5

    #@0
    array-length v0, p0

    #@1
    new-array v0, v0, [Lcom/android/dx/io/instructions/DecodedInstruction;

    #@3
    new-instance v1, Lcom/android/dx/io/instructions/ShortArrayCodeInput;

    #@5
    invoke-direct {v1, p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;-><init>([S)V

    #@8
    :goto_8
    :try_start_8
    invoke-virtual {v1}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->hasMore()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_20

    #@e
    invoke-virtual {v1}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->cursor()I

    #@11
    move-result v2

    #@12
    invoke-static {v1}, Lcom/android/dx/io/instructions/DecodedInstruction;->decode(Lcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;

    #@15
    move-result-object v3

    #@16
    aput-object v3, v0, v2
    :try_end_18
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_18} :catch_19

    #@18
    goto :goto_8

    #@19
    :catch_19
    move-exception v0

    #@1a
    new-instance v1, Lcom/android/dx/util/DexException;

    #@1c
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/Throwable;)V

    #@1f
    throw v1

    #@20
    :cond_20
    return-object v0
.end method


# virtual methods
.method public final encode(Lcom/android/dx/io/instructions/CodeOutput;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->format:Lcom/android/dx/io/instructions/InstructionCodec;

    #@2
    invoke-virtual {v0, p0, p1}, Lcom/android/dx/io/instructions/InstructionCodec;->encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V

    #@5
    return-void
.end method

.method public getA()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final getAByte()S
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getA()I

    #@3
    move-result v0

    #@4
    and-int/lit16 v1, v0, -0x100

    #@6
    if-eqz v1, :cond_26

    #@8
    new-instance v1, Lcom/android/dx/util/DexException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v3, "Register A out of range: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    int-to-long v4, v0

    #@16
    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    :cond_26
    int-to-short v0, v0

    #@27
    return v0
.end method

.method public final getANibble()S
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getA()I

    #@3
    move-result v0

    #@4
    and-int/lit8 v1, v0, -0x10

    #@6
    if-eqz v1, :cond_26

    #@8
    new-instance v1, Lcom/android/dx/util/DexException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v3, "Register A out of range: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    int-to-long v4, v0

    #@16
    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    :cond_26
    int-to-short v0, v0

    #@27
    return v0
.end method

.method public final getAUnit()S
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getA()I

    #@3
    move-result v0

    #@4
    const/high16 v1, -0x10000

    #@6
    and-int/2addr v1, v0

    #@7
    if-eqz v1, :cond_27

    #@9
    new-instance v1, Lcom/android/dx/util/DexException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v3, "Register A out of range: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    int-to-long v4, v0

    #@17
    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    :cond_27
    int-to-short v0, v0

    #@28
    return v0
.end method

.method public getB()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final getBByte()S
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getB()I

    #@3
    move-result v0

    #@4
    and-int/lit16 v1, v0, -0x100

    #@6
    if-eqz v1, :cond_26

    #@8
    new-instance v1, Lcom/android/dx/util/DexException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v3, "Register B out of range: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    int-to-long v4, v0

    #@16
    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    :cond_26
    int-to-short v0, v0

    #@27
    return v0
.end method

.method public final getBNibble()S
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getB()I

    #@3
    move-result v0

    #@4
    and-int/lit8 v1, v0, -0x10

    #@6
    if-eqz v1, :cond_26

    #@8
    new-instance v1, Lcom/android/dx/util/DexException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v3, "Register B out of range: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    int-to-long v4, v0

    #@16
    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    :cond_26
    int-to-short v0, v0

    #@27
    return v0
.end method

.method public final getBUnit()S
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getB()I

    #@3
    move-result v0

    #@4
    const/high16 v1, -0x10000

    #@6
    and-int/2addr v1, v0

    #@7
    if-eqz v1, :cond_27

    #@9
    new-instance v1, Lcom/android/dx/util/DexException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v3, "Register B out of range: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    int-to-long v4, v0

    #@17
    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    :cond_27
    int-to-short v0, v0

    #@28
    return v0
.end method

.method public getC()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final getCByte()S
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getC()I

    #@3
    move-result v0

    #@4
    and-int/lit16 v1, v0, -0x100

    #@6
    if-eqz v1, :cond_26

    #@8
    new-instance v1, Lcom/android/dx/util/DexException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v3, "Register C out of range: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    int-to-long v4, v0

    #@16
    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    :cond_26
    int-to-short v0, v0

    #@27
    return v0
.end method

.method public final getCNibble()S
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getC()I

    #@3
    move-result v0

    #@4
    and-int/lit8 v1, v0, -0x10

    #@6
    if-eqz v1, :cond_26

    #@8
    new-instance v1, Lcom/android/dx/util/DexException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v3, "Register C out of range: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    int-to-long v4, v0

    #@16
    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    :cond_26
    int-to-short v0, v0

    #@27
    return v0
.end method

.method public final getCUnit()S
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getC()I

    #@3
    move-result v0

    #@4
    const/high16 v1, -0x10000

    #@6
    and-int/2addr v1, v0

    #@7
    if-eqz v1, :cond_27

    #@9
    new-instance v1, Lcom/android/dx/util/DexException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v3, "Register C out of range: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    int-to-long v4, v0

    #@17
    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    :cond_27
    int-to-short v0, v0

    #@28
    return v0
.end method

.method public getD()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final getDByte()S
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getD()I

    #@3
    move-result v0

    #@4
    and-int/lit16 v1, v0, -0x100

    #@6
    if-eqz v1, :cond_26

    #@8
    new-instance v1, Lcom/android/dx/util/DexException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v3, "Register D out of range: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    int-to-long v4, v0

    #@16
    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    :cond_26
    int-to-short v0, v0

    #@27
    return v0
.end method

.method public final getDNibble()S
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getD()I

    #@3
    move-result v0

    #@4
    and-int/lit8 v1, v0, -0x10

    #@6
    if-eqz v1, :cond_26

    #@8
    new-instance v1, Lcom/android/dx/util/DexException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v3, "Register D out of range: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    int-to-long v4, v0

    #@16
    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    :cond_26
    int-to-short v0, v0

    #@27
    return v0
.end method

.method public final getDUnit()S
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getD()I

    #@3
    move-result v0

    #@4
    const/high16 v1, -0x10000

    #@6
    and-int/2addr v1, v0

    #@7
    if-eqz v1, :cond_27

    #@9
    new-instance v1, Lcom/android/dx/util/DexException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v3, "Register D out of range: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    int-to-long v4, v0

    #@17
    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    :cond_27
    int-to-short v0, v0

    #@28
    return v0
.end method

.method public getE()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final getENibble()S
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getE()I

    #@3
    move-result v0

    #@4
    and-int/lit8 v1, v0, -0x10

    #@6
    if-eqz v1, :cond_26

    #@8
    new-instance v1, Lcom/android/dx/util/DexException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v3, "Register E out of range: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    int-to-long v4, v0

    #@16
    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    :cond_26
    int-to-short v0, v0

    #@27
    return v0
.end method

.method public final getFormat()Lcom/android/dx/io/instructions/InstructionCodec;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->format:Lcom/android/dx/io/instructions/InstructionCodec;

    #@2
    return-object v0
.end method

.method public final getIndex()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->index:I

    #@2
    return v0
.end method

.method public final getIndexType()Lcom/android/dx/io/IndexType;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->indexType:Lcom/android/dx/io/IndexType;

    #@2
    return-object v0
.end method

.method public final getIndexUnit()S
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->index:I

    #@2
    int-to-short v0, v0

    #@3
    return v0
.end method

.method public final getLiteral()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@2
    return-wide v0
.end method

.method public final getLiteralByte()I
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@2
    iget-wide v2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@4
    long-to-int v2, v2

    #@5
    int-to-byte v2, v2

    #@6
    int-to-long v2, v2

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_2a

    #@b
    new-instance v0, Lcom/android/dx/util/DexException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string v2, "Literal out of range: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-wide v2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@1a
    invoke-static {v2, v3}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    :cond_2a
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@2c
    long-to-int v0, v0

    #@2d
    and-int/lit16 v0, v0, 0xff

    #@2f
    return v0
.end method

.method public final getLiteralInt()I
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@2
    iget-wide v2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@4
    long-to-int v2, v2

    #@5
    int-to-long v2, v2

    #@6
    cmp-long v0, v0, v2

    #@8
    if-eqz v0, :cond_29

    #@a
    new-instance v0, Lcom/android/dx/util/DexException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string v2, "Literal out of range: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget-wide v2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@19
    invoke-static {v2, v3}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    :cond_29
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@2b
    long-to-int v0, v0

    #@2c
    return v0
.end method

.method public final getLiteralNibble()I
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@2
    const-wide/16 v2, -0x8

    #@4
    cmp-long v0, v0, v2

    #@6
    if-ltz v0, :cond_10

    #@8
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@a
    const-wide/16 v2, 0x7

    #@c
    cmp-long v0, v0, v2

    #@e
    if-lez v0, :cond_2f

    #@10
    :cond_10
    new-instance v0, Lcom/android/dx/util/DexException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "Literal out of range: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget-wide v2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@1f
    invoke-static {v2, v3}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    :cond_2f
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@31
    long-to-int v0, v0

    #@32
    and-int/lit8 v0, v0, 0xf

    #@34
    return v0
.end method

.method public final getLiteralUnit()S
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@2
    iget-wide v2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@4
    long-to-int v2, v2

    #@5
    int-to-short v2, v2

    #@6
    int-to-long v2, v2

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_2a

    #@b
    new-instance v0, Lcom/android/dx/util/DexException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string v2, "Literal out of range: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-wide v2, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@1a
    invoke-static {v2, v3}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    :cond_2a
    iget-wide v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->literal:J

    #@2c
    long-to-int v0, v0

    #@2d
    int-to-short v0, v0

    #@2e
    return v0
.end method

.method public final getOpcode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->opcode:I

    #@2
    return v0
.end method

.method public final getOpcodeUnit()S
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->opcode:I

    #@2
    int-to-short v0, v0

    #@3
    return v0
.end method

.method public abstract getRegisterCount()I
.end method

.method public final getRegisterCountUnit()S
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getRegisterCount()I

    #@3
    move-result v0

    #@4
    const/high16 v1, -0x10000

    #@6
    and-int/2addr v1, v0

    #@7
    if-eqz v1, :cond_27

    #@9
    new-instance v1, Lcom/android/dx/util/DexException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v3, "Register count out of range: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    int-to-long v4, v0

    #@17
    invoke-static {v4, v5}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    :cond_27
    int-to-short v0, v0

    #@28
    return v0
.end method

.method public final getTarget()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->target:I

    #@2
    return v0
.end method

.method public final getTarget(I)I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/DecodedInstruction;->target:I

    #@2
    sub-int/2addr v0, p1

    #@3
    return v0
.end method

.method public final getTargetByte(I)I
    .registers 6

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getTarget(I)I

    #@3
    move-result v0

    #@4
    int-to-byte v1, v0

    #@5
    if-eq v0, v1, :cond_24

    #@7
    new-instance v1, Lcom/android/dx/util/DexException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string v3, "Target out of range: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-static {v0}, Lcom/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    :cond_24
    and-int/lit16 v0, v0, 0xff

    #@26
    return v0
.end method

.method public final getTargetUnit(I)S
    .registers 6

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getTarget(I)I

    #@3
    move-result v0

    #@4
    int-to-short v1, v0

    #@5
    if-eq v0, v1, :cond_24

    #@7
    new-instance v1, Lcom/android/dx/util/DexException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string v3, "Target out of range: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-static {v0}, Lcom/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    :cond_24
    int-to-short v0, v0

    #@25
    return v0
.end method

.method public abstract withIndex(I)Lcom/android/dx/io/instructions/DecodedInstruction;
.end method
