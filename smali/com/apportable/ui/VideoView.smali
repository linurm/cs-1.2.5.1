.class public Lcom/apportable/ui/VideoView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final METADATA_PAUSE_AVAILABLE:I = 0x1d

.field private static final METADATA_SEEK_BACKWARD_AVAILABLE:I = 0x1e

.field private static final METADATA_SEEK_FORWARD_AVAILABLE:I = 0x1f

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mFd:Ljava/io/FileDescriptor;

.field private mFdLength:J

.field private mFdOffset:J

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    #@5
    const-string v0, "VideoView"

    #@7
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->TAG:Ljava/lang/String;

    #@9
    iput v1, p0, Lcom/apportable/ui/VideoView;->mCurrentState:I

    #@b
    iput v1, p0, Lcom/apportable/ui/VideoView;->mTargetState:I

    #@d
    iput-object v2, p0, Lcom/apportable/ui/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@f
    iput-object v2, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@11
    new-instance v0, Lcom/apportable/ui/VideoView$1;

    #@13
    invoke-direct {v0, p0}, Lcom/apportable/ui/VideoView$1;-><init>(Lcom/apportable/ui/VideoView;)V

    #@16
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@18
    new-instance v0, Lcom/apportable/ui/VideoView$2;

    #@1a
    invoke-direct {v0, p0}, Lcom/apportable/ui/VideoView$2;-><init>(Lcom/apportable/ui/VideoView;)V

    #@1d
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@1f
    new-instance v0, Lcom/apportable/ui/VideoView$3;

    #@21
    invoke-direct {v0, p0}, Lcom/apportable/ui/VideoView$3;-><init>(Lcom/apportable/ui/VideoView;)V

    #@24
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@26
    new-instance v0, Lcom/apportable/ui/VideoView$4;

    #@28
    invoke-direct {v0, p0}, Lcom/apportable/ui/VideoView$4;-><init>(Lcom/apportable/ui/VideoView;)V

    #@2b
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@2d
    new-instance v0, Lcom/apportable/ui/VideoView$5;

    #@2f
    invoke-direct {v0, p0}, Lcom/apportable/ui/VideoView$5;-><init>(Lcom/apportable/ui/VideoView;)V

    #@32
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    #@34
    new-instance v0, Lcom/apportable/ui/VideoView$6;

    #@36
    invoke-direct {v0, p0}, Lcom/apportable/ui/VideoView$6;-><init>(Lcom/apportable/ui/VideoView;)V

    #@39
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    #@3b
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->initVideoView()V

    #@3e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/apportable/ui/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->initVideoView()V

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    const-string v0, "VideoView"

    #@7
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->TAG:Ljava/lang/String;

    #@9
    iput v1, p0, Lcom/apportable/ui/VideoView;->mCurrentState:I

    #@b
    iput v1, p0, Lcom/apportable/ui/VideoView;->mTargetState:I

    #@d
    iput-object v2, p0, Lcom/apportable/ui/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@f
    iput-object v2, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@11
    new-instance v0, Lcom/apportable/ui/VideoView$1;

    #@13
    invoke-direct {v0, p0}, Lcom/apportable/ui/VideoView$1;-><init>(Lcom/apportable/ui/VideoView;)V

    #@16
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@18
    new-instance v0, Lcom/apportable/ui/VideoView$2;

    #@1a
    invoke-direct {v0, p0}, Lcom/apportable/ui/VideoView$2;-><init>(Lcom/apportable/ui/VideoView;)V

    #@1d
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@1f
    new-instance v0, Lcom/apportable/ui/VideoView$3;

    #@21
    invoke-direct {v0, p0}, Lcom/apportable/ui/VideoView$3;-><init>(Lcom/apportable/ui/VideoView;)V

    #@24
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@26
    new-instance v0, Lcom/apportable/ui/VideoView$4;

    #@28
    invoke-direct {v0, p0}, Lcom/apportable/ui/VideoView$4;-><init>(Lcom/apportable/ui/VideoView;)V

    #@2b
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@2d
    new-instance v0, Lcom/apportable/ui/VideoView$5;

    #@2f
    invoke-direct {v0, p0}, Lcom/apportable/ui/VideoView$5;-><init>(Lcom/apportable/ui/VideoView;)V

    #@32
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    #@34
    new-instance v0, Lcom/apportable/ui/VideoView$6;

    #@36
    invoke-direct {v0, p0}, Lcom/apportable/ui/VideoView$6;-><init>(Lcom/apportable/ui/VideoView;)V

    #@39
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    #@3b
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->initVideoView()V

    #@3e
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/VideoView;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/VideoView;->mVideoWidth:I

    #@2
    return v0
