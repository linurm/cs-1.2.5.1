.class Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;

.field final synthetic val$request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;->this$1:Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;

    #@2
    iput-object p2, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;->val$request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;->this$1:Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;

    #@2
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;->val$request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenCompleted(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;)V

    #@7
    return-void
.end method
