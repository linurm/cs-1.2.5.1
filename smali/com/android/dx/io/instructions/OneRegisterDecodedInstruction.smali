.class public final Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;
.super Lcom/android/dx/io/instructions/DecodedInstruction;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJI)V
    .registers 9

    #@0
    invoke-direct/range {p0 .. p7}, Lcom/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJ)V

    #@3
    iput p8, p0, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;->a:I

    #@5
    return-void
.end method


# virtual methods
.method public getA()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;->a:I

    #@2
    return v0
.end method

.method public getRegisterCount()I
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public withIndex(I)Lcom/android/dx/io/instructions/DecodedInstruction;
    .registers 11

    #@0
    new-instance v0, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;->getFormat()Lcom/android/dx/io/instructions/InstructionCodec;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;->getOpcode()I

    #@9
    move-result v2

    #@a
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;->getIndexType()Lcom/android/dx/io/IndexType;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;->getTarget()I

    #@11
    move-result v5

    #@12
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;->getLiteral()J

    #@15
    move-result-wide v6

    #@16
    iget v8, p0, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;->a:I

    #@18
    move v3, p1

    #@19
    invoke-direct/range {v0 .. v8}, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJI)V

    #@1c
    return-object v0
.end method
