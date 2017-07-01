.class public final Lcom/android/dx/dex/code/ArrayData;
.super Lcom/android/dx/dex/code/VariableSizeInsn;


# instance fields
.field private final arrayType:Lcom/android/dx/rop/cst/Constant;

.field private final elemWidth:I

.field private final initLength:I

.field private final user:Lcom/android/dx/dex/code/CodeAddress;

.field private final values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lcom/android/dx/rop/cst/Constant;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/rop/code/SourcePosition;",
            "Lcom/android/dx/dex/code/CodeAddress;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/VariableSizeInsn;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@5
    if-nez p2, :cond_f

    #@7
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string v1, "user == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    if-nez p3, :cond_19

    #@11
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    const-string v1, "values == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    :cond_19
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v0

    #@1d
    if-gtz v0, :cond_27

    #@1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string v1, "Illegal number of init values"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    :cond_27
    iput-object p4, p0, Lcom/android/dx/dex/code/ArrayData;->arrayType:Lcom/android/dx/rop/cst/Constant;

    #@29
    sget-object v0, Lcom/android/dx/rop/cst/CstType;->BYTE_ARRAY:Lcom/android/dx/rop/cst/CstType;

    #@2b
    if-eq p4, v0, :cond_31

    #@2d
    sget-object v0, Lcom/android/dx/rop/cst/CstType;->BOOLEAN_ARRAY:Lcom/android/dx/rop/cst/CstType;

    #@2f
    if-ne p4, v0, :cond_3f

    #@31
    :cond_31
    const/4 v0, 0x1

    #@32
    iput v0, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    #@34
    :goto_34
    iput-object p2, p0, Lcom/android/dx/dex/code/ArrayData;->user:Lcom/android/dx/dex/code/CodeAddress;

    #@36
    iput-object p3, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    #@38
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Lcom/android/dx/dex/code/ArrayData;->initLength:I

    #@3e
    return-void

    #@3f
    :cond_3f
    sget-object v0, Lcom/android/dx/rop/cst/CstType;->SHORT_ARRAY:Lcom/android/dx/rop/cst/CstType;

    #@41
    if-eq p4, v0, :cond_47

    #@43
    sget-object v0, Lcom/android/dx/rop/cst/CstType;->CHAR_ARRAY:Lcom/android/dx/rop/cst/CstType;

    #@45
    if-ne p4, v0, :cond_4b

    #@47
    :cond_47
    const/4 v0, 0x2

    #@48
    iput v0, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    #@4a
    goto :goto_34

    #@4b
    :cond_4b
    sget-object v0, Lcom/android/dx/rop/cst/CstType;->INT_ARRAY:Lcom/android/dx/rop/cst/CstType;

    #@4d
    if-eq p4, v0, :cond_53

    #@4f
    sget-object v0, Lcom/android/dx/rop/cst/CstType;->FLOAT_ARRAY:Lcom/android/dx/rop/cst/CstType;

    #@51
    if-ne p4, v0, :cond_57

    #@53
    :cond_53
    const/4 v0, 0x4

    #@54
    iput v0, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    #@56
    goto :goto_34

    #@57
    :cond_57
    sget-object v0, Lcom/android/dx/rop/cst/CstType;->LONG_ARRAY:Lcom/android/dx/rop/cst/CstType;

    #@59
    if-eq p4, v0, :cond_5f

    #@5b
    sget-object v0, Lcom/android/dx/rop/cst/CstType;->DOUBLE_ARRAY:Lcom/android/dx/rop/cst/CstType;

    #@5d
    if-ne p4, v0, :cond_64

    #@5f
    :cond_5f
    const/16 v0, 0x8

    #@61
    iput v0, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    #@63
    goto :goto_34

    #@64
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@66
    const-string v1, "Unexpected constant type"

    #@68
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v0
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 5

    #@0
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    const/16 v0, 0x64

    #@4
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    iget-object v0, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v3

    #@d
    const/4 v0, 0x0

    #@e
    move v1, v0

    #@f
    :goto_f
    if-ge v1, v3, :cond_31

    #@11
    const-string v0, "\n    "

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@19
    const-string v0, ": "

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    iget-object v0, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/android/dx/rop/cst/Constant;

    #@26
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d
    add-int/lit8 v0, v1, 0x1

    #@2f
    move v1, v0

    #@30
    goto :goto_f

    #@31
    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0
.end method

