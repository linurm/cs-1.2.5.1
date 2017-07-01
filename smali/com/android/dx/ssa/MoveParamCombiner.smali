.class public Lcom/android/dx/ssa/MoveParamCombiner;
.super Ljava/lang/Object;


# instance fields
.field private final ssaMeth:Lcom/android/dx/ssa/SsaMethod;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/dx/ssa/MoveParamCombiner;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@5
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/MoveParamCombiner;Lcom/android/dx/ssa/NormalSsaInsn;)I
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/MoveParamCombiner;->getParamIndex(Lcom/android/dx/ssa/NormalSsaInsn;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$100(Lcom/android/dx/ssa/MoveParamCombiner;)Lcom/android/dx/ssa/SsaMethod;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/MoveParamCombiner;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    return-object v0
.end method

.method private getParamIndex(Lcom/android/dx/ssa/NormalSsaInsn;)I
    .registers 3

    #@0
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/dx/rop/code/CstInsn;

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/dx/rop/cst/CstInteger;

    #@c
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public static process(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/ssa/MoveParamCombiner;

    #@2
    invoke-direct {v0, p0}, Lcom/android/dx/ssa/MoveParamCombiner;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    #@5
    invoke-direct {v0}, Lcom/android/dx/ssa/MoveParamCombiner;->run()V

    #@8
    return-void
.end method

.method private run()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/MoveParamCombiner;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getParamWidth()I

    #@5
    move-result v0

    #@6
    new-array v0, v0, [Lcom/android/dx/rop/code/RegisterSpec;

    #@8
    new-instance v1, Ljava/util/HashSet;

    #@a
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@d
    iget-object v2, p0, Lcom/android/dx/ssa/MoveParamCombiner;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@f
    new-instance v3, Lcom/android/dx/ssa/MoveParamCombiner$1;

    #@11
    invoke-direct {v3, p0, v0, v1}, Lcom/android/dx/ssa/MoveParamCombiner$1;-><init>(Lcom/android/dx/ssa/MoveParamCombiner;[Lcom/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V

    #@14
    invoke-virtual {v2, v3}, Lcom/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    #@17
    iget-object v0, p0, Lcom/android/dx/ssa/MoveParamCombiner;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    #@19
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->deleteInsns(Ljava/util/Set;)V

    #@1c
    return-void
.end method
