.class final Lcom/facebook/Settings$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Settings;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/facebook/Request$Callback;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/facebook/Settings$2;->val$applicationContext:Landroid/content/Context;

    #@2
    iput-object p2, p0, Lcom/facebook/Settings$2;->val$applicationId:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lcom/facebook/Settings$2;->val$callback:Lcom/facebook/Request$Callback;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/Settings$2;->val$applicationContext:Landroid/content/Context;

    #@2
    iget-object v1, p0, Lcom/facebook/Settings$2;->val$applicationId:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lcom/facebook/Settings;->publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/Response;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lcom/facebook/Settings$2;->val$callback:Lcom/facebook/Request$Callback;

    #@a
    if-eqz v1, :cond_1d

    #@c
    new-instance v1, Landroid/os/Handler;

    #@e
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@11
    move-result-object v2

    #@12
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@15
    new-instance v2, Lcom/facebook/Settings$2$1;

    #@17
    invoke-direct {v2, p0, v0}, Lcom/facebook/Settings$2$1;-><init>(Lcom/facebook/Settings$2;Lcom/facebook/Response;)V

    #@1a
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1d
    :cond_1d
    return-void
.end method
