.class Lcom/android/dx/ssa/SsaMethod$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/ssa/SsaMethod;->buildUseList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/ssa/SsaMethod;


# direct methods
.method constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/android/dx/ssa/SsaMethod$2;->this$0:Lcom/android/dx/ssa/SsaMethod;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method private addToUses(Lcom/android/dx/ssa/SsaInsn;)V
    .registers 7

    #@0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@7
    move-result v2

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    if-ge v0, v2, :cond_21

    #@b
    iget-object v3, p0, Lcom/android/dx/ssa/SsaMethod$2;->this$0:Lcom/android/dx/ssa/SsaMethod;

    #@d
    # getter for: Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/dx/ssa/SsaMethod;->access$100(Lcom/android/dx/ssa/SsaMethod;)[Ljava/util/ArrayList;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@18
    move-result v4

    #@19
    aget-object v3, v3, v4

    #@1b
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_9

    #@21
    :cond_21
    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/SsaMethod$2;->addToUses(Lcom/android/dx/ssa/SsaInsn;)V

    #@3
    return-void
.end method

.method public visitNonMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/SsaMethod$2;->addToUses(Lcom/android/dx/ssa/SsaInsn;)V

    #@3
    return-void
.end method

.method public visitPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/SsaMethod$2;->addToUses(Lcom/android/dx/ssa/SsaInsn;)V

    #@3
    return-void
.end method
