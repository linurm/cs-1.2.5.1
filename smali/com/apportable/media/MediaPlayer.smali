.class public Lcom/apportable/media/MediaPlayer;
.super Landroid/media/MediaPlayer;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    #@3
    const-string v0, "MediaPlayer"

    #@5
    iput-object v0, p0, Lcom/apportable/media/MediaPlayer;->TAG:Ljava/lang/String;

    #@7
    invoke-virtual {p0, p0}, Lcom/apportable/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    #@a
    invoke-virtual {p0, p0}, Lcom/apportable/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    #@d
    invoke-virtual {p0, p0}, Lcom/apportable/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    #@10
    invoke-virtual {p0, p0}, Lcom/apportable/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    #@13
    invoke-virtual {p0, p0}, Lcom/apportable/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    #@16
    invoke-virtual {p0, p0}, Lcom/apportable/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    #@19
    invoke-virtual {p0, p0}, Lcom/apportable/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    #@1c
    return-void
.end method


# virtual methods
.method public native onBufferingUpdate(Landroid/media/MediaPlayer;I)V
.end method

.method public native onCompletion(Landroid/media/MediaPlayer;)V
.end method

.method public native onError(Landroid/media/MediaPlayer;II)Z
.end method

.method public native onInfo(Landroid/media/MediaPlayer;II)Z
.end method

.method public native onPrepared(Landroid/media/MediaPlayer;)V
.end method

.method public native onSeekComplete(Landroid/media/MediaPlayer;)V
.end method

.method public native onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
.end method

.method public setContentURI(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    #@0
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    const-string v2, "file"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_64

    #@10
    new-instance v1, Ljava/io/File;

    #@12
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_27

    #@1f
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p0, v0}, Lcom/apportable/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    #@26
    :goto_26
    return-void

    #@27
    :cond_27
    invoke-static {}, Lcom/apportable/ExpansionFileManager;->getManager()Lcom/apportable/ExpansionFileManager;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Lcom/apportable/ExpansionFileManager;->hasExpansionFiles()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_57

    #@31
    invoke-static {}, Lcom/apportable/ExpansionFileManager;->getManager()Lcom/apportable/ExpansionFileManager;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v1, v0}, Lcom/apportable/ExpansionFileManager;->openAssetFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@3c
    move-result-object v0

    #@3d
    :goto_3d
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@44
    move-result-wide v2

    #@45
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    #@48
    move-result-wide v4

    #@49
    move-object v0, p0

    #@4a
    invoke-virtual/range {v0 .. v5}, Lcom/apportable/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4d} :catch_4e

    #@4d
    goto :goto_26

    #@4e
    :catch_4e
    move-exception v0

    #@4f
    const-string v1, "MediaPlayer"

    #@51
    const-string v2, "Failed to set video source."

    #@53
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@56
    goto :goto_26

    #@57
    :cond_57
    :try_start_57
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@62
    move-result-object v0

    #@63
    goto :goto_3d

    #@64
    :cond_64
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    const-string v2, "http"

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v1

    #@6e
    if-nez v1, :cond_7c

    #@70
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@73
    move-result-object v0

    #@74
    const-string v1, "https"

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v0

    #@7a
    if-eqz v0, :cond_84

    #@7c
    :cond_7c
    const-string v0, "MediaPlayer"

    #@7e
    const-string v1, "Network streams are not currently supported"

    #@80
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    goto :goto_26

    #@84
    :cond_84
    new-instance v0, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string v1, "MediaPlayer"

    #@8b
    const-string v2, "Unsupported URI scheme for Uri: "

    #@8d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v0

    #@99
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_9c} :catch_4e

    #@9c
    goto :goto_26
.end method
