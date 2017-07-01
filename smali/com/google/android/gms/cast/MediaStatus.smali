.class public final Lcom/google/android/gms/cast/MediaStatus;
.super Ljava/lang/Object;


# static fields
.field public static final COMMAND_PAUSE:J = 0x1L

.field public static final COMMAND_SEEK:J = 0x2L

.field public static final COMMAND_SET_VOLUME:J = 0x4L

.field public static final COMMAND_SKIP_BACKWARD:J = 0x20L

.field public static final COMMAND_SKIP_FORWARD:J = 0x10L

.field public static final COMMAND_TOGGLE_MUTE:J = 0x8L

.field public static final IDLE_REASON_CANCELED:I = 0x2

.field public static final IDLE_REASON_ERROR:I = 0x4

.field public static final IDLE_REASON_FINISHED:I = 0x1

.field public static final IDLE_REASON_INTERRUPTED:I = 0x3

.field public static final IDLE_REASON_NONE:I = 0x0

.field public static final PLAYER_STATE_BUFFERING:I = 0x4

.field public static final PLAYER_STATE_IDLE:I = 0x1

.field public static final PLAYER_STATE_PAUSED:I = 0x3

.field public static final PLAYER_STATE_PLAYING:I = 0x2

.field public static final PLAYER_STATE_UNKNOWN:I


# instance fields
.field private AA:Lorg/json/JSONObject;

.field private AB:Lcom/google/android/gms/cast/MediaInfo;

.field private AJ:J

.field private AK:D

.field private AL:I

.field private AM:I

.field private AN:J

.field private AO:J

.field private AP:D

.field private AQ:Z

