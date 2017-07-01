.class abstract Lcom/facebook/AuthorizationClient$KatanaAuthHandler;
.super Lcom/facebook/AuthorizationClient$AuthHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "KatanaAuthHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$KatanaAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    #@2
    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$AuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    #@5
    return-void
.end method


# virtual methods
.method protected tryIntent(Landroid/content/Intent;I)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    #@6
    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient;->getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1, p1, p2}, Lcom/facebook/AuthorizationClient$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_d} :catch_f

    #@d
    const/4 v0, 0x1

    #@e
    goto :goto_3

    #@f
    :catch_f
    move-exception v1

    #@10
    goto :goto_3
.end method
