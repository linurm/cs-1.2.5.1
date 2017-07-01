.class final enum Lcom/android/dx/io/instructions/InstructionCodec$23;
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
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->byte0(I)I
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$100(I)I

    #@9
    move-result v2

    #@a
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->byte1(I)I
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$200(I)I

    #@d
    move-result v8

    #@e
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    #@11
    move-result v1

    #@12
    add-int v5, v0, v1

    #@14
    packed-switch v2, :pswitch_data_26

    #@17
    :goto_17
    new-instance v0, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;

    #@19
    const/4 v3, 0x0

    #@1a
    const/4 v4, 0x0

    #@1b
    const-wide/16 v6, 0x0

    #@1d
    move-object v1, p0

    #@1e
    invoke-direct/range {v0 .. v8}, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJI)V

    #@21
    return-object v0

    #@22
    :pswitch_22
    invoke-interface {p2, v5, v0}, Lcom/android/dx/io/instructions/CodeInput;->setBaseAddress(II)V

    #@25
    goto :goto_17

    #@26
    :pswitch_data_26
    .packed-switch 0x2b
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .registers 6

    #@0
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeOutput;->cursor()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1, v0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getTarget(I)I

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
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->unit0(I)S
    invoke-static {v0}, Lcom/android/dx/io/instructions/InstructionCodec;->access$700(I)S

    #@17
    move-result v2

    #@18
    # invokes: Lcom/android/dx/io/instructions/InstructionCodec;->unit1(I)S
    invoke-static {v0}, Lcom/android/dx/io/instructions/InstructionCodec;->access$800(I)S

    #@1b
    move-result v0

    #@1c
    invoke-interface {p2, v1, v2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write(SSS)V

    #@1f
    return-void
.end method
