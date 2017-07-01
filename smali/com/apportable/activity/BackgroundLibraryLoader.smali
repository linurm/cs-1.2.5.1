.class public Lcom/apportable/activity/BackgroundLibraryLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/activity/BackgroundLibraryLoader$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/apportable/activity/BackgroundLibraryLoader$Callback;

.field private mLoadError:Ljava/lang/Throwable;

.field private mLoadFinished:Z

.field private mOnConfigurationChangedAction:Ljava/lang/Runnable;

.field private mOnCreateAction:Ljava/lang/Runnable;

.field private mOnNewIntentAction:Ljava/lang/Runnable;

.field private mOnResumeAction:Ljava/lang/Runnable;

.field private mOnStartAction:Ljava/lang/Runnable;

.field private mPausedNotLoaded:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/activity/BackgroundLibraryLoader;Ljava/lang/Throwable;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/activity/BackgroundLibraryLoader;->loadFinished(Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method private loadFinished(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mLoadError:Ljava/lang/Throwable;

    #@2
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mLoadFinished:Z

    #@5
    iget-boolean v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mPausedNotLoaded:Z

    #@7
    if-nez v0, :cond_c

    #@9
    invoke-direct {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->replayActions()V

    #@c
    :cond_c
    return-void
.end method

.method private replayActions()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    iget-boolean v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mLoadFinished:Z

    #@3
    if-eqz v0, :cond_12

    #@5
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mCallback:Lcom/apportable/activity/BackgroundLibraryLoader$Callback;

    #@7
    if-eqz v0, :cond_12

    #@9
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mCallback:Lcom/apportable/activity/BackgroundLibraryLoader$Callback;

    #@b
    iget-object v1, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mLoadError:Ljava/lang/Throwable;

    #@d
    invoke-interface {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader$Callback;->onFinished(Ljava/lang/Throwable;)V

    #@10
    iput-object v2, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mCallback:Lcom/apportable/activity/BackgroundLibraryLoader$Callback;

    #@12
    :cond_12
    invoke-virtual {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_4f

    #@18
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnCreateAction:Ljava/lang/Runnable;

    #@1a
    if-eqz v0, :cond_23

    #@1c
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnCreateAction:Ljava/lang/Runnable;

    #@1e
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@21
    iput-object v2, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnCreateAction:Ljava/lang/Runnable;

    #@23
    :cond_23
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnStartAction:Ljava/lang/Runnable;

    #@25
    if-eqz v0, :cond_2e

    #@27
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnStartAction:Ljava/lang/Runnable;

    #@29
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@2c
    iput-object v2, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnStartAction:Ljava/lang/Runnable;

    #@2e
    :cond_2e
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnNewIntentAction:Ljava/lang/Runnable;

    #@30
    if-eqz v0, :cond_39

    #@32
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnNewIntentAction:Ljava/lang/Runnable;

    #@34
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@37
    iput-object v2, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnNewIntentAction:Ljava/lang/Runnable;

    #@39
    :cond_39
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnResumeAction:Ljava/lang/Runnable;

    #@3b
    if-eqz v0, :cond_44

    #@3d
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnResumeAction:Ljava/lang/Runnable;

    #@3f
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@42
    iput-object v2, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnResumeAction:Ljava/lang/Runnable;

    #@44
    :cond_44
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnConfigurationChangedAction:Ljava/lang/Runnable;

    #@46
    if-eqz v0, :cond_4f

    #@48
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnConfigurationChangedAction:Ljava/lang/Runnable;

    #@4a
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@4d
    iput-object v2, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnConfigurationChangedAction:Ljava/lang/Runnable;

    #@4f
    :cond_4f
    return-void
.end method


# virtual methods
.method public isLoaded()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mLoadFinished:Z

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mLoadError:Ljava/lang/Throwable;

    #@6
    if-nez v0, :cond_e

    #@8
    iget-boolean v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mPausedNotLoaded:Z

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method public load(Landroid/app/Activity;Lcom/apportable/activity/BackgroundLibraryLoader$Callback;)V
    .registers 5

    #@0
    iput-object p2, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mCallback:Lcom/apportable/activity/BackgroundLibraryLoader$Callback;

    #@2
    invoke-static {}, Lcom/apportable/MainThread;->getHandler()Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Lcom/apportable/activity/BackgroundLibraryLoader$1;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/apportable/activity/BackgroundLibraryLoader$1;-><init>(Lcom/apportable/activity/BackgroundLibraryLoader;Landroid/app/Activity;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    return-void
.end method

.method public onConfigurationChanged(Ljava/lang/Runnable;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnConfigurationChangedAction:Ljava/lang/Runnable;

    #@2
    invoke-direct {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->replayActions()V

    #@5
    return-void
.end method

.method public onCreate(Ljava/lang/Runnable;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnCreateAction:Ljava/lang/Runnable;

    #@2
    invoke-direct {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->replayActions()V

    #@5
    return-void
.end method

.method public onDestroy(Ljava/lang/Runnable;)V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@9
    :cond_9
    return-void
.end method

.method public onNewIntent(Ljava/lang/Runnable;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnNewIntentAction:Ljava/lang/Runnable;

    #@2
    invoke-direct {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->replayActions()V

    #@5
    return-void
.end method

.method public onPause(Ljava/lang/Runnable;)V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mPausedNotLoaded:Z

    #@d
    goto :goto_9
.end method

.method public onRestart(Ljava/lang/Runnable;)V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@9
    :cond_9
    return-void
.end method

.method public onResume(Ljava/lang/Runnable;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mPausedNotLoaded:Z

    #@3
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnResumeAction:Ljava/lang/Runnable;

    #@5
    invoke-direct {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->replayActions()V

    #@8
    return-void
.end method

.method public onStart(Ljava/lang/Runnable;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader;->mOnStartAction:Ljava/lang/Runnable;

    #@2
    invoke-direct {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->replayActions()V

    #@5
    return-void
.end method

.method public onStop(Ljava/lang/Runnable;)V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@9
    :cond_9
    return-void
.end method
