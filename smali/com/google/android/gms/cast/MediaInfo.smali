.class public final Lcom/google/android/gms/cast/MediaInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaInfo$Builder;
    }
.end annotation


# static fields
.field public static final STREAM_TYPE_BUFFERED:I = 0x1

.field public static final STREAM_TYPE_INVALID:I = -0x1

.field public static final STREAM_TYPE_LIVE:I = 0x2

.field public static final STREAM_TYPE_NONE:I


# instance fields
.field private AA:Lorg/json/JSONObject;

.field private final At:Ljava/lang/String;

.field private Au:I

.field private Av:Ljava/lang/String;

.field private Aw:Lcom/google/android/gms/cast/MediaMetadata;

.field private Ax:J

.field private Ay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation
.end field

.field private Az:Lcom/google/android/gms/cast/TextTrackStyle;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_11

    #@9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string v1, "content ID cannot be null or empty"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_11
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->At:Ljava/lang/String;

    #@13
    const/4 v0, -0x1

    #@14
    iput v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Au:I

    #@16
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const-string v1, "contentId"

    #@7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->At:Ljava/lang/String;

    #@d
    const-string v1, "streamType"

    #@f
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    const-string v2, "NONE"

    #@15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_7f

    #@1b
    iput v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Au:I

    #@1d
    :goto_1d
    const-string v1, "contentType"

    #@1f
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->Av:Ljava/lang/String;

    #@25
    const-string v1, "metadata"

    #@27
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_45

    #@2d
    const-string v1, "metadata"

    #@2f
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@32
    move-result-object v1

    #@33
    new-instance v2, Lcom/google/android/gms/cast/MediaMetadata;

    #@35
    const-string v3, "metadataType"

    #@37
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    #@3a
    move-result v3

    #@3b
    invoke-direct {v2, v3}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    #@3e
    iput-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->Aw:Lcom/google/android/gms/cast/MediaMetadata;

    #@40
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->Aw:Lcom/google/android/gms/cast/MediaMetadata;

    #@42
    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;)V

    #@45
    :cond_45
    const-string v1, "duration"

    #@47
    const-wide/16 v2, 0x0

    #@49
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    #@4c
    move-result-wide v2

    #@4d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->b(D)J

    #@50
    move-result-wide v2

    #@51
    iput-wide v2, p0, Lcom/google/android/gms/cast/MediaInfo;->Ax:J

    #@53
    const-string v1, "tracks"

    #@55
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_9b

    #@5b
    new-instance v1, Ljava/util/ArrayList;

    #@5d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@60
    iput-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->Ay:Ljava/util/List;

    #@62
    const-string v1, "tracks"

    #@64
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@67
    move-result-object v1

    #@68
    :goto_68
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@6b
    move-result v2

    #@6c
    if-ge v0, v2, :cond_9d

    #@6e
    new-instance v2, Lcom/google/android/gms/cast/MediaTrack;

    #@70
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    #@73
    move-result-object v3

    #@74
    invoke-direct {v2, v3}, Lcom/google/android/gms/cast/MediaTrack;-><init>(Lorg/json/JSONObject;)V

    #@77
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->Ay:Ljava/util/List;

    #@79
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7c
    add-int/lit8 v0, v0, 0x1

    #@7e
    goto :goto_68

    #@7f
    :cond_7f
    const-string v2, "BUFFERED"

    #@81
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v2

    #@85
    if-eqz v2, :cond_8b

    #@87
    const/4 v1, 0x1

    #@88
    iput v1, p0, Lcom/google/android/gms/cast/MediaInfo;->Au:I

    #@8a
    goto :goto_1d

    #@8b
    :cond_8b
    const-string v2, "LIVE"

    #@8d
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v1

    #@91
    if-eqz v1, :cond_97

    #@93
    const/4 v1, 0x2

    #@94
    iput v1, p0, Lcom/google/android/gms/cast/MediaInfo;->Au:I

    #@96
    goto :goto_1d

    #@97
    :cond_97
    const/4 v1, -0x1

    #@98
    iput v1, p0, Lcom/google/android/gms/cast/MediaInfo;->Au:I

    #@9a
    goto :goto_1d

    #@9b
    :cond_9b
    iput-object v4, p0, Lcom/google/android/gms/cast/MediaInfo;->Ay:Ljava/util/List;

    #@9d
    :cond_9d
    const-string v0, "textTrackStyle"

    #@9f
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@a2
    move-result v0

    #@a3
    if-eqz v0, :cond_be

    #@a5
    const-string v0, "textTrackStyle"

    #@a7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@aa
    move-result-object v0

    #@ab
    new-instance v1, Lcom/google/android/gms/cast/TextTrackStyle;

    #@ad
    invoke-direct {v1}, Lcom/google/android/gms/cast/TextTrackStyle;-><init>()V

    #@b0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/TextTrackStyle;->b(Lorg/json/JSONObject;)V

    #@b3
    iput-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->Az:Lcom/google/android/gms/cast/TextTrackStyle;

    #@b5
    :goto_b5
    const-string v0, "customData"

    #@b7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@ba
    move-result-object v0

    #@bb
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->AA:Lorg/json/JSONObject;

    #@bd
    return-void

    #@be
    :cond_be
    iput-object v4, p0, Lcom/google/android/gms/cast/MediaInfo;->Az:Lcom/google/android/gms/cast/TextTrackStyle;

    #@c0
    goto :goto_b5
