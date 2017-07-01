.class Lcom/facebook/widget/PlacePickerFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/PlacePickerFragment;->onSearchTextTimerTriggered()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/PlacePickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PlacePickerFragment;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    #@0
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, v1}, Lcom/facebook/widget/PlacePickerFragment;->loadData(Z)V
    :try_end_8
    .catch Lcom/facebook/FacebookException; {:try_start_2 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_28
    .catchall {:try_start_2 .. :try_end_8} :catchall_4c

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :catch_9
    move-exception v0

    #@a
    if-eqz v0, :cond_8

    #@c
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    #@e
    invoke-virtual {v1}, Lcom/facebook/widget/PlacePickerFragment;->getOnErrorListener()Lcom/facebook/widget/PickerFragment$OnErrorListener;

    #@11
    move-result-object v1

    #@12
    if-eqz v1, :cond_1a

    #@14
    iget-object v2, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    #@16
    invoke-interface {v1, v2, v0}, Lcom/facebook/widget/PickerFragment$OnErrorListener;->onError(Lcom/facebook/widget/PickerFragment;Lcom/facebook/FacebookException;)V

    #@19
    goto :goto_8

    #@1a
    :cond_1a
    sget-object v1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    #@1c
    const-string v2, "PlacePickerFragment"

    #@1e
    const-string v3, "Error loading data : %s"

    #@20
    new-array v4, v4, [Ljava/lang/Object;

    #@22
    aput-object v0, v4, v5

    #@24
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@27
    goto :goto_8

    #@28
    :catch_28
    move-exception v0

    #@29
    :try_start_29
    new-instance v1, Lcom/facebook/FacebookException;

    #@2b
    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_4c

    #@2e
    if-eqz v1, :cond_8

    #@30
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    #@32
    invoke-virtual {v0}, Lcom/facebook/widget/PlacePickerFragment;->getOnErrorListener()Lcom/facebook/widget/PickerFragment$OnErrorListener;

    #@35
    move-result-object v0

    #@36
    if-eqz v0, :cond_3e

    #@38
    iget-object v2, p0, Lcom/facebook/widget/PlacePickerFragment$3;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    #@3a
    invoke-interface {v0, v2, v1}, Lcom/facebook/widget/PickerFragment$OnErrorListener;->onError(Lcom/facebook/widget/PickerFragment;Lcom/facebook/FacebookException;)V

    #@3d
    goto :goto_8

    #@3e
    :cond_3e
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    #@40
    const-string v2, "PlacePickerFragment"

    #@42
    const-string v3, "Error loading data : %s"

    #@44
    new-array v4, v4, [Ljava/lang/Object;

    #@46
    aput-object v1, v4, v5

    #@48
    invoke-static {v0, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@4b
    goto :goto_8

    #@4c
    :catchall_4c
    move-exception v0

    #@4d
    throw v0
.end method
