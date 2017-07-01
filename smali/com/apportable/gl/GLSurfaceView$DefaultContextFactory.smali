.class Lcom/apportable/gl/GLSurfaceView$DefaultContextFactory;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/gl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# static fields
.field public static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098


# instance fields
.field final synthetic this$0:Lcom/apportable/gl/GLSurfaceView;


# direct methods
.method private constructor <init>(Lcom/apportable/gl/GLSurfaceView;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/gl/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/apportable/gl/GLSurfaceView;Lcom/apportable/gl/GLSurfaceView$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/gl/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/apportable/gl/GLSurfaceView;)V

    #@3
    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 7

    #@0
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [I

    #@3
    const/4 v1, 0x0

    #@4
    const/16 v2, 0x3098

    #@6
    aput v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@b
    # getter for: Lcom/apportable/gl/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/apportable/gl/GLSurfaceView;->access$800(Lcom/apportable/gl/GLSurfaceView;)I

    #@e
    move-result v2

    #@f
    aput v2, v0, v1

    #@11
    const/4 v1, 0x2

    #@12
    const/16 v2, 0x3038

    #@14
    aput v2, v0, v1

    #@16
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    #@18
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@1a
    # getter for: Lcom/apportable/gl/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/apportable/gl/GLSurfaceView;->access$800(Lcom/apportable/gl/GLSurfaceView;)I

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_25

    #@20
    :goto_20
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    :cond_25
    const/4 v0, 0x0

    #@26
    goto :goto_20
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 6

    #@0
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    const-string v1, "eglDestroyContext failed"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    return-void
.end method
