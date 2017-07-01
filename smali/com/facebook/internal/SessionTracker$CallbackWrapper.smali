.class Lcom/facebook/internal/SessionTracker$CallbackWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/SessionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/SessionTracker;

.field private final wrapped:Lcom/facebook/Session$StatusCallback;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/SessionTracker;Lcom/facebook/Session$StatusCallback;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;->this$0:Lcom/facebook/internal/SessionTracker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-object p2, p0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;->wrapped:Lcom/facebook/Session$StatusCallback;

    #@7
    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;->wrapped:Lcom/facebook/Session$StatusCallback;

    #@2
    if-eqz v0, :cond_11

    #@4
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;->this$0:Lcom/facebook/internal/SessionTracker;

    #@6
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->isTracking()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_11

    #@c
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;->wrapped:Lcom/facebook/Session$StatusCallback;

    #@e
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/Session$StatusCallback;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    #@11
    :cond_11
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;->this$0:Lcom/facebook/internal/SessionTracker;

    #@13
    # getter for: Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;
    invoke-static {v0}, Lcom/facebook/internal/SessionTracker;->access$200(Lcom/facebook/internal/SessionTracker;)Lcom/facebook/Session;

    #@16
    move-result-object v0

    #@17
    if-ne p1, v0, :cond_25

    #@19
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_25

    #@1f
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;->this$0:Lcom/facebook/internal/SessionTracker;

    #@21
    const/4 v1, 0x0

    #@22
    invoke-virtual {v0, v1}, Lcom/facebook/internal/SessionTracker;->setSession(Lcom/facebook/Session;)V

    #@25
    :cond_25
    return-void
.end method
