.class final enum Lcom/android/dx/io/instructions/InstructionCodec$10;
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
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->cursor()I

    #@3
    move-result v1

    #@4
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->byte0(I)I
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$100(I)I

    #@7
    move-result v2

    #@8
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->byte1(I)I
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$200(I)I

    #@b
    move-result v8

    #@c
    new-instance v0, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x0

    #@10
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@13
    move-result v5

    #@14
    int-to-short v5, v5

    #@15
    add-int/lit8 v1, v1, -0x1

    #@17
    add-int/2addr v5, v1

    #@18
    const-wide/16 v6, 0x0

    #@1a
    move-object v1, p0

    #@1b
    invoke-direct/range {v0 .. v8}, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJI)V

    #@1e
    return-object v0
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .registers 6

    #@0
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeOutput;->cursor()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1, v0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getTargetUnit(I)S

    #@7
    move-result v0

    #@8
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    #@b
    move-result v1

    #@c
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getA()I

    #@f
    move-result v2

    #@10
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->codeUnit(II)S
    invoke-static {v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec;->access$600(II)S

    #@13
    move-result v1

    #@14
    invoke-interface {p2, v1, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write(SS)V

    #@17
    return-void
.end method