.field private AR:[J


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/MediaStatus;->a(Lorg/json/JSONObject;I)I

    #@7
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;I)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v1, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    const-string v0, "mediaSessionId"

    #@7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    #@a
    move-result-wide v8

    #@b
    iget-wide v10, p0, Lcom/google/android/gms/cast/MediaStatus;->AJ:J

    #@d
    cmp-long v0, v8, v10

    #@f
    if-eqz v0, :cond_1a1

    #@11
    iput-wide v8, p0, Lcom/google/android/gms/cast/MediaStatus;->AJ:J

    #@13
    move v0, v1

    #@14
    :goto_14
    const-string v3, "playerState"

    #@16
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_53

    #@1c
    const-string v3, "playerState"

    #@1e
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    const-string v7, "IDLE"

    #@24
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_f3

    #@2a
    move v3, v1

    #@2b
    :goto_2b
    iget v7, p0, Lcom/google/android/gms/cast/MediaStatus;->AL:I

    #@2d
    if-eq v3, v7, :cond_33

    #@2f
    iput v3, p0, Lcom/google/android/gms/cast/MediaStatus;->AL:I

    #@31
    or-int/lit8 v0, v0, 0x2

    #@33
    :cond_33
    if-ne v3, v1, :cond_53

    #@35
    const-string v3, "idleReason"

    #@37
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_53

    #@3d
    const-string v3, "idleReason"

    #@3f
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    const-string v7, "CANCELLED"

    #@45
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v7

    #@49
    if-eqz v7, :cond_114

    #@4b
    :goto_4b
    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->AM:I

    #@4d
    if-eq v4, v3, :cond_53

    #@4f
    iput v4, p0, Lcom/google/android/gms/cast/MediaStatus;->AM:I

    #@51
    or-int/lit8 v0, v0, 0x2

    #@53
    :cond_53
    const-string v3, "playbackRate"

    #@55
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@58
    move-result v3

    #@59
    if-eqz v3, :cond_6b

    #@5b
    const-string v3, "playbackRate"

    #@5d
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    #@60
    move-result-wide v4

    #@61
    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->AK:D

    #@63
    cmpl-double v3, v6, v4

    #@65
    if-eqz v3, :cond_6b

    #@67
    iput-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->AK:D

    #@69
    or-int/lit8 v0, v0, 0x2

    #@6b
    :cond_6b
    const-string v3, "currentTime"

    #@6d
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@70
    move-result v3

    #@71
    if-eqz v3, :cond_8b

    #@73
    and-int/lit8 v3, p2, 0x2

    #@75
    if-nez v3, :cond_8b

    #@77
    const-string v3, "currentTime"

    #@79
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    #@7c
    move-result-wide v4

    #@7d
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/gi;->b(D)J

    #@80
    move-result-wide v4

    #@81
    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->AN:J

    #@83
    cmp-long v3, v4, v6

    #@85
    if-eqz v3, :cond_8b

    #@87
    iput-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->AN:J

    #@89
    or-int/lit8 v0, v0, 0x2

    #@8b
    :cond_8b
    const-string v3, "supportedMediaCommands"

    #@8d
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@90
    move-result v3

    #@91
    if-eqz v3, :cond_a3

    #@93
    const-string v3, "supportedMediaCommands"

    #@95
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    #@98
    move-result-wide v4

    #@99
    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->AO:J

    #@9b
    cmp-long v3, v4, v6

    #@9d
    if-eqz v3, :cond_a3

    #@9f
    iput-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->AO:J

    #@a1
    or-int/lit8 v0, v0, 0x2

    #@a3
    :cond_a3
    const-string v3, "volume"

    #@a5
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@a8
    move-result v3

    #@a9
    if-eqz v3, :cond_d3

    #@ab
    and-int/lit8 v3, p2, 0x1

    #@ad
    if-nez v3, :cond_d3

    #@af
    const-string v3, "volume"

    #@b1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@b4
    move-result-object v3

    #@b5
    const-string v4, "level"

    #@b7
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    #@ba
    move-result-wide v4

    #@bb
    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->AP:D

    #@bd
    cmpl-double v6, v4, v6

    #@bf
    if-eqz v6, :cond_c5

    #@c1
    iput-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->AP:D

    #@c3
    or-int/lit8 v0, v0, 0x2

    #@c5
    :cond_c5
    const-string v4, "muted"

    #@c7
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    #@ca
    move-result v3

    #@cb
    iget-boolean v4, p0, Lcom/google/android/gms/cast/MediaStatus;->AQ:Z

    #@cd
    if-eq v3, v4, :cond_d3

    #@cf
    iput-boolean v3, p0, Lcom/google/android/gms/cast/MediaStatus;->AQ:Z

    #@d1
    or-int/lit8 v0, v0, 0x2

    #@d3
    :cond_d3
    const-string v3, "activeTrackIds"

    #@d5
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@d8
    move-result v3

    #@d9
    if-eqz v3, :cond_18e

    #@db
    const-string v3, "activeTrackIds"

    #@dd
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@e0
    move-result-object v5

    #@e1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    #@e4
    move-result v6

    #@e5
    new-array v3, v6, [J

    #@e7
    move v4, v2

    #@e8
    :goto_e8
    if-ge v4, v6, :cond_135

    #@ea
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getLong(I)J

    #@ed
    move-result-wide v8

    #@ee
    aput-wide v8, v3, v4

    #@f0
    add-int/lit8 v4, v4, 0x1

    #@f2
    goto :goto_e8

    #@f3
    :cond_f3
    const-string v7, "PLAYING"

    #@f5
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f8
    move-result v7

    #@f9
    if-eqz v7, :cond_fe

    #@fb
    move v3, v4

    #@fc
    goto/16 :goto_2b

    #@fe
    :cond_fe
    const-string v7, "PAUSED"

    #@100
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@103
    move-result v7

    #@104
    if-eqz v7, :cond_109

    #@106
    move v3, v5

    #@107
    goto/16 :goto_2b

    #@109
    :cond_109
    const-string v7, "BUFFERING"

    #@10b
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10e
    move-result v3

    #@10f
    if-eqz v3, :cond_19e

    #@111
    move v3, v6

    #@112
    goto/16 :goto_2b

    #@114
    :cond_114
    const-string v4, "INTERRUPTED"

    #@116
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@119
    move-result v4

    #@11a
    if-eqz v4, :cond_11f

    #@11c
    move v4, v5

    #@11d
    goto/16 :goto_4b

    #@11f
    :cond_11f
    const-string v4, "FINISHED"

    #@121
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@124
    move-result v4

    #@125
    if-eqz v4, :cond_12a

    #@127
    move v4, v1

    #@128
    goto/16 :goto_4b

    #@12a
    :cond_12a
    const-string v4, "ERROR"

    #@12c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12f
    move-result v3

    #@130
    if-eqz v3, :cond_19b

    #@132
    move v4, v6

    #@133
    goto/16 :goto_4b

    #@135
    :cond_135
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaStatus;->AR:[J

    #@137
    if-nez v4, :cond_179

    #@139
    :cond_139
    :goto_139
    if-eqz v1, :cond_13d

    #@13b
    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->AR:[J

    #@13d
    :cond_13d
    move v2, v1

    #@13e
    move-object v1, v3

    #@13f
    :goto_13f
    if-eqz v2, :cond_145

    #@141
    iput-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->AR:[J

    #@143
    or-int/lit8 v0, v0, 0x2

    #@145
    :cond_145
    const-string v1, "customData"

    #@147
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@14a
    move-result v1

    #@14b
    if-eqz v1, :cond_157

    #@14d
    const-string v1, "customData"

    #@14f
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@152
    move-result-object v1

    #@153
    iput-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->AA:Lorg/json/JSONObject;

    #@155
    or-int/lit8 v0, v0, 0x2

    #@157
    :cond_157
    const-string v1, "media"

    #@159
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@15c
    move-result v1

    #@15d
    if-eqz v1, :cond_178

    #@15f
    const-string v1, "media"

    #@161
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@164
    move-result-object v1

    #@165
    new-instance v2, Lcom/google/android/gms/cast/MediaInfo;

    #@167
    invoke-direct {v2, v1}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    #@16a
    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->AB:Lcom/google/android/gms/cast/MediaInfo;

    #@16c
    or-int/lit8 v0, v0, 0x2

    #@16e
    const-string v2, "metadata"

    #@170
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@173
    move-result v1

    #@174
    if-eqz v1, :cond_178

    #@176
    or-int/lit8 v0, v0, 0x4

    #@178
    :cond_178
    return v0

    #@179
    :cond_179
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaStatus;->AR:[J

    #@17b
    array-length v4, v4

    #@17c
    if-ne v4, v6, :cond_139

    #@17e
    move v4, v2

    #@17f
    :goto_17f
    if-ge v4, v6, :cond_199

    #@181
    iget-object v5, p0, Lcom/google/android/gms/cast/MediaStatus;->AR:[J

    #@183
    aget-wide v8, v5, v4

    #@185
    aget-wide v10, v3, v4

    #@187
    cmp-long v5, v8, v10

    #@189
    if-nez v5, :cond_139

    #@18b
    add-int/lit8 v4, v4, 0x1

    #@18d
    goto :goto_17f

    #@18e
    :cond_18e
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->AR:[J

    #@190
    if-eqz v3, :cond_197

    #@192
    const/4 v2, 0x0

    #@193
    move-object v12, v2

    #@194
    move v2, v1

    #@195
    move-object v1, v12

    #@196
    goto :goto_13f

    #@197
    :cond_197
    const/4 v1, 0x0

    #@198
    goto :goto_13f

    #@199
    :cond_199
    move v1, v2

    #@19a
    goto :goto_139

    #@19b
    :cond_19b
    move v4, v2

    #@19c
    goto/16 :goto_4b

    #@19e
    :cond_19e
    move v3, v2

    #@19f
    goto/16 :goto_2b

    #@1a1
    :cond_1a1
    move v0, v2

    #@1a2
    goto/16 :goto_14
.end method

.method public ea()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AJ:J

    #@2
    return-wide v0
.end method

.method public getActiveTrackIds()[J
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AR:[J

    #@2
    return-object v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AA:Lorg/json/JSONObject;

    #@2
    return-object v0
.end method

.method public getIdleReason()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AM:I

    #@2
    return v0
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AB:Lcom/google/android/gms/cast/MediaInfo;

    #@2
    return-object v0
.end method

.method public getPlaybackRate()D
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AK:D

    #@2
    return-wide v0
.end method

.method public getPlayerState()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AL:I

    #@2
    return v0
.end method

.method public getStreamPosition()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AN:J

    #@2
    return-wide v0
.end method

.method public getStreamVolume()D
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AP:D

    #@2
    return-wide v0
.end method

.method public isMediaCommandSupported(J)Z
    .registers 8

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AO:J

    #@2
    and-long/2addr v0, p1

    #@3
    const-wide/16 v2, 0x0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-eqz v0, :cond_b

    #@9
    const/4 v0, 0x1

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_a
.end method

.method public isMute()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AQ:Z

    #@2
    return v0
.end method
