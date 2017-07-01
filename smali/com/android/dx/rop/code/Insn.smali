.class public abstract Lcom/android/dx/rop/code/Insn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/util/ToHuman;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/rop/code/Insn$BaseVisitor;,
        Lcom/android/dx/rop/code/Insn$Visitor;
    }
.end annotation


# instance fields
.field private final opcode:Lcom/android/dx/rop/code/Rop;

.field private final position:Lcom/android/dx/rop/code/SourcePosition;

.field private final result:Lcom/android/dx/rop/code/RegisterSpec;

.field private final sources:Lcom/android/dx/rop/code/RegisterSpecList;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "opcode == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    if-nez p2, :cond_17

    #@f
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string v1, "position == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    if-nez p4, :cond_21

    #@19
    new-instance v0, Ljava/lang/NullPointerException;

    #@1b
    const-string v1, "sources == null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    iput-object p1, p0, Lcom/android/dx/rop/code/Insn;->opcode:Lcom/android/dx/rop/code/Rop;

    #@23
    iput-object p2, p0, Lcom/android/dx/rop/code/Insn;->position:Lcom/android/dx/rop/code/SourcePosition;

    #@25
    iput-object p3, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    #@27
    iput-object p4, p0, Lcom/android/dx/rop/code/Insn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    #@29
    return-void
.end method

.method private static equalsHandleNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-eq p0, p1, :cond_a

    #@2
    if-eqz p0, :cond_c

    #@4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    :cond_a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method


# virtual methods
.method public abstract accept(Lcom/android/dx/rop/code/Insn$Visitor;)V
.end method

.method public final canThrow()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->opcode:Lcom/android/dx/rop/code/Rop;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->canThrow()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public contentEquals(Lcom/android/dx/rop/code/Insn;)Z
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->opcode:Lcom/android/dx/rop/code/Rop;

    #@2
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@5
    move-result-object v1

    #@6
    if-ne v0, v1, :cond_46

    #@8
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->position:Lcom/android/dx/rop/code/SourcePosition;

    #@a
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/SourcePosition;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_46

    #@14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v1

    #@1c
    if-ne v0, v1, :cond_46

    #@1e
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    #@20
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Insn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Lcom/android/dx/rop/code/Insn;->equalsHandleNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_46

    #@2a
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    #@2c
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Insn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Lcom/android/dx/rop/code/Insn;->equalsHandleNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_46

    #@36
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    #@3d
    move-result-object v1

    #@3e
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->equalContents(Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_46

    #@44
    const/4 v0, 0x1

    #@45
    :goto_45
    return v0

    #@46
    :cond_46
    const/4 v0, 0x0

    #@47
    goto :goto_45
.end method

.method public copy()Lcom/android/dx/rop/code/Insn;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/Insn;->withRegisterOffset(I)Lcom/android/dx/rop/code/Insn;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-ne p0, p1, :cond_4

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    goto :goto_3
.end method

.method public abstract getCatches()Lcom/android/dx/rop/type/TypeList;
.end method

.method public getInlineString()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->opcode:Lcom/android/dx/rop/code/Rop;

    #@3
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@6
    move-result v0

    #@7
    const/16 v2, 0x36

    #@9
    if-ne v0, v2, :cond_16

    #@b
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@11
    move-result-object v0

    #@12
    :goto_12
    if-nez v0, :cond_19

    #@14
    :cond_14
    move-object v0, v1

    #@15
    :goto_15
    return-object v0

    #@16
    :cond_16
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    #@18
    goto :goto_12

    #@19
    :cond_19
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@1c
    move-result-object v2

    #@1d
    if-eqz v2, :cond_14

    #@1f
    goto :goto_15
.end method

.method public final getOpcode()Lcom/android/dx/rop/code/Rop;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->opcode:Lcom/android/dx/rop/code/Rop;

    #@2
    return-object v0
.end method

.method public final getPosition()Lcom/android/dx/rop/code/SourcePosition;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->position:Lcom/android/dx/rop/code/SourcePosition;

    #@2
    return-object v0
.end method

.method public final getResult()Lcom/android/dx/rop/code/RegisterSpec;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    return-object v0
.end method

.method public final getSources()Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getInlineString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/Insn;->toHumanWithInline(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected final toHumanWithInline(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    #@0
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    const/16 v0, 0x50

    #@4
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->position:Lcom/android/dx/rop/code/SourcePosition;

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@c
    const-string v0, ": "

    #@e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->opcode:Lcom/android/dx/rop/code/Rop;

    #@13
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getNickname()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    if-eqz p1, :cond_29

    #@1c
    const-string v0, "("

    #@1e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    const-string v0, ")"

    #@26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    :cond_29
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    #@2b
    if-nez v0, :cond_49

    #@2d
    const-string v0, " ."

    #@2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    :goto_32
    const-string v0, " <-"

    #@34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    #@39
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@3c
    move-result v2

    #@3d
    if-nez v2, :cond_58

    #@3f
    const-string v0, " ."

    #@41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@44
    :cond_44
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    return-object v0

    #@49
    :cond_49
    const-string v0, " "

    #@4b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4e
    iget-object v0, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    #@50
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->toHuman()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@57
    goto :goto_32

    #@58
    :cond_58
    const/4 v0, 0x0

    #@59
    :goto_59
    if-ge v0, v2, :cond_44

    #@5b
    const-string v3, " "

    #@5d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@60
    iget-object v3, p0, Lcom/android/dx/rop/code/Insn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    #@62
    invoke-virtual {v3, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->toHuman()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6d
    add-int/lit8 v0, v0, 0x1

    #@6f
    goto :goto_59
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getInlineString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/Insn;->toStringWithInline(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected final toStringWithInline(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    const/16 v2, 0x20

    #@2
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    const/16 v1, 0x50

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@9
    const-string v1, "Insn{"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e
    iget-object v1, p0, Lcom/android/dx/rop/code/Insn;->position:Lcom/android/dx/rop/code/SourcePosition;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@16
    iget-object v1, p0, Lcom/android/dx/rop/code/Insn;->opcode:Lcom/android/dx/rop/code/Rop;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1b
    if-eqz p1, :cond_23

    #@1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    :cond_23
    const-string v1, " :: "

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28
    iget-object v1, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    #@2a
    if-eqz v1, :cond_36

    #@2c
    iget-object v1, p0, Lcom/android/dx/rop/code/Insn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@31
    const-string v1, " <- "

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    :cond_36
    iget-object v1, p0, Lcom/android/dx/rop/code/Insn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@3b
    const/16 v1, 0x7d

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0
.end method

.method public abstract withAddedCatch(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/code/Insn;
.end method

.method public abstract withNewRegisters(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/Insn;
.end method

.method public abstract withRegisterOffset(I)Lcom/android/dx/rop/code/Insn;
.end method

.method public withSourceLiteral()Lcom/android/dx/rop/code/Insn;
    .registers 1

    #@0
    return-object p0
.end method