.end method


# virtual methods
.method a(Lcom/google/android/gms/cast/MediaMetadata;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->Aw:Lcom/google/android/gms/cast/MediaMetadata;

    #@2
    return-void
.end method

.method b(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->Ay:Ljava/util/List;

    #@2
    return-void
.end method

.method dY()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->At:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_10

    #@8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string v1, "content ID cannot be null or empty"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Av:Ljava/lang/String;

    #@12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_20

    #@18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string v1, "content type cannot be null or empty"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    :cond_20
    iget v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Au:I

    #@22
    const/4 v1, -0x1

    #@23
    if-ne v0, v1, :cond_2d

    #@25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    const-string v1, "a valid stream type must be specified"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    :cond_2d
    return-void
.end method

.method public dZ()Lorg/json/JSONObject;
    .registers 5

    #@0
    new-instance v1, Lorg/json/JSONObject;

    #@2
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    #@5
    :try_start_5
    const-string v0, "contentId"

    #@7
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->At:Ljava/lang/String;

    #@9
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@c
    iget v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Au:I
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e} :catch_60

    #@e
    packed-switch v0, :pswitch_data_88

    #@11
    const-string v0, "NONE"

    #@13
    :goto_13
    :try_start_13
    const-string v2, "streamType"

    #@15
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@18
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Av:Ljava/lang/String;

    #@1a
    if-eqz v0, :cond_23

    #@1c
    const-string v0, "contentType"

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->Av:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@23
    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Aw:Lcom/google/android/gms/cast/MediaMetadata;

    #@25
    if-eqz v0, :cond_32

    #@27
    const-string v0, "metadata"

    #@29
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->Aw:Lcom/google/android/gms/cast/MediaMetadata;

    #@2b
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaMetadata;->dZ()Lorg/json/JSONObject;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@32
    :cond_32
    const-string v0, "duration"

    #@34
    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaInfo;->Ax:J

    #@36
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->o(J)D

    #@39
    move-result-wide v2

    #@3a
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    #@3d
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Ay:Ljava/util/List;

    #@3f
    if-eqz v0, :cond_6d

    #@41
    new-instance v2, Lorg/json/JSONArray;

    #@43
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    #@46
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Ay:Ljava/util/List;

    #@48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@4b
    move-result-object v3

    #@4c
    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_68

    #@52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Lcom/google/android/gms/cast/MediaTrack;

    #@58
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaTrack;->dZ()Lorg/json/JSONObject;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_5f} :catch_60

    #@5f
    goto :goto_4c

    #@60
    :catch_60
    move-exception v0

    #@61
    :cond_61
    :goto_61
    return-object v1

    #@62
    :pswitch_62
    const-string v0, "BUFFERED"

    #@64
    goto :goto_13

    #@65
    :pswitch_65
    const-string v0, "LIVE"

    #@67
    goto :goto_13

    #@68
    :cond_68
    :try_start_68
    const-string v0, "tracks"

    #@6a
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@6d
    :cond_6d
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Az:Lcom/google/android/gms/cast/TextTrackStyle;

    #@6f
    if-eqz v0, :cond_7c

    #@71
    const-string v0, "textTrackStyle"

    #@73
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->Az:Lcom/google/android/gms/cast/TextTrackStyle;

    #@75
    invoke-virtual {v2}, Lcom/google/android/gms/cast/TextTrackStyle;->dZ()Lorg/json/JSONObject;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@7c
    :cond_7c
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->AA:Lorg/json/JSONObject;

    #@7e
    if-eqz v0, :cond_61

    #@80
    const-string v0, "customData"

    #@82
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->AA:Lorg/json/JSONObject;

    #@84
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_68 .. :try_end_87} :catch_60

    #@87
    goto :goto_61

    #@88
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_62
        :pswitch_65
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-ne p0, p1, :cond_5

    #@4
    :cond_4
    :goto_4
    return v0

    #@5
    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/cast/MediaInfo;

    #@7
    if-eqz v2, :cond_5b

    #@9
    check-cast p1, Lcom/google/android/gms/cast/MediaInfo;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->AA:Lorg/json/JSONObject;

    #@d
    if-nez v2, :cond_57

    #@f
    move v2, v0

    #@10
    :goto_10
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->AA:Lorg/json/JSONObject;

    #@12
    if-nez v3, :cond_59

    #@14
    move v3, v0

    #@15
    :goto_15
    if-ne v2, v3, :cond_5b

    #@17
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->AA:Lorg/json/JSONObject;

    #@19
    if-eqz v2, :cond_29

    #@1b
    iget-object v2, p1, Lcom/google/android/gms/cast/MediaInfo;->AA:Lorg/json/JSONObject;

    #@1d
    if-eqz v2, :cond_29

    #@1f
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->AA:Lorg/json/JSONObject;

    #@21
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->AA:Lorg/json/JSONObject;

    #@23
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/in;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_5b

    #@29
    :cond_29
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->At:Ljava/lang/String;

    #@2b
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->At:Ljava/lang/String;

    #@2d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_55

    #@33
    iget v2, p0, Lcom/google/android/gms/cast/MediaInfo;->Au:I

    #@35
    iget v3, p1, Lcom/google/android/gms/cast/MediaInfo;->Au:I

    #@37
    if-ne v2, v3, :cond_55

    #@39
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->Av:Ljava/lang/String;

    #@3b
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->Av:Ljava/lang/String;

    #@3d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_55

    #@43
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->Aw:Lcom/google/android/gms/cast/MediaMetadata;

    #@45
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->Aw:Lcom/google/android/gms/cast/MediaMetadata;

    #@47
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4a
    move-result v2

    #@4b
    if-eqz v2, :cond_55

    #@4d
    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaInfo;->Ax:J

    #@4f
    iget-wide v4, p1, Lcom/google/android/gms/cast/MediaInfo;->Ax:J

    #@51
    cmp-long v2, v2, v4

    #@53
    if-eqz v2, :cond_4

    #@55
    :cond_55
    move v0, v1

    #@56
    goto :goto_4

    #@57
    :cond_57
    move v2, v1

    #@58
    goto :goto_10

    #@59
    :cond_59
    move v3, v1

    #@5a
    goto :goto_15

    #@5b
    :cond_5b
    move v0, v1

    #@5c
    goto :goto_4
