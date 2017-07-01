.class Lcom/android/dx/ssa/EscapeAnalysis$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/ssa/EscapeAnalysis$2;->visitBlock(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dx/ssa/EscapeAnalysis$2;


# direct methods
.method constructor <init>(Lcom/android/dx/ssa/EscapeAnalysis$2;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/android/dx/ssa/EscapeAnalysis$2$1;->this$1:Lcom/android/dx/ssa/EscapeAnalysis$2;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .registers 2

    #@0
    return-void
.end method

.method public visitNonMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis$2$1;->this$1:Lcom/android/dx/ssa/EscapeAnalysis$2;

    #@2
    iget-object v0, v0, Lcom/android/dx/ssa/EscapeAnalysis$2;->this$0:Lcom/android/dx/ssa/EscapeAnalysis;

    #@4
    # invokes: Lcom/android/dx/ssa/EscapeAnalysis;->processInsn(Lcom/android/dx/ssa/SsaInsn;)V
    invoke-static {v0, p1}, Lcom/android/dx/ssa/EscapeAnalysis;->access$100(Lcom/android/dx/ssa/EscapeAnalysis;Lcom/android/dx/ssa/SsaInsn;)V

    #@7
    return-void
.end method

.method public visitPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .registers 2

    #@0
    return-void
.end method
