.class public abstract Lcom/android/dx/dex/code/InsnFormat;
.super Ljava/lang/Object;


# static fields
.field public static ALLOW_EXTENDED_OPCODES:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Lcom/android/dx/dex/code/InsnFormat;->ALLOW_EXTENDED_OPCODES:Z

    #@3
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method protected static argIndex(Lcom/android/dx/dex/code/DalvInsn;)I
    .registers 3

    #@0
    check-cast p0, Lcom/android/dx/dex/code/CstInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/dx/rop/cst/CstInteger;

    #@8
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    #@b
    move-result v0

    #@c
    if-gez v0, :cond_16

    #@e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string v1, "bogus insn"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    :cond_16
    return v0
.end method

.method protected static branchComment(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 3

    #@0
    check-cast p0, Lcom/android/dx/dex/code/TargetInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    #@5
    move-result v0

    #@6
    int-to-short v1, v0

    #@7
    if-ne v0, v1, :cond_e

    #@9
    invoke-static {v0}, Lcom/android/dx/util/Hex;->s2(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    invoke-static {v0}, Lcom/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    goto :goto_d
.end method

.method protected static branchString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 3

    #@0
    check-cast p0, Lcom/android/dx/dex/code/TargetInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/TargetInsn;->getTargetAddress()I

    #@5
    move-result v0

    #@6
    int-to-char v1, v0

    #@7
    if-ne v0, v1, :cond_e

    #@9
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    goto :goto_d
.end method

.method protected static codeUnit(II)S
    .registers 4

    #@0
    and-int/lit16 v0, p0, 0xff

    #@2
    if-eq v0, p0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string v1, "low out of range 0..255"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    and-int/lit16 v0, p1, 0xff

    #@e
    if-eq v0, p1, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "high out of range 0..255"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    shl-int/lit8 v0, p1, 0x8

    #@1a
    or-int/2addr v0, p0

    #@1b
    int-to-short v0, v0

    #@1c
    return v0
.end method

.method protected static codeUnit(IIII)S
    .registers 6

    #@0
    and-int/lit8 v0, p0, 0xf

    #@2
    if-eq v0, p0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string v1, "n0 out of range 0..15"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    and-int/lit8 v0, p1, 0xf

    #@e
    if-eq v0, p1, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "n1 out of range 0..15"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    and-int/lit8 v0, p2, 0xf

    #@1a
    if-eq v0, p2, :cond_24

    #@1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string v1, "n2 out of range 0..15"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    :cond_24
    and-int/lit8 v0, p3, 0xf

    #@26
    if-eq v0, p3, :cond_30

    #@28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string v1, "n3 out of range 0..15"

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    :cond_30
    shl-int/lit8 v0, p1, 0x4

    #@32
    or-int/2addr v0, p0

    #@33
    shl-int/lit8 v1, p2, 0x8

    #@35
    or-int/2addr v0, v1

    #@36
    shl-int/lit8 v1, p3, 0xc

    #@38
    or-int/2addr v0, v1

    #@39
    int-to-short v0, v0

    #@3a
    return v0
.end method

.method protected static cstComment(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 4

    #@0
    check-cast p0, Lcom/android/dx/dex/code/CstInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->hasIndex()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_b

    #@8
    const-string v0, ""

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    const/16 v1, 0x14

    #@f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@12
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/Constant;->typeName()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    const/16 v2, 0x40

    #@23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    const/high16 v2, 0x10000

    #@28
    if-ge v1, v2, :cond_36

    #@2a
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    :goto_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    goto :goto_a

    #@36
    :cond_36
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    goto :goto_31
.end method

.method protected static cstString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 3

    #@0
    check-cast p0, Lcom/android/dx/dex/code/CstInsn;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@5
    move-result-object v0

    #@6
    instance-of v1, v0, Lcom/android/dx/rop/cst/CstString;

    #@8
    if-eqz v1, :cond_11

    #@a
    check-cast v0, Lcom/android/dx/rop/cst/CstString;

    #@c
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    :goto_10
    return-object v0

    #@11
    :cond_11
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    goto :goto_10
.end method

.method protected static isRegListSequential(Lcom/android/dx/rop/code/RegisterSpecList;)Z
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@5
    move-result v4

    #@6
    const/4 v2, 0x2

    #@7
    if-ge v4, v2, :cond_a

    #@9
    :cond_9
    :goto_9
    return v0

    #@a
    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@11
    move-result v2

    #@12
    move v3, v1

    #@13
    :goto_13
    if-ge v3, v4, :cond_9

    #@15
    invoke-virtual {p0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@1c
    move-result v6

    #@1d
    if-eq v6, v2, :cond_21

    #@1f
    move v0, v1

    #@20
    goto :goto_9

    #@21
    :cond_21
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@24
    move-result v5

    #@25
    add-int/2addr v2, v5

    #@26
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_13
.end method

.method protected static literalBitsComment(Lcom/android/dx/rop/cst/CstLiteralBits;I)Ljava/lang/String;
    .registers 5

    #@0
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    const/16 v0, 0x14

    #@4
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    const-string v0, "#"

    #@9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c
    instance-of v0, p0, Lcom/android/dx/rop/cst/CstLiteral64;

    #@e
    if-eqz v0, :cond_21

    #@10
    check-cast p0, Lcom/android/dx/rop/cst/CstLiteral64;

    #@12
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstLiteral64;->getLongBits()J

    #@15
    move-result-wide v0

    #@16
    :goto_16
    sparse-switch p1, :sswitch_data_58

    #@19
    new-instance v0, Ljava/lang/RuntimeException;

    #@1b
    const-string v1, "shouldn\'t happen"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    #@24
    move-result v0

    #@25
    int-to-long v0, v0

    #@26
    goto :goto_16

    #@27
    :sswitch_27
    long-to-int v0, v0

    #@28
    invoke-static {v0}, Lcom/android/dx/util/Hex;->uNibble(I)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    :goto_2f
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    return-object v0

    #@34
    :sswitch_34
    long-to-int v0, v0

    #@35
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3c
    goto :goto_2f

    #@3d
    :sswitch_3d
    long-to-int v0, v0

    #@3e
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@45
    goto :goto_2f

    #@46
    :sswitch_46
    long-to-int v0, v0

    #@47
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4e
    goto :goto_2f

    #@4f
    :sswitch_4f
    invoke-static {v0, v1}, Lcom/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@56
    goto :goto_2f

    #@57
    nop

    #@58
    :sswitch_data_58
    .sparse-switch
        0x4 -> :sswitch_27
        0x8 -> :sswitch_34
        0x10 -> :sswitch_3d
        0x20 -> :sswitch_46
        0x40 -> :sswitch_4f
    .end sparse-switch
.end method

.method protected static literalBitsString(Lcom/android/dx/rop/cst/CstLiteralBits;)Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const/16 v1, 0x64

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    const/16 v1, 0x23

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@c
    instance-of v1, p0, Lcom/android/dx/rop/cst/CstKnownNull;

    #@e
    if-eqz v1, :cond_1a

    #@10
    const-string v1, "null"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    :goto_15
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    :cond_1a
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstLiteralBits;->typeName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    const/16 v1, 0x20

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@26
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstLiteralBits;->toHuman()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d
    goto :goto_15
.end method

.method protected static makeByte(II)I
    .registers 4

    #@0
    and-int/lit8 v0, p0, 0xf

    #@2
    if-eq v0, p0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string v1, "low out of range 0..15"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    and-int/lit8 v0, p1, 0xf

    #@e
    if-eq v0, p1, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "high out of range 0..15"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    shl-int/lit8 v0, p1, 0x4

    #@1a
    or-int/2addr v0, p0

    #@1b
    return v0
.end method

.method protected static opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;)S
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->getOpcode()I

    #@7
    move-result v0

    #@8
    const/16 v1, 0xff

    #@a
    if-lt v0, v1, :cond_11

    #@c
    const v1, 0xffff

    #@f
    if-le v0, v1, :cond_19

    #@11
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string v1, "extended opcode out of range 255..65535"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    :cond_19
    int-to-short v0, v0

    #@1a
    return v0
.end method

.method protected static opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S
    .registers 4

    #@0
    and-int/lit16 v0, p1, 0xff

    #@2
    if-eq v0, p1, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string v1, "arg out of range 0..255"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->getOpcode()I

    #@13
    move-result v0

    #@14
    and-int/lit16 v1, v0, 0xff

    #@16
    if-eq v1, v0, :cond_20

    #@18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string v1, "opcode out of range 0..255"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    :cond_20
    shl-int/lit8 v1, p1, 0x8

    #@22
    or-int/2addr v0, v1

    #@23
    int-to-short v0, v0

    #@24
    return v0
.end method

.method protected static regListString(Lcom/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@3
    move-result v1

    #@4
    new-instance v2, Ljava/lang/StringBuffer;

    #@6
    mul-int/lit8 v0, v1, 0x5

    #@8
    add-int/lit8 v0, v0, 0x2

    #@a
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@d
    const/16 v0, 0x7b

    #@f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@12
    const/4 v0, 0x0

    #@13
    :goto_13
    if-ge v0, v1, :cond_2a

    #@15
    if-eqz v0, :cond_1c

    #@17
    const-string v3, ", "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_13

    #@2a
    :cond_2a
    const/16 v0, 0x7d

    #@2c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    return-object v0
.end method

.method protected static regRangeString(Lcom/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;
    .registers 6

    #@0
    const/4 v4, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@4
    move-result v0

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    const/16 v2, 0x1e

    #@9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@c
    const-string v2, "{"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    packed-switch v0, :pswitch_data_54

    #@14
    add-int/lit8 v0, v0, -0x1

    #@16
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@1d
    move-result v2

    #@1e
    const/4 v3, 0x2

    #@1f
    if-ne v2, v3, :cond_26

    #@21
    const/4 v2, 0x1

    #@22
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@25
    move-result-object v0

    #@26
    :cond_26
    invoke-virtual {p0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    const-string v2, ".."

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    :goto_3d
    :pswitch_3d
    const-string v0, "}"

    #@3f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    return-object v0

    #@47
    :pswitch_47
    invoke-virtual {p0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    goto :goto_3d

    #@53
    nop

    #@54
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_47
    .end packed-switch
.end method

.method protected static signedFitsInByte(I)Z
    .registers 2

    #@0
    int-to-byte v0, p0

    #@1
    if-ne v0, p0, :cond_5

    #@3
    const/4 v0, 0x1

    #@4
    :goto_4
    return v0

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    goto :goto_4
.end method

.method protected static signedFitsInNibble(I)Z
    .registers 2

    #@0
    const/4 v0, -0x8

    #@1
    if-lt p0, v0, :cond_8

    #@3
    const/4 v0, 0x7

    #@4
    if-gt p0, v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method protected static signedFitsInShort(I)Z
    .registers 2

    #@0
    int-to-short v0, p0

    #@1
    if-ne v0, p0, :cond_5

    #@3
    const/4 v0, 0x1

    #@4
    :goto_4
    return v0

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    goto :goto_4
.end method

.method protected static unsignedFitsInByte(I)Z
    .registers 2

    #@0
    and-int/lit16 v0, p0, 0xff

    #@2
    if-ne p0, v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method protected static unsignedFitsInNibble(I)Z
    .registers 2

    #@0
    and-int/lit8 v0, p0, 0xf

    #@2
    if-ne p0, v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method protected static unsignedFitsInShort(I)Z
    .registers 2

    #@0
    const v0, 0xffff

    #@3
    and-int/2addr v0, p0

    #@4
    if-ne p0, v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method protected static write(Lcom/android/dx/util/AnnotatedOutput;S)V
    .registers 2

    #@0
    invoke-interface {p0, p1}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@3
    return-void
.end method

.method protected static write(Lcom/android/dx/util/AnnotatedOutput;SI)V
    .registers 5

    #@0
    int-to-short v0, p2

    #@1
    shr-int/lit8 v1, p2, 0x10

    #@3
    int-to-short v1, v1

    #@4
    invoke-static {p0, p1, v0, v1}, Lcom/android/dx/dex/code/InsnFormat;->write(Lcom/android/dx/util/AnnotatedOutput;SSS)V

    #@7
    return-void
.end method

.method protected static write(Lcom/android/dx/util/AnnotatedOutput;SIS)V
    .registers 6

    #@0
    int-to-short v0, p2

    #@1
    shr-int/lit8 v1, p2, 0x10

    #@3
    int-to-short v1, v1

    #@4
    invoke-static {p0, p1, v0, v1, p3}, Lcom/android/dx/dex/code/InsnFormat;->write(Lcom/android/dx/util/AnnotatedOutput;SSSS)V

    #@7
    return-void
.end method

.method protected static write(Lcom/android/dx/util/AnnotatedOutput;SISS)V
    .registers 11

    #@0
    int-to-short v2, p2

    #@1
    shr-int/lit8 v0, p2, 0x10

    #@3
    int-to-short v3, v0

    #@4
    move-object v0, p0

    #@5
    move v1, p1

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    invoke-static/range {v0 .. v5}, Lcom/android/dx/dex/code/InsnFormat;->write(Lcom/android/dx/util/AnnotatedOutput;SSSSS)V

    #@b
    return-void
.end method

.method protected static write(Lcom/android/dx/util/AnnotatedOutput;SJ)V
    .registers 10

    #@0
    long-to-int v0, p2

    #@1
    int-to-short v2, v0

    #@2
    const/16 v0, 0x10

    #@4
    shr-long v0, p2, v0

    #@6
    long-to-int v0, v0

    #@7
    int-to-short v3, v0

    #@8
    const/16 v0, 0x20

    #@a
    shr-long v0, p2, v0

    #@c
    long-to-int v0, v0

    #@d
    int-to-short v4, v0

    #@e
    const/16 v0, 0x30

    #@10
    shr-long v0, p2, v0

    #@12
    long-to-int v0, v0

    #@13
    int-to-short v5, v0

    #@14
    move-object v0, p0

    #@15
    move v1, p1

    #@16
    invoke-static/range {v0 .. v5}, Lcom/android/dx/dex/code/InsnFormat;->write(Lcom/android/dx/util/AnnotatedOutput;SSSSS)V

    #@19
    return-void
.end method

.method protected static write(Lcom/android/dx/util/AnnotatedOutput;SS)V
    .registers 3

    #@0
    invoke-interface {p0, p1}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@3
    invoke-interface {p0, p2}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@6
    return-void
.end method

.method protected static write(Lcom/android/dx/util/AnnotatedOutput;SSS)V
    .registers 4

    #@0
    invoke-interface {p0, p1}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@3
    invoke-interface {p0, p2}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@6
    invoke-interface {p0, p3}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@9
    return-void
.end method

.method protected static write(Lcom/android/dx/util/AnnotatedOutput;SSSS)V
    .registers 5

    #@0
    invoke-interface {p0, p1}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@3
    invoke-interface {p0, p2}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@6
    invoke-interface {p0, p3}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@9
    invoke-interface {p0, p4}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@c
    return-void
.end method

.method protected static write(Lcom/android/dx/util/AnnotatedOutput;SSSSS)V
    .registers 6

    #@0
    invoke-interface {p0, p1}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@3
    invoke-interface {p0, p2}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@6
    invoke-interface {p0, p3}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@9
    invoke-interface {p0, p4}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@c
    invoke-interface {p0, p5}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@f
    return-void
.end method


# virtual methods
.method public branchFits(Lcom/android/dx/dex/code/TargetInsn;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract codeSize()I
.end method

.method public compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .registers 3

    #@0
    new-instance v0, Ljava/util/BitSet;

    #@2
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    #@5
    return-object v0
.end method

.method public abstract insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
.end method

.method public abstract insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
.end method

.method public abstract isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
.end method

.method public final listingString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 8

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/InsnFormat;->insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/InsnFormat;->insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    const/16 v4, 0x64

    #@14
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_28

    #@20
    const/16 v0, 0x20

    #@22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    :cond_28
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_36

    #@2e
    const-string v0, " // "

    #@30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    :cond_36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    return-object v0
.end method

.method public abstract writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
.end method
