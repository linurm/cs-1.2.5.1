.class final enum Lcom/android/dx/io/instructions/InstructionCodec$33;
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
    const/4 v3, 0x0

    #@1
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@4
    move-result v0

    #@5
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->byte0(I)I
    invoke-static {v0}, Lcom/android/dx/io/instructions/InstructionCodec;->access$100(I)I

    #@8
    move-result v8

    #@9
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->byte1(I)I
    invoke-static {v0}, Lcom/android/dx/io/instructions/InstructionCodec;->access$200(I)I

    #@c
    move-result v9

    #@d
    new-instance v0, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;

    #@f
    const/4 v4, 0x0

    #@10
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@13
    move-result v1

    #@14
    int-to-short v1, v1

    #@15
    int-to-long v6, v1

    #@16
    move-object v1, p0

    #@17
    move v2, p1

    #@18
    move v5, v3

    #@19
    invoke-direct/range {v0 .. v9}, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJII)V

    #@1c
    return-object v0
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .registers 6

    #@0
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcodeUnit()S

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getA()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getB()I

    #@b
    move-result v2

    #@c
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->codeUnit(II)S
    invoke-static {v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec;->access$600(II)S

    #@f
    move-result v1

    #@10
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getLiteralUnit()S

    #@13
    move-result v2

    #@14
    invoke-interface {p2, v0, v1, v2}, Lcom/android/dx/io/instructions/CodeOutput;->write(SSS)V

    #@17
    return-void
.end method
