.class Lcom/apportable/ui/MediaPlayer;
.super Lcom/apportable/ui/View;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDeferredFrame:Landroid/graphics/RectF;

.field private mHasDeferredFrame:Z

.field private mMediaPlayer:Lcom/apportable/ui/VideoView;

.field private mPlaybackPossible:Z

.field private mResumePosition:I

.field private mUriString:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;I)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    #@3
    const-string v0, "MediaPlayer/Video"

    #@5
    iput-object v0, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    #@7
    invoke-direct {p0, p1}, Lcom/apportable/ui/MediaPlayer;->init(Landroid/app/Activity;)V

    #@a
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;ILandroid/graphics/RectF;)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    #@3
    const-string v0, "MediaPlayer/Video"

    #@5
    iput-object v0, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    #@7
    invoke-direct {p0, p1}, Lcom/apportable/ui/MediaPlayer;->init(Landroid/app/Activity;)V

    #@a
    new-instance v0, Landroid/graphics/RectF;

    #@c
    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@f
    iput-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mDeferredFrame:Landroid/graphics/RectF;

    #@11
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Lcom/apportable/ui/MediaPlayer;->mHasDeferredFrame:Z

    #@14
    return-void
.end method

.method static synthetic access$002(Lcom/apportable/ui/MediaPlayer;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z

    #@2
    return p1
.end method

.method static synthetic access$100(Lcom/apportable/ui/MediaPlayer;)Lcom/apportable/ui/VideoView;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@2
    return-object v0
.end method

.method public static create(Landroid/app/Activity;I)Lcom/apportable/ui/MediaPlayer;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/MediaPlayer;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/MediaPlayer;-><init>(Landroid/app/Activity;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/app/Activity;ILandroid/graphics/RectF;)Lcom/apportable/ui/MediaPlayer;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/MediaPlayer;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/MediaPlayer;-><init>(Landroid/app/Activity;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private init(Landroid/app/Activity;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/apportable/ui/MediaPlayer;->mResumePosition:I

    #@3
    new-instance v0, Lcom/apportable/ui/VideoView;

    #@5
    invoke-direct {v0, p1}, Lcom/apportable/ui/VideoView;-><init>(Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@a
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@c
    invoke-virtual {v0, p0}, Lcom/apportable/ui/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    #@f
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@11
    invoke-virtual {p0, v0}, Lcom/apportable/ui/MediaPlayer;->setContentView(Landroid/view/View;)V

    #@14
    return-void
.end method

.method private native playbackCompleted(I)V
.end method


# virtual methods
.method public getCurrentPosition()D
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@2
    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->getCurrentPosition()I

    #@5
    move-result v0

    #@6
    int-to-double v0, v0

    #@7
    const-wide v2, 0x408f400000000000L    # 1000.0

    #@c
    div-double/2addr v0, v2

    #@d
    return-wide v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    #@0
    iget v0, p0, Lcom/apportable/ui/MediaPlayer;->mObject:I

    #@2
    invoke-direct {p0, v0}, Lcom/apportable/ui/MediaPlayer;->playbackCompleted(I)V

    #@5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    #@0
    invoke-super/range {p0 .. p5}, Lcom/apportable/ui/View;->onLayout(ZIIII)V

    #@3
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@5
    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->getVisibility()I

    #@8
    move-result v0

    #@9
    const/16 v1, 0x8

    #@b
    if-eq v0, v1, :cond_4b

    #@d
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-virtual {p0}, Lcom/apportable/ui/MediaPlayer;->getPaddingLeft()I

    #@12
    move-result v1

    #@13
    invoke-virtual {p0}, Lcom/apportable/ui/MediaPlayer;->getPaddingTop()I

    #@16
    move-result v2

    #@17
    sub-int v3, p4, p2

    #@19
    invoke-virtual {p0}, Lcom/apportable/ui/MediaPlayer;->getPaddingRight()I

    #@1c
    move-result v4

    #@1d
    sub-int/2addr v3, v4

    #@1e
    sub-int v4, p5, p3

    #@20
    invoke-virtual {p0}, Lcom/apportable/ui/MediaPlayer;->getPaddingBottom()I

    #@23
    move-result v5

    #@24
    sub-int/2addr v4, v5

    #@25
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@28
    new-instance v1, Landroid/graphics/Rect;

    #@2a
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@2d
    const/16 v2, 0x11

    #@2f
    iget-object v3, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@31
    invoke-virtual {v3}, Lcom/apportable/ui/VideoView;->getMeasuredWidth()I

    #@34
    move-result v3

    #@35
    iget-object v4, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@37
    invoke-virtual {v4}, Lcom/apportable/ui/VideoView;->getMeasuredHeight()I

    #@3a
    move-result v4

    #@3b
    invoke-static {v2, v3, v4, v0, v1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@3e
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@40
    iget v2, v1, Landroid/graphics/Rect;->left:I

    #@42
    iget v3, v1, Landroid/graphics/Rect;->top:I

    #@44
    iget v4, v1, Landroid/graphics/Rect;->right:I

    #@46
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@48
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/apportable/ui/VideoView;->layout(IIII)V

    #@4b
    :cond_4b
    return-void
.end method

.method public pause()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@2
    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->getCurrentPosition()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/apportable/ui/MediaPlayer;->mResumePosition:I

    #@8
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@a
    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->pause()V

    #@d
    return-void
.end method

.method public play()V
    .registers 3

    #@0
    iget v0, p0, Lcom/apportable/ui/MediaPlayer;->mResumePosition:I

    #@2
    if-eqz v0, :cond_14

    #@4
    iget v0, p0, Lcom/apportable/ui/MediaPlayer;->mResumePosition:I

    #@6
    iget-object v1, p0, Lcom/apportable/ui/MediaPlayer;->mUriString:Ljava/lang/String;

    #@8
    invoke-virtual {p0, v1}, Lcom/apportable/ui/MediaPlayer;->setContentURI(Ljava/lang/String;)V

    #@b
    iget-boolean v1, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z

    #@d
    if-eqz v1, :cond_14

    #@f
    iget-object v1, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@11
    invoke-virtual {v1, v0}, Lcom/apportable/ui/VideoView;->seekTo(I)V

    #@14
    :cond_14
    iget-boolean v0, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z

    #@16
    if-eqz v0, :cond_2e

    #@18
    iget-boolean v0, p0, Lcom/apportable/ui/MediaPlayer;->mHasDeferredFrame:Z

    #@1a
    if-eqz v0, :cond_21

    #@1c
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mDeferredFrame:Landroid/graphics/RectF;

    #@1e
    invoke-virtual {p0, v0}, Lcom/apportable/ui/MediaPlayer;->setFrame(Landroid/graphics/RectF;)V

    #@21
    :cond_21
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@24
    move-result-object v0

    #@25
    new-instance v1, Lcom/apportable/ui/MediaPlayer$2;

    #@27
    invoke-direct {v1, p0}, Lcom/apportable/ui/MediaPlayer$2;-><init>(Lcom/apportable/ui/MediaPlayer;)V

    #@2a
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@2d
    :goto_2d
    return-void

    #@2e
    :cond_2e
    const/4 v0, 0x0

    #@2f
    invoke-virtual {p0, v0}, Lcom/apportable/ui/MediaPlayer;->onCompletion(Landroid/media/MediaPlayer;)V

    #@32
    goto :goto_2d
.end method

.method public setContentURI(Ljava/lang/String;)V
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    iput v7, p0, Lcom/apportable/ui/MediaPlayer;->mResumePosition:I

    #@5
    iput-object p1, p0, Lcom/apportable/ui/MediaPlayer;->mUriString:Ljava/lang/String;

    #@7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    iput-boolean v7, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z

    #@11
    :try_start_11
    iget-object v2, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string v4, "initializeVideo: checking first in path:"

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    new-instance v2, Ljava/io/FileInputStream;

    #@2b
    new-instance v3, Ljava/io/File;

    #@2d
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@30
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_33} :catch_7d

    #@33
    :try_start_33
    iget-object v3, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    #@35
    new-instance v4, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string v5, "initializeVideo: file stream found:"

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    const/4 v3, 0x1

    #@50
    iput-boolean v3, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_52} :catch_19e

    #@52
    move-object v4, v0

    #@53
    move-object v6, v1

    #@54
    move-object v1, v2

    #@55
    :goto_55
    iget-boolean v0, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z

    #@57
    if-eqz v0, :cond_7c

    #@59
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@5b
    new-instance v2, Lcom/apportable/ui/MediaPlayer$1;

    #@5d
    invoke-direct {v2, p0}, Lcom/apportable/ui/MediaPlayer$1;-><init>(Lcom/apportable/ui/MediaPlayer;)V

    #@60
    invoke-virtual {v0, v2}, Lcom/apportable/ui/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    #@63
    if-eqz v1, :cond_139

    #@65
    :try_start_65
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    #@6c
    move-result v0

    #@6d
    if-eqz v0, :cond_139

    #@6f
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@71
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@74
    move-result-object v1

    #@75
    const-wide/16 v2, 0x0

    #@77
    const-wide/16 v4, -0x1

    #@79
    invoke-virtual/range {v0 .. v5}, Lcom/apportable/ui/VideoView;->setVideoSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7c} :catch_158

    #@7c
    :cond_7c
    :goto_7c
    return-void

    #@7d
    :catch_7d
    move-exception v2

    #@7e
    move-object v3, v0

    #@7f
    :goto_7f
    :try_start_7f
    const-string v2, "^/"

    #@81
    const-string v4, ""

    #@83
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_86} :catch_c0

    #@86
    move-result-object v2

    #@87
    :try_start_87
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1}, Lcom/apportable/activity/VerdeActivity;->getAssets()Landroid/content/res/AssetManager;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@92
    move-result-object v1

    #@93
    iget-object v4, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    #@95
    new-instance v5, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string v6, "initializeVideo: using asset path:\'"

    #@9c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v5

    #@a4
    const-string v6, "\' desc:"

    #@a6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v5

    #@aa
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->toString()Ljava/lang/String;

    #@ad
    move-result-object v6

    #@ae
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v5

    #@b2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v5

    #@b6
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b9
    const/4 v4, 0x1

    #@ba
    iput-boolean v4, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_bc} :catch_1a2

    #@bc
    move-object v4, v1

    #@bd
    move-object v6, v2

    #@be
    move-object v1, v3

    #@bf
    goto :goto_55

    #@c0
    :catch_c0
    move-exception v2

    #@c1
    :goto_c1
    iget-object v4, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    #@c3
    new-instance v5, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string v6, "initializeVideo: error loading from APK:"

    #@ca
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v5

    #@ce
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@d1
    move-result-object v2

    #@d2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v2

    #@d6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v2

    #@da
    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@dd
    invoke-static {}, Lcom/apportable/ExpansionFileManager;->getManager()Lcom/apportable/ExpansionFileManager;

    #@e0
    move-result-object v2

    #@e1
    invoke-virtual {v2}, Lcom/apportable/ExpansionFileManager;->hasExpansionFiles()Z

    #@e4
    move-result v2

    #@e5
    if-eqz v2, :cond_ef

    #@e7
    invoke-static {}, Lcom/apportable/ExpansionFileManager;->getManager()Lcom/apportable/ExpansionFileManager;

    #@ea
    move-result-object v0

    #@eb
    invoke-virtual {v0, v1}, Lcom/apportable/ExpansionFileManager;->openAssetFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@ee
    move-result-object v0

    #@ef
    :cond_ef
    if-nez v0, :cond_114

    #@f1
    iget-object v2, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    #@f3
    new-instance v4, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    const-string v5, "initializeVideo: could not find any file with path:\'"

    #@fa
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v4

    #@fe
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v4

    #@102
    const-string v5, "\'"

    #@104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v4

    #@108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v4

    #@10c
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@10f
    move-object v4, v0

    #@110
    move-object v6, v1

    #@111
    move-object v1, v3

    #@112
    goto/16 :goto_55

    #@114
    :cond_114
    iget-object v2, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    #@116
    new-instance v4, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    const-string v5, "initializeVideo: using asset path:\'"

    #@11d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v4

    #@121
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v4

    #@125
    const-string v5, " from expansion files"

    #@127
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v4

    #@12b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v4

    #@12f
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@132
    iput-boolean v8, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z

    #@134
    move-object v4, v0

    #@135
    move-object v6, v1

    #@136
    move-object v1, v3

    #@137
    goto/16 :goto_55

    #@139
    :cond_139
    if-eqz v4, :cond_17b

    #@13b
    :try_start_13b
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@13e
    move-result-object v0

    #@13f
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    #@142
    move-result v0

    #@143
    if-eqz v0, :cond_17b

    #@145
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@147
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@14a
    move-result-object v1

    #@14b
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@14e
    move-result-wide v2

    #@14f
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    #@152
    move-result-wide v4

    #@153
    invoke-virtual/range {v0 .. v5}, Lcom/apportable/ui/VideoView;->setVideoSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_156} :catch_158

    #@156
    goto/16 :goto_7c

    #@158
    :catch_158
    move-exception v0

    #@159
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    #@15b
    new-instance v1, Ljava/lang/StringBuilder;

    #@15d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@160
    const-string v2, "initializeAudio: could not setVideoSource with asset path:\'"

    #@162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v1

    #@166
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v1

    #@16a
    const-string v2, "\'"

    #@16c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v1

    #@170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@173
    move-result-object v1

    #@174
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@177
    iput-boolean v7, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z

    #@179
    goto/16 :goto_7c

    #@17b
    :cond_17b
    :try_start_17b
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->TAG:Ljava/lang/String;

    #@17d
    new-instance v1, Ljava/lang/StringBuilder;

    #@17f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@182
    const-string v2, "initializeVideo: could not setVideoSource with asset path:\'"

    #@184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v1

    #@188
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v1

    #@18c
    const-string v2, "\'"

    #@18e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v1

    #@192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@195
    move-result-object v1

    #@196
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@199
    const/4 v0, 0x0

    #@19a
    iput-boolean v0, p0, Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_19c} :catch_158

    #@19c
    goto/16 :goto_7c

    #@19e
    :catch_19e
    move-exception v3

    #@19f
    move-object v3, v2

    #@1a0
    goto/16 :goto_7f

    #@1a2
    :catch_1a2
    move-exception v1

    #@1a3
    move-object v9, v1

    #@1a4
    move-object v1, v2

    #@1a5
    move-object v2, v9

    #@1a6
    goto/16 :goto_c1
.end method

.method public setFrame(Landroid/graphics/RectF;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/apportable/ui/MediaPlayer;->mHasDeferredFrame:Z

    #@3
    invoke-super {p0, p1}, Lcom/apportable/ui/View;->setFrame(Landroid/graphics/RectF;)V

    #@6
    return-void
.end method

.method public setShouldAutoplay(Z)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@2
    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->isPlaying()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_d

    #@8
    if-eqz p1, :cond_e

    #@a
    invoke-virtual {p0}, Lcom/apportable/ui/MediaPlayer;->play()V

    #@d
    :cond_d
    :goto_d
    return-void

    #@e
    :cond_e
    invoke-virtual {p0}, Lcom/apportable/ui/MediaPlayer;->pause()V

    #@11
    goto :goto_d
.end method

.method public stop()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;

    #@2
    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->stopPlayback()V

    #@5
    return-void
.end method
