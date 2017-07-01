.class Lcom/apportable/ui/VideoView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 10

    #@0
    const/16 v7, 0x1e

    #@2
    const/16 v6, 0x1d

    #@4
    const/4 v5, 0x3

    #@5
    const/4 v2, 0x1

    #@6
    const/4 v1, 0x0

    #@7
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@9
    const/4 v3, 0x2

    #@a
    # setter for: Lcom/apportable/ui/VideoView;->mCurrentState:I
    invoke-static {v0, v3}, Lcom/apportable/ui/VideoView;->access$202(Lcom/apportable/ui/VideoView;I)I

    #@d
    # invokes: Lcom/apportable/ui/VideoView;->getMetadata(Landroid/media/MediaPlayer;ZZ)Ljava/lang/Object;
    invoke-static {p1, v1, v1}, Lcom/apportable/ui/VideoView;->access$300(Landroid/media/MediaPlayer;ZZ)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    if-eqz v3, :cond_fd

    #@13
    iget-object v4, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@15
    # invokes: Lcom/apportable/ui/VideoView;->metadataHas(Ljava/lang/Object;I)Z
    invoke-static {v3, v6}, Lcom/apportable/ui/VideoView;->access$500(Ljava/lang/Object;I)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_21

    #@1b
    # invokes: Lcom/apportable/ui/VideoView;->metadataGetBoolean(Ljava/lang/Object;I)Z
    invoke-static {v3, v6}, Lcom/apportable/ui/VideoView;->access$600(Ljava/lang/Object;I)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_f4

    #@21
    :cond_21
    move v0, v2

    #@22
    :goto_22
    # setter for: Lcom/apportable/ui/VideoView;->mCanPause:Z
    invoke-static {v4, v0}, Lcom/apportable/ui/VideoView;->access$402(Lcom/apportable/ui/VideoView;Z)Z

    #@25
    iget-object v4, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@27
    # invokes: Lcom/apportable/ui/VideoView;->metadataHas(Ljava/lang/Object;I)Z
    invoke-static {v3, v7}, Lcom/apportable/ui/VideoView;->access$500(Ljava/lang/Object;I)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_33

    #@2d
    # invokes: Lcom/apportable/ui/VideoView;->metadataGetBoolean(Ljava/lang/Object;I)Z
    invoke-static {v3, v7}, Lcom/apportable/ui/VideoView;->access$600(Ljava/lang/Object;I)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_f7

    #@33
    :cond_33
    move v0, v2

    #@34
    :goto_34
    # setter for: Lcom/apportable/ui/VideoView;->mCanSeekBack:Z
    invoke-static {v4, v0}, Lcom/apportable/ui/VideoView;->access$702(Lcom/apportable/ui/VideoView;Z)Z

    #@37
    iget-object v4, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@39
    const/16 v0, 0x1f

    #@3b
    # invokes: Lcom/apportable/ui/VideoView;->metadataHas(Ljava/lang/Object;I)Z
    invoke-static {v3, v0}, Lcom/apportable/ui/VideoView;->access$500(Ljava/lang/Object;I)Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_49

    #@41
    const/16 v0, 0x1f

    #@43
    # invokes: Lcom/apportable/ui/VideoView;->metadataGetBoolean(Ljava/lang/Object;I)Z
    invoke-static {v3, v0}, Lcom/apportable/ui/VideoView;->access$600(Ljava/lang/Object;I)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_fa

    #@49
    :cond_49
    move v0, v2

    #@4a
    :goto_4a
    # setter for: Lcom/apportable/ui/VideoView;->mCanSeekForward:Z
    invoke-static {v4, v0}, Lcom/apportable/ui/VideoView;->access$802(Lcom/apportable/ui/VideoView;Z)Z

    #@4d
    :goto_4d
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@4f
    # getter for: Lcom/apportable/ui/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$900(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    #@52
    move-result-object v0

    #@53
    if-eqz v0, :cond_64

    #@55
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@57
    # getter for: Lcom/apportable/ui/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$900(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    #@5a
    move-result-object v0

    #@5b
    iget-object v3, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@5d
    # getter for: Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/apportable/ui/VideoView;->access$1000(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer;

    #@60
    move-result-object v3

    #@61
    invoke-interface {v0, v3}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    #@64
    :cond_64
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@66
    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    #@69
    move-result-object v0

    #@6a
    if-eqz v0, :cond_75

    #@6c
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@6e
    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    #@75
    :cond_75
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@77
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    #@7a
    move-result v2

    #@7b
    # setter for: Lcom/apportable/ui/VideoView;->mVideoWidth:I
    invoke-static {v0, v2}, Lcom/apportable/ui/VideoView;->access$002(Lcom/apportable/ui/VideoView;I)I

    #@7e
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@80
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    #@83
    move-result v2

    #@84
    # setter for: Lcom/apportable/ui/VideoView;->mVideoHeight:I
    invoke-static {v0, v2}, Lcom/apportable/ui/VideoView;->access$102(Lcom/apportable/ui/VideoView;I)I

    #@87
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@89
    # getter for: Lcom/apportable/ui/VideoView;->mSeekWhenPrepared:I
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1200(Lcom/apportable/ui/VideoView;)I

    #@8c
    move-result v0

    #@8d
    if-eqz v0, :cond_94

    #@8f
    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@91
    invoke-virtual {v2, v0}, Lcom/apportable/ui/VideoView;->seekTo(I)V

    #@94
    :cond_94
    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@96
    # getter for: Lcom/apportable/ui/VideoView;->mVideoWidth:I
    invoke-static {v2}, Lcom/apportable/ui/VideoView;->access$000(Lcom/apportable/ui/VideoView;)I

    #@99
    move-result v2

    #@9a
    if-eqz v2, :cond_134

    #@9c
    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@9e
    # getter for: Lcom/apportable/ui/VideoView;->mVideoHeight:I
    invoke-static {v2}, Lcom/apportable/ui/VideoView;->access$100(Lcom/apportable/ui/VideoView;)I

    #@a1
    move-result v2

    #@a2
    if-eqz v2, :cond_134

    #@a4
    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@a6
    invoke-virtual {v2}, Lcom/apportable/ui/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    #@a9
    move-result-object v2

    #@aa
    iget-object v3, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@ac
    # getter for: Lcom/apportable/ui/VideoView;->mVideoWidth:I
    invoke-static {v3}, Lcom/apportable/ui/VideoView;->access$000(Lcom/apportable/ui/VideoView;)I

    #@af
    move-result v3

    #@b0
    iget-object v4, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@b2
    # getter for: Lcom/apportable/ui/VideoView;->mVideoHeight:I
    invoke-static {v4}, Lcom/apportable/ui/VideoView;->access$100(Lcom/apportable/ui/VideoView;)I

    #@b5
    move-result v4

    #@b6
    invoke-interface {v2, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    #@b9
    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@bb
    # getter for: Lcom/apportable/ui/VideoView;->mSurfaceWidth:I
    invoke-static {v2}, Lcom/apportable/ui/VideoView;->access$1300(Lcom/apportable/ui/VideoView;)I

    #@be
    move-result v2

    #@bf
    iget-object v3, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@c1
    # getter for: Lcom/apportable/ui/VideoView;->mVideoWidth:I
    invoke-static {v3}, Lcom/apportable/ui/VideoView;->access$000(Lcom/apportable/ui/VideoView;)I

    #@c4
    move-result v3

    #@c5
    if-ne v2, v3, :cond_f3

    #@c7
    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@c9
    # getter for: Lcom/apportable/ui/VideoView;->mSurfaceHeight:I
    invoke-static {v2}, Lcom/apportable/ui/VideoView;->access$1400(Lcom/apportable/ui/VideoView;)I

    #@cc
    move-result v2

    #@cd
    iget-object v3, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@cf
    # getter for: Lcom/apportable/ui/VideoView;->mVideoHeight:I
    invoke-static {v3}, Lcom/apportable/ui/VideoView;->access$100(Lcom/apportable/ui/VideoView;)I

    #@d2
    move-result v3

    #@d3
    if-ne v2, v3, :cond_f3

    #@d5
    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@d7
    # getter for: Lcom/apportable/ui/VideoView;->mTargetState:I
    invoke-static {v2}, Lcom/apportable/ui/VideoView;->access$1500(Lcom/apportable/ui/VideoView;)I

    #@da
    move-result v2

    #@db
    if-ne v2, v5, :cond_110

    #@dd
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@df
    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->start()V

    #@e2
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@e4
    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    #@e7
    move-result-object v0

    #@e8
    if-eqz v0, :cond_f3

    #@ea
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@ec
    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    #@ef
    move-result-object v0

    #@f0
    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    #@f3
    :cond_f3
    :goto_f3
    return-void

    #@f4
    :cond_f4
    move v0, v1

    #@f5
    goto/16 :goto_22

    #@f7
    :cond_f7
    move v0, v1

    #@f8
    goto/16 :goto_34

    #@fa
    :cond_fa
    move v0, v1

    #@fb
    goto/16 :goto_4a

    #@fd
    :cond_fd
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@ff
    iget-object v3, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@101
    iget-object v4, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@103
    # setter for: Lcom/apportable/ui/VideoView;->mCanSeekForward:Z
    invoke-static {v4, v2}, Lcom/apportable/ui/VideoView;->access$802(Lcom/apportable/ui/VideoView;Z)Z

    #@106
    move-result v4

    #@107
    # setter for: Lcom/apportable/ui/VideoView;->mCanSeekBack:Z
    invoke-static {v3, v4}, Lcom/apportable/ui/VideoView;->access$702(Lcom/apportable/ui/VideoView;Z)Z

    #@10a
    move-result v3

    #@10b
    # setter for: Lcom/apportable/ui/VideoView;->mCanPause:Z
    invoke-static {v0, v3}, Lcom/apportable/ui/VideoView;->access$402(Lcom/apportable/ui/VideoView;Z)Z

    #@10e
    goto/16 :goto_4d

    #@110
    :cond_110
    iget-object v2, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@112
    invoke-virtual {v2}, Lcom/apportable/ui/VideoView;->isPlaying()Z

    #@115
    move-result v2

    #@116
    if-nez v2, :cond_f3

    #@118
    if-nez v0, :cond_122

    #@11a
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@11c
    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->getCurrentPosition()I

    #@11f
    move-result v0

    #@120
    if-lez v0, :cond_f3

    #@122
    :cond_122
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@124
    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    #@127
    move-result-object v0

    #@128
    if-eqz v0, :cond_f3

    #@12a
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@12c
    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    #@12f
    move-result-object v0

    #@130
    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    #@133
    goto :goto_f3

    #@134
    :cond_134
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@136
    # getter for: Lcom/apportable/ui/VideoView;->mTargetState:I
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1500(Lcom/apportable/ui/VideoView;)I

    #@139
    move-result v0

    #@13a
    if-ne v0, v5, :cond_f3

    #@13c
    iget-object v0, p0, Lcom/apportable/ui/VideoView$2;->this$0:Lcom/apportable/ui/VideoView;

    #@13e
    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->start()V

    #@141
    goto :goto_f3
.end method
