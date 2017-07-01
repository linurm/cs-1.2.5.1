.class public final Lcom/android/dx/rop/code/Rop;
.super Ljava/lang/Object;


# static fields
.field public static final BRANCH_GOTO:I = 0x3

.field public static final BRANCH_IF:I = 0x4

.field public static final BRANCH_MAX:I = 0x6

.field public static final BRANCH_MIN:I = 0x1

.field public static final BRANCH_NONE:I = 0x1

.field public static final BRANCH_RETURN:I = 0x2

.field public static final BRANCH_SWITCH:I = 0x5

.field public static final BRANCH_THROW:I = 0x6


# instance fields
.field private final branchingness:I

.field private final exceptions:Lcom/android/dx/rop/type/TypeList;

.field private final isCallLike:Z

.field private final nickname:Ljava/lang/String;

.field private final opcode:I

.field private final result:Lcom/android/dx/rop/type/Type;

.field private final sources:Lcom/android/dx/rop/type/TypeList;


# direct methods
.method public constructor <init>(ILcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/TypeList;ILjava/lang/String;)V
    .registers 14

    #@0
    sget-object v4, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    #@2
    const/4 v6, 0x0

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move v5, p4

    #@8
    move-object v7, p5

    #@9
    invoke-direct/range {v0 .. v7}, Lcom/android/dx/rop/code/Rop;-><init>(ILcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;IZLjava/lang/String;)V

    #@c
    return-void
.end method

.method public constructor <init>(ILcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;ILjava/lang/String;)V
    .registers 15

    #@0
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    move-object v7, p6

    #@8
    invoke-direct/range {v0 .. v7}, Lcom/android/dx/rop/code/Rop;-><init>(ILcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;IZLjava/lang/String;)V

    #@b
    return-void
.end method

.method public constructor <init>(ILcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;IZLjava/lang/String;)V
    .registers 10

    #@0
    const/4 v1, 0x6

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    if-nez p2, :cond_e

    #@6
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string v1, "result == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    if-nez p3, :cond_18

    #@10
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string v1, "sources == null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    if-nez p4, :cond_22

    #@1a
    new-instance v0, Ljava/lang/NullPointerException;

    #@1c
    const-string v1, "exceptions == null"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    :cond_22
    const/4 v0, 0x1

    #@23
    if-lt p5, v0, :cond_27

    #@25
    if-le p5, v1, :cond_2f

    #@27
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    const-string v1, "bogus branchingness"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    :cond_2f
    invoke-interface {p4}, Lcom/android/dx/rop/type/TypeList;->size()I

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_3f

    #@35
    if-eq p5, v1, :cond_3f

    #@37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@39
    const-string v1, "exceptions / branchingness mismatch"

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    :cond_3f
    iput p1, p0, Lcom/android/dx/rop/code/Rop;->opcode:I

    #@41
    iput-object p2, p0, Lcom/android/dx/rop/code/Rop;->result:Lcom/android/dx/rop/type/Type;

    #@43
    iput-object p3, p0, Lcom/android/dx/rop/code/Rop;->sources:Lcom/android/dx/rop/type/TypeList;

    #@45
    iput-object p4, p0, Lcom/android/dx/rop/code/Rop;->exceptions:Lcom/android/dx/rop/type/TypeList;

    #@47
    iput p5, p0, Lcom/android/dx/rop/code/Rop;->branchingness:I

    #@49
    iput-boolean p6, p0, Lcom/android/dx/rop/code/Rop;->isCallLike:Z

    #@4b
    iput-object p7, p0, Lcom/android/dx/rop/code/Rop;->nickname:Ljava/lang/String;

    #@4d
    return-void
.end method

.method public constructor <init>(ILcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;Ljava/lang/String;)V
    .registers 14

    #@0
    const/4 v5, 0x6

    #@1
    const/4 v6, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    move-object v4, p4

    #@7
    move-object v7, p5

    #@8
    invoke-direct/range {v0 .. v7}, Lcom/android/dx/rop/code/Rop;-><init>(ILcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;IZLjava/lang/String;)V

    #@b
    return-void
.end method

.method public constructor <init>(ILcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/TypeList;Ljava/lang/String;)V
    .registers 13

    #@0
    sget-object v4, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    move-object v0, p0

    #@5
    move v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move-object v7, p4

    #@9
    invoke-direct/range {v0 .. v7}, Lcom/android/dx/rop/code/Rop;-><init>(ILcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;IZLjava/lang/String;)V

    #@c
    return-void
.end method

