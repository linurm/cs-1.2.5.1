.class final enum Lcom/android/dx/io/instructions/InstructionCodec$38;
.super Lcom/android/dx/io/instructions/InstructionCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/io/instructions/InstructionCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/android/dx/io/instructions/InstructionCodec$1;)V

    #@4
    return-void
.end method


# virtual methods
.method public decode(ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->baseAddressForCursor()I

    #@3
    move-result v1

    #@4
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@7
    move-result v2

    #@8
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    #@b
    move-result v3

    #@c
    new-array v4, v2, [I

    #@e
    const/4 v0, 0x0

    #@f
    :goto_f
    if-ge v0, v2, :cond_1d

    #@11
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    #@14
    move-result v5

    #@15
    add-int/lit8 v6, v1, -0x1

    #@17
    add-int/2addr v5, v6

    #@18
    aput v5, v4, v0

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_f

    #@1d
    :cond_1d
    new-instance v0, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;

    #@1f
    invoke-direct {v0, p0, p1, v3, v4}, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;II[I)V

    #@22
    return-object v0
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .registers 8

    #@0
    check-cast p1, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;

    #@2
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->getTargets()[I

    #@5
    move-result-object v1

    #@6
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeOutput;->baseAddressForCursor()I

    #@9
    move-result v2

    #@a
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->getOpcodeUnit()S

    #@d
    move-result v0

    #@e
    invoke-interface {p2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    #@11
    array-length v0, v1

    #@12
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->asUnsignedUnit(I)S
    invoke-static {v0}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1700(I)S

    #@15
    move-result v0

    #@16
    invoke-interface {p2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    #@19
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->getFirstKey()I

    #@1c
    move-result v0

    #@1d
    invoke-interface {p2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    #@20
    array-length v3, v1

    #@21
    const/4 v0, 0x0

    #@22
    :goto_22
    if-ge v0, v3, :cond_2d

    #@24
    aget v4, v1, v0

    #@26
    sub-int/2addr v4, v2

    #@27
    invoke-interface {p2, v4}, Lcom/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    #@2a
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_22

    #@2d
    :cond_2d
    return-void
.end method
