.class final enum Lcom/android/dx/io/instructions/InstructionCodec$39;
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
    const/4 v0, 0x0

    #@1
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->baseAddressForCursor()I

    #@4
    move-result v2

    #@5
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@8
    move-result v3

    #@9
    new-array v4, v3, [I

    #@b
    new-array v5, v3, [I

    #@d
    move v1, v0

    #@e
    :goto_e
    if-ge v1, v3, :cond_19

    #@10
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    #@13
    move-result v6

    #@14
    aput v6, v4, v1

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_e

    #@19
    :cond_19
    :goto_19
    if-ge v0, v3, :cond_27

    #@1b
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    #@1e
    move-result v1

    #@1f
    add-int/lit8 v6, v2, -0x1

    #@21
    add-int/2addr v1, v6

    #@22
    aput v1, v5, v0

    #@24
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_19

    #@27
    :cond_27
    new-instance v0, Lcom/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;

    #@29
    invoke-direct {v0, p0, p1, v4, v5}, Lcom/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;I[I[I)V

    #@2c
    return-object v0
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .registers 10

    #@0
    const/4 v0, 0x0

    #@1
    check-cast p1, Lcom/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;

    #@3
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;->getKeys()[I

    #@6
    move-result-object v2

    #@7
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;->getTargets()[I

    #@a
    move-result-object v3

    #@b
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeOutput;->baseAddressForCursor()I

    #@e
    move-result v4

    #@f
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;->getOpcodeUnit()S

    #@12
    move-result v1

    #@13
    invoke-interface {p2, v1}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    #@16
    array-length v1, v3

    #@17
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->asUnsignedUnit(I)S
    invoke-static {v1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1700(I)S

    #@1a
    move-result v1

    #@1b
    invoke-interface {p2, v1}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    #@1e
    array-length v5, v2

    #@1f
    move v1, v0

    #@20
    :goto_20
    if-ge v1, v5, :cond_2a

    #@22
    aget v6, v2, v1

    #@24
    invoke-interface {p2, v6}, Lcom/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_20

    #@2a
    :cond_2a
    array-length v1, v3

    #@2b
    :goto_2b
    if-ge v0, v1, :cond_36

    #@2d
    aget v2, v3, v0

    #@2f
    sub-int/2addr v2, v4

    #@30
    invoke-interface {p2, v2}, Lcom/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    #@33
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_2b

    #@36
    :cond_36
    return-void
.end method