.method public constructor <init>(ILcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;)V
    .registers 12

    #@0
    sget-object v2, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    #@2
    const/4 v5, 0x6

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v7, 0x0

    #@5
    move-object v0, p0

    #@6
    move v1, p1

    #@7
    move-object v3, p2

    #@8
    move-object v4, p3

    #@9
    invoke-direct/range {v0 .. v7}, Lcom/android/dx/rop/code/Rop;-><init>(ILcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;IZLjava/lang/String;)V

    #@c
    return-void
.end method


# virtual methods
.method public final canThrow()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/Rop;->exceptions:Lcom/android/dx/rop/type/TypeList;

    #@2
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeList;->size()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-ne p0, p1, :cond_6

    #@4
    :cond_4
    move v0, v1

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    instance-of v2, p1, Lcom/android/dx/rop/code/Rop;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/android/dx/rop/code/Rop;

    #@c
    iget v2, p0, Lcom/android/dx/rop/code/Rop;->opcode:I

    #@e
    iget v3, p1, Lcom/android/dx/rop/code/Rop;->opcode:I

    #@10
    if-ne v2, v3, :cond_5

    #@12
    iget v2, p0, Lcom/android/dx/rop/code/Rop;->branchingness:I

    #@14
    iget v3, p1, Lcom/android/dx/rop/code/Rop;->branchingness:I

    #@16
    if-ne v2, v3, :cond_5

    #@18
    iget-object v2, p0, Lcom/android/dx/rop/code/Rop;->result:Lcom/android/dx/rop/type/Type;

    #@1a
    iget-object v3, p1, Lcom/android/dx/rop/code/Rop;->result:Lcom/android/dx/rop/type/Type;

    #@1c
    if-ne v2, v3, :cond_5

    #@1e
    iget-object v2, p0, Lcom/android/dx/rop/code/Rop;->sources:Lcom/android/dx/rop/type/TypeList;

    #@20
    iget-object v3, p1, Lcom/android/dx/rop/code/Rop;->sources:Lcom/android/dx/rop/type/TypeList;

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_5

    #@28
    iget-object v2, p0, Lcom/android/dx/rop/code/Rop;->exceptions:Lcom/android/dx/rop/type/TypeList;

    #@2a
    iget-object v3, p1, Lcom/android/dx/rop/code/Rop;->exceptions:Lcom/android/dx/rop/type/TypeList;

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v2

    #@30
    if-nez v2, :cond_4

    #@32
    goto :goto_5
.end method

.method public getBranchingness()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/Rop;->branchingness:I

    #@2
    return v0
.end method

.method public getExceptions()Lcom/android/dx/rop/type/TypeList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/Rop;->exceptions:Lcom/android/dx/rop/type/TypeList;

    #@2
    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/Rop;->nickname:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/android/dx/rop/code/Rop;->nickname:Ljava/lang/String;

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Rop;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    goto :goto_6
.end method

.method public getOpcode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/Rop;->opcode:I

    #@2
    return v0
.end method

.method public getResult()Lcom/android/dx/rop/type/Type;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/Rop;->result:Lcom/android/dx/rop/type/Type;

    #@2
    return-object v0
.end method

.method public getSources()Lcom/android/dx/rop/type/TypeList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/Rop;->sources:Lcom/android/dx/rop/type/TypeList;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/Rop;->opcode:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    iget v1, p0, Lcom/android/dx/rop/code/Rop;->branchingness:I

    #@6
    add-int/2addr v0, v1

    #@7
    mul-int/lit8 v0, v0, 0x1f

    #@9
    iget-object v1, p0, Lcom/android/dx/rop/code/Rop;->result:Lcom/android/dx/rop/type/Type;

    #@b
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->hashCode()I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    mul-int/lit8 v0, v0, 0x1f

    #@12
    iget-object v1, p0, Lcom/android/dx/rop/code/Rop;->sources:Lcom/android/dx/rop/type/TypeList;

    #@14
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@17
    move-result v1

    #@18
    add-int/2addr v0, v1

    #@19
    mul-int/lit8 v0, v0, 0x1f

    #@1b
    iget-object v1, p0, Lcom/android/dx/rop/code/Rop;->exceptions:Lcom/android/dx/rop/type/TypeList;

    #@1d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@20
    move-result v1

    #@21
    add-int/2addr v0, v1

    #@22
    return v0
.end method

.method public isCallLike()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/android/dx/rop/code/Rop;->isCallLike:Z

    #@2
    return v0
.end method

