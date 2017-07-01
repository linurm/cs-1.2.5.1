.class final Lcom/facebook/AppLinkData$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$applicationIdCopy:Ljava/lang/String;

.field final synthetic val$completionHandler:Lcom/facebook/AppLinkData$CompletionHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/facebook/AppLinkData$1;->val$applicationContext:Landroid/content/Context;

    #@2
    iput-object p2, p0, Lcom/facebook/AppLinkData$1;->val$applicationIdCopy:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lcom/facebook/AppLinkData$1;->val$completionHandler:Lcom/facebook/AppLinkData$CompletionHandler;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/AppLinkData$1;->val$applicationContext:Landroid/content/Context;

    #@2
    iget-object v1, p0, Lcom/facebook/AppLinkData$1;->val$applicationIdCopy:Ljava/lang/String;

    #@4
    iget-object v2, p0, Lcom/facebook/AppLinkData$1;->val$completionHandler:Lcom/facebook/AppLinkData$CompletionHandler;

    #@6
    # invokes: Lcom/facebook/AppLinkData;->fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
    invoke-static {v0, v1, v2}, Lcom/facebook/AppLinkData;->access$000(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V

    #@9
    return-void
.end method
