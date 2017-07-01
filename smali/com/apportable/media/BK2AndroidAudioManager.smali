.class public Lcom/apportable/media/BK2AndroidAudioManager;
.super Ljava/lang/Object;


# static fields
.field static final AUDIO_SESSION_CATEGORY_AMBIENT:I = 0x1

.field static final AUDIO_SESSION_CATEGORY_AUDIOPROCESSING:I = 0x6

.field static final AUDIO_SESSION_CATEGORY_MULTIROUTE:I = 0x7

.field static final AUDIO_SESSION_CATEGORY_PLAYANDRECORD:I = 0x5

.field static final AUDIO_SESSION_CATEGORY_PLAYBACK:I = 0x3

.field static final AUDIO_SESSION_CATEGORY_RECORD:I = 0x4

.field static final AUDIO_SESSION_CATEGORY_SOLOAMBIENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BK2AndroidAudioManager"

.field private static instance:Lcom/apportable/media/BK2AndroidAudioManager;


# instance fields
.field private afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioManagerService:Lcom/apportable/media/AudioManagerService;

.field private audioManagerServiceFailed:Z

.field private mAM:Landroid/media/AudioManager;

.field private mActive:Z

.field private mCategory:I

.field mCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIsOtherMusicActive:Z

.field private mSilenceOnSuspend:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/apportable/media/BK2AndroidAudioManager;->instance:Lcom/apportable/media/BK2AndroidAudioManager;

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v0, 0x0

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    iput-boolean v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->audioManagerServiceFailed:Z

    #@9
    iput-boolean v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mIsOtherMusicActive:Z

    #@b
    iput-boolean v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mActive:Z

    #@d
    iput-object v1, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mContext:Landroid/content/Context;

    #@f
    iput v5, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategory:I

    #@11
    iput-boolean v4, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mSilenceOnSuspend:Z

    #@13
    iput-object v1, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    #@15
    new-instance v0, Lcom/apportable/media/BK2AndroidAudioManager$1;

    #@17
    invoke-direct {v0, p0}, Lcom/apportable/media/BK2AndroidAudioManager$1;-><init>(Lcom/apportable/media/BK2AndroidAudioManager;)V

    #@1a
    iput-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@1c
    new-instance v0, Lcom/apportable/media/BK2AndroidAudioManager$2;

    #@1e
    invoke-direct {v0, p0}, Lcom/apportable/media/BK2AndroidAudioManager$2;-><init>(Lcom/apportable/media/BK2AndroidAudioManager;)V

    #@21
    iput-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mConnection:Landroid/content/ServiceConnection;

    #@23
    iput-object p1, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mContext:Landroid/content/Context;

    #@25
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mContext:Landroid/content/Context;

    #@27
    const-string v1, "audio"

    #@29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/media/AudioManager;

    #@2f
    iput-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mAM:Landroid/media/AudioManager;

    #@31
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mContext:Landroid/content/Context;

    #@33
    new-instance v1, Landroid/content/Intent;

    #@35
    iget-object v2, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mContext:Landroid/content/Context;

    #@37
    const-class v3, Lcom/apportable/media/AudioManagerService;

    #@39
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@3c
    iget-object v2, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mConnection:Landroid/content/ServiceConnection;

    #@3e
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@41
    new-instance v0, Ljava/util/HashMap;

    #@43
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@46
    iput-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    #@48
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    #@4a
    const-string v1, "AVAudioSessionCategoryAmbient"

    #@4c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v2

    #@50
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    #@55
    const-string v1, "AVAudioSessionCategorySoloAmbient"

    #@57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v2

    #@5b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    #@60
    const-string v1, "AVAudioSessionCategoryPlayback"

    #@62
    const/4 v2, 0x3

    #@63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v2

    #@67
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    #@6c
    const-string v1, "AVAudioSessionCategoryRecord"

    #@6e
    const/4 v2, 0x4

    #@6f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v2

    #@73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    #@78
    const-string v1, "AVAudioSessionCategoryPlayAndRecord"

    #@7a
    const/4 v2, 0x5

    #@7b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e
    move-result-object v2

    #@7f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    #@84
    const-string v1, "AVAudioSessionCategoryAudioProcessing"

    #@86
    const/4 v2, 0x6

    #@87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8a
    move-result-object v2

    #@8b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    #@90
    const-string v1, "AVAudioSessionCategoryMultiRoute"

    #@92
    const/4 v2, 0x7

    #@93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@96
    move-result-object v2

    #@97
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    return-void
.end method

