.class public Lcom/apportable/GLSurfaceRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private context:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/apportable/GLSurfaceRenderer;->context:J

    #@5
    return-void
.end method

.method private static native drawFrame(JLjavax/microedition/khronos/opengles/GL10;)V
.end method

.method private static native surfaceChanged(JLjavax/microedition/khronos/opengles/GL10;II)V
.end method

.method private static native surfaceCreated(JLjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4

    #@0
    iget-wide v0, p0, Lcom/apportable/GLSurfaceRenderer;->context:J

    #@2
    invoke-static {v0, v1, p1}, Lcom/apportable/GLSurfaceRenderer;->drawFrame(JLjavax/microedition/khronos/opengles/GL10;)V

    #@5
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 6

    #@0
    iget-wide v0, p0, Lcom/apportable/GLSurfaceRenderer;->context:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Lcom/apportable/GLSurfaceRenderer;->surfaceChanged(JLjavax/microedition/khronos/opengles/GL10;II)V

    #@5
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/apportable/GLSurfaceRenderer;->context:J

    #@2
    invoke-static {v0, v1, p1, p2}, Lcom/apportable/GLSurfaceRenderer;->surfaceCreated(JLjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    #@5
    return-void
.end method
