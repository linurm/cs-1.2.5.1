.class Lcom/apportable/ui/VideoView$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    iput-object p1, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iget-object v0, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@4
    # setter for: Lcom/apportable/ui/VideoView;->mSurfaceWidth:I
    invoke-static {v0, p3}, Lcom/apportable/ui/VideoView;->access$1302(Lcom/apportable/ui/VideoView;I)I

    #@7
    iget-object v0, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@9
    # setter for: Lcom/apportable/ui/VideoView;->mSurfaceHeight:I
    invoke-static {v0, p4}, Lcom/apportable/ui/VideoView;->access$1402(Lcom/apportable/ui/VideoView;I)I

    #@c
    iget-object v0, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@e
    # getter for: Lcom/apportable/ui/VideoView;->mTargetState:I
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1500(Lcom/apportable/ui/VideoView;)I

    #@11
    move-result v0

    #@12
    const/4 v3, 0x3

    #@13
    if-ne v0, v3, :cond_5c

    #@15
    move v0, v1

    #@16
    :goto_16
    iget-object v3, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@18
    # getter for: Lcom/apportable/ui/VideoView;->mVideoWidth:I
    invoke-static {v3}, Lcom/apportable/ui/VideoView;->access$000(Lcom/apportable/ui/VideoView;)I

    #@1b
    move-result v3

    #@1c
    if-ne v3, p3, :cond_5e

    #@1e
    iget-object v3, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@20
    # getter for: Lcom/apportable/ui/VideoView;->mVideoHeight:I
    invoke-static {v3}, Lcom/apportable/ui/VideoView;->access$100(Lcom/apportable/ui/VideoView;)I

    #@23
    move-result v3

    #@24
    if-ne v3, p4, :cond_5e

    #@26
    :goto_26
    iget-object v2, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@28
    # getter for: Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/apportable/ui/VideoView;->access$1000(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer;

    #@2b
    move-result-object v2

    #@2c
    if-eqz v2, :cond_5b

    #@2e
    if-eqz v0, :cond_5b

    #@30
    if-eqz v1, :cond_5b

    #@32
    iget-object v0, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@34
    # getter for: Lcom/apportable/ui/VideoView;->mSeekWhenPrepared:I
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1200(Lcom/apportable/ui/VideoView;)I

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_45

    #@3a
    iget-object v0, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@3c
    iget-object v1, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@3e
    # getter for: Lcom/apportable/ui/VideoView;->mSeekWhenPrepared:I
    invoke-static {v1}, Lcom/apportable/ui/VideoView;->access$1200(Lcom/apportable/ui/VideoView;)I

    #@41
    move-result v1

    #@42
    invoke-virtual {v0, v1}, Lcom/apportable/ui/VideoView;->seekTo(I)V

    #@45
    :cond_45
    iget-object v0, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@47
    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->start()V

    #@4a
    iget-object v0, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@4c
    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    #@4f
    move-result-object v0

    #@50
    if-eqz v0, :cond_5b

    #@52
    iget-object v0, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@54
    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    #@5b
    :cond_5b
    return-void

    #@5c
    :cond_5c
    move v0, v2

    #@5d
    goto :goto_16

    #@5e
    :cond_5e
    move v1, v2

    #@5f
    goto :goto_26
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@2
    # setter for: Lcom/apportable/ui/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Lcom/apportable/ui/VideoView;->access$2002(Lcom/apportable/ui/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    #@5
    iget-object v0, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@7
    # invokes: Lcom/apportable/ui/VideoView;->openVideo()V
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$2100(Lcom/apportable/ui/VideoView;)V

    #@a
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@2
    const/4 v1, 0x0

    #@3
    # setter for: Lcom/apportable/ui/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Lcom/apportable/ui/VideoView;->access$2002(Lcom/apportable/ui/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    #@6
    iget-object v0, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@8
    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_17

    #@e
    iget-object v0, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@10
    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    #@17
    :cond_17
    iget-object v0, p0, Lcom/apportable/ui/VideoView$6;->this$0:Lcom/apportable/ui/VideoView;

    #@19
    const/4 v1, 0x1

    #@1a
    # invokes: Lcom/apportable/ui/VideoView;->release(Z)V
    invoke-static {v0, v1}, Lcom/apportable/ui/VideoView;->access$2200(Lcom/apportable/ui/VideoView;Z)V

    #@1d
    return-void
.end method
