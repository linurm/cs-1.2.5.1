.class Lcom/facebook/LoginActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/LoginActivity;


# direct methods
.method constructor <init>(Lcom/facebook/LoginActivity;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onBackgroundProcessingStarted()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;

    #@2
    const v1, 0x7f040018

    #@5
    invoke-virtual {v0, v1}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@d
    return-void
.end method

.method public onBackgroundProcessingStopped()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;

    #@2
    const v1, 0x7f040018

    #@5
    invoke-virtual {v0, v1}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    const/16 v1, 0x8

    #@b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@e
    return-void
.end method