.end method

.method public getContentId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->At:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Av:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->AA:Lorg/json/JSONObject;

    #@2
    return-object v0
.end method

.method public getMediaTracks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Ay:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getMetadata()Lcom/google/android/gms/cast/MediaMetadata;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Aw:Lcom/google/android/gms/cast/MediaMetadata;

    #@2
    return-object v0
.end method

.method public getStreamDuration()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Ax:J

    #@2
    return-wide v0
.end method

.method public getStreamType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Au:I

    #@2
    return v0
.end method

.method public getTextTrackStyle()Lcom/google/android/gms/cast/TextTrackStyle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->Az:Lcom/google/android/gms/cast/TextTrackStyle;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 5

    #@0
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->At:Ljava/lang/String;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    iget v2, p0, Lcom/google/android/gms/cast/MediaInfo;->Au:I

    #@b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v2

    #@f
    aput-object v2, v0, v1

    #@11
    const/4 v1, 0x2

    #@12
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->Av:Ljava/lang/String;

    #@14
    aput-object v2, v0, v1

    #@16
    const/4 v1, 0x3

    #@17
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->Aw:Lcom/google/android/gms/cast/MediaMetadata;

    #@19
    aput-object v2, v0, v1

    #@1b
    const/4 v1, 0x4

    #@1c
    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaInfo;->Ax:J

    #@1e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@21
    move-result-object v2

    #@22
    aput-object v2, v0, v1

    #@24
    const/4 v1, 0x5

    #@25
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->AA:Lorg/json/JSONObject;

    #@27
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    aput-object v2, v0, v1

    #@2d
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@30
    move-result v0

    #@31
    return v0
.end method

.method m(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "Stream duration cannot be negative"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaInfo;->Ax:J

    #@10
    return-void
.end method

.method setContentType(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "content type cannot be null or empty"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->Av:Ljava/lang/String;

    #@10
    return-void
.end method

.method setCustomData(Lorg/json/JSONObject;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->AA:Lorg/json/JSONObject;

    #@2
    return-void
.end method

.method setStreamType(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    if-lt p1, v0, :cond_6

    #@3
    const/4 v0, 0x2

    #@4
    if-le p1, v0, :cond_e

    #@6
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "invalid stream type"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    iput p1, p0, Lcom/google/android/gms/cast/MediaInfo;->Au:I

    #@10
    return-void
.end method

.method public setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->Az:Lcom/google/android/gms/cast/TextTrackStyle;

    #@2
    return-void
.end method
