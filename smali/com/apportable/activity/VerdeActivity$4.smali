.class Lcom/apportable/activity/VerdeActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$4;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeOnCreate()V
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->access$300()V

    #@4
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$4;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@6
    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->getIntent()Landroid/content/Intent;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@d
    move-result-object v1

    #@e
    if-eqz v1, :cond_17

    #@10
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeHandleUri(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$400(Ljava/lang/String;)V

    #@17
    :cond_17
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$4;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@21
    # getter for: Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/apportable/activity/VerdeActivity;->access$200(Lcom/apportable/activity/VerdeActivity;)Landroid/widget/FrameLayout;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    #@28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2a
    const/16 v1, 0xb

    #@2c
    if-le v0, v1, :cond_39

    #@2e
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$4;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@30
    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->getWindow()Landroid/view/Window;

    #@33
    move-result-object v0

    #@34
    const/high16 v1, 0x1000000

    #@36
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    #@39
    :cond_39
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@3c
    move-result-object v0

    #@3d
    const-string v1, "apportable.updater"

    #@3f
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@42
    move-result v1

    #@43
    if-eqz v1, :cond_a8

    #@45
    const-string v1, "apportable.updater"

    #@47
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    move-object v1, v0

    #@4c
    :goto_4c
    if-eqz v1, :cond_9e

    #@4e
    :try_start_4e
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@51
    move-result-object v0

    #@52
    const/4 v2, 0x0

    #@53
    new-array v2, v2, [Ljava/lang/Class;

    #@55
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@58
    move-result-object v0

    #@59
    const/4 v2, 0x0

    #@5a
    new-array v2, v2, [Ljava/lang/Object;

    #@5c
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    move-result-object v0

    #@60
    check-cast v0, Landroid/os/AsyncTask;

    #@62
    # getter for: Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->access$500()Ljava/lang/String;

    #@65
    move-result-object v2

    #@66
    new-instance v3, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string v4, "Updater "

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    const-string v3, " will now check for updates."

    #@77
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    const/4 v1, 0x1

    #@83
    new-array v1, v1, [Landroid/app/Activity;

    #@85
    const/4 v2, 0x0

    #@86
    iget-object v3, p0, Lcom/apportable/activity/VerdeActivity$4;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@88
    aput-object v3, v1, v2

    #@8a
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_8d} :catch_93

    #@8d
    :goto_8d
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$4;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@8f
    invoke-static {v0}, Lcom/apportable/Lifecycle;->onActivityCreate(Lcom/apportable/activity/VerdeActivity;)V

    #@92
    return-void

    #@93
    :catch_93
    move-exception v0

    #@94
    # getter for: Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->access$500()Ljava/lang/String;

    #@97
    move-result-object v1

    #@98
    const-string v2, "Exception while creating updater object.  Will continue without update!"

    #@9a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9d
    goto :goto_8d

    #@9e
    :cond_9e
    # getter for: Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->access$500()Ljava/lang/String;

    #@a1
    move-result-object v0

    #@a2
    const-string v1, "No updater."

    #@a4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    goto :goto_8d

    #@a8
    :cond_a8
    const/4 v0, 0x0

    #@a9
    move-object v1, v0

    #@aa
    goto :goto_4c
.end method
