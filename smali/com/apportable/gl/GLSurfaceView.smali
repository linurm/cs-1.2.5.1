.class public Lcom/apportable/gl/GLSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/gl/GLSurfaceView$DefaultContextFactory;,
        Lcom/apportable/gl/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Lcom/apportable/gl/GLSurfaceView$EglHelper;,
        Lcom/apportable/gl/GLSurfaceView$NativeRenderer;
    }
.end annotation


# static fields
.field private static final LOG_EGL:Z

.field private static final LOG_PAUSE_RESUME:Z

.field private static final LOG_RENDERER:Z

.field private static final LOG_RENDERER_DRAW_FRAME:Z

.field private static final LOG_SURFACE:Z

.field private static final LOG_THREADS:Z


# instance fields
.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

.field private mExited:Z

.field private mFakeLayout:Z

.field private mFixedHeight:I

.field private mFixedWidth:I

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mHandler:Landroid/os/Handler;

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mLock:Ljava/lang/Object;

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mSizeChanged:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    #@0
    const/4 v1, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    #@5
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@c
    iput-object v3, p0, Lcom/apportable/gl/GLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    #@e
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mSizeChanged:Z

    #@11
    iput v1, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedWidth:I

    #@13
    iput v1, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedHeight:I

    #@15
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@18
    move-result-object v0

    #@19
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    #@1c
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@1f
    move-result-object v0

    #@20
    const-string v1, "apportable.opengles2"

    #@22
    const/4 v2, 0x0

    #@23
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2c

    #@29
    const/4 v0, 0x2

    #@2a
    iput v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLContextClientVersion:I

    #@2c
    :cond_2c
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    #@2e
    if-nez v0, :cond_37

    #@30
    new-instance v0, Lcom/apportable/gl/GLSurfaceView$DefaultContextFactory;

    #@32
    invoke-direct {v0, p0, v3}, Lcom/apportable/gl/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/apportable/gl/GLSurfaceView;Lcom/apportable/gl/GLSurfaceView$1;)V

    #@35
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    #@37
    :cond_37
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@39
    if-nez v0, :cond_42

    #@3b
    new-instance v0, Lcom/apportable/gl/GLSurfaceView$DefaultWindowSurfaceFactory;

    #@3d
    invoke-direct {v0, v3}, Lcom/apportable/gl/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/apportable/gl/GLSurfaceView$1;)V

    #@40
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@42
    :cond_42
    new-instance v0, Lcom/apportable/gl/GLSurfaceView$NativeRenderer;

    #@44
    invoke-direct {v0, p0, v3}, Lcom/apportable/gl/GLSurfaceView$NativeRenderer;-><init>(Lcom/apportable/gl/GLSurfaceView;Lcom/apportable/gl/GLSurfaceView$1;)V

    #@47
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    #@49
    invoke-static {}, Lcom/apportable/MainThread;->getHandler()Landroid/os/Handler;

    #@4c
    move-result-object v0

    #@4d
    new-instance v1, Lcom/apportable/gl/GLSurfaceView$1;

    #@4f
    invoke-direct {v1, p0}, Lcom/apportable/gl/GLSurfaceView$1;-><init>(Lcom/apportable/gl/GLSurfaceView;)V

    #@52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@55
    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    #@0
    invoke-static {}, Lcom/apportable/gl/GLSurfaceView;->nativeInit()V

    #@3
    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    #@0
    invoke-static {}, Lcom/apportable/gl/GLSurfaceView;->nativeOnSurfaceChanged()V

    #@3
    return-void
.end method

