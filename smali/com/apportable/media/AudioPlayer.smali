.class public Lcom/apportable/media/AudioPlayer;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field MAX_SOURCES:I

.field private mContext:Landroid/content/Context;

.field private mSourcePaths:[Ljava/lang/String;

.field private mSources:[Lcom/apportable/media/AudioPlayerItem;

.field private onDemandLoading:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "AudioPlayer"

    #@2
    sput-object v0, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/16 v0, 0x100

    #@2
    invoke-direct {p0, p1, v0}, Lcom/apportable/media/AudioPlayer;-><init>(Landroid/content/Context;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-boolean v0, p0, Lcom/apportable/media/AudioPlayer;->onDemandLoading:Z

    #@7
    iput-object v2, p0, Lcom/apportable/media/AudioPlayer;->mContext:Landroid/content/Context;

    #@9
    iput p2, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    #@b
    iput-object p1, p0, Lcom/apportable/media/AudioPlayer;->mContext:Landroid/content/Context;

    #@d
    iget v1, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    #@f
    new-array v1, v1, [Lcom/apportable/media/AudioPlayerItem;

    #@11
    iput-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@13
    iget v1, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    #@15
    new-array v1, v1, [Ljava/lang/String;

    #@17
    iput-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    #@19
    :goto_19
    iget v1, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    #@1b
    if-ge v0, v1, :cond_28

    #@1d
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@1f
    aput-object v2, v1, v0

    #@21
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    #@23
    aput-object v2, v1, v0

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_19

    #@28
    :cond_28
    return-void
.end method

.method private _releaseAudio(I)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    if-ne p1, v0, :cond_4

    #@3
    :cond_3
    :goto_3
    return-void

    #@4
    :cond_4
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@6
    aget-object v0, v0, p1

    #@8
    if-eqz v0, :cond_3

    #@a
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@c
    aget-object v0, v0, p1

    #@e
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@10
    if-eqz v0, :cond_3

    #@12
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@14
    aget-object v0, v0, p1

    #@16
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@18
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    #@1b
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@1d
    aget-object v0, v0, p1

    #@1f
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@21
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    #@24
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@26
    const/4 v1, 0x0

    #@27
    aput-object v1, v0, p1

    #@29
    goto :goto_3
.end method

.method private initializeAudio(I)I
    .registers 12

    #@0
    const/4 v6, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    #@4
    aget-object v9, v0, p1

    #@6
    new-instance v0, Landroid/media/MediaPlayer;

    #@8
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    #@b
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    #@e
    :try_start_e
    new-instance v1, Ljava/io/FileInputStream;

    #@10
    new-instance v3, Ljava/io/File;

    #@12
    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@15
    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_54

    #@18
    move-object v7, v2

    #@19
    move-object v8, v1

    #@1a
    :goto_1a
    if-eqz v8, :cond_c0

    #@1c
    :try_start_1c
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_c0

    #@26
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2d} :catch_db
    .catchall {:try_start_1c .. :try_end_2d} :catchall_144

    #@2d
    :goto_2d
    if-eqz v7, :cond_32

    #@2f
    :try_start_2f
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_150

    #@32
    :cond_32
    :goto_32
    if-eqz v8, :cond_37

    #@34
    :try_start_34
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_171

    #@37
    :cond_37
    :goto_37
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@39
    new-instance v2, Lcom/apportable/media/AudioPlayerItem;

    #@3b
    invoke-direct {v2, p1, v0, p0}, Lcom/apportable/media/AudioPlayerItem;-><init>(ILandroid/media/MediaPlayer;Lcom/apportable/media/AudioPlayer;)V

    #@3e
    aput-object v2, v1, p1

    #@40
    :try_start_40
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@42
    aget-object v0, v0, p1

    #@44
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@46
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    #@49
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@4b
    aget-object v0, v0, p1

    #@4d
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@4f
    const/4 v1, 0x0

    #@50
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_53} :catch_226

    #@53
    :cond_53
    :goto_53
    return p1

    #@54
    :catch_54
    move-exception v1

    #@55
    :try_start_55
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mContext:Landroid/content/Context;

    #@57
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1, v9}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5e} :catch_88

    #@5e
    move-result-object v1

    #@5f
    :try_start_5f
    sget-object v3, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    #@61
    new-instance v4, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string v5, "initializeAudio: using asset path:\'"

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    const-string v5, "\' desc:"

    #@72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->toString()Ljava/lang/String;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_85} :catch_230

    #@85
    move-object v7, v1

    #@86
    move-object v8, v2

    #@87
    goto :goto_1a

    #@88
    :catch_88
    move-exception v1

    #@89
    move-object v1, v2

    #@8a
    :goto_8a
    invoke-static {}, Lcom/apportable/ExpansionFileManager;->getManager()Lcom/apportable/ExpansionFileManager;

    #@8d
    move-result-object v3

    #@8e
    invoke-virtual {v3}, Lcom/apportable/ExpansionFileManager;->hasExpansionFiles()Z

    #@91
    move-result v3

    #@92
    if-eqz v3, :cond_9c

    #@94
    invoke-static {}, Lcom/apportable/ExpansionFileManager;->getManager()Lcom/apportable/ExpansionFileManager;

    #@97
    move-result-object v1

    #@98
    invoke-virtual {v1, v9}, Lcom/apportable/ExpansionFileManager;->openAssetFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@9b
    move-result-object v1

    #@9c
    :cond_9c
    if-nez v1, :cond_bc

    #@9e
    sget-object v3, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    #@a0
    new-instance v4, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string v5, "initializeAudio: could not find any audio file with path:\'"

    #@a7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v4

    #@ab
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v4

    #@af
    const-string v5, "\'"

    #@b1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v4

    #@b5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v4

    #@b9
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@bc
    :cond_bc
    move-object v7, v1

    #@bd
    move-object v8, v2

    #@be
    goto/16 :goto_1a

    #@c0
    :cond_c0
    :try_start_c0
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@c3
    move-result-object v1

    #@c4
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    #@c7
    move-result v1

    #@c8
    if-eqz v1, :cond_13c

    #@ca
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@cd
    move-result-object v1

    #@ce
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@d1
    move-result-wide v2

    #@d2
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    #@d5
    move-result-wide v4

    #@d6
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_d9} :catch_db
    .catchall {:try_start_c0 .. :try_end_d9} :catchall_144

    #@d9
    goto/16 :goto_2d

    #@db
    :catch_db
    move-exception v0

    #@dc
    :try_start_dc
    sget-object v1, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    #@de
    new-instance v2, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string v3, "initializeAudio: could not setDataSource with asset path:\'"

    #@e5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v2

    #@e9
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v2

    #@ed
    const-string v3, "\'"

    #@ef
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v2

    #@f3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v2

    #@f7
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@fa
    sget-object v1, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    #@fc
    new-instance v2, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    const-string v3, "initializeAudio: "

    #@103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v2

    #@107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v2

    #@10b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@10e
    move-result-object v3

    #@10f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v2

    #@113
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    #@116
    move-result-object v3

    #@117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v2

    #@11b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v2

    #@11f
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@122
    iget-boolean v1, p0, Lcom/apportable/media/AudioPlayer;->onDemandLoading:Z

    #@124
    if-nez v1, :cond_1c2

    #@126
    instance-of v0, v0, Ljava/io/IOException;

    #@128
    if-eqz v0, :cond_1c2

    #@12a
    if-lez p1, :cond_1c2

    #@12c
    sget-object v0, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    #@12e
    const-string v1, "switching to on-demand loading"

    #@130
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@133
    move v0, v6

    #@134
    :goto_134
    if-ge v0, p1, :cond_192

    #@136
    invoke-direct {p0, v0}, Lcom/apportable/media/AudioPlayer;->_releaseAudio(I)V
    :try_end_139
    .catchall {:try_start_dc .. :try_end_139} :catchall_144

    #@139
    add-int/lit8 v0, v0, 0x1

    #@13b
    goto :goto_134

    #@13c
    :cond_13c
    :try_start_13c
    new-instance v0, Ljava/lang/Exception;

    #@13e
    const-string v1, "Asset FD not valid"

    #@140
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@143
    throw v0
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_144} :catch_db
    .catchall {:try_start_13c .. :try_end_144} :catchall_144

    #@144
    :catchall_144
    move-exception v0

    #@145
    if-eqz v7, :cond_14a

    #@147
    :try_start_147
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_14a} :catch_1e4

    #@14a
    :cond_14a
    :goto_14a
    if-eqz v8, :cond_14f

    #@14c
    :try_start_14c
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_14f} :catch_205

    #@14f
    :cond_14f
    :goto_14f
    throw v0

    #@150
    :catch_150
    move-exception v1

    #@151
    sget-object v1, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    #@153
    new-instance v2, Ljava/lang/StringBuilder;

    #@155
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@158
    const-string v3, "initializeAudio: could not close asset path:\'"

    #@15a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v2

    #@15e
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v2

    #@162
    const-string v3, "\'"

    #@164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v2

    #@168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b
    move-result-object v2

    #@16c
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@16f
    goto/16 :goto_32

    #@171
    :catch_171
    move-exception v1

    #@172
    sget-object v1, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    #@174
    new-instance v2, Ljava/lang/StringBuilder;

    #@176
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@179
    const-string v3, "initializeAudio: could not close file stream:\'"

    #@17b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v2

    #@17f
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v2

    #@183
    const-string v3, "\'"

    #@185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v2

    #@189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18c
    move-result-object v2

    #@18d
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@190
    goto/16 :goto_37

    #@192
    :cond_192
    const/4 v0, 0x1

    #@193
    :try_start_193
    iput-boolean v0, p0, Lcom/apportable/media/AudioPlayer;->onDemandLoading:Z
    :try_end_195
    .catchall {:try_start_193 .. :try_end_195} :catchall_144

    #@195
    :goto_195
    if-eqz v7, :cond_19a

    #@197
    :try_start_197
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_19a} :catch_1c4

    #@19a
    :cond_19a
    :goto_19a
    if-eqz v8, :cond_53

    #@19c
    :try_start_19c
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_19f} :catch_1a1

    #@19f
    goto/16 :goto_53

    #@1a1
    :catch_1a1
    move-exception v0

    #@1a2
    sget-object v0, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    #@1a4
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a9
    const-string v2, "initializeAudio: could not close file stream:\'"

    #@1ab
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v1

    #@1af
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v1

    #@1b3
    const-string v2, "\'"

    #@1b5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v1

    #@1b9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bc
    move-result-object v1

    #@1bd
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c0
    goto/16 :goto_53

    #@1c2
    :cond_1c2
    const/4 p1, -0x1

    #@1c3
    goto :goto_195

    #@1c4
    :catch_1c4
    move-exception v0

    #@1c5
    sget-object v0, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    #@1c7
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1cc
    const-string v2, "initializeAudio: could not close asset path:\'"

    #@1ce
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v1

    #@1d2
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v1

    #@1d6
    const-string v2, "\'"

    #@1d8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v1

    #@1dc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1df
    move-result-object v1

    #@1e0
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e3
    goto :goto_19a

    #@1e4
    :catch_1e4
    move-exception v1

    #@1e5
    sget-object v1, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    #@1e7
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1ec
    const-string v3, "initializeAudio: could not close asset path:\'"

    #@1ee
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v2

    #@1f2
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v2

    #@1f6
    const-string v3, "\'"

    #@1f8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v2

    #@1fc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ff
    move-result-object v2

    #@200
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@203
    goto/16 :goto_14a

    #@205
    :catch_205
    move-exception v1

    #@206
    sget-object v1, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    #@208
    new-instance v2, Ljava/lang/StringBuilder;

    #@20a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20d
    const-string v3, "initializeAudio: could not close file stream:\'"

    #@20f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@212
    move-result-object v2

    #@213
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@216
    move-result-object v2

    #@217
    const-string v3, "\'"

    #@219
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21c
    move-result-object v2

    #@21d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@220
    move-result-object v2

    #@221
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@224
    goto/16 :goto_14f

    #@226
    :catch_226
    move-exception v0

    #@227
    sget-object v0, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    #@229
    const-string v1, "could not prepare audio"

    #@22b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22e
    goto/16 :goto_53

    #@230
    :catch_230
    move-exception v3

    #@231
    goto/16 :goto_8a
