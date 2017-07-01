.class public final Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;
.super Lcom/android/dx/io/instructions/DecodedInstruction;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJIII)V
    .registers 11

    #@0
    invoke-direct/range {p0 .. p7}, Lcom/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJ)V

    #@3
    iput p8, p0, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->a:I

    #@5
    iput p9, p0, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->b:I

    #@7
    iput p10, p0, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->c:I

    #@9
    return-void
.end method


# virtual methods
.method public getA()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->a:I

    #@2
    return v0
.end method

.method public getB()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->b:I

    #@2
    return v0
.end method

.method public getC()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->c:I

    #@2
    return v0
.end method

.method public getRegisterCount()I
    .registers 2

    #@0
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public withIndex(I)Lcom/android/dx/io/instructions/DecodedInstruction;
    .registers 13

    #@0
    new-instance v0, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->getFormat()Lcom/android/dx/io/instructions/InstructionCodec;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->getOpcode()I

    #@9
    move-result v2

    #@a
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->getIndexType()Lcom/android/dx/io/IndexType;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->getTarget()I

    #@11
    move-result v5

    #@12
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->getLiteral()J

    #@15
    move-result-wide v6

    #@16
    iget v8, p0, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->a:I

    #@18
    iget v9, p0, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->b:I

    #@1a
    iget v10, p0, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->c:I

    #@1c
    move v3, p1

    #@1d
    invoke-direct/range {v0 .. v10}, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJIII)V

    #@20
    return-object v0
.end method
