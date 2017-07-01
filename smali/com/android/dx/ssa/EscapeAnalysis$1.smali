.class Lcom/android/dx/ssa/EscapeAnalysis$1;
.super Lcom/android/dx/ssa/RegisterMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/ssa/EscapeAnalysis;->movePropagate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/ssa/EscapeAnalysis;

.field final synthetic val$result:Lcom/android/dx/rop/code/RegisterSpec;

.field final synthetic val$source:Lcom/android/dx/rop/code/RegisterSpec;


# direct methods
.method constructor <init>(Lcom/android/dx/ssa/EscapeAnalysis;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/android/dx/ssa/EscapeAnalysis$1;->this$0:Lcom/android/dx/ssa/EscapeAnalysis;

    #@2
    iput-object p2, p0, Lcom/android/dx/ssa/EscapeAnalysis$1;->val$result:Lcom/android/dx/rop/code/RegisterSpec;

    #@4
    iput-object p3, p0, Lcom/android/dx/ssa/EscapeAnalysis$1;->val$source:Lcom/android/dx/rop/code/RegisterSpec;

    #@6
    invoke-direct {p0}, Lcom/android/dx/ssa/RegisterMapper;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public getNewRegisterCount()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis$1;->this$0:Lcom/android/dx/ssa/EscapeAnalysis;

    #@2
    # getter for: Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;
    invoke-static {v0}, Lcom/android/dx/ssa/EscapeAnalysis;->access$000(Lcom/android/dx/ssa/EscapeAnalysis;)Lcom/android/dx/ssa/SsaMethod;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public map(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 4

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis$1;->val$result:Lcom/android/dx/rop/code/RegisterSpec;

    #@6
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@9
    move-result v1

    #@a
    if-ne v0, v1, :cond_e

    #@c
    iget-object p1, p0, Lcom/android/dx/ssa/EscapeAnalysis$1;->val$source:Lcom/android/dx/rop/code/RegisterSpec;

    #@e
    :cond_e
    return-object p1
.end method