.end method


# virtual methods
.method public getCurrentPosition(I)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    if-ne p1, v1, :cond_5

    #@4
    :cond_4
    :goto_4
    return v0

    #@5
    :cond_5
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@7
    aget-object v1, v1, p1

    #@9
    if-eqz v1, :cond_4

    #@b
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@d
    aget-object v1, v1, p1

    #@f
    iget-object v1, v1, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@11
    if-eqz v1, :cond_4

    #@13
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@15
    aget-object v0, v0, p1

    #@17
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@19
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    #@1c
    move-result v0

    #@1d
    goto :goto_4
.end method

.method public getDuration(I)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    if-ne p1, v1, :cond_5

    #@4
    :cond_4
    :goto_4
    return v0

    #@5
    :cond_5
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@7
    aget-object v1, v1, p1

    #@9
    if-eqz v1, :cond_4

    #@b
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@d
    aget-object v1, v1, p1

    #@f
    iget-object v1, v1, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@11
    if-eqz v1, :cond_4

    #@13
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@15
    aget-object v0, v0, p1

    #@17
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@19
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    #@1c
    move-result v0

    #@1d
    goto :goto_4
.end method

.method public initAudio(Ljava/lang/String;)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    iget v1, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    #@3
    if-ge v0, v1, :cond_b

    #@5
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    #@7
    aget-object v1, v1, v0

    #@9
    if-nez v1, :cond_11

    #@b
    :cond_b
    iget v1, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    #@d
    if-lt v0, v1, :cond_14

    #@f
    const/4 v0, -0x1

    #@10
    :cond_10
    :goto_10
    return v0

    #@11
    :cond_11
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_1

    #@14
    :cond_14
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    #@16
    aput-object p1, v1, v0

    #@18
    iget-boolean v1, p0, Lcom/apportable/media/AudioPlayer;->onDemandLoading:Z

    #@1a
    if-nez v1, :cond_10

    #@1c
    invoke-direct {p0, v0}, Lcom/apportable/media/AudioPlayer;->initializeAudio(I)I

    #@1f
    move-result v0

    #@20
    goto :goto_10
