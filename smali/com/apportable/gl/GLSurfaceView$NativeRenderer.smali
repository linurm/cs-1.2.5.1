.class Lcom/apportable/gl/GLSurfaceView$NativeRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/gl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/gl/GLSurfaceView;


# direct methods
.method private constructor <init>(Lcom/apportable/gl/GLSurfaceView;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/gl/GLSurfaceView$NativeRenderer;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/apportable/gl/GLSurfaceView;Lcom/apportable/gl/GLSurfaceView$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/gl/GLSurfaceView$NativeRenderer;-><init>(Lcom/apportable/gl/GLSurfaceView;)V

    #@3
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 2

    #@0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4

    #@0
    # invokes: Lcom/apportable/gl/GLSurfaceView;->nativeOnSurfaceChanged()V
    invoke-static {}, Lcom/apportable/gl/GLSurfaceView;->access$100()V

    #@3
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    const/high16 v0, 0x3f800000    # 1.0f

    #@3
    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    #@6
    const/16 v0, 0x4100

    #@8
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    #@b
    # invokes: Lcom/apportable/gl/GLSurfaceView;->nativeInit()V
    invoke-static {}, Lcom/apportable/gl/GLSurfaceView;->access$000()V

    #@e
    return-void
.end method