.end method

.method static synthetic access$002(Lcom/apportable/ui/VideoView;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/ui/VideoView;->mVideoWidth:I

    #@2
    return p1
.end method

.method static synthetic access$100(Lcom/apportable/ui/VideoView;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/VideoView;->mVideoHeight:I

    #@2
    return v0
.end method

.method static synthetic access$1000(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@2
    return-object v0
.end method

.method static synthetic access$102(Lcom/apportable/ui/VideoView;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/ui/VideoView;->mVideoHeight:I

    #@2
    return p1
.end method

.method static synthetic access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@2
    return-object v0
.end method

.method static synthetic access$1200(Lcom/apportable/ui/VideoView;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/VideoView;->mSeekWhenPrepared:I

    #@2
    return v0
.end method

.method static synthetic access$1300(Lcom/apportable/ui/VideoView;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/VideoView;->mSurfaceWidth:I

    #@2
    return v0
.end method

.method static synthetic access$1302(Lcom/apportable/ui/VideoView;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/ui/VideoView;->mSurfaceWidth:I

    #@2
    return p1
.end method

.method static synthetic access$1400(Lcom/apportable/ui/VideoView;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/VideoView;->mSurfaceHeight:I

    #@2
    return v0
.end method

.method static synthetic access$1402(Lcom/apportable/ui/VideoView;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/ui/VideoView;->mSurfaceHeight:I

    #@2
    return p1
.end method

.method static synthetic access$1500(Lcom/apportable/ui/VideoView;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/VideoView;->mTargetState:I

    #@2
    return v0
.end method

.method static synthetic access$1502(Lcom/apportable/ui/VideoView;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/ui/VideoView;->mTargetState:I

    #@2
    return p1
.end method

.method static synthetic access$1600(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@2
    return-object v0
.end method

.method static synthetic access$1700(Lcom/apportable/ui/VideoView;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$1800(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@2
    return-object v0
.end method

.method static synthetic access$1902(Lcom/apportable/ui/VideoView;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/ui/VideoView;->mCurrentBufferPercentage:I

    #@2
    return p1
.end method

.method static synthetic access$2002(Lcom/apportable/ui/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@2
    return-object p1
.end method

.method static synthetic access$202(Lcom/apportable/ui/VideoView;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/ui/VideoView;->mCurrentState:I

    #@2
    return p1
.end method

.method static synthetic access$2100(Lcom/apportable/ui/VideoView;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->openVideo()V

    #@3
    return-void
.end method

.method static synthetic access$2200(Lcom/apportable/ui/VideoView;Z)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/VideoView;->release(Z)V

    #@3
    return-void
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer;ZZ)Ljava/lang/Object;
    .registers 4

    #@0
    invoke-static {p0, p1, p2}, Lcom/apportable/ui/VideoView;->getMetadata(Landroid/media/MediaPlayer;ZZ)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$402(Lcom/apportable/ui/VideoView;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/VideoView;->mCanPause:Z

    #@2
    return p1
.end method

.method static synthetic access$500(Ljava/lang/Object;I)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/apportable/ui/VideoView;->metadataHas(Ljava/lang/Object;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$600(Ljava/lang/Object;I)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/apportable/ui/VideoView;->metadataGetBoolean(Ljava/lang/Object;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$702(Lcom/apportable/ui/VideoView;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/VideoView;->mCanSeekBack:Z

    #@2
    return p1
.end method

.method static synthetic access$802(Lcom/apportable/ui/VideoView;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/VideoView;->mCanSeekForward:Z

    #@2
    return p1
.end method

.method static synthetic access$900(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@2
    return-object v0
.end method

.method private attachMediaController()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@2
    if-eqz v0, :cond_29

    #@4
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@6
    if-eqz v0, :cond_29

    #@8
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@a
    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    #@d
    invoke-virtual {p0}, Lcom/apportable/ui/VideoView;->getParent()Landroid/view/ViewParent;

    #@10
    move-result-object v0

    #@11
    instance-of v0, v0, Landroid/view/View;

    #@13
    if-eqz v0, :cond_2a

    #@15
    invoke-virtual {p0}, Lcom/apportable/ui/VideoView;->getParent()Landroid/view/ViewParent;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/view/View;

    #@1b
    :goto_1b
    iget-object v1, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@1d
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    #@20
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@22
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->isInPlaybackState()Z

    #@25
    move-result v1

    #@26
    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    #@29
    :cond_29
    return-void

    #@2a
    :cond_2a
    move-object v0, p0

    #@2b
    goto :goto_1b
.end method

.method private static getMetadata(Landroid/media/MediaPlayer;ZZ)Ljava/lang/Object;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method private getVideoContentDescription()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mUri:Landroid/net/Uri;

    #@2
    if-eqz v0, :cond_b

    #@4
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mUri:Landroid/net/Uri;

    #@6
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mFd:Ljava/io/FileDescriptor;

    #@d
    if-eqz v0, :cond_12

    #@f
    const-string v0, "<file descriptor>"

    #@11
    goto :goto_a

    #@12
    :cond_12
    const-string v0, "<no content>"

    #@14
    goto :goto_a
.end method

.method private hasVideoContent()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mUri:Landroid/net/Uri;

    #@2
    if-nez v0, :cond_8

    #@4
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mFd:Ljava/io/FileDescriptor;

    #@6
    if-eqz v0, :cond_a

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method private initVideoView()V
    .registers 5

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iput v2, p0, Lcom/apportable/ui/VideoView;->mVideoWidth:I

    #@4
    iput v2, p0, Lcom/apportable/ui/VideoView;->mVideoHeight:I

    #@6
    invoke-virtual {p0}, Lcom/apportable/ui/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Lcom/apportable/ui/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    #@c
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    #@f
    invoke-virtual {p0}, Lcom/apportable/ui/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x3

    #@14
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    #@17
    invoke-virtual {p0, v3}, Lcom/apportable/ui/VideoView;->setFocusable(Z)V

    #@1a
    invoke-virtual {p0, v3}, Lcom/apportable/ui/VideoView;->setFocusableInTouchMode(Z)V

    #@1d
    invoke-virtual {p0}, Lcom/apportable/ui/VideoView;->requestFocus()Z

    #@20
    iput v2, p0, Lcom/apportable/ui/VideoView;->mCurrentState:I

    #@22
    iput v2, p0, Lcom/apportable/ui/VideoView;->mTargetState:I

    #@24
    return-void
.end method

.method private isInPlaybackState()Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    iget-object v1, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@3
    if-eqz v1, :cond_13

    #@5
    iget v1, p0, Lcom/apportable/ui/VideoView;->mCurrentState:I

    #@7
    const/4 v2, -0x1

    #@8
    if-eq v1, v2, :cond_13

    #@a
    iget v1, p0, Lcom/apportable/ui/VideoView;->mCurrentState:I

    #@c
    if-eqz v1, :cond_13

    #@e
    iget v1, p0, Lcom/apportable/ui/VideoView;->mCurrentState:I

    #@10
    if-eq v1, v0, :cond_13

    #@12
    :goto_12
    return v0

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    goto :goto_12
.end method

.method private static metadataGetBoolean(Ljava/lang/Object;I)Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method private static metadataHas(Ljava/lang/Object;I)Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method private openVideo()V
    .registers 10

    #@0
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, -0x1

    #@3
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->hasVideoContent()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_d

    #@9
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@b
    if-nez v0, :cond_e

    #@d
    :cond_d
    :goto_d
    return-void

    #@e
    :cond_e
    new-instance v0, Landroid/content/Intent;

    #@10
    const-string v1, "com.android.music.musicservicecommand"

    #@12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@15
    const-string v1, "command"

    #@17
    const-string v2, "pause"

    #@19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1c
    invoke-virtual {p0}, Lcom/apportable/ui/VideoView;->getContext()Landroid/content/Context;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@23
    invoke-direct {p0, v7}, Lcom/apportable/ui/VideoView;->release(Z)V

    #@26
    :try_start_26
    new-instance v0, Landroid/media/MediaPlayer;

    #@28
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@2d
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@2f
    iget-object v1, p0, Lcom/apportable/ui/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@31
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    #@34
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@36
    iget-object v1, p0, Lcom/apportable/ui/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@38
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    #@3b
    const/4 v0, -0x1

    #@3c
    iput v0, p0, Lcom/apportable/ui/VideoView;->mDuration:I

    #@3e
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@40
    iget-object v1, p0, Lcom/apportable/ui/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@42
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    #@45
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@47
    iget-object v1, p0, Lcom/apportable/ui/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@49
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    #@4c
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@4e
    iget-object v1, p0, Lcom/apportable/ui/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    #@50
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    #@53
    const/4 v0, 0x0

    #@54
    iput v0, p0, Lcom/apportable/ui/VideoView;->mCurrentBufferPercentage:I

    #@56
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mFd:Ljava/io/FileDescriptor;

    #@58
    if-eqz v0, :cond_b6

    #@5a
    iget-wide v0, p0, Lcom/apportable/ui/VideoView;->mFdLength:J

    #@5c
    const-wide/16 v2, 0x0

    #@5e
    cmp-long v0, v0, v2

    #@60
    if-ltz v0, :cond_b6

    #@62
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@64
    iget-object v1, p0, Lcom/apportable/ui/VideoView;->mFd:Ljava/io/FileDescriptor;

    #@66
    iget-wide v2, p0, Lcom/apportable/ui/VideoView;->mFdOffset:J

    #@68
    iget-wide v4, p0, Lcom/apportable/ui/VideoView;->mFdLength:J

    #@6a
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    #@6d
    :goto_6d
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@6f
    iget-object v1, p0, Lcom/apportable/ui/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@71
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    #@74
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@76
    const/4 v1, 0x3

    #@77
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    #@7a
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@7c
    const/4 v1, 0x1

    #@7d
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    #@80
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@82
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    #@85
    const/4 v0, 0x1

    #@86
    iput v0, p0, Lcom/apportable/ui/VideoView;->mCurrentState:I

    #@88
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->attachMediaController()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_8b} :catch_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_8b} :catch_c2

    #@8b
    goto :goto_d

    #@8c
    :catch_8c
    move-exception v0

    #@8d
    iget-object v1, p0, Lcom/apportable/ui/VideoView;->TAG:Ljava/lang/String;

    #@8f
    new-instance v2, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string v3, "Unable to open content: "

    #@96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v2

    #@9a
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->getVideoContentDescription()Ljava/lang/String;

    #@9d
    move-result-object v3

    #@9e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v2

    #@a6
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a9
    iput v6, p0, Lcom/apportable/ui/VideoView;->mCurrentState:I

    #@ab
    iput v6, p0, Lcom/apportable/ui/VideoView;->mTargetState:I

    #@ad
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@af
    iget-object v1, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@b1
    invoke-interface {v0, v1, v8, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    #@b4
    goto/16 :goto_d

    #@b6
    :cond_b6
    :try_start_b6
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mFd:Ljava/io/FileDescriptor;

    #@b8
    if-eqz v0, :cond_ec

    #@ba
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@bc
    iget-object v1, p0, Lcom/apportable/ui/VideoView;->mFd:Ljava/io/FileDescriptor;

    #@be
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_c1} :catch_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b6 .. :try_end_c1} :catch_c2

    #@c1
    goto :goto_6d

    #@c2
    :catch_c2
    move-exception v0

    #@c3
    iget-object v1, p0, Lcom/apportable/ui/VideoView;->TAG:Ljava/lang/String;

    #@c5
    new-instance v2, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string v3, "Unable to open content: "

    #@cc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v2

    #@d0
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->getVideoContentDescription()Ljava/lang/String;

    #@d3
    move-result-object v3

    #@d4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v2

    #@d8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v2

    #@dc
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@df
    iput v6, p0, Lcom/apportable/ui/VideoView;->mCurrentState:I

    #@e1
    iput v6, p0, Lcom/apportable/ui/VideoView;->mTargetState:I

    #@e3
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@e5
    iget-object v1, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@e7
    invoke-interface {v0, v1, v8, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    #@ea
    goto/16 :goto_d

    #@ec
    :cond_ec
    :try_start_ec
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@ee
    invoke-virtual {p0}, Lcom/apportable/ui/VideoView;->getContext()Landroid/content/Context;

    #@f1
    move-result-object v1

    #@f2
    iget-object v2, p0, Lcom/apportable/ui/VideoView;->mUri:Landroid/net/Uri;

    #@f4
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_f7} :catch_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ec .. :try_end_f7} :catch_c2

    #@f7
    goto/16 :goto_6d
.end method

.method private release(Z)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@3
    if-eqz v0, :cond_18

    #@5
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@7
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    #@a
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@c
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    #@f
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@12
    iput v1, p0, Lcom/apportable/ui/VideoView;->mCurrentState:I

    #@14
    if-eqz p1, :cond_18

    #@16
    iput v1, p0, Lcom/apportable/ui/VideoView;->mTargetState:I

    #@18
    :cond_18
    return-void
.end method

.method private setVideoContent(Landroid/net/Uri;Ljava/io/FileDescriptor;JJ)V
    .registers 8

    #@0
    iput-object p1, p0, Lcom/apportable/ui/VideoView;->mUri:Landroid/net/Uri;

    #@2
    iput-object p2, p0, Lcom/apportable/ui/VideoView;->mFd:Ljava/io/FileDescriptor;

    #@4
    iput-wide p3, p0, Lcom/apportable/ui/VideoView;->mFdOffset:J

    #@6
    iput-wide p5, p0, Lcom/apportable/ui/VideoView;->mFdLength:J

    #@8
    const/4 v0, 0x0

    #@9
    iput v0, p0, Lcom/apportable/ui/VideoView;->mSeekWhenPrepared:I

    #@b
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->openVideo()V

    #@e
    invoke-virtual {p0}, Lcom/apportable/ui/VideoView;->requestLayout()V

    #@11
    invoke-virtual {p0}, Lcom/apportable/ui/VideoView;->invalidate()V

    #@14
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@2
    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_e

    #@8
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@a
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@10
    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    #@13
    goto :goto_d
.end method


# virtual methods
.method public canPause()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/VideoView;->mCanPause:Z

    #@2
    return v0
.end method

.method public canSeekBackward()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/VideoView;->mCanSeekBack:Z

    #@2
    return v0
.end method

.method public canSeekForward()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/VideoView;->mCanSeekForward:Z

    #@2
    return v0
.end method

.method public getBufferPercentage()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@2
    if-eqz v0, :cond_7

    #@4
    iget v0, p0, Lcom/apportable/ui/VideoView;->mCurrentBufferPercentage:I

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    goto :goto_6
.end method

.method public getCurrentPosition()I
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->isInPlaybackState()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@8
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    #@b
    move-result v0

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_c
.end method

.method public getDuration()I
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->isInPlaybackState()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_18

    #@6
    iget v0, p0, Lcom/apportable/ui/VideoView;->mDuration:I

    #@8
    if-lez v0, :cond_d

    #@a
    iget v0, p0, Lcom/apportable/ui/VideoView;->mDuration:I

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@f
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Lcom/apportable/ui/VideoView;->mDuration:I

    #@15
    iget v0, p0, Lcom/apportable/ui/VideoView;->mDuration:I

    #@17
    goto :goto_c

    #@18
    :cond_18
    const/4 v0, -0x1

    #@19
    iput v0, p0, Lcom/apportable/ui/VideoView;->mDuration:I

    #@1b
    iget v0, p0, Lcom/apportable/ui/VideoView;->mDuration:I

    #@1d
    goto :goto_c
.end method

.method public isPlaying()Z
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->isInPlaybackState()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_10

    #@6
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@8
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_f
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x4

    #@2
    if-eq p1, v0, :cond_3c

    #@4
    const/16 v0, 0x18

    #@6
    if-eq p1, v0, :cond_3c

    #@8
    const/16 v0, 0x19

    #@a
    if-eq p1, v0, :cond_3c

    #@c
    const/16 v0, 0x52

    #@e
    if-eq p1, v0, :cond_3c

    #@10
    const/4 v0, 0x5

    #@11
    if-eq p1, v0, :cond_3c

    #@13
    const/4 v0, 0x6

    #@14
    if-eq p1, v0, :cond_3c

    #@16
    move v0, v1

    #@17
    :goto_17
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->isInPlaybackState()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_5b

    #@1d
    if-eqz v0, :cond_5b

    #@1f
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@21
    if-eqz v0, :cond_5b

    #@23
    const/16 v0, 0x4f

    #@25
    if-eq p1, v0, :cond_2b

    #@27
    const/16 v0, 0x55

    #@29
    if-ne p1, v0, :cond_47

    #@2b
    :cond_2b
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@2d
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_3e

    #@33
    invoke-virtual {p0}, Lcom/apportable/ui/VideoView;->pause()V

    #@36
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@38
    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    #@3b
    :goto_3b
    return v1

    #@3c
    :cond_3c
    const/4 v0, 0x0

    #@3d
    goto :goto_17

    #@3e
    :cond_3e
    invoke-virtual {p0}, Lcom/apportable/ui/VideoView;->start()V

    #@41
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@43
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    #@46
    goto :goto_3b

    #@47
    :cond_47
    const/16 v0, 0x56

    #@49
    if-ne p1, v0, :cond_60

    #@4b
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@4d
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_60

    #@53
    invoke-virtual {p0}, Lcom/apportable/ui/VideoView;->pause()V

    #@56
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@58
    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    #@5b
    :cond_5b
    :goto_5b
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@5e
    move-result v1

    #@5f
    goto :goto_3b

    #@60
    :cond_60
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->toggleMediaControlsVisiblity()V

    #@63
    goto :goto_5b
.end method

.method protected onMeasure(II)V
    .registers 7

    #@0
    iget v0, p0, Lcom/apportable/ui/VideoView;->mVideoWidth:I

    #@2
    invoke-static {v0, p1}, Lcom/apportable/ui/VideoView;->getDefaultSize(II)I

    #@5
    move-result v1

    #@6
    iget v0, p0, Lcom/apportable/ui/VideoView;->mVideoHeight:I

    #@8
    invoke-static {v0, p2}, Lcom/apportable/ui/VideoView;->getDefaultSize(II)I

    #@b
    move-result v0

    #@c
    iget v2, p0, Lcom/apportable/ui/VideoView;->mVideoWidth:I

    #@e
    if-lez v2, :cond_22

    #@10
    iget v2, p0, Lcom/apportable/ui/VideoView;->mVideoHeight:I

    #@12
    if-lez v2, :cond_22

    #@14
    iget v2, p0, Lcom/apportable/ui/VideoView;->mVideoWidth:I

    #@16
    mul-int/2addr v2, v0

    #@17
    iget v3, p0, Lcom/apportable/ui/VideoView;->mVideoHeight:I

    #@19
    mul-int/2addr v3, v1

    #@1a
    if-le v2, v3, :cond_26

    #@1c
    iget v0, p0, Lcom/apportable/ui/VideoView;->mVideoHeight:I

    #@1e
    mul-int/2addr v0, v1

    #@1f
    iget v2, p0, Lcom/apportable/ui/VideoView;->mVideoWidth:I

    #@21
    div-int/2addr v0, v2

    #@22
    :cond_22
    :goto_22
    invoke-virtual {p0, v1, v0}, Lcom/apportable/ui/VideoView;->setMeasuredDimension(II)V

    #@25
    return-void

    #@26
    :cond_26
    iget v2, p0, Lcom/apportable/ui/VideoView;->mVideoWidth:I

    #@28
    mul-int/2addr v2, v0

    #@29
    iget v3, p0, Lcom/apportable/ui/VideoView;->mVideoHeight:I

    #@2b
    mul-int/2addr v3, v1

    #@2c
    if-ge v2, v3, :cond_22

    #@2e
    iget v1, p0, Lcom/apportable/ui/VideoView;->mVideoWidth:I

    #@30
    mul-int/2addr v1, v0

    #@31
    iget v2, p0, Lcom/apportable/ui/VideoView;->mVideoHeight:I

    #@33
    div-int/2addr v1, v2

    #@34
    goto :goto_22
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->isInPlaybackState()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@8
    if-eqz v0, :cond_d

    #@a
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->toggleMediaControlsVisiblity()V

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->isInPlaybackState()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@8
    if-eqz v0, :cond_d

    #@a
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->toggleMediaControlsVisiblity()V

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public pause()V
    .registers 3

    #@0
    const/4 v1, 0x4

    #@1
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->isInPlaybackState()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_16

    #@7
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_16

    #@f
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@11
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    #@14
    iput v1, p0, Lcom/apportable/ui/VideoView;->mCurrentState:I

    #@16
    :cond_16
    iput v1, p0, Lcom/apportable/ui/VideoView;->mTargetState:I

    #@18
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .registers 5

    #@0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v1

    #@4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@7
    move-result v0

    #@8
    sparse-switch v1, :sswitch_data_14

    #@b
    :goto_b
    :sswitch_b
    return p1

    #@c
    :sswitch_c
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@f
    move-result p1

    #@10
    goto :goto_b

    #@11
    :sswitch_11
    move p1, v0

    #@12
    goto :goto_b

    #@13
    nop

    #@14
    :sswitch_data_14
    .sparse-switch
        -0x80000000 -> :sswitch_c
        0x0 -> :sswitch_b
        0x40000000 -> :sswitch_11
    .end sparse-switch
.end method

.method public seekTo(I)V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->isInPlaybackState()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@8
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    #@b
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lcom/apportable/ui/VideoView;->mSeekWhenPrepared:I

    #@e
    :goto_e
    return-void

    #@f
    :cond_f
    iput p1, p0, Lcom/apportable/ui/VideoView;->mSeekWhenPrepared:I

    #@11
    goto :goto_e
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@6
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    #@9
    :cond_9
    iput-object p1, p0, Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@b
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->attachMediaController()V

    #@e
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@2
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@2
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@2
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/apportable/ui/VideoView;->setVideoURI(Landroid/net/Uri;)V

    #@7
    return-void
.end method

.method public setVideoSource(Ljava/io/FileDescriptor;JJ)V
    .registers 14

    #@0
    const/4 v2, 0x0

    #@1
    move-object v1, p0

    #@2
    move-object v3, p1

    #@3
    move-wide v4, p2

    #@4
    move-wide v6, p4

    #@5
    invoke-direct/range {v1 .. v7}, Lcom/apportable/ui/VideoView;->setVideoContent(Landroid/net/Uri;Ljava/io/FileDescriptor;JJ)V

    #@8
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .registers 10

    #@0
    const-wide/16 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    move-object v1, p0

    #@4
    move-object v2, p1

    #@5
    move-wide v6, v4

    #@6
    invoke-direct/range {v1 .. v7}, Lcom/apportable/ui/VideoView;->setVideoContent(Landroid/net/Uri;Ljava/io/FileDescriptor;JJ)V

    #@9
    return-void
.end method

.method public start()V
    .registers 3

    #@0
    const/4 v1, 0x3

    #@1
    invoke-direct {p0}, Lcom/apportable/ui/VideoView;->isInPlaybackState()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_e

    #@7
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    #@c
    iput v1, p0, Lcom/apportable/ui/VideoView;->mCurrentState:I

    #@e
    :cond_e
    iput v1, p0, Lcom/apportable/ui/VideoView;->mTargetState:I

    #@10
    return-void
.end method

.method public stopPlayback()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@3
    if-eqz v0, :cond_16

    #@5
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@7
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    #@a
    iget-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@c
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    #@f
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@12
    iput v1, p0, Lcom/apportable/ui/VideoView;->mCurrentState:I

    #@14
    iput v1, p0, Lcom/apportable/ui/VideoView;->mTargetState:I

    #@16
    :cond_16
    return-void
.end method
