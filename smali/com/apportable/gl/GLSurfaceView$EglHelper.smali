.class Lcom/apportable/gl/GLSurfaceView$EglHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/gl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglHelper"
.end annotation


# instance fields
.field private mCurrentSharedContext:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljavax/microedition/khronos/egl/EGLContext;",
            ">;"
        }
    .end annotation
.end field

.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mHasValidConfig:Z

.field private mSharedPBufferSurfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljavax/microedition/khronos/egl/EGLContext;",
            "Ljavax/microedition/khronos/egl/EGLSurface;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/apportable/gl/GLSurfaceView;


# direct methods
.method private constructor <init>(Lcom/apportable/gl/GLSurfaceView;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mSharedPBufferSurfaces:Ljava/util/HashMap;

    #@c
    new-instance v0, Ljava/lang/ThreadLocal;

    #@e
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@11
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mCurrentSharedContext:Ljava/lang/ThreadLocal;

    #@13
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mHasValidConfig:Z

    #@16
    return-void
.end method

.method synthetic constructor <init>(Lcom/apportable/gl/GLSurfaceView;Lcom/apportable/gl/GLSurfaceView$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/gl/GLSurfaceView$EglHelper;-><init>(Lcom/apportable/gl/GLSurfaceView;)V

    #@3
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@2
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    #@5
    move-result v0

    #@6
    invoke-direct {p0, p1, v0}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    #@9
    return-void
.end method

.method private throwEglException(Ljava/lang/String;I)V
    .registers 6

    #@0
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string v2, " failed"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0
.end method


# virtual methods
.method public createSharedContext(ILjavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 10

    #@0
    const/16 v6, 0x3000

    #@2
    const/4 v1, 0x0

    #@3
    monitor-enter p0

    #@4
    const/4 v0, 0x3

    #@5
    :try_start_5
    new-array v2, v0, [I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_45

    #@7
    const/4 v0, 0x0

    #@8
    const/16 v3, 0x3098

    #@a
    aput v3, v2, v0

    #@c
    const/4 v0, 0x1

    #@d
    :try_start_d
    iget-object v3, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@f
    # getter for: Lcom/apportable/gl/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v3}, Lcom/apportable/gl/GLSurfaceView;->access$800(Lcom/apportable/gl/GLSurfaceView;)I

    #@12
    move-result v3

    #@13
    aput v3, v2, v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_45

    #@15
    const/4 v0, 0x2

    #@16
    const/16 v3, 0x3038

    #@18
    aput v3, v2, v0

    #@1a
    :try_start_1a
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    #@20
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_45

    #@23
    move-result v3

    #@24
    if-eq v3, v6, :cond_29

    #@26
    move-object v0, v1

    #@27
    :goto_27
    monitor-exit p0

    #@28
    return-object v0

    #@29
    :cond_29
    :try_start_29
    iget-object v3, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@2b
    iget-object v4, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@2d
    iget-object v5, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@2f
    # getter for: Lcom/apportable/gl/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v5}, Lcom/apportable/gl/GLSurfaceView;->access$800(Lcom/apportable/gl/GLSurfaceView;)I

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_41

    #@35
    :goto_35
    invoke-interface {v0, v3, v4, p2, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    #@38
    move-result-object v2

    #@39
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_45

    #@3c
    move-result v0

    #@3d
    if-eq v0, v6, :cond_43

    #@3f
    move-object v0, v1

    #@40
    goto :goto_27

    #@41
    :cond_41
    move-object v2, v1

    #@42
    goto :goto_35

    #@43
    :cond_43
    move-object v0, v2

    #@44
    goto :goto_27

    #@45
    :catchall_45
    move-exception v0

    #@46
    monitor-exit p0

    #@47
    throw v0
.end method

.method public createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .registers 13

    #@0
    const/4 v10, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@4
    if-nez v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    const-string v1, "egl not initialized"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@10
    if-nez v0, :cond_1a

    #@12
    new-instance v0, Ljava/lang/RuntimeException;

    #@14
    const-string v1, "eglDisplay not initialized"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    :cond_1a
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@1c
    if-nez v0, :cond_26

    #@1e
    new-instance v0, Ljava/lang/RuntimeException;

    #@20
    const-string v1, "mEglConfig not initialized"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    :cond_26
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@28
    if-eqz v0, :cond_4c

    #@2a
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@2c
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@2e
    if-eq v0, v1, :cond_4c

    #@30
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@32
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@34
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@36
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@38
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    #@3a
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@3d
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@3f
    # getter for: Lcom/apportable/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lcom/apportable/gl/GLSurfaceView;->access$1000(Lcom/apportable/gl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@42
    move-result-object v0

    #@43
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@45
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@47
    iget-object v3, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@49
    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    #@4c
    :cond_4c
    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mHasValidConfig:Z

    #@4e
    if-eqz v0, :cond_91

    #@50
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@52
    # getter for: Lcom/apportable/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lcom/apportable/gl/GLSurfaceView;->access$1000(Lcom/apportable/gl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@55
    move-result-object v0

    #@56
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@58
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@5a
    iget-object v3, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@5c
    invoke-interface {v0, v1, v2, v3, p1}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    #@5f
    move-result-object v0

    #@60
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@62
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@64
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    #@67
    move-result v0

    #@68
    const/16 v1, 0x3000

    #@6a
    if-eq v0, v1, :cond_91

    #@6c
    const-string v1, "Apportable"

    #@6e
    new-instance v2, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string v3, "createWindowSurface failed with "

    #@75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v2

    #@81
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    iput-boolean v8, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mHasValidConfig:Z

    #@86
    const/16 v1, 0x300b

    #@88
    if-ne v0, v1, :cond_91

    #@8a
    const-string v0, "Apportable"

    #@8c
    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    #@8e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    :cond_91
    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mHasValidConfig:Z

    #@93
    if-nez v0, :cond_104

    #@95
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@97
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@99
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@9b
    iget-object v3, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@9d
    # getter for: Lcom/apportable/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v3}, Lcom/apportable/gl/GLSurfaceView;->access$1000(Lcom/apportable/gl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@a0
    move-result-object v4

    #@a1
    iget-object v3, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@a3
    # getter for: Lcom/apportable/gl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;
    invoke-static {v3}, Lcom/apportable/gl/GLSurfaceView;->access$900(Lcom/apportable/gl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    #@a6
    move-result-object v5

    #@a7
    move-object v3, p1

    #@a8
    invoke-static/range {v0 .. v5}, Lcom/apportable/utils/Utils;->choosePreferredConfigOrder(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/SurfaceHolder;Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;Landroid/opengl/GLSurfaceView$EGLContextFactory;)[Ljavax/microedition/khronos/egl/EGLConfig;

    #@ab
    move-result-object v9

    #@ac
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@af
    move-result-object v0

    #@b0
    const-string v1, "apportable.surface_config_id"

    #@b2
    const/4 v2, -0x1

    #@b3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@b6
    move-result v0

    #@b7
    if-ltz v0, :cond_12a

    #@b9
    const-string v1, "Apportable"

    #@bb
    new-instance v2, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string v3, "Testing config "

    #@c2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v2

    #@c6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v2

    #@ca
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v2

    #@ce
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d1
    aget-object v0, v9, v0

    #@d3
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@d5
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@d7
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@d9
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@db
    iget-object v3, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@dd
    iget-object v4, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@df
    # getter for: Lcom/apportable/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v4}, Lcom/apportable/gl/GLSurfaceView;->access$1000(Lcom/apportable/gl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@e2
    move-result-object v5

    #@e3
    iget-object v4, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@e5
    # getter for: Lcom/apportable/gl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;
    invoke-static {v4}, Lcom/apportable/gl/GLSurfaceView;->access$900(Lcom/apportable/gl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    #@e8
    move-result-object v6

    #@e9
    move-object v4, p1

    #@ea
    invoke-static/range {v0 .. v6}, Lcom/apportable/utils/Utils;->tryEglConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLConfig;Landroid/view/SurfaceHolder;Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;Landroid/opengl/GLSurfaceView$EGLContextFactory;)[Ljava/lang/Object;

    #@ed
    move-result-object v1

    #@ee
    aget-object v0, v1, v8

    #@f0
    check-cast v0, Ljavax/microedition/khronos/egl/EGLContext;

    #@f2
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@f4
    aget-object v0, v1, v10

    #@f6
    check-cast v0, Ljavax/microedition/khronos/egl/EGLSurface;

    #@f8
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@fa
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@fc
    if-eqz v0, :cond_104

    #@fe
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@100
    if-eqz v0, :cond_104

    #@102
    iput-boolean v10, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mHasValidConfig:Z

    #@104
    :cond_104
    :goto_104
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mCurrentSharedContext:Ljava/lang/ThreadLocal;

    #@106
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@109
    move-result-object v0

    #@10a
    check-cast v0, Ljavax/microedition/khronos/egl/EGLContext;

    #@10c
    if-eqz v0, :cond_123

    #@10e
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@110
    if-ne v0, v1, :cond_185

    #@112
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@114
    :goto_114
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@116
    iget-object v3, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@118
    invoke-interface {v2, v3, v1, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@11b
    move-result v0

    #@11c
    if-nez v0, :cond_123

    #@11e
    const-string v0, "eglMakeCurrent"

    #@120
    invoke-direct {p0, v0}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    #@123
    :cond_123
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@125
    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    #@128
    move-result-object v0

    #@129
    return-object v0

    #@12a
    :cond_12a
    const-string v0, "Apportable"

    #@12c
    new-instance v1, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    const-string v2, "About to try "

    #@133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v1

    #@137
    array-length v2, v9

    #@138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v1

    #@13c
    const-string v2, " configurations"

    #@13e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v1

    #@142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@145
    move-result-object v1

    #@146
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@149
    move v7, v8

    #@14a
    :goto_14a
    array-length v0, v9

    #@14b
    if-ge v7, v0, :cond_104

    #@14d
    aget-object v0, v9, v7

    #@14f
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@151
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@153
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@155
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@157
    iget-object v3, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@159
    iget-object v4, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@15b
    # getter for: Lcom/apportable/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v4}, Lcom/apportable/gl/GLSurfaceView;->access$1000(Lcom/apportable/gl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@15e
    move-result-object v5

    #@15f
    iget-object v4, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@161
    # getter for: Lcom/apportable/gl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;
    invoke-static {v4}, Lcom/apportable/gl/GLSurfaceView;->access$900(Lcom/apportable/gl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    #@164
    move-result-object v6

    #@165
    move-object v4, p1

    #@166
    invoke-static/range {v0 .. v6}, Lcom/apportable/utils/Utils;->tryEglConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLConfig;Landroid/view/SurfaceHolder;Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;Landroid/opengl/GLSurfaceView$EGLContextFactory;)[Ljava/lang/Object;

    #@169
    move-result-object v1

    #@16a
    aget-object v0, v1, v8

    #@16c
    check-cast v0, Ljavax/microedition/khronos/egl/EGLContext;

    #@16e
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@170
    aget-object v0, v1, v10

    #@172
    check-cast v0, Ljavax/microedition/khronos/egl/EGLSurface;

    #@174
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@176
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@178
    if-eqz v0, :cond_181

    #@17a
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@17c
    if-eqz v0, :cond_181

    #@17e
    iput-boolean v10, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mHasValidConfig:Z

    #@180
    goto :goto_104

    #@181
    :cond_181
    add-int/lit8 v0, v7, 0x1

    #@183
    move v7, v0

    #@184
    goto :goto_14a

    #@185
    :cond_185
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mSharedPBufferSurfaces:Ljava/util/HashMap;

    #@187
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18a
    move-result-object v1

    #@18b
    check-cast v1, Ljavax/microedition/khronos/egl/EGLSurface;

    #@18d
    goto :goto_114
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGLContext;)Z
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mSharedPBufferSurfaces:Ljava/util/HashMap;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljavax/microedition/khronos/egl/EGLSurface;

    #@a
    if-eqz v0, :cond_27

    #@c
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    #@12
    iget-object v3, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@14
    invoke-interface {v1, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_25

    #@1a
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@1c
    invoke-interface {v1, v0, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_29

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_25

    #@22
    const/4 v0, 0x1

    #@23
    :goto_23
    monitor-exit p0

    #@24
    return v0

    #@25
    :cond_25
    move v0, v2

    #@26
    goto :goto_23

    #@27
    :cond_27
    move v0, v2

    #@28
    goto :goto_23

    #@29
    :catchall_29
    move-exception v0

    #@2a
    monitor-exit p0

    #@2b
    throw v0
.end method

.method public destroySurface()V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@2
    if-eqz v0, :cond_29

    #@4
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@6
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@8
    if-eq v0, v1, :cond_29

    #@a
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@c
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@e
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@10
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@12
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    #@14
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@17
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@19
    # getter for: Lcom/apportable/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lcom/apportable/gl/GLSurfaceView;->access$1000(Lcom/apportable/gl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@1f
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@21
    iget-object v3, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@23
    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    #@26
    const/4 v0, 0x0

    #@27
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@29
    :cond_29
    return-void
.end method

.method public getPrimaryContext()Ljavax/microedition/khronos/egl/EGLContext;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@2
    return-object v0
.end method

.method public makeCurrentContext(Ljavax/microedition/khronos/egl/EGLContext;)Z
    .registers 9

    #@0
    const/16 v6, 0x3000

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    monitor-enter p0

    #@5
    :try_start_5
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    #@b
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_66

    #@e
    move-result v1

    #@f
    if-eq v1, v6, :cond_14

    #@11
    move v0, v2

    #@12
    :goto_12
    monitor-exit p0

    #@13
    return v0

    #@14
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mCurrentSharedContext:Ljava/lang/ThreadLocal;

    #@16
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Ljavax/microedition/khronos/egl/EGLContext;

    #@1c
    if-nez p1, :cond_25

    #@1e
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mCurrentSharedContext:Ljava/lang/ThreadLocal;

    #@20
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    #@23
    move v0, v3

    #@24
    goto :goto_12

    #@25
    :cond_25
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@27
    if-eq p1, v1, :cond_5c

    #@29
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mSharedPBufferSurfaces:Ljava/util/HashMap;

    #@2b
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Ljavax/microedition/khronos/egl/EGLSurface;

    #@31
    if-nez v1, :cond_4a

    #@33
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@35
    iget-object v4, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@37
    const/4 v5, 0x5

    #@38
    new-array v5, v5, [I

    #@3a
    fill-array-data v5, :array_6c

    #@3d
    invoke-interface {v0, v1, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    #@40
    move-result-object v1

    #@41
    if-nez v1, :cond_45

    #@43
    move v0, v2

    #@44
    goto :goto_12

    #@45
    :cond_45
    iget-object v4, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mSharedPBufferSurfaces:Ljava/util/HashMap;

    #@47
    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    :cond_4a
    iget-object v4, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@4c
    invoke-interface {v0, v4, v1, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@4f
    :goto_4f
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mCurrentSharedContext:Ljava/lang/ThreadLocal;

    #@51
    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@54
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    #@57
    move-result v0

    #@58
    if-eq v0, v6, :cond_69

    #@5a
    move v0, v2

    #@5b
    goto :goto_12

    #@5c
    :cond_5c
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@5e
    iget-object v4, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@60
    iget-object v5, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@62
    invoke-interface {v0, v1, v4, v5, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
    :try_end_65
    .catchall {:try_start_14 .. :try_end_65} :catchall_66

    #@65
    goto :goto_4f

    #@66
    :catchall_66
    move-exception v0

    #@67
    monitor-exit p0

    #@68
    throw v0

    #@69
    :cond_69
    move v0, v3

    #@6a
    goto :goto_12

    #@6b
    nop

    #@6c
    :array_6c
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method public start()V
    .registers 7

    #@0
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    #@8
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@a
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@c
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    #@e
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@14
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@16
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@18
    if-ne v0, v1, :cond_22

    #@1a
    new-instance v0, Ljava/lang/RuntimeException;

    #@1c
    const-string v1, "eglGetDisplay failed"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    :cond_22
    const/4 v0, 0x2

    #@23
    new-array v0, v0, [I

    #@25
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@27
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@29
    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_37

    #@2f
    new-instance v0, Ljava/lang/RuntimeException;

    #@31
    const-string v1, "eglInitialize failed"

    #@33
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    :cond_37
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@39
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@3b
    invoke-static {v0, v1}, Lcom/apportable/utils/Utils;->getEglConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)[Ljavax/microedition/khronos/egl/EGLConfig;

    #@3e
    move-result-object v0

    #@3f
    aget-object v0, v0, v4

    #@41
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@43
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@45
    # getter for: Lcom/apportable/gl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;
    invoke-static {v0}, Lcom/apportable/gl/GLSurfaceView;->access$900(Lcom/apportable/gl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    #@48
    move-result-object v0

    #@49
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@4b
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@4d
    iget-object v3, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@4f
    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    #@52
    move-result-object v0

    #@53
    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@55
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@57
    if-eqz v0, :cond_5f

    #@59
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@5b
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    #@5d
    if-ne v0, v1, :cond_61

    #@5f
    :cond_5f
    iput-object v5, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@61
    :cond_61
    iput-object v5, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@63
    iput-boolean v4, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mHasValidConfig:Z

    #@65
    return-void
.end method

.method public swap()Z
    .registers 5

    #@0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    #@6
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@8
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@a
    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_41

    #@10
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    #@13
    move-result v0

    #@14
    packed-switch v0, :pswitch_data_66

    #@17
    :pswitch_17
    const-string v1, "EglHelper"

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string v3, "eglSwapBuffers returned "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    const-string v2, ". tid="

    #@2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    #@35
    move-result-wide v2

    #@36
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    :cond_41
    :goto_41
    const/4 v0, 0x1

    #@42
    :goto_42
    return v0

    #@43
    :pswitch_43
    const/4 v0, 0x0

    #@44
    goto :goto_42

    #@45
    :pswitch_45
    const-string v0, "EglHelper"

    #@47
    new-instance v1, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string v2, "eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid="

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    #@59
    move-result-wide v2

    #@5a
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    goto :goto_41

    #@66
    :pswitch_data_66
    .packed-switch 0x300b
        :pswitch_45
        :pswitch_17
        :pswitch_17
        :pswitch_43
    .end packed-switch
.end method
