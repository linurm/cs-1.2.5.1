.class final Lcom/google/dexmaker/Constants;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getConstant(Ljava/lang/Object;)Lcom/android/dx/rop/cst/TypedConstant;
    .registers 4

    #@0
    if-nez p0, :cond_5

    #@2
    sget-object v0, Lcom/android/dx/rop/cst/CstKnownNull;->THE_ONE:Lcom/android/dx/rop/cst/CstKnownNull;

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    #@7
    if-eqz v0, :cond_14

    #@9
    check-cast p0, Ljava/lang/Boolean;

    #@b
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@e
    move-result v0

    #@f
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstBoolean;->make(Z)Lcom/android/dx/rop/cst/CstBoolean;

    #@12
    move-result-object v0

    #@13
    goto :goto_4

    #@14
    :cond_14
    instance-of v0, p0, Ljava/lang/Byte;

    #@16
    if-eqz v0, :cond_23

    #@18
    check-cast p0, Ljava/lang/Byte;

    #@1a
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    #@1d
    move-result v0

    #@1e
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstByte;->make(B)Lcom/android/dx/rop/cst/CstByte;

    #@21
    move-result-object v0

    #@22
    goto :goto_4

    #@23
    :cond_23
    instance-of v0, p0, Ljava/lang/Character;

    #@25
    if-eqz v0, :cond_32

    #@27
    check-cast p0, Ljava/lang/Character;

    #@29
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    #@2c
    move-result v0

    #@2d
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstChar;->make(C)Lcom/android/dx/rop/cst/CstChar;

    #@30
    move-result-object v0

    #@31
    goto :goto_4

    #@32
    :cond_32
    instance-of v0, p0, Ljava/lang/Double;

    #@34
    if-eqz v0, :cond_45

    #@36
    check-cast p0, Ljava/lang/Double;

    #@38
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    #@3b
    move-result-wide v0

    #@3c
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@3f
    move-result-wide v0

    #@40
    invoke-static {v0, v1}, Lcom/android/dx/rop/cst/CstDouble;->make(J)Lcom/android/dx/rop/cst/CstDouble;

    #@43
    move-result-object v0

    #@44
    goto :goto_4

    #@45
    :cond_45
    instance-of v0, p0, Ljava/lang/Float;

    #@47
    if-eqz v0, :cond_58

    #@49
    check-cast p0, Ljava/lang/Float;

    #@4b
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    #@4e
    move-result v0

    #@4f
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@52
    move-result v0

    #@53
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstFloat;->make(I)Lcom/android/dx/rop/cst/CstFloat;

    #@56
    move-result-object v0

    #@57
    goto :goto_4

    #@58
    :cond_58
    instance-of v0, p0, Ljava/lang/Integer;

    #@5a
    if-eqz v0, :cond_67

    #@5c
    check-cast p0, Ljava/lang/Integer;

    #@5e
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@61
    move-result v0

    #@62
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    #@65
    move-result-object v0

    #@66
    goto :goto_4

    #@67
    :cond_67
    instance-of v0, p0, Ljava/lang/Long;

    #@69
    if-eqz v0, :cond_76

    #@6b
    check-cast p0, Ljava/lang/Long;

    #@6d
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@70
    move-result-wide v0

    #@71
    invoke-static {v0, v1}, Lcom/android/dx/rop/cst/CstLong;->make(J)Lcom/android/dx/rop/cst/CstLong;

    #@74
    move-result-object v0

    #@75
    goto :goto_4

    #@76
    :cond_76
    instance-of v0, p0, Ljava/lang/Short;

    #@78
    if-eqz v0, :cond_85

    #@7a
    check-cast p0, Ljava/lang/Short;

    #@7c
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    #@7f
    move-result v0

    #@80
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstShort;->make(S)Lcom/android/dx/rop/cst/CstShort;

    #@83
    move-result-object v0

    #@84
    goto :goto_4

    #@85
    :cond_85
    instance-of v0, p0, Ljava/lang/String;

    #@87
    if-eqz v0, :cond_92

    #@89
    new-instance v0, Lcom/android/dx/rop/cst/CstString;

    #@8b
    check-cast p0, Ljava/lang/String;

    #@8d
    invoke-direct {v0, p0}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    #@90
    goto/16 :goto_4

    #@92
    :cond_92
    instance-of v0, p0, Ljava/lang/Class;

    #@94
    if-eqz v0, :cond_a5

    #@96
    new-instance v0, Lcom/android/dx/rop/cst/CstType;

    #@98
    check-cast p0, Ljava/lang/Class;

    #@9a
    invoke-static {p0}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@9d
    move-result-object v1

    #@9e
    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@a0
    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@a3
    goto/16 :goto_4

    #@a5
    :cond_a5
    instance-of v0, p0, Lcom/google/dexmaker/TypeId;

    #@a7
    if-eqz v0, :cond_b4

    #@a9
    new-instance v0, Lcom/android/dx/rop/cst/CstType;

    #@ab
    check-cast p0, Lcom/google/dexmaker/TypeId;

    #@ad
    iget-object v1, p0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@af
    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@b2
    goto/16 :goto_4

    #@b4
    :cond_b4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@b6
    new-instance v1, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string v2, "Not a constant: "

    #@bd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v1

    #@c1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v1

    #@c5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v1

    #@c9
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@cc
    throw v0
.end method