.end method

.method public initAudioWithBuffer(Ljava/nio/ByteBuffer;)I
    .registers 11

    #@0
    const/4 v8, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    move v0, v1

    #@3
    :goto_3
    iget v2, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    #@5
    if-ge v0, v2, :cond_d

    #@7
    iget-object v2, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    #@9
    aget-object v2, v2, v0

    #@b
    if-nez v2, :cond_13

    #@d
    :cond_d
    iget v2, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    #@f
    if-lt v0, v2, :cond_16

    #@11
    const/4 v0, -0x1

    #@12
    :cond_12
    :goto_12
    return v0

    #@13
    :cond_13
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_3

    #@16
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hashCode()I

    #@19
    move-result v2

    #@1a
    iget-object v3, p0, Lcom/apportable/media/AudioPlayer;->mContext:Landroid/content/Context;

    #@1c
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@1f
    move-result-object v3

    #@20
    new-instance v4, Ljava/io/File;

    #@22
    const-string v5, ".apportable_%d.snd"

    #@24
    new-array v6, v8, [Ljava/lang/Object;

    #@26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v7

    #@2a
    aput-object v7, v6, v1

    #@2c
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@33
    new-instance v5, Ljava/io/File;

    #@35
    const-string v6, ".apportable_%d_.snd"

    #@37
    new-array v7, v8, [Ljava/lang/Object;

    #@39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v2

    #@3d
    aput-object v2, v7, v1

    #@3f
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-direct {v5, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@46
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@49
    move-result v1

    #@4a
    if-nez v1, :cond_5f

    #@4c
    :try_start_4c
    new-instance v1, Ljava/io/FileOutputStream;

    #@4e
    const/4 v2, 0x0

    #@4f
    invoke-direct {v1, v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@52
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    #@59
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5c} :catch_70
    .catchall {:try_start_4c .. :try_end_5c} :catchall_9f

    #@5c
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@5f
    :cond_5f
    :goto_5f
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    #@61
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    aput-object v2, v1, v0

    #@67
    iget-boolean v1, p0, Lcom/apportable/media/AudioPlayer;->onDemandLoading:Z

    #@69
    if-nez v1, :cond_12

    #@6b
    invoke-direct {p0, v0}, Lcom/apportable/media/AudioPlayer;->initializeAudio(I)I

    #@6e
    move-result v0

    #@6f
    goto :goto_12

    #@70
    :catch_70
    move-exception v1

    #@71
    :try_start_71
    sget-object v2, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    #@73
    new-instance v3, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string v6, "initAudioWithBuffer:IOException writing to:"

    #@7a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@81
    move-result-object v6

    #@82
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    const-string v6, " "

    #@88
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v1

    #@98
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_71 .. :try_end_9b} :catchall_9f

    #@9b
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@9e
    goto :goto_5f

    #@9f
    :catchall_9f
    move-exception v0

    #@a0
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@a3
    throw v0
.end method

.method public isAudioPlaying(I)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    if-ne p1, v1, :cond_5

    #@4
    :cond_4
    :goto_4
    return v0

    #@5
    :cond_5
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@7
    aget-object v1, v1, p1

    #@9
    if-eqz v1, :cond_4

    #@b
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@d
    aget-object v1, v1, p1

    #@f
    iget-object v1, v1, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@11
    if-eqz v1, :cond_4

    #@13
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@15
    aget-object v1, v1, p1

    #@17
    iget-object v1, v1, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@19
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_4

    #@1f
    const/4 v0, 0x1

    #@20
    goto :goto_4
.end method

.method lazyReleaseAudio(I)V
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_7

    #@3
    iget-boolean v0, p0, Lcom/apportable/media/AudioPlayer;->onDemandLoading:Z

    #@5
    if-nez v0, :cond_8

    #@7
    :cond_7
    :goto_7
    return-void

    #@8
    :cond_8
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@a
    aget-object v0, v0, p1

    #@c
    if-eqz v0, :cond_7

    #@e
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@10
    aget-object v0, v0, p1

    #@12
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@14
    if-eqz v0, :cond_7

    #@16
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@18
    aget-object v0, v0, p1

    #@1a
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@1c
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_7

    #@22
    invoke-direct {p0, p1}, Lcom/apportable/media/AudioPlayer;->_releaseAudio(I)V

    #@25
    goto :goto_7
.end method

.method public lifecycleResume()V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    move v0, v1

    #@2
    :goto_2
    iget v2, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    #@4
    if-ge v0, v2, :cond_2e

    #@6
    iget-object v2, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@8
    aget-object v2, v2, v0

    #@a
    if-eqz v2, :cond_2b

    #@c
    iget-object v2, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@e
    aget-object v2, v2, v0

    #@10
    iget-object v2, v2, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@12
    if-eqz v2, :cond_2b

    #@14
    iget-object v2, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@16
    aget-object v2, v2, v0

    #@18
    iget-boolean v2, v2, Lcom/apportable/media/AudioPlayerItem;->suspended:Z

    #@1a
    if-eqz v2, :cond_2b

    #@1c
    iget-object v2, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@1e
    aget-object v2, v2, v0

    #@20
    iget-object v2, v2, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@22
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    #@25
    iget-object v2, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@27
    aget-object v2, v2, v0

    #@29
    iput-boolean v1, v2, Lcom/apportable/media/AudioPlayerItem;->suspended:Z

    #@2b
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_2

    #@2e
    :cond_2e
    return-void
.end method

.method public lifecycleSuspend()V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    iget v1, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    #@3
    if-ge v0, v1, :cond_32

    #@5
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@7
    aget-object v1, v1, v0

    #@9
    if-eqz v1, :cond_2f

    #@b
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@d
    aget-object v1, v1, v0

    #@f
    iget-object v1, v1, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@11
    if-eqz v1, :cond_2f

    #@13
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@15
    aget-object v1, v1, v0

    #@17
    iget-object v1, v1, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@19
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2f

    #@1f
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@21
    aget-object v1, v1, v0

    #@23
    iget-object v1, v1, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@25
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    #@28
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@2a
    aget-object v1, v1, v0

    #@2c
    const/4 v2, 0x1

    #@2d
    iput-boolean v2, v1, Lcom/apportable/media/AudioPlayerItem;->suspended:Z

    #@2f
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_1

    #@32
    :cond_32
    return-void
.end method

.method public pauseAudio(I)V
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    if-ne p1, v0, :cond_4

    #@3
    :cond_3
    :goto_3
    return-void

    #@4
    :cond_4
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@6
    aget-object v0, v0, p1

    #@8
    if-eqz v0, :cond_3

    #@a
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@c
    aget-object v0, v0, p1

    #@e
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@10
    if-eqz v0, :cond_3

    #@12
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@14
    aget-object v0, v0, p1

    #@16
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@18
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_3

    #@1e
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@20
    aget-object v0, v0, p1

    #@22
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@24
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    #@27
    goto :goto_3
.end method

.method public prepareAudio(I)V
    .registers 2

    #@0
    return-void
.end method

.method public releaseAudio(I)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    if-ne p1, v0, :cond_4

    #@3
    :goto_3
    return-void

    #@4
    :cond_4
    invoke-direct {p0, p1}, Lcom/apportable/media/AudioPlayer;->_releaseAudio(I)V

    #@7
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    #@9
    const/4 v1, 0x0

    #@a
    aput-object v1, v0, p1

    #@c
    goto :goto_3
.end method

.method public seekTo(II)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    if-ne p2, v0, :cond_4

    #@3
    :cond_3
    :goto_3
    return-void

    #@4
    :cond_4
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@6
    aget-object v0, v0, p2

    #@8
    if-eqz v0, :cond_3

    #@a
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@c
    aget-object v0, v0, p2

    #@e
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@10
    if-eqz v0, :cond_3

    #@12
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@14
    aget-object v0, v0, p2

    #@16
    iput p1, v0, Lcom/apportable/media/AudioPlayerItem;->seekTarget:I

    #@18
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@1a
    aget-object v0, v0, p2

    #@1c
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@1e
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    #@21
    goto :goto_3
.end method

.method public setNumberOfLoops(II)V
    .registers 6

    #@0
    const/4 v2, -0x1

    #@1
    if-ne p2, v2, :cond_4

    #@3
    :cond_3
    :goto_3
    return-void

    #@4
    :cond_4
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@6
    aget-object v0, v0, p2

    #@8
    if-eqz v0, :cond_3

    #@a
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@c
    aget-object v0, v0, p2

    #@e
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@10
    if-eqz v0, :cond_3

    #@12
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@14
    aget-object v0, v0, p2

    #@16
    iget-object v1, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@18
    if-ne p1, v2, :cond_1f

    #@1a
    const/4 v0, 0x1

    #@1b
    :goto_1b
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    #@1e
    goto :goto_3

    #@1f
    :cond_1f
    const/4 v0, 0x0

    #@20
    goto :goto_1b
.end method

.method public setVolume(FFI)V
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-ne p3, v0, :cond_4

    #@3
    :cond_3
    :goto_3
    return-void

    #@4
    :cond_4
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@6
    aget-object v0, v0, p3

    #@8
    if-eqz v0, :cond_3

    #@a
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@c
    aget-object v0, v0, p3

    #@e
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@10
    if-eqz v0, :cond_3

    #@12
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@14
    aget-object v0, v0, p3

    #@16
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@18
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    #@1b
    goto :goto_3
.end method

.method public startAudio(I)V
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    if-ne p1, v0, :cond_4

    #@3
    :cond_3
    :goto_3
    return-void

    #@4
    :cond_4
    iget-boolean v0, p0, Lcom/apportable/media/AudioPlayer;->onDemandLoading:Z

    #@6
    if-eqz v0, :cond_11

    #@8
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@a
    aget-object v0, v0, p1

    #@c
    if-nez v0, :cond_11

    #@e
    invoke-direct {p0, p1}, Lcom/apportable/media/AudioPlayer;->initializeAudio(I)I

    #@11
    :cond_11
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@13
    aget-object v0, v0, p1

    #@15
    if-eqz v0, :cond_3

    #@17
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@19
    aget-object v0, v0, p1

    #@1b
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@1d
    if-eqz v0, :cond_3

    #@1f
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    #@21
    aget-object v0, v0, p1

    #@23
    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@25
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    #@28
    goto :goto_3
.end method
