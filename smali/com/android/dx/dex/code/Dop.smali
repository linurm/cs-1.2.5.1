.class public final Lcom/android/dx/dex/code/Dop;
.super Ljava/lang/Object;


# instance fields
.field private final family:I

.field private final format:Lcom/android/dx/dex/code/InsnFormat;

.field private final hasResult:Z

.field private final nextOpcode:I

.field private final opcode:I


# direct methods
.method public constructor <init>(IIILcom/android/dx/dex/code/InsnFormat;Z)V
    .registers 8

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/android/dx/io/Opcodes;->isValidShape(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_11

    #@9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string v1, "bogus opcode"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_11
    invoke-static {p2}, Lcom/android/dx/io/Opcodes;->isValidShape(I)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1f

    #@17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    const-string v1, "bogus family"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    :cond_1f
    invoke-static {p3}, Lcom/android/dx/io/Opcodes;->isValidShape(I)Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_2d

    #@25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    const-string v1, "bogus nextOpcode"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    :cond_2d
    if-nez p4, :cond_37

    #@2f
    new-instance v0, Ljava/lang/NullPointerException;

    #@31
    const-string v1, "format == null"

    #@33
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    :cond_37
    iput p1, p0, Lcom/android/dx/dex/code/Dop;->opcode:I

    #@39
    iput p2, p0, Lcom/android/dx/dex/code/Dop;->family:I

    #@3b
    iput p3, p0, Lcom/android/dx/dex/code/Dop;->nextOpcode:I

    #@3d
    iput-object p4, p0, Lcom/android/dx/dex/code/Dop;->format:Lcom/android/dx/dex/code/InsnFormat;

    #@3f
    iput-boolean p5, p0, Lcom/android/dx/dex/code/Dop;->hasResult:Z

    #@41
    return-void
.end method


# virtual methods
.method public getFamily()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/Dop;->family:I

    #@2
    return v0
.end method

.method public getFormat()Lcom/android/dx/dex/code/InsnFormat;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/Dop;->format:Lcom/android/dx/dex/code/InsnFormat;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/Dop;->opcode:I

    #@2
    invoke-static {v0}, Lcom/android/dx/io/OpcodeInfo;->getName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNextOpcode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/Dop;->nextOpcode:I

    #@2
    return v0
.end method

.method public getOpcode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/Dop;->opcode:I

    #@2
    return v0
.end method

.method public getOppositeTest()Lcom/android/dx/dex/code/Dop;
    .registers 4

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/Dop;->opcode:I

    #@2
    packed-switch v0, :pswitch_data_42

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v2, "bogus opcode: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    :pswitch_1e
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_NE:Lcom/android/dx/dex/code/Dop;

    #@20
    :goto_20
    return-object v0

    #@21
    :pswitch_21
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_EQ:Lcom/android/dx/dex/code/Dop;

    #@23
    goto :goto_20

    #@24
    :pswitch_24
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_GE:Lcom/android/dx/dex/code/Dop;

    #@26
    goto :goto_20

    #@27
    :pswitch_27
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_LT:Lcom/android/dx/dex/code/Dop;

    #@29
    goto :goto_20

    #@2a
    :pswitch_2a
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_LE:Lcom/android/dx/dex/code/Dop;

    #@2c
    goto :goto_20

    #@2d
    :pswitch_2d
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_GT:Lcom/android/dx/dex/code/Dop;

    #@2f
    goto :goto_20

    #@30
    :pswitch_30
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_NEZ:Lcom/android/dx/dex/code/Dop;

    #@32
    goto :goto_20

    #@33
    :pswitch_33
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_EQZ:Lcom/android/dx/dex/code/Dop;

    #@35
    goto :goto_20

    #@36
    :pswitch_36
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_GEZ:Lcom/android/dx/dex/code/Dop;

    #@38
    goto :goto_20

    #@39
    :pswitch_39
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_LTZ:Lcom/android/dx/dex/code/Dop;

    #@3b
    goto :goto_20

    #@3c
    :pswitch_3c
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_LEZ:Lcom/android/dx/dex/code/Dop;

    #@3e
    goto :goto_20

    #@3f
    :pswitch_3f
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_GTZ:Lcom/android/dx/dex/code/Dop;

    #@41
    goto :goto_20

    #@42
    :pswitch_data_42
    .packed-switch 0x32
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
    .end packed-switch
.end method

.method public hasResult()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/android/dx/dex/code/Dop;->hasResult:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/Dop;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
