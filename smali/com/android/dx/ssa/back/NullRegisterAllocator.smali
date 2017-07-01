.class public Lcom/android/dx/ssa/back/NullRegisterAllocator;
.super Lcom/android/dx/ssa/back/RegisterAllocator;


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/RegisterAllocator;-><init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V

    #@3
    return-void
.end method


# virtual methods
.method public allocateRegisters()Lcom/android/dx/ssa/RegisterMapper;
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/NullRegisterAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@5
    move-result v1

    #@6
    new-instance v2, Lcom/android/dx/ssa/BasicRegisterMapper;

    #@8
    invoke-direct {v2, v1}, Lcom/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    #@b
    const/4 v0, 0x0

    #@c
    :goto_c
    if-ge v0, v1, :cond_17

    #@e
    mul-int/lit8 v3, v0, 0x2

    #@10
    const/4 v4, 0x2

    #@11
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_c

    #@17
    :cond_17
    return-object v2
.end method

.method public wantsParamsMovedHigh()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method
