.class Lcom/facebook/AuthorizationClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/AuthorizationClient$StartActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AuthorizationClient;->getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$2;->this$0:Lcom/facebook/AuthorizationClient;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/app/Activity;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$2;->this$0:Lcom/facebook/AuthorizationClient;

    #@2
    iget-object v0, v0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    #@4
    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Lcom/facebook/AuthorizationClient$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$2;->this$0:Lcom/facebook/AuthorizationClient;

    #@2
    iget-object v0, v0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    #@4
    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0, p1, p2}, Lcom/facebook/AuthorizationClient$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V

    #@b
    return-void
.end method
