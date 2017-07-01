.class final enum Lcom/android/dx/io/instructions/InstructionCodec$40;
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
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@5
    move-result v0

    #@6
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    #@9
    move-result v6

    #@a
    packed-switch v0, :pswitch_data_8a

    #@d
    :pswitch_d
    new-instance v1, Lcom/android/dx/util/DexException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string v3, "bogus element_width: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    :pswitch_2a
    new-array v7, v6, [B

    #@2c
    move v1, v3

    #@2d
    move v5, v2

    #@2e
    move v0, v3

    #@2f
    :goto_2f
    if-ge v1, v6, :cond_49

    #@31
    if-eqz v5, :cond_37

    #@33
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@36
    move-result v0

    #@37
    :cond_37
    and-int/lit16 v4, v0, 0xff

    #@39
    int-to-byte v4, v4

    #@3a
    int-to-byte v4, v4

    #@3b
    aput-byte v4, v7, v1

    #@3d
    add-int/lit8 v4, v1, 0x1

    #@3f
    if-nez v5, :cond_47

    #@41
    move v1, v2

    #@42
    :goto_42
    shr-int/lit8 v0, v0, 0x8

    #@44
    move v5, v1

    #@45
    move v1, v4

    #@46
    goto :goto_2f

    #@47
    :cond_47
    move v1, v3

    #@48
    goto :goto_42

    #@49
    :cond_49
    new-instance v0, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    #@4b
    invoke-direct {v0, p0, p1, v7}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;I[B)V

    #@4e
    :goto_4e
    return-object v0

    #@4f
    :pswitch_4f
    new-array v1, v6, [S

    #@51
    :goto_51
    if-ge v3, v6, :cond_5e

    #@53
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@56
    move-result v0

    #@57
    int-to-short v0, v0

    #@58
    int-to-short v0, v0

    #@59
    aput-short v0, v1, v3

    #@5b
    add-int/lit8 v3, v3, 0x1

    #@5d
    goto :goto_51

    #@5e
    :cond_5e
    new-instance v0, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    #@60
    invoke-direct {v0, p0, p1, v1}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;I[S)V

    #@63
    goto :goto_4e

    #@64
    :pswitch_64
    new-array v1, v6, [I

    #@66
    :goto_66
    if-ge v3, v6, :cond_71

    #@68
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    #@6b
    move-result v0

    #@6c
    aput v0, v1, v3

    #@6e
    add-int/lit8 v3, v3, 0x1

    #@70
    goto :goto_66

    #@71
    :cond_71
    new-instance v0, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    #@73
    invoke-direct {v0, p0, p1, v1}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;I[I)V

    #@76
    goto :goto_4e

    #@77
    :pswitch_77
    new-array v1, v6, [J

    #@79
    :goto_79
    if-ge v3, v6, :cond_84

    #@7b
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readLong()J

    #@7e
    move-result-wide v4

    #@7f
    aput-wide v4, v1, v3

    #@81
    add-int/lit8 v3, v3, 0x1

    #@83
    goto :goto_79

    #@84
    :cond_84
    new-instance v0, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    #@86
    invoke-direct {v0, p0, p1, v1}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;I[J)V

    #@89
    goto :goto_4e

    #@8a
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_4f
        :pswitch_d
        :pswitch_64
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_77
    .end packed-switch
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .registers 7

    #@0
    check-cast p1, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    #@2
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getElementWidthUnit()S

    #@5
    move-result v1

    #@6
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getData()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getOpcodeUnit()S

    #@d
    move-result v2

    #@e
    invoke-interface {p2, v2}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    #@11
    invoke-interface {p2, v1}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    #@14
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getSize()I

    #@17
    move-result v2

    #@18
    invoke-interface {p2, v2}, Lcom/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    #@1b
    packed-switch v1, :pswitch_data_54

    #@1e
    :pswitch_1e
    new-instance v0, Lcom/android/dx/util/DexException;

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string v3, "bogus element_width: "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    :pswitch_3b
    check-cast v0, [B

    #@3d
    invoke-interface {p2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write([B)V

    #@40
    :goto_40
    return-void

    #@41
    :pswitch_41
    check-cast v0, [S

    #@43
    invoke-interface {p2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write([S)V

    #@46
    goto :goto_40

    #@47
    :pswitch_47
    check-cast v0, [I

    #@49
    invoke-interface {p2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write([I)V

    #@4c
    goto :goto_40

    #@4d
    :pswitch_4d
    check-cast v0, [J

    #@4f
    invoke-interface {p2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write([J)V

    #@52
    goto :goto_40

    #@53
    nop

    #@54
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_41
        :pswitch_1e
        :pswitch_47
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_4d
    .end packed-switch
.end method
