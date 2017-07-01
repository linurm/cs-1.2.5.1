.class Lcom/android/dx/ssa/back/SsaToRop$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/ssa/SsaBasicBlock$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/ssa/back/SsaToRop;->removeEmptyGotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/ssa/back/SsaToRop;

.field final synthetic val$blocks:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/dx/ssa/back/SsaToRop;Ljava/util/ArrayList;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/android/dx/ssa/back/SsaToRop$1;->this$0:Lcom/android/dx/ssa/back/SsaToRop;

    #@2
    iput-object p2, p0, Lcom/android/dx/ssa/back/SsaToRop$1;->val$blocks:Ljava/util/ArrayList;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public visitBlock(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)V
    .registers 8

    #@0
    const/4 v3, 0x0

    #@1
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x1

    #@a
    if-ne v1, v2, :cond_46

    #@c
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/dx/ssa/SsaInsn;

    #@12
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@15
    move-result-object v0

    #@16
    sget-object v1, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    #@18
    if-ne v0, v1, :cond_46

    #@1a
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/util/BitSet;

    #@24
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    #@27
    move-result v1

    #@28
    move v2, v1

    #@29
    :goto_29
    if-ltz v2, :cond_46

    #@2b
    iget-object v1, p0, Lcom/android/dx/ssa/back/SsaToRop$1;->val$blocks:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    #@33
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@36
    move-result v3

    #@37
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    #@3a
    move-result v4

    #@3b
    invoke-virtual {v1, v3, v4}, Lcom/android/dx/ssa/SsaBasicBlock;->replaceSuccessor(II)V

    #@3e
    add-int/lit8 v1, v2, 0x1

    #@40
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@43
    move-result v1

    #@44
    move v2, v1

    #@45
    goto :goto_29

    #@46
    :cond_46
    return-void
.end method
