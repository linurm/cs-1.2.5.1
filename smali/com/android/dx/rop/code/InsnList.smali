.class public final Lcom/android/dx/rop/code/InsnList;
.super Lcom/android/dx/util/FixedSizeList;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    #@3
    return-void
.end method


# virtual methods
.method public contentEquals(Lcom/android/dx/rop/code/InsnList;)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    :cond_3
    :goto_3
    return v0

    #@4
    :cond_4
    invoke-virtual {p0}, Lcom/android/dx/rop/code/InsnList;->size()I

    #@7
    move-result v2

    #@8
    invoke-virtual {p1}, Lcom/android/dx/rop/code/InsnList;->size()I

    #@b
    move-result v1

    #@c
    if-ne v2, v1, :cond_3

    #@e
    move v1, v0

    #@f
    :goto_f
    if-ge v1, v2, :cond_22

    #@11
    invoke-virtual {p0, v1}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {p1, v1}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v3, v4}, Lcom/android/dx/rop/code/Insn;->contentEquals(Lcom/android/dx/rop/code/Insn;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_3

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_f

    #@22
    :cond_22
    const/4 v0, 0x1

    #@23
    goto :goto_3
.end method

.method public forEach(Lcom/android/dx/rop/code/Insn$Visitor;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/InsnList;->size()I

    #@3
    move-result v1

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    if-ge v0, v1, :cond_11

    #@7
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2, p1}, Lcom/android/dx/rop/code/Insn;->accept(Lcom/android/dx/rop/code/Insn$Visitor;)V

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_5

    #@11
    :cond_11
    return-void
.end method

.method public get(I)Lcom/android/dx/rop/code/Insn;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/InsnList;->get0(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/dx/rop/code/Insn;

    #@6
    return-object v0
.end method

.method public getLast()Lcom/android/dx/rop/code/Insn;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/InsnList;->size()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public set(ILcom/android/dx/rop/code/Insn;)V
    .registers 3

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/rop/code/InsnList;->set0(ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method public withRegisterOffset(I)Lcom/android/dx/rop/code/InsnList;
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/InsnList;->size()I

    #@3
    move-result v2

    #@4
    new-instance v3, Lcom/android/dx/rop/code/InsnList;

    #@6
    invoke-direct {v3, v2}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    #@9
    const/4 v0, 0x0

    #@a
    move v1, v0

    #@b
    :goto_b
    if-ge v1, v2, :cond_20

    #@d
    invoke-virtual {p0, v1}, Lcom/android/dx/rop/code/InsnList;->get0(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/dx/rop/code/Insn;

    #@13
    if-eqz v0, :cond_1c

    #@15
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/Insn;->withRegisterOffset(I)Lcom/android/dx/rop/code/Insn;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v3, v1, v0}, Lcom/android/dx/rop/code/InsnList;->set0(ILjava/lang/Object;)V

    #@1c
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    #@1e
    move v1, v0

    #@1f
    goto :goto_b

    #@20
    :cond_20
    invoke-virtual {p0}, Lcom/android/dx/rop/code/InsnList;->isImmutable()Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_29

    #@26
    invoke-virtual {v3}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    #@29
    :cond_29
    return-object v3
.end method