.method static synthetic access$1000(Lcom/apportable/gl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@2
    return-object v0
.end method

.method static synthetic access$502(Lcom/apportable/gl/GLSurfaceView;Lcom/apportable/gl/GLSurfaceView$EglHelper;)Lcom/apportable/gl/GLSurfaceView$EglHelper;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    #@2
    return-object p1
.end method

.method static synthetic access$700(Lcom/apportable/gl/GLSurfaceView;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/apportable/gl/GLSurfaceView;->readySurface()V

    #@3
    return-void
.end method

.method static synthetic access$800(Lcom/apportable/gl/GLSurfaceView;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLContextClientVersion:I

    #@2
    return v0
.end method

.method static synthetic access$900(Lcom/apportable/gl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    #@2
    return-object v0
.end method

.method private static native nativeInit()V
.end method

.method private static native nativeOnSurfaceChanged()V
.end method

.method private readySurface()V
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    iget-object v6, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v6

    #@5
    move v3, v4

    #@6
    move v2, v4

    #@7
    move v1, v4

    #@8
    :goto_8
    :try_start_8
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHasSurface:Z

    #@a
    if-nez v5, :cond_1f

    #@c
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mWaitingForSurface:Z

    #@e
    if-nez v5, :cond_1f

    #@10
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglSurface:Z

    #@12
    if-eqz v5, :cond_17

    #@14
    invoke-direct {p0}, Lcom/apportable/gl/GLSurfaceView;->stopEglSurfaceLocked()V

    #@17
    :cond_17
    const/4 v5, 0x1

    #@18
    iput-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mWaitingForSurface:Z

    #@1a
    iget-object v5, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@1c
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    #@1f
    :cond_1f
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHasSurface:Z

    #@21
    if-eqz v5, :cond_2f

    #@23
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mWaitingForSurface:Z

    #@25
    if-eqz v5, :cond_2f

    #@27
    const/4 v5, 0x0

    #@28
    iput-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mWaitingForSurface:Z

    #@2a
    iget-object v5, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@2c
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    #@2f
    :cond_2f
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHasSurface:Z

    #@31
    if-eqz v5, :cond_8c

    #@33
    iget v5, p0, Lcom/apportable/gl/GLSurfaceView;->mWidth:I

    #@35
    if-lez v5, :cond_8c

    #@37
    iget v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHeight:I

    #@39
    if-lez v5, :cond_8c

    #@3b
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglContext:Z
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_89

    #@3d
    if-nez v5, :cond_4d

    #@3f
    :try_start_3f
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    #@41
    invoke-virtual {v1}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->start()V
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_44} :catch_87
    .catchall {:try_start_3f .. :try_end_44} :catchall_89

    #@44
    const/4 v1, 0x1

    #@45
    :try_start_45
    iput-boolean v1, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglContext:Z

    #@47
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@49
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    #@4c
    move v1, v0

    #@4d
    :cond_4d
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglContext:Z

    #@4f
    if-eqz v5, :cond_5a

    #@51
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglSurface:Z

    #@53
    if-nez v5, :cond_5a

    #@55
    const/4 v2, 0x1

    #@56
    iput-boolean v2, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglSurface:Z

    #@58
    move v2, v0

    #@59
    move v3, v0

    #@5a
    :cond_5a
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglSurface:Z

    #@5c
    if-eqz v5, :cond_8c

    #@5e
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mSizeChanged:Z

    #@60
    if-eqz v5, :cond_ad

    #@62
    iget v3, p0, Lcom/apportable/gl/GLSurfaceView;->mWidth:I

    #@64
    iget v4, p0, Lcom/apportable/gl/GLSurfaceView;->mHeight:I

    #@66
    const/4 v5, 0x0

    #@67
    iput-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mSizeChanged:Z

    #@69
    move v5, v4

    #@6a
    move v4, v3

    #@6b
    move v3, v0

    #@6c
    :goto_6c
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@6e
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    #@71
    monitor-exit v6
    :try_end_72
    .catchall {:try_start_45 .. :try_end_72} :catchall_89

    #@72
    if-eqz v2, :cond_96

    #@74
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    #@76
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v0, v2}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    #@7d
    move-result-object v0

    #@7e
    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    #@80
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    #@82
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    #@84
    if-nez v0, :cond_96

    #@86
    :cond_86
    :goto_86
    return-void

    #@87
    :catch_87
    move-exception v0

    #@88
    :try_start_88
    throw v0

    #@89
    :catchall_89
    move-exception v0

    #@8a
    monitor-exit v6
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_89

    #@8b
    throw v0

    #@8c
    :cond_8c
    :try_start_8c
    iget-object v5, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@8e
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_8c .. :try_end_91} :catch_93
    .catchall {:try_start_8c .. :try_end_91} :catchall_89

    #@91
    goto/16 :goto_8

    #@93
    :catch_93
    move-exception v5

    #@94
    goto/16 :goto_8

    #@96
    :cond_96
    if-eqz v1, :cond_a3

    #@98
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    #@9a
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    #@9c
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    #@9e
    iget-object v2, v2, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@a0
    invoke-interface {v0, v1, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    #@a3
    :cond_a3
    if-eqz v3, :cond_86

    #@a5
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    #@a7
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    #@a9
    invoke-interface {v0, v1, v4, v5}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    #@ac
    goto :goto_86

    #@ad
    :cond_ad
    move v5, v4

    #@ae
    goto :goto_6c
.end method

.method private stopEglSurfaceLocked()V
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglSurface:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglSurface:Z

    #@7
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    #@9
    invoke-virtual {v0}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->destroySurface()V

    #@c
    :cond_c
    return-void
.end method


# virtual methods
.method public createSharedContext(ILjavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 6

    #@0
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->createSharedContext(ILjavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    #@8
    move-result-object v0

    #@9
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@b
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    #@12
    throw v0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGLContext;)Z
    .registers 5

    #@0
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    #@5
    invoke-virtual {v0, p1}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->destroyContext(Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@8
    move-result v0

    #@9
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@b
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    #@e
    monitor-exit v1

    #@f
    return v0

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    #@12
    throw v0
.end method

.method public getPrimaryContext()Ljavax/microedition/khronos/egl/EGLContext;
    .registers 4

    #@0
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    #@5
    invoke-virtual {v0}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->getPrimaryContext()Ljavax/microedition/khronos/egl/EGLContext;

    #@8
    move-result-object v0

    #@9
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@b
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    #@12
    throw v0
.end method

.method public makeCurrentContext(Ljavax/microedition/khronos/egl/EGLContext;)Z
    .registers 5

    #@0
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    #@5
    invoke-virtual {v0, p1}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->makeCurrentContext(Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@8
    move-result v0

    #@9
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@b
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    #@e
    monitor-exit v1

    #@f
    return v0

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    #@12
    throw v0
.end method

.method public onLayout(ZIIII)V
    .registers 9

    #@0
    if-eqz p1, :cond_6

    #@2
    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mFakeLayout:Z

    #@4
    if-eqz v0, :cond_7

    #@6
    :cond_6
    :goto_6
    return-void

    #@7
    :cond_7
    iget v0, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedWidth:I

    #@9
    if-lez v0, :cond_39

    #@b
    iget v0, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedHeight:I

    #@d
    if-lez v0, :cond_39

    #@f
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@12
    move-result-object v0

    #@13
    iget v1, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedWidth:I

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    iget v2, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedHeight:I

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    #@1e
    const/4 v0, 0x1

    #@1f
    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mFakeLayout:Z

    #@21
    add-int/lit8 v0, p4, 0x1

    #@23
    add-int/lit8 v1, p5, 0x1

    #@25
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/apportable/gl/GLSurfaceView;->layout(IIII)V

    #@28
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@2b
    move-result-object v0

    #@2c
    iget v1, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedWidth:I

    #@2e
    iget v2, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedHeight:I

    #@30
    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    #@33
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/apportable/gl/GLSurfaceView;->layout(IIII)V

    #@36
    const/4 v0, 0x0

    #@37
    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mFakeLayout:Z

    #@39
    :cond_39
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    #@3c
    goto :goto_6
.end method

.method public onWindowResize(II)V
    .registers 5

    #@0
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iput p1, p0, Lcom/apportable/gl/GLSurfaceView;->mWidth:I

    #@5
    iput p2, p0, Lcom/apportable/gl/GLSurfaceView;->mHeight:I

    #@7
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mSizeChanged:Z

    #@a
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@c
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    #@f
    monitor-exit v1

    #@10
    return-void

    #@11
    :catchall_11
    move-exception v0

    #@12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    #@13
    throw v0
.end method

.method public setFixedSize(II)V
    .registers 4

    #@0
    iput p1, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedWidth:I

    #@2
    iput p2, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedHeight:I

    #@4
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    #@b
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6

    #@0
    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mFakeLayout:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    invoke-virtual {p0, p3, p4}, Lcom/apportable/gl/GLSurfaceView;->onWindowResize(II)V

    #@8
    invoke-static {p1, p2, p3, p4}, Lcom/apportable/Lifecycle;->onContextSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@b
    goto :goto_4
.end method

.method public surfaceCreated()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    const/4 v0, 0x1

    #@4
    :try_start_4
    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mHasSurface:Z

    #@6
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    #@b
    :goto_b
    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mWaitingForSurface:Z

    #@d
    if-eqz v0, :cond_25

    #@f
    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mExited:Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_22

    #@11
    if-nez v0, :cond_25

    #@13
    :try_start_13
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@15
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_19
    .catchall {:try_start_13 .. :try_end_18} :catchall_22

    #@18
    goto :goto_b

    #@19
    :catch_19
    move-exception v0

    #@1a
    :try_start_1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@21
    goto :goto_b

    #@22
    :catchall_22
    move-exception v0

    #@23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    #@24
    throw v0

    #@25
    :cond_25
    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_22

    #@26
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->surfaceCreated()V

    #@3
    invoke-static {p1}, Lcom/apportable/Lifecycle;->onContextSurfaceCreated(Landroid/view/SurfaceHolder;)V

    #@6
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@8
    const-string v1, "SM-T210"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_24

    #@10
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@12
    const-string v1, "SM-T211"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_24

    #@1a
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@1c
    const-string v1, "SM-T215"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2f

    #@24
    :cond_24
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@27
    move-result-object v0

    #@28
    iget v1, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedWidth:I

    #@2a
    iget v2, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedHeight:I

    #@2c
    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    #@2f
    :cond_2f
    return-void
.end method

.method public surfaceDestroyed()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    const/4 v0, 0x0

    #@4
    :try_start_4
    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mHasSurface:Z

    #@6
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    #@b
    :goto_b
    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mWaitingForSurface:Z

    #@d
    if-nez v0, :cond_25

    #@f
    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mExited:Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_22

    #@11
    if-nez v0, :cond_25

    #@13
    :try_start_13
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    #@15
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_19
    .catchall {:try_start_13 .. :try_end_18} :catchall_22

    #@18
    goto :goto_b

    #@19
    :catch_19
    move-exception v0

    #@1a
    :try_start_1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@21
    goto :goto_b

    #@22
    :catchall_22
    move-exception v0

    #@23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    #@24
    throw v0

    #@25
    :cond_25
    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_22

    #@26
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    #@0
    invoke-static {p1}, Lcom/apportable/Lifecycle;->onContextSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    #@3
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->surfaceDestroyed()V

    #@6
    return-void
.end method

.method public swapBuffers()Z
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    #@2
    invoke-virtual {v0}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->swap()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_2a

    #@8
    const-string v0, "Shared Context"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v2, "lost context on thread"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    #@1c
    move-result-wide v2

    #@1d
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    const/4 v0, 0x0

    #@29
    :goto_29
    return v0

    #@2a
    :cond_2a
    const/4 v0, 0x1

    #@2b
    goto :goto_29
.end method
