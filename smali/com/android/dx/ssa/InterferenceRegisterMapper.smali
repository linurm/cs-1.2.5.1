.class public Lcom/android/dx/ssa/InterferenceRegisterMapper;
.super Lcom/android/dx/ssa/BasicRegisterMapper;


# instance fields
.field private final newRegInterference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/util/BitIntSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldRegInterference:Lcom/android/dx/ssa/back/InterferenceGraph;


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/back/InterferenceGraph;I)V
    .registers 4

    #@0
    invoke-direct {p0, p2}, Lcom/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    #@a
    iput-object p1, p0, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldRegInterference:Lcom/android/dx/ssa/back/InterferenceGraph;

    #@c
    return-void
.end method

.method private addInterfence(II)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    #@2
    add-int/lit8 v1, p1, 0x1

    #@4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@7
    :goto_7
    iget-object v0, p0, Lcom/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    if-lt p1, v0, :cond_1c

    #@f
    iget-object v0, p0, Lcom/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    #@11
    new-instance v1, Lcom/android/dx/util/BitIntSet;

    #@13
    add-int/lit8 v2, p1, 0x1

    #@15
    invoke-direct {v1, v2}, Lcom/android/dx/util/BitIntSet;-><init>(I)V

    #@18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    goto :goto_7

    #@1c
    :cond_1c
    iget-object v1, p0, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldRegInterference:Lcom/android/dx/ssa/back/InterferenceGraph;

    #@1e
    iget-object v0, p0, Lcom/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/android/dx/util/IntSet;

    #@26
    invoke-virtual {v1, p2, v0}, Lcom/android/dx/ssa/back/InterferenceGraph;->mergeInterferenceSet(ILcom/android/dx/util/IntSet;)V

    #@29
    return-void
.end method


# virtual methods
.method public addMapping(III)V
    .registers 5

    #@0
    invoke-super {p0, p1, p2, p3}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    #@3
    invoke-direct {p0, p2, p1}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->addInterfence(II)V

    #@6
    const/4 v0, 0x2

    #@7
    if-ne p3, v0, :cond_e

    #@9
    add-int/lit8 v0, p2, 0x1

    #@b
    invoke-direct {p0, v0, p1}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->addInterfence(II)V

    #@e
    :cond_e
    return-void
.end method

.method public areAnyPinned(Lcom/android/dx/rop/code/RegisterSpecList;II)Z
    .registers 10

    #@0
    const/4 v5, 0x2

    #@1
    const/4 v0, 0x0

    #@2
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@5
    move-result v2

    #@6
    move v1, v0

    #@7
    :goto_7
    if-ge v1, v2, :cond_28

    #@9
    invoke-virtual {p1, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@10
    move-result v4

    #@11
    invoke-virtual {p0, v4}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    #@14
    move-result v4

    #@15
    if-eq v4, p2, :cond_27

    #@17
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@1a
    move-result v3

    #@1b
    if-ne v3, v5, :cond_21

    #@1d
    add-int/lit8 v3, v4, 0x1

    #@1f
    if-eq v3, p2, :cond_27

    #@21
    :cond_21
    if-ne p3, v5, :cond_29

    #@23
    add-int/lit8 v3, p2, 0x1

    #@25
    if-ne v4, v3, :cond_29

    #@27
    :cond_27
    const/4 v0, 0x1

    #@28
    :cond_28
    return v0

    #@29
    :cond_29
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_7
.end method

.method public interferes(III)Z
    .registers 8

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    iget-object v0, p0, Lcom/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-lt p2, v0, :cond_c

    #@a
    :cond_a
    move v0, v1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/dx/util/IntSet;

    #@14
    if-eqz v0, :cond_a

    #@16
    if-ne p3, v2, :cond_1d

    #@18
    invoke-interface {v0, p1}, Lcom/android/dx/util/IntSet;->has(I)Z

    #@1b
    move-result v0

    #@1c
    goto :goto_b

    #@1d
    :cond_1d
    invoke-interface {v0, p1}, Lcom/android/dx/util/IntSet;->has(I)Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_2d

    #@23
    add-int/lit8 v0, p2, 0x1

    #@25
    add-int/lit8 v3, p3, -0x1

    #@27
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->interferes(III)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2f

    #@2d
    :cond_2d
    move v0, v2

    #@2e
    goto :goto_b

    #@2f
    :cond_2f
    move v0, v1

    #@30
    goto :goto_b
.end method

.method public interferes(Lcom/android/dx/rop/code/RegisterSpec;I)Z
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->interferes(III)Z

    #@b
    move-result v0

    #@c
    return v0
.end method
