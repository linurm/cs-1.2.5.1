.class Lcom/facebook/Session$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Session;->refreshPermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/Session;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/facebook/Session;->handlePermissionResponse(Lcom/facebook/Response;)Lcom/facebook/Session$PermissionsPair;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_33

    #@6
    iget-object v1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    #@8
    # getter for: Lcom/facebook/Session;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/facebook/Session;->access$200(Lcom/facebook/Session;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    monitor-enter v1

    #@d
    :try_start_d
    iget-object v2, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    #@f
    iget-object v3, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    #@11
    # getter for: Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
    invoke-static {v3}, Lcom/facebook/Session;->access$300(Lcom/facebook/Session;)Lcom/facebook/AccessToken;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v0}, Lcom/facebook/Session$PermissionsPair;->getGrantedPermissions()Ljava/util/List;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v0}, Lcom/facebook/Session$PermissionsPair;->getDeclinedPermissions()Ljava/util/List;

    #@1c
    move-result-object v0

    #@1d
    invoke-static {v3, v4, v0}, Lcom/facebook/AccessToken;->createFromTokenWithRefreshedPermissions(Lcom/facebook/AccessToken;Ljava/util/List;Ljava/util/List;)Lcom/facebook/AccessToken;

    #@20
    move-result-object v0

    #@21
    # setter for: Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
    invoke-static {v2, v0}, Lcom/facebook/Session;->access$302(Lcom/facebook/Session;Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;

    #@24
    iget-object v0, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    #@26
    iget-object v2, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    #@28
    # getter for: Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
    invoke-static {v2}, Lcom/facebook/Session;->access$400(Lcom/facebook/Session;)Lcom/facebook/SessionState;

    #@2b
    move-result-object v2

    #@2c
    sget-object v3, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    #@2e
    const/4 v4, 0x0

    #@2f
    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    #@32
    monitor-exit v1

    #@33
    :cond_33
    return-void

    #@34
    :catchall_34
    move-exception v0

    #@35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_34

    #@36
    throw v0
.end method
