.class public final Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;
.super Lcom/android/dx/io/instructions/DecodedInstruction;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJIIIII)V
    .registers 13

    #@0
    invoke-direct/range {p0 .. p7}, Lcom/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJ)V

    #@3
    iput p8, p0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->a:I

    #@5
    iput p9, p0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->b:I

    #@7
    iput p10, p0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->c:I

    #@9
    iput p11, p0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->d:I

    #@b
    iput p12, p0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->e:I

    #@d
    return-void
.end method


# virtual methods
.method public getA()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->a:I

    #@2
    return v0
.end method

.method public getB()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->b:I

    #@2
    return v0
.end method

.method public getC()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->c:I

    #@2
    return v0
.end method

.method public getD()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->d:I

    #@2
    return v0
.end method

.method public getE()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->e:I

    #@2
    return v0
.end method

.method public getRegisterCount()I
    .registers 2

    #@0
    const/4 v0, 0x5

    #@1
    return v0
.end method

.method public withIndex(I)Lcom/android/dx/io/instructions/DecodedInstruction;
    .registers 15

    #@0
    new-instance v0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->getFormat()Lcom/android/dx/io/instructions/InstructionCodec;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->getOpcode()I

    #@9
    move-result v2

    #@a
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->getIndexType()Lcom/android/dx/io/IndexType;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->getTarget()I

    #@11
    move-result v5

    #@12
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->getLiteral()J

    #@15
    move-result-wide v6

    #@16
    iget v8, p0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->a:I

    #@18
    iget v9, p0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->b:I

    #@1a
    iget v10, p0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->c:I

    #@1c
    iget v11, p0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->d:I

    #@1e
    iget v12, p0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;->e:I

    #@20
    move v3, p1

    #@21
    invoke-direct/range {v0 .. v12}, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJIIIII)V

    #@24
    return-object v0
.end method
