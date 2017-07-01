.class public Lcom/apportable/app/VerdeApplication;
.super Landroid/app/Application;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sApp:Lcom/apportable/app/VerdeApplication;


# instance fields
.field private mGLView:Lcom/apportable/gl/GLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "APPLICATION"

    #@2
    sput-object v0, Lcom/apportable/app/VerdeApplication;->TAG:Ljava/lang/String;

    #@4
    invoke-static {}, Lcom/apportable/Lifecycle;->onApplicationConstruct()V

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/apportable/app/VerdeApplication;->mGLView:Lcom/apportable/gl/GLSurfaceView;

    #@6
    sput-object p0, Lcom/apportable/app/VerdeApplication;->sApp:Lcom/apportable/app/VerdeApplication;

    #@8
    invoke-static {p0}, Lcom/apportable/Lifecycle;->onApplicationInit(Lcom/apportable/app/VerdeApplication;)V

    #@b
    return-void
.end method

.method public static getApplication()Lcom/apportable/app/VerdeApplication;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/app/VerdeApplication;->sApp:Lcom/apportable/app/VerdeApplication;

    #@2
    return-object v0
.end method

.method private loadLifecycleListeners()V
    .registers 10

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@4
    move-result-object v0

    #@5
    if-eqz v0, :cond_47

    #@7
    const-string v1, "apportable.app.lifecycle_listeners"

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_47

    #@f
    const-string v1, "apportable.app.lifecycle_listeners"

    #@11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    const-string v1, "\\s+"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    move-object v3, v0

    #@1c
    :goto_1c
    if-eqz v3, :cond_4a

    #@1e
    array-length v4, v3

    #@1f
    move v1, v2

    #@20
    :goto_20
    if-ge v1, v4, :cond_4a

    #@22
    aget-object v5, v3, v1

    #@24
    :try_start_24
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/apportable/Lifecycle$Listener;

    #@2e
    invoke-static {v0}, Lcom/apportable/Lifecycle;->addLifecycleListener(Lcom/apportable/Lifecycle$Listener;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_31} :catch_35

    #@31
    :goto_31
    add-int/lit8 v0, v1, 0x1

    #@33
    move v1, v0

    #@34
    goto :goto_20

    #@35
    :catch_35
    move-exception v0

    #@36
    sget-object v6, Lcom/apportable/app/VerdeApplication;->TAG:Ljava/lang/String;

    #@38
    const-string v7, "Failed to register Lifecycle Listener %s"

    #@3a
    const/4 v8, 0x1

    #@3b
    new-array v8, v8, [Ljava/lang/Object;

    #@3d
    aput-object v5, v8, v2

    #@3f
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@46
    goto :goto_31

    #@47
    :cond_47
    const/4 v0, 0x0

    #@48
    move-object v3, v0

    #@49
    goto :goto_1c

    #@4a
    :cond_4a
    return-void
.end method


# virtual methods
.method public getSurface()Lcom/apportable/gl/GLSurfaceView;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/app/VerdeApplication;->mGLView:Lcom/apportable/gl/GLSurfaceView;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Lcom/apportable/gl/GLSurfaceView;

    #@6
    invoke-direct {v0, p0}, Lcom/apportable/gl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    #@9
    iput-object v0, p0, Lcom/apportable/app/VerdeApplication;->mGLView:Lcom/apportable/gl/GLSurfaceView;

    #@b
    :cond_b
    iget-object v0, p0, Lcom/apportable/app/VerdeApplication;->mGLView:Lcom/apportable/gl/GLSurfaceView;

    #@d
    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .registers 2

    #@0
    const-string v0, "window"

    #@2
    invoke-virtual {p0, v0}, Lcom/apportable/app/VerdeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/WindowManager;

    #@8
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/apportable/Lifecycle;->onApplicationConfigurationChanged(Lcom/apportable/app/VerdeApplication;Landroid/content/res/Configuration;)V

    #@3
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@6
    return-void
.end method

.method public onCreate()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    #@3
    sget-object v0, Lcom/apportable/app/VerdeApplication;->TAG:Ljava/lang/String;

    #@5
    const-string v1, "Loading lifecycle listeners"

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    invoke-direct {p0}, Lcom/apportable/app/VerdeApplication;->loadLifecycleListeners()V

    #@d
    invoke-static {p0}, Lcom/apportable/Lifecycle;->onApplicationCreate(Lcom/apportable/app/VerdeApplication;)V

    #@10
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    #@0
    invoke-static {p0}, Lcom/apportable/Lifecycle;->onApplicationLowMemory(Lcom/apportable/app/VerdeApplication;)V

    #@3
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    #@6
    return-void
.end method

.method public onTerminate()V
    .registers 1

    #@0
    invoke-static {p0}, Lcom/apportable/Lifecycle;->onApplicationTerminate(Lcom/apportable/app/VerdeApplication;)V

    #@3
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    #@6
    return-void
.end method
