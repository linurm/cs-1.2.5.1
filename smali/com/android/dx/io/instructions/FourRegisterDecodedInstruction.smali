.class public final Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;
.super Lcom/android/dx/io/instructions/DecodedInstruction;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJIIII)V
    .registers 12

    #@0
    invoke-direct/range {p0 .. p7}, Lcom/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJ)V

    #@3
    iput p8, p0, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->a:I

    #@5
    iput p9, p0, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->b:I

    #@7
    iput p10, p0, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->c:I

    #@9
    iput p11, p0, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->d:I

    #@b
    return-void
.end method


# virtual methods
.method public getA()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->a:I

    #@2
    return v0
.end method

.method public getB()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->b:I

    #@2
    return v0
.end method

.method public getC()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->c:I

    #@2
    return v0
.end method

.method public getD()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->d:I

    #@2
    return v0
.end method

.method public getRegisterCount()I
    .registers 2

    #@0
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public withIndex(I)Lcom/android/dx/io/instructions/DecodedInstruction;
    .registers 14

    #@0
    new-instance v0, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->getFormat()Lcom/android/dx/io/instructions/InstructionCodec;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->getOpcode()I

    #@9
    move-result v2

    #@a
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->getIndexType()Lcom/android/dx/io/IndexType;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->getTarget()I

    #@11
    move-result v5

    #@12
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->getLiteral()J

    #@15
    move-result-wide v6

    #@16
    iget v8, p0, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->a:I

    #@18
    iget v9, p0, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->b:I

    #@1a
    iget v10, p0, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->c:I

    #@1c
    iget v11, p0, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;->d:I

    #@1e
    move v3, p1

    #@1f
    invoke-direct/range {v0 .. v11}, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJIIII)V

    #@22
    return-object v0
.end method