.method public codeSize()I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/ArrayData;->initLength:I

    #@2
    iget v1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    #@4
    mul-int/2addr v0, v1

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    div-int/lit8 v0, v0, 0x2

    #@9
    add-int/lit8 v0, v0, 0x4

    #@b
    return v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/ArrayData;->user:Lcom/android/dx/dex/code/CodeAddress;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    #@5
    move-result v0

    #@6
    new-instance v2, Ljava/lang/StringBuffer;

    #@8
    const/16 v1, 0x64

    #@a
    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@d
    iget-object v1, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v3

    #@13
    const-string v1, "fill-array-data-payload // for fill-array-data @ "

    #@15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f
    const/4 v0, 0x0

    #@20
    move v1, v0

    #@21
    :goto_21
    if-ge v1, v3, :cond_43

    #@23
    const-string v0, "\n  "

    #@25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@2b
    const-string v0, ": "

    #@2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    iget-object v0, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Lcom/android/dx/rop/cst/Constant;

    #@38
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3f
    add-int/lit8 v0, v1, 0x1

    #@41
    move v1, v0

    #@42
    goto :goto_21

    #@43
    :cond_43
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    return-object v0
.end method

.method public withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .registers 7

    #@0
    new-instance v0, Lcom/android/dx/dex/code/ArrayData;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/ArrayData;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/dx/dex/code/ArrayData;->user:Lcom/android/dx/dex/code/CodeAddress;

    #@8
    iget-object v3, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    #@a
    iget-object v4, p0, Lcom/android/dx/dex/code/ArrayData;->arrayType:Lcom/android/dx/rop/cst/Constant;

    #@c
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/code/ArrayData;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lcom/android/dx/rop/cst/Constant;)V

    #@f
    return-object v0
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 8

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v3

    #@7
    const/16 v0, 0x300

    #@9
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@c
    iget v0, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    #@e
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@11
    iget v0, p0, Lcom/android/dx/dex/code/ArrayData;->initLength:I

    #@13
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@16
    iget v0, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    #@18
    packed-switch v0, :pswitch_data_8a

    #@1b
    :cond_1b
    :pswitch_1b
    iget v0, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    #@1d
    const/4 v1, 0x1

    #@1e
    if-ne v0, v1, :cond_27

    #@20
    rem-int/lit8 v0, v3, 0x2

    #@22
    if-eqz v0, :cond_27

    #@24
    invoke-interface {p1, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    #@27
    :cond_27
    return-void

    #@28
    :pswitch_28
    move v1, v2

    #@29
    :goto_29
    if-ge v1, v3, :cond_1b

    #@2b
    iget-object v0, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Lcom/android/dx/rop/cst/Constant;

    #@33
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteral32;

    #@35
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteral32;->getIntBits()I

    #@38
    move-result v0

    #@39
    int-to-byte v0, v0

    #@3a
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    #@3d
    add-int/lit8 v0, v1, 0x1

    #@3f
    move v1, v0

    #@40
    goto :goto_29

    #@41
    :pswitch_41
    move v1, v2

    #@42
    :goto_42
    if-ge v1, v3, :cond_1b

    #@44
    iget-object v0, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, Lcom/android/dx/rop/cst/Constant;

    #@4c
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteral32;

    #@4e
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteral32;->getIntBits()I

    #@51
    move-result v0

    #@52
    int-to-short v0, v0

    #@53
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@56
    add-int/lit8 v0, v1, 0x1

    #@58
    move v1, v0

    #@59
    goto :goto_42

    #@5a
    :pswitch_5a
    move v1, v2

    #@5b
    :goto_5b
    if-ge v1, v3, :cond_1b

    #@5d
    iget-object v0, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    #@5f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@62
    move-result-object v0

    #@63
    check-cast v0, Lcom/android/dx/rop/cst/Constant;

    #@65
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteral32;

    #@67
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteral32;->getIntBits()I

    #@6a
    move-result v0

    #@6b
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@6e
    add-int/lit8 v0, v1, 0x1

    #@70
    move v1, v0

    #@71
    goto :goto_5b

    #@72
    :pswitch_72
    move v1, v2

    #@73
    :goto_73
    if-ge v1, v3, :cond_1b

    #@75
    iget-object v0, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7a
    move-result-object v0

    #@7b
    check-cast v0, Lcom/android/dx/rop/cst/Constant;

    #@7d
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteral64;

    #@7f
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteral64;->getLongBits()J

    #@82
    move-result-wide v4

    #@83
    invoke-interface {p1, v4, v5}, Lcom/android/dx/util/AnnotatedOutput;->writeLong(J)V

    #@86
    add-int/lit8 v0, v1, 0x1

    #@88
    move v1, v0

    #@89
    goto :goto_73

    #@8a
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_28
        :pswitch_41
        :pswitch_1b
        :pswitch_5a
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_72
    .end packed-switch
.end method
