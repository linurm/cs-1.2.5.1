.class Lcom/apportable/ui/VideoView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/VideoView;


# direct methods
.method constructor <init>(Lcom/apportable/ui/VideoView;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/VideoView$1;->this$0:Lcom/apportable/ui/VideoView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/apportable/ui/VideoView$1;->this$0:Lcom/apportable/ui/VideoView;

    #@2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    #@5
    move-result v1

    #@6
    # setter for: Lcom/apportable/ui/VideoView;->mVideoWidth:I
    invoke-static {v0, v1}, Lcom/apportable/ui/VideoView;->access$002(Lcom/apportable/ui/VideoView;I)I

    #@9
    iget-object v0, p0, Lcom/apportable/ui/VideoView$1;->this$0:Lcom/apportable/ui/VideoView;

    #@b
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    #@e
    move-result v1

    #@f
    # setter for: Lcom/apportable/ui/VideoView;->mVideoHeight:I
    invoke-static {v0, v1}, Lcom/apportable/ui/VideoView;->access$102(Lcom/apportable/ui/VideoView;I)I

    #@12
    iget-object v0, p0, Lcom/apportable/ui/VideoView$1;->this$0:Lcom/apportable/ui/VideoView;

    #@14
    # getter for: Lcom/apportable/ui/VideoView;->mVideoWidth:I
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$000(Lcom/apportable/ui/VideoView;)I

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_37

    #@1a
    iget-object v0, p0, Lcom/apportable/ui/VideoView$1;->this$0:Lcom/apportable/ui/VideoView;

    #@1c
    # getter for: Lcom/apportable/ui/VideoView;->mVideoHeight:I
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$100(Lcom/apportable/ui/VideoView;)I

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_37

    #@22
    iget-object v0, p0, Lcom/apportable/ui/VideoView$1;->this$0:Lcom/apportable/ui/VideoView;

    #@24
    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    #@27
    move-result-object v0

    #@28
    iget-object v1, p0, Lcom/apportable/ui/VideoView$1;->this$0:Lcom/apportable/ui/VideoView;

    #@2a
    # getter for: Lcom/apportable/ui/VideoView;->mVideoWidth:I
    invoke-static {v1}, Lcom/apportable/ui/VideoView;->access$000(Lcom/apportable/ui/VideoView;)I

    #@2d
    move-result v1

    #@2e
    iget-object v2, p0, Lcom/apportable/ui/VideoView$1;->this$0:Lcom/apportable/ui/VideoView;

    #@30
    # getter for: Lcom/apportable/ui/VideoView;->mVideoHeight:I
    invoke-static {v2}, Lcom/apportable/ui/VideoView;->access$100(Lcom/apportable/ui/VideoView;)I

    #@33
    move-result v2

    #@34
    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    #@37
    :cond_37
    return-void
.end method
