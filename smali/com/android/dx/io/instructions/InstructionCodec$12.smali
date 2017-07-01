.class final enum Lcom/android/dx/io/instructions/InstructionCodec$12;
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
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@c
    move-result v0

    #@d
    int-to-short v0, v0

    #@e
    int-to-long v6, v0

    #@f
    const/16 v0, 0x15

    #@11
    if-ne v2, v0, :cond_20

    #@13
    const/16 v0, 0x10

    #@15
    move v1, v0

    #@16
    :goto_16
    new-instance v0, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;

    #@18
    const/4 v4, 0x0

    #@19
    shl-long/2addr v6, v1

    #@1a
    move-object v1, p0

    #@1b
    move v5, v3

    #@1c
    invoke-direct/range {v0 .. v8}, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJI)V

    #@1f
    return-object v0

    #@20
    :cond_20
    const/16 v0, 0x30

    #@22
    move v1, v0

    #@23
    goto :goto_16
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .registers 7

    #@0
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    #@3
    move-result v1

    #@4
    const/16 v0, 0x15

    #@6
    if-ne v1, v0, :cond_1d

    #@8
    const/16 v0, 0x10

    #@a
    :goto_a
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getLiteral()J

    #@d
    move-result-wide v2

    #@e
    shr-long/2addr v2, v0

    #@f
    long-to-int v0, v2

    #@10
    int-to-short v0, v0

    #@11
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getA()I

    #@14
    move-result v2

    #@15
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->codeUnit(II)S
    invoke-static {v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec;->access$600(II)S

    #@18
    move-result v1

    #@19
    invoke-interface {p2, v1, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write(SS)V

    #@1c
    return-void

    #@1d
    :cond_1d
    const/16 v0, 0x30

    #@1f
    goto :goto_a
.end method