.method public isCommutative()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/Rop;->opcode:I

    #@2
    packed-switch v0, :pswitch_data_a

    #@5
    :pswitch_5
    const/4 v0, 0x0

    #@6
    :goto_6
    return v0

    #@7
    :pswitch_7
    const/4 v0, 0x1

    #@8
    goto :goto_6

    #@9
    nop

    #@a
    :pswitch_data_a
    .packed-switch 0xe
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    #@0
    const/16 v5, 0x20

    #@2
    const/4 v1, 0x0

    #@3
    new-instance v2, Ljava/lang/StringBuffer;

    #@5
    const/16 v0, 0x28

    #@7
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@a
    const-string v0, "Rop{"

    #@c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    iget v0, p0, Lcom/android/dx/rop/code/Rop;->opcode:I

    #@11
    invoke-static {v0}, Lcom/android/dx/rop/code/RegOps;->opName(I)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    iget-object v0, p0, Lcom/android/dx/rop/code/Rop;->result:Lcom/android/dx/rop/type/Type;

    #@1a
    sget-object v3, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    #@1c
    if-eq v0, v3, :cond_67

    #@1e
    const-string v0, " "

    #@20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    iget-object v0, p0, Lcom/android/dx/rop/code/Rop;->result:Lcom/android/dx/rop/type/Type;

    #@25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@28
    :goto_28
    const-string v0, " <-"

    #@2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d
    iget-object v0, p0, Lcom/android/dx/rop/code/Rop;->sources:Lcom/android/dx/rop/type/TypeList;

    #@2f
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeList;->size()I

    #@32
    move-result v3

    #@33
    if-nez v3, :cond_6d

    #@35
    const-string v0, " ."

    #@37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a
    :cond_3a
    iget-boolean v0, p0, Lcom/android/dx/rop/code/Rop;->isCallLike:Z

    #@3c
    if-eqz v0, :cond_43

    #@3e
    const-string v0, " call"

    #@40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@43
    :cond_43
    iget-object v0, p0, Lcom/android/dx/rop/code/Rop;->exceptions:Lcom/android/dx/rop/type/TypeList;

    #@45
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeList;->size()I

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_89

    #@4b
    const-string v3, " throws"

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    :goto_50
    if-ge v1, v0, :cond_aa

    #@52
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@55
    iget-object v3, p0, Lcom/android/dx/rop/code/Rop;->exceptions:Lcom/android/dx/rop/type/TypeList;

    #@57
    invoke-interface {v3, v1}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    #@5a
    move-result-object v3

    #@5b
    sget-object v4, Lcom/android/dx/rop/type/Type;->THROWABLE:Lcom/android/dx/rop/type/Type;

    #@5d
    if-ne v3, v4, :cond_7f

    #@5f
    const-string v3, "<any>"

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@64
    :goto_64
    add-int/lit8 v1, v1, 0x1

    #@66
    goto :goto_50

    #@67
    :cond_67
    const-string v0, " ."

    #@69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6c
    goto :goto_28

    #@6d
    :cond_6d
    move v0, v1

    #@6e
    :goto_6e
    if-ge v0, v3, :cond_3a

    #@70
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@73
    iget-object v4, p0, Lcom/android/dx/rop/code/Rop;->sources:Lcom/android/dx/rop/type/TypeList;

    #@75
    invoke-interface {v4, v0}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@7c
    add-int/lit8 v0, v0, 0x1

    #@7e
    goto :goto_6e

    #@7f
    :cond_7f
    iget-object v3, p0, Lcom/android/dx/rop/code/Rop;->exceptions:Lcom/android/dx/rop/type/TypeList;

    #@81
    invoke-interface {v3, v1}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    #@84
    move-result-object v3

    #@85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@88
    goto :goto_64

    #@89
    :cond_89
    iget v0, p0, Lcom/android/dx/rop/code/Rop;->branchingness:I

    #@8b
    packed-switch v0, :pswitch_data_d2

    #@8e
    new-instance v0, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string v1, " "

    #@95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v0

    #@99
    iget v1, p0, Lcom/android/dx/rop/code/Rop;->branchingness:I

    #@9b
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    #@9e
    move-result-object v1

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@aa
    :cond_aa
    :goto_aa
    const/16 v0, 0x7d

    #@ac
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@af
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@b2
    move-result-object v0

    #@b3
    return-object v0

    #@b4
    :pswitch_b4
    const-string v0, " flows"

    #@b6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b9
    goto :goto_aa

    #@ba
    :pswitch_ba
    const-string v0, " returns"

    #@bc
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@bf
    goto :goto_aa

    #@c0
    :pswitch_c0
    const-string v0, " gotos"

    #@c2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c5
    goto :goto_aa

    #@c6
    :pswitch_c6
    const-string v0, " ifs"

    #@c8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@cb
    goto :goto_aa

    #@cc
    :pswitch_cc
    const-string v0, " switches"

    #@ce
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d1
    goto :goto_aa

    #@d2
    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method
