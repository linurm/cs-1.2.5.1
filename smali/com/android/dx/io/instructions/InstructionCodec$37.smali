.class final enum Lcom/android/dx/io/instructions/InstructionCodec$37;
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
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    #@3
    move-result v3

    #@4
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@7
    move-result v9

    #@8
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@b
    move-result v8

    #@c
    new-instance v0, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;

    #@e
    invoke-static {p1}, Lcom/android/dx/io/OpcodeInfo;->getIndexType(I)Lcom/android/dx/io/IndexType;

    #@11
    move-result-object v4

    #@12
    const/4 v5, 0x0

    #@13
    const-wide/16 v6, 0x0

    #@15
    move-object v1, p0

    #@16
    move v2, p1

    #@17
    invoke-direct/range {v0 .. v9}, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJII)V

    #@1a
    return-object v0
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .registers 9

    #@0
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getIndex()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcodeUnit()S

    #@7
    move-result v1

    #@8
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->unit0(I)S
    invoke-static {v0}, Lcom/android/dx/io/instructions/InstructionCodec;->access$700(I)S

    #@b
    move-result v2

    #@c
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->unit1(I)S
    invoke-static {v0}, Lcom/android/dx/io/instructions/InstructionCodec;->access$800(I)S

    #@f
    move-result v3

    #@10
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getRegisterCountUnit()S

    #@13
    move-result v4

    #@14
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getAUnit()S

    #@17
    move-result v5

    #@18
    move-object v0, p2

    #@19
    invoke-interface/range {v0 .. v5}, Lcom/android/dx/io/instructions/CodeOutput;->write(SSSSS)V

    #@1c
    return-void
.end method
