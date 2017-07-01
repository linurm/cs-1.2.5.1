.class Lcom/android/dx/ssa/Dominators$DfsWalker;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/ssa/SsaBasicBlock$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/ssa/Dominators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DfsWalker"
.end annotation


# instance fields
.field private dfsNum:I

.field final synthetic this$0:Lcom/android/dx/ssa/Dominators;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/Dominators;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/android/dx/ssa/Dominators$DfsWalker;->this$0:Lcom/android/dx/ssa/Dominators;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/dx/ssa/Dominators$DfsWalker;->dfsNum:I

    #@8
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dx/ssa/Dominators;Lcom/android/dx/ssa/Dominators$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/Dominators$DfsWalker;-><init>(Lcom/android/dx/ssa/Dominators;)V

    #@3
    return-void
.end method


# virtual methods
.method public visitBlock(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)V
    .registers 6

    #@0
    new-instance v0, Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@2
    invoke-direct {v0}, Lcom/android/dx/ssa/Dominators$DFSInfo;-><init>()V

    #@5
    iget v1, p0, Lcom/android/dx/ssa/Dominators$DfsWalker;->dfsNum:I

    #@7
    add-int/lit8 v1, v1, 0x1

    #@9
    iput v1, p0, Lcom/android/dx/ssa/Dominators$DfsWalker;->dfsNum:I

    #@b
    iput v1, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    #@d
    iput-object p1, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->rep:Lcom/android/dx/ssa/SsaBasicBlock;

    #@f
    iput-object p2, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->parent:Lcom/android/dx/ssa/SsaBasicBlock;

    #@11
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators$DfsWalker;->this$0:Lcom/android/dx/ssa/Dominators;

    #@13
    # getter for: Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/dx/ssa/Dominators;->access$100(Lcom/android/dx/ssa/Dominators;)Ljava/util/ArrayList;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators$DfsWalker;->this$0:Lcom/android/dx/ssa/Dominators;

    #@1c
    # getter for: Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;
    invoke-static {v1}, Lcom/android/dx/ssa/Dominators;->access$200(Lcom/android/dx/ssa/Dominators;)[Lcom/android/dx/ssa/Dominators$DFSInfo;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    #@23
    move-result v2

    #@24
    aput-object v0, v1, v2

    #@26
    return-void
.end method
