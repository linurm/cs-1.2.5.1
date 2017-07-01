.class Lcom/apportable/gl/GLSurfaceView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/gl/GLSurfaceView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/gl/GLSurfaceView$1;


# direct methods
.method constructor <init>(Lcom/apportable/gl/GLSurfaceView$1;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/gl/GLSurfaceView$1$1;->this$1:Lcom/apportable/gl/GLSurfaceView$1;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$1$1;->this$1:Lcom/apportable/gl/GLSurfaceView$1;

    #@2
    iget-object v0, v0, Lcom/apportable/gl/GLSurfaceView$1;->this$0:Lcom/apportable/gl/GLSurfaceView;

    #@4
    # invokes: Lcom/apportable/gl/GLSurfaceView;->readySurface()V
    invoke-static {v0}, Lcom/apportable/gl/GLSurfaceView;->access$700(Lcom/apportable/gl/GLSurfaceView;)V

    #@7
    return-void
.end method
