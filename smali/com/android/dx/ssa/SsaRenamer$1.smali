.class Lcom/android/dx/ssa/SsaRenamer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/ssa/SsaBasicBlock$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/ssa/SsaRenamer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/ssa/SsaRenamer;


# direct methods
.method constructor <init>(Lcom/android/dx/ssa/SsaRenamer;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/android/dx/ssa/SsaRenamer$1;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public visitBlock(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)V
    .registers 5

    #@0
    new-instance v0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;

    #@2
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$1;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    #@4
    invoke-direct {v0, v1, p1}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;-><init>(Lcom/android/dx/ssa/SsaRenamer;Lcom/android/dx/ssa/SsaBasicBlock;)V

    #@7
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->process()V

    #@a
    return-void
.end method
