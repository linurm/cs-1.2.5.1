.class public Lcom/android/dx/ssa/BasicRegisterMapper;
.super Lcom/android/dx/ssa/RegisterMapper;


# instance fields
.field private oldToNew:Lcom/android/dx/util/IntList;

.field private runningCountNewRegisters:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/android/dx/ssa/RegisterMapper;-><init>()V

    #@3
    new-instance v0, Lcom/android/dx/util/IntList;

    #@5
    invoke-direct {v0, p1}, Lcom/android/dx/util/IntList;-><init>(I)V

    #@8
    iput-object v0, p0, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew:Lcom/android/dx/util/IntList;

    #@a
    return-void
.end method


# virtual methods
.method public addMapping(III)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew:Lcom/android/dx/util/IntList;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1b

    #@8
    iget-object v0, p0, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew:Lcom/android/dx/util/IntList;

    #@a
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@d
    move-result v0

    #@e
    sub-int v0, p1, v0

    #@10
    :goto_10
    if-ltz v0, :cond_1b

    #@12
    iget-object v1, p0, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew:Lcom/android/dx/util/IntList;

    #@14
    const/4 v2, -0x1

    #@15
    invoke-virtual {v1, v2}, Lcom/android/dx/util/IntList;->add(I)V

    #@18
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_10

    #@1b
    :cond_1b
    iget-object v0, p0, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew:Lcom/android/dx/util/IntList;

    #@1d
    invoke-virtual {v0, p1, p2}, Lcom/android/dx/util/IntList;->set(II)V

    #@20
    iget v0, p0, Lcom/android/dx/ssa/BasicRegisterMapper;->runningCountNewRegisters:I

    #@22
    add-int v1, p2, p3

    #@24
    if-ge v0, v1, :cond_2a

    #@26
    add-int v0, p2, p3

    #@28
    iput v0, p0, Lcom/android/dx/ssa/BasicRegisterMapper;->runningCountNewRegisters:I

    #@2a
    :cond_2a
    return-void
.end method

.method public getNewRegisterCount()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/ssa/BasicRegisterMapper;->runningCountNewRegisters:I

    #@2
    return v0
.end method

.method public map(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 4

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew:Lcom/android/dx/util/IntList;

    #@6
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@9
    move-result v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/dx/util/IntList;->get(I)I
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_d} :catch_18

    #@d
    move-result v0

    #@e
    :goto_e
    if-gez v0, :cond_1b

    #@10
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string v1, "no mapping specified for register"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :catch_18
    move-exception v0

    #@19
    const/4 v0, -0x1

    #@1a
    goto :goto_e

    #@1b
    :cond_1b
    invoke-virtual {p1, v0}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@1e
    move-result-object v0

    #@1f
    goto :goto_3
.end method

.method public oldToNew(I)I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew:Lcom/android/dx/util/IntList;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_a

    #@8
    const/4 v0, -0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew:Lcom/android/dx/util/IntList;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->get(I)I

    #@f
    move-result v0

    #@10
    goto :goto_9
.end method

.method public toHuman()Ljava/lang/String;
    .registers 6

    #@0
    const/16 v4, 0xa

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v0, "Old\tNew\n"

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    iget-object v0, p0, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew:Lcom/android/dx/util/IntList;

    #@e
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    #@11
    move-result v2

    #@12
    const/4 v0, 0x0

    #@13
    :goto_13
    if-ge v0, v2, :cond_2c

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    const/16 v3, 0x9

    #@1a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    iget-object v3, p0, Lcom/android/dx/ssa/BasicRegisterMapper;->oldToNew:Lcom/android/dx/util/IntList;

    #@1f
    invoke-virtual {v3, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@22
    move-result v3

    #@23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_13

    #@2c
    :cond_2c
    const-string v0, "new reg count:"

    #@2e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    iget v0, p0, Lcom/android/dx/ssa/BasicRegisterMapper;->runningCountNewRegisters:I

    #@33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method