.method static synthetic access$000()Lcom/apportable/media/BK2AndroidAudioManager;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/media/BK2AndroidAudioManager;->instance:Lcom/apportable/media/BK2AndroidAudioManager;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/media/BK2AndroidAudioManager;)Lcom/apportable/media/AudioManagerService;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;

    #@2
    return-object v0
.end method

.method static synthetic access$102(Lcom/apportable/media/BK2AndroidAudioManager;Lcom/apportable/media/AudioManagerService;)Lcom/apportable/media/AudioManagerService;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/media/BK2AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;

    #@2
    return-object p1
.end method

.method static synthetic access$200(Lcom/apportable/media/BK2AndroidAudioManager;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@2
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/apportable/media/BK2AndroidAudioManager;
    .registers 2

    #@0
    sget-object v0, Lcom/apportable/media/BK2AndroidAudioManager;->instance:Lcom/apportable/media/BK2AndroidAudioManager;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Lcom/apportable/media/BK2AndroidAudioManager;

    #@6
    invoke-direct {v0, p0}, Lcom/apportable/media/BK2AndroidAudioManager;-><init>(Landroid/content/Context;)V

    #@9
    sput-object v0, Lcom/apportable/media/BK2AndroidAudioManager;->instance:Lcom/apportable/media/BK2AndroidAudioManager;

    #@b
    :cond_b
    sget-object v0, Lcom/apportable/media/BK2AndroidAudioManager;->instance:Lcom/apportable/media/BK2AndroidAudioManager;

    #@d
    return-object v0
.end method

.method private waitOnConnection()V
    .registers 5

    #@0
    const/16 v0, 0x190

    #@2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    #@4
    if-lez v0, :cond_2f

    #@6
    iget-boolean v1, p0, Lcom/apportable/media/BK2AndroidAudioManager;->audioManagerServiceFailed:Z

    #@8
    if-nez v1, :cond_2f

    #@a
    iget-object v1, p0, Lcom/apportable/media/BK2AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;

    #@c
    if-eqz v1, :cond_27

    #@e
    const-string v1, "BK2AndroidAudioManager"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string v3, "audioManagerService success with remaining attemps:"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    :goto_26
    return-void

    #@27
    :cond_27
    const-wide/16 v2, 0x5

    #@29
    :try_start_29
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_2d

    #@2c
    goto :goto_2

    #@2d
    :catch_2d
    move-exception v1

    #@2e
    goto :goto_2

    #@2f
    :cond_2f
    const/4 v0, 0x1

    #@30
    iput-boolean v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->audioManagerServiceFailed:Z

    #@32
    const-string v0, "BK2AndroidAudioManager"

    #@34
    const-string v1, "Failed waiting for AudioManagerService!"

    #@36
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    goto :goto_26
.end method


# virtual methods
.method public abandonAudioFocus()V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/apportable/media/BK2AndroidAudioManager;->waitOnConnection()V

    #@3
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;

    #@9
    invoke-virtual {v0}, Lcom/apportable/media/AudioManagerService;->abandonAudioFocus()V

    #@c
    :cond_c
    return-void
.end method

.method public native audioFocusChange(I)V
.end method

.method public getNativeFramesPerBuffer()I
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    const/16 v0, 0x400

    #@3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v3, 0x10

    #@7
    if-le v2, v3, :cond_11

    #@9
    iget-object v1, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mAM:Landroid/media/AudioManager;

    #@b
    const-string v2, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    #@d
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    :cond_11
    if-eqz v1, :cond_17

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@16
    move-result v0

    #@17
    :cond_17
    return v0
.end method

.method public getNativeSampleRate()F
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    const v0, 0x472c4400    # 44100.0f

    #@4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v3, 0x10

    #@8
    if-le v2, v3, :cond_12

    #@a
    iget-object v1, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mAM:Landroid/media/AudioManager;

    #@c
    const-string v2, "android.media.property.OUTPUT_SAMPLE_RATE"

    #@e
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    :cond_12
    if-eqz v1, :cond_18

    #@14
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@17
    move-result v0

    #@18
    :cond_18
    return v0
.end method

.method public isInputAvailable()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v0

    #@6
    const-string v1, "android.hardware.microphone"

    #@8
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public isMusicActive()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mIsOtherMusicActive:Z

    #@2
    return v0
.end method

.method public lifecycleResume()V
    .registers 1

    #@0
    invoke-virtual {p0}, Lcom/apportable/media/BK2AndroidAudioManager;->resumeAudio()V

    #@3
    return-void
.end method

.method public lifecycleSuspend()V
    .registers 4

    #@0
    const/4 v2, 0x1

    #@1
    invoke-virtual {p0}, Lcom/apportable/media/BK2AndroidAudioManager;->abandonAudioFocus()V

    #@4
    iget v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategory:I

    #@6
    if-eq v0, v2, :cond_11

    #@8
    iget v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategory:I

    #@a
    const/4 v1, 0x2

    #@b
    if-eq v0, v1, :cond_11

    #@d
    iget-boolean v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mSilenceOnSuspend:Z

    #@f
    if-ne v0, v2, :cond_14

    #@11
    :cond_11
    invoke-virtual {p0}, Lcom/apportable/media/BK2AndroidAudioManager;->suspendAudio()V

    #@14
    :cond_14
    return-void
.end method

.method public onCreate()V
    .registers 1

    #@0
    invoke-virtual {p0}, Lcom/apportable/media/BK2AndroidAudioManager;->updateOtherMusicState()V

    #@3
    return-void
.end method

.method public onResume()V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/apportable/media/BK2AndroidAudioManager;->updateOtherMusicState()V

    #@3
    iget v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategory:I

    #@5
    const/4 v1, 0x2

    #@6
    if-ne v0, v1, :cond_b

    #@8
    invoke-virtual {p0}, Lcom/apportable/media/BK2AndroidAudioManager;->requestAudioFocusPermanent()Z

    #@b
    :cond_b
    return-void
.end method

.method public requestAudioFocusPermanent()Z
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/apportable/media/BK2AndroidAudioManager;->waitOnConnection()V

    #@3
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;

    #@5
    if-eqz v0, :cond_e

    #@7
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;

    #@9
    invoke-virtual {v0}, Lcom/apportable/media/AudioManagerService;->requestAudioFocusPermanent()Z

    #@c
    move-result v0

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method public native resumeAudio()V
.end method

.method public setActive(Z)Z
    .registers 3

    #@0
    iput-boolean p1, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mActive:Z

    #@2
    const/4 v0, 0x1

    #@3
    return v0
.end method

.method public setActive(ZI)Z
    .registers 4

    #@0
    iput-boolean p1, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mActive:Z

    #@2
    const/4 v0, 0x1

    #@3
    return v0
.end method

.method public setBackgroundAudio(Z)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_7

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mSilenceOnSuspend:Z

    #@6
    :goto_6
    return-void

    #@7
    :cond_7
    iput-boolean v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mSilenceOnSuspend:Z

    #@9
    goto :goto_6
.end method

.method public setCategory(Ljava/lang/String;)Z
    .registers 5

    #@0
    const/4 v1, 0x1

    #@1
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    #@3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_23

    #@9
    const-string v0, "BK2AndroidAudioManager"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v2, "category not found:"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    const/4 v0, 0x0

    #@22
    :goto_22
    return v0

    #@23
    :cond_23
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategoryMap:Ljava/util/Map;

    #@25
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Ljava/lang/Integer;

    #@2b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategory:I

    #@31
    iget v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mCategory:I

    #@33
    if-ne v0, v1, :cond_3a

    #@35
    invoke-virtual {p0}, Lcom/apportable/media/BK2AndroidAudioManager;->abandonAudioFocus()V

    #@38
    :goto_38
    move v0, v1

    #@39
    goto :goto_22

    #@3a
    :cond_3a
    invoke-virtual {p0}, Lcom/apportable/media/BK2AndroidAudioManager;->requestAudioFocusPermanent()Z

    #@3d
    goto :goto_38
.end method

.method public native suspendAudio()V
.end method

.method public updateOtherMusicState()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mAM:Landroid/media/AudioManager;

    #@2
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    #@5
    move-result v0

    #@6
    iput-boolean v0, p0, Lcom/apportable/media/BK2AndroidAudioManager;->mIsOtherMusicActive:Z

    #@8
    return-void
.end method
