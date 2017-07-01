.class Lcom/facebook/Session$AuthorizationRequest$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/AuthorizationClient$StartActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Session$AuthorizationRequest;->getAuthorizationClientRequest()Lcom/facebook/AuthorizationClient$AuthorizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/Session$AuthorizationRequest;


# direct methods
.method constructor <init>(Lcom/facebook/Session$AuthorizationRequest;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest$4;->this$0:Lcom/facebook/Session$AuthorizationRequest;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/app/Activity;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest$4;->this$0:Lcom/facebook/Session$AuthorizationRequest;

    #@2
    # getter for: Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;
    invoke-static {v0}, Lcom/facebook/Session$AuthorizationRequest;->access$1900(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/Session$StartActivityDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/facebook/Session$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest$4;->this$0:Lcom/facebook/Session$AuthorizationRequest;

    #@2
    # getter for: Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;
    invoke-static {v0}, Lcom/facebook/Session$AuthorizationRequest;->access$1900(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/Session$StartActivityDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1, p2}, Lcom/facebook/Session$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V

    #@9
    return-void
.end method
