.class public final Lcom/google/dexmaker/Label;
.super Ljava/lang/Object;


# instance fields
.field alternateSuccessor:Lcom/google/dexmaker/Label;

.field catchLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/Label;",
            ">;"
        }
    .end annotation
.end field

.field code:Lcom/google/dexmaker/Code;

.field id:I

.field final instructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/dx/rop/code/Insn;",
            ">;"
        }
    .end annotation
.end field

.field marked:Z

.field primarySuccessor:Lcom/google/dexmaker/Label;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/dexmaker/Label;->instructions:Ljava/util/List;

    #@a
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/google/dexmaker/Label;->marked:Z

    #@d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/google/dexmaker/Label;->catchLabels:Ljava/util/List;

    #@13
    const/4 v0, -0x1

    #@14
    iput v0, p0, Lcom/google/dexmaker/Label;->id:I

    #@16
    return-void
.end method


# virtual methods
.method compact()V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    :goto_2
    iget-object v0, p0, Lcom/google/dexmaker/Label;->catchLabels:Ljava/util/List;

    #@4
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    if-ge v1, v0, :cond_2c

    #@a
    :goto_a
    iget-object v0, p0, Lcom/google/dexmaker/Label;->catchLabels:Ljava/util/List;

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/dexmaker/Label;

    #@12
    invoke-virtual {v0}, Lcom/google/dexmaker/Label;->isEmpty()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_28

    #@18
    iget-object v2, p0, Lcom/google/dexmaker/Label;->catchLabels:Ljava/util/List;

    #@1a
    iget-object v0, p0, Lcom/google/dexmaker/Label;->catchLabels:Ljava/util/List;

    #@1c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Lcom/google/dexmaker/Label;

    #@22
    iget-object v0, v0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    #@24
    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@27
    goto :goto_a

    #@28
    :cond_28
    add-int/lit8 v0, v1, 0x1

    #@2a
    move v1, v0

    #@2b
    goto :goto_2

    #@2c
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    #@2e
    if-eqz v0, :cond_3f

    #@30
    iget-object v0, p0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    #@32
    invoke-virtual {v0}, Lcom/google/dexmaker/Label;->isEmpty()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_3f

    #@38
    iget-object v0, p0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    #@3a
    iget-object v0, v0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    #@3c
    iput-object v0, p0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    #@3e
    goto :goto_2c

    #@3f
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/google/dexmaker/Label;->alternateSuccessor:Lcom/google/dexmaker/Label;

    #@41
    if-eqz v0, :cond_52

    #@43
    iget-object v0, p0, Lcom/google/dexmaker/Label;->alternateSuccessor:Lcom/google/dexmaker/Label;

    #@45
    invoke-virtual {v0}, Lcom/google/dexmaker/Label;->isEmpty()Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_52

    #@4b
    iget-object v0, p0, Lcom/google/dexmaker/Label;->alternateSuccessor:Lcom/google/dexmaker/Label;

    #@4d
    iget-object v0, v0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    #@4f
    iput-object v0, p0, Lcom/google/dexmaker/Label;->alternateSuccessor:Lcom/google/dexmaker/Label;

    #@51
    goto :goto_3f

    #@52
    :cond_52
    return-void
.end method

.method isEmpty()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/Label;->instructions:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method toBasicBlock()Lcom/android/dx/rop/code/BasicBlock;
    .registers 6

    #@0
    new-instance v2, Lcom/android/dx/rop/code/InsnList;

    #@2
    iget-object v0, p0, Lcom/google/dexmaker/Label;->instructions:Ljava/util/List;

    #@4
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    invoke-direct {v2, v0}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    #@b
    const/4 v0, 0x0

    #@c
    move v1, v0

    #@d
    :goto_d
    iget-object v0, p0, Lcom/google/dexmaker/Label;->instructions:Ljava/util/List;

    #@f
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@12
    move-result v0

    #@13
    if-ge v1, v0, :cond_24

    #@15
    iget-object v0, p0, Lcom/google/dexmaker/Label;->instructions:Ljava/util/List;

    #@17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/dx/rop/code/Insn;

    #@1d
    invoke-virtual {v2, v1, v0}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    #@20
    add-int/lit8 v0, v1, 0x1

    #@22
    move v1, v0

    #@23
    goto :goto_d

    #@24
    :cond_24
    invoke-virtual {v2}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    #@27
    new-instance v1, Lcom/android/dx/util/IntList;

    #@29
    invoke-direct {v1}, Lcom/android/dx/util/IntList;-><init>()V

    #@2c
    iget-object v0, p0, Lcom/google/dexmaker/Label;->catchLabels:Ljava/util/List;

    #@2e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v3

    #@32
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_44

    #@38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Lcom/google/dexmaker/Label;

    #@3e
    iget v0, v0, Lcom/google/dexmaker/Label;->id:I

    #@40
    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->add(I)V

    #@43
    goto :goto_32

    #@44
    :cond_44
    iget-object v0, p0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    #@46
    if-eqz v0, :cond_65

    #@48
    iget-object v0, p0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    #@4a
    iget v0, v0, Lcom/google/dexmaker/Label;->id:I

    #@4c
    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->add(I)V

    #@4f
    :goto_4f
    iget-object v3, p0, Lcom/google/dexmaker/Label;->alternateSuccessor:Lcom/google/dexmaker/Label;

    #@51
    if-eqz v3, :cond_5a

    #@53
    iget-object v3, p0, Lcom/google/dexmaker/Label;->alternateSuccessor:Lcom/google/dexmaker/Label;

    #@55
    iget v3, v3, Lcom/google/dexmaker/Label;->id:I

    #@57
    invoke-virtual {v1, v3}, Lcom/android/dx/util/IntList;->add(I)V

    #@5a
    :cond_5a
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->setImmutable()V

    #@5d
    new-instance v3, Lcom/android/dx/rop/code/BasicBlock;

    #@5f
    iget v4, p0, Lcom/google/dexmaker/Label;->id:I

    #@61
    invoke-direct {v3, v4, v2, v1, v0}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    #@64
    return-object v3

    #@65
    :cond_65
    const/4 v0, -0x1

    #@66
    goto :goto_4f
.end method
