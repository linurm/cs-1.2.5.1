.class public final Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;
.super Lcom/android/dx/io/instructions/DecodedInstruction;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJII)V
    .registers 10

    #@0
    invoke-direct/range {p0 .. p7}, Lcom/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJ)V

    #@3
    iput p8, p0, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;->a:I

    #@5
    iput p9, p0, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;->b:I

    #@7
    return-void
.end method


# virtual methods
.method public getA()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;->a:I

    #@2
    return v0
.end method

.method public getB()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;->b:I

    #@2
    return v0
.end method

.method public getRegisterCount()I
    .registers 2

    #@0
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public withIndex(I)Lcom/android/dx/io/instructions/DecodedInstruction;
    .registers 12

    #@0
    new-instance v0, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;->getFormat()Lcom/android/dx/io/instructions/InstructionCodec;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;->getOpcode()I

    #@9
    move-result v2

    #@a
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;->getIndexType()Lcom/android/dx/io/IndexType;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;->getTarget()I

    #@11
    move-result v5

    #@12
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;->getLiteral()J

    #@15
    move-result-wide v6

    #@16
    iget v8, p0, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;->a:I

    #@18
    iget v9, p0, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;->b:I

    #@1a
    move v3, p1

    #@1b
    invoke-direct/range {v0 .. v9}, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJII)V

    #@1e
    return-object v0
.end method
