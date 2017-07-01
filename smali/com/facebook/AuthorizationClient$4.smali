.class Lcom/facebook/AuthorizationClient$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AuthorizationClient;->createReauthValidationBatch(Lcom/facebook/AuthorizationClient$Result;)Lcom/facebook/RequestBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;

.field final synthetic val$declinedPermissions:Ljava/util/ArrayList;

.field final synthetic val$grantedPermissions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$4;->this$0:Lcom/facebook/AuthorizationClient;

    #@2
    iput-object p2, p0, Lcom/facebook/AuthorizationClient$4;->val$grantedPermissions:Ljava/util/ArrayList;

    #@4
    iput-object p3, p0, Lcom/facebook/AuthorizationClient$4;->val$declinedPermissions:Ljava/util/ArrayList;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .registers 5

    #@0
    :try_start_0
    invoke-static {p1}, Lcom/facebook/Session;->handlePermissionResponse(Lcom/facebook/Response;)Lcom/facebook/Session$PermissionsPair;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_18

    #@6
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$4;->val$grantedPermissions:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Lcom/facebook/Session$PermissionsPair;->getGrantedPermissions()Ljava/util/List;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@f
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$4;->val$declinedPermissions:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0}, Lcom/facebook/Session$PermissionsPair;->getDeclinedPermissions()Ljava/util/List;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    #@18
    :cond_18
    :goto_18
    return-void

    #@19
    :catch_19
    move-exception v0

    #@1a
    goto :goto_18
.end method
