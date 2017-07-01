.class Lcom/apportable/gl/GLSurfaceView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/gl/GLSurfaceView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/gl/GLSurfaceView;


# direct methods
.method constructor <init>(Lcom/apportable/gl/GLSurfaceView;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/gl/GLSurfaceView$1;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$1;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@2
    new-instance v1, Lcom/apportable/gl/GLSurfaceView$EglHelper;

    #@4
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView$1;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v1, v2, v3}, Lcom/apportable/gl/GLSurfaceView$EglHelper;-><init>(Lcom/apportable/gl/GLSurfaceView;Lcom/apportable/gl/GLSurfaceView$1;)V

    #@a
    # setter for: Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;
    invoke-static {v0, v1}, Lcom/apportable/gl/GLSurfaceView;->access$502(Lcom/apportable/gl/GLSurfaceView;Lcom/apportable/gl/GLSurfaceView$EglHelper;)Lcom/apportable/gl/GLSurfaceView$EglHelper;

    #@d
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$1;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@f
    # invokes: Lcom/apportable/gl/GLSurfaceView;->readySurface()V
    invoke-static {v0}, Lcom/apportable/gl/GLSurfaceView;->access$700(Lcom/apportable/gl/GLSurfaceView;)V

    #@12
    new-instance v0, Lcom/apportable/gl/GLSurfaceView$1$1;

    #@14
    invoke-direct {v0, p0}, Lcom/apportable/gl/GLSurfaceView$1$1;-><init>(Lcom/apportable/gl/GLSurfaceView$1;)V

    #@17
    invoke-static {v0}, Lcom/apportable/MainThread;->addTickAction(Ljava/lang/Runnable;)V

    #@1a
    invoke-static {}, Lcom/apportable/MainThread;->goNative()V

    #@1d
    return-void
.end method
