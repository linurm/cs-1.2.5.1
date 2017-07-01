.class final enum Lcom/android/dx/io/instructions/InstructionCodec$31;
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
    const/4 v3, 0x0

    #@1
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->byte0(I)I
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$100(I)I

    #@4
    move-result v2

    #@5
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->byte1(I)I
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$200(I)I

    #@8
    move-result v8

    #@9
    new-instance v0, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;

    #@b
    const/4 v4, 0x0

    #@c
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readLong()J

    #@f
    move-result-wide v6

    #@10
    move-object v1, p0

    #@11
    move v5, v3

    #@12
    invoke-direct/range {v0 .. v8}, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJI)V

    #@15
    return-object v0
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .registers 11

    #@0
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getLiteral()J

    #@3
    move-result-wide v6

    #@4
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getA()I

    #@b
    move-result v1

    #@c
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->codeUnit(II)S
    invoke-static {v0, v1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$600(II)S

    #@f
    move-result v1

    #@10
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->unit0(J)S
    invoke-static {v6, v7}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1300(J)S

    #@13
    move-result v2

    #@14
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->unit1(J)S
    invoke-static {v6, v7}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1400(J)S

    #@17
    move-result v3

    #@18
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->unit2(J)S
    invoke-static {v6, v7}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1500(J)S

    #@1b
    move-result v4

    #@1c
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->unit3(J)S
    invoke-static {v6, v7}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1600(J)S

    #@1f
    move-result v5

    #@20
    move-object v0, p2

    #@21
    invoke-interface/range {v0 .. v5}, Lcom/android/dx/io/instructions/CodeOutput;->write(SSSSS)V

    #@24
    return-void
.end method
