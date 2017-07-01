.class public final Lcom/google/android/gms/cast/MediaTrack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaTrack$Builder;
    }
.end annotation


# static fields
.field public static final SUBTYPE_CAPTIONS:I = 0x2

.field public static final SUBTYPE_CHAPTERS:I = 0x4

.field public static final SUBTYPE_DESCRIPTIONS:I = 0x3

.field public static final SUBTYPE_METADATA:I = 0x5

.field public static final SUBTYPE_NONE:I = 0x0

.field public static final SUBTYPE_SUBTITLES:I = 0x1

.field public static final SUBTYPE_UNKNOWN:I = -0x1

.field public static final TYPE_AUDIO:I = 0x2

.field public static final TYPE_TEXT:I = 0x1

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_VIDEO:I = 0x3


# instance fields
.field private AA:Lorg/json/JSONObject;

.field private AS:J

.field private AT:I

.field private AU:I

.field private Ar:Ljava/lang/String;

.field private At:Ljava/lang/String;

.field private Av:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>(JI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaTrack;->clear()V

    #@6
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaTrack;->AS:J

    #@8
    if-lez p3, :cond_d

    #@a
    const/4 v0, 0x3

    #@b
    if-le p3, v0, :cond_26

    #@d
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string v2, "invalid type "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    :cond_26
    iput p3, p0, Lcom/google/android/gms/cast/MediaTrack;->AT:I

    #@28
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaTrack;->b(Lorg/json/JSONObject;)V

    #@6
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaTrack;->clear()V

    #@7
    const-string v0, "trackId"

    #@9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AS:J

    #@f
    const-string v0, "type"

    #@11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    const-string v1, "TEXT"

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_60

    #@1d
    iput v3, p0, Lcom/google/android/gms/cast/MediaTrack;->AT:I

    #@1f
    :goto_1f
    const-string v0, "trackContentId"

    #@21
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->At:Ljava/lang/String;

    #@27
    const-string v0, "trackContentType"

    #@29
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->Av:Ljava/lang/String;

    #@2f
    const-string v0, "name"

    #@31
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;

    #@37
    const-string v0, "language"

    #@39
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->Ar:Ljava/lang/String;

    #@3f
    const-string v0, "subtype"

    #@41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_d6

    #@47
    const-string v0, "subtype"

    #@49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    const-string v1, "SUBTITLES"

    #@4f
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_8f

    #@55
    iput v3, p0, Lcom/google/android/gms/cast/MediaTrack;->AU:I

    #@57
    :goto_57
    const-string v0, "customData"

    #@59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@5c
    move-result-object v0

    #@5d
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AA:Lorg/json/JSONObject;

    #@5f
    return-void

    #@60
    :cond_60
    const-string v1, "AUDIO"

    #@62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_6b

    #@68
    iput v4, p0, Lcom/google/android/gms/cast/MediaTrack;->AT:I

    #@6a
    goto :goto_1f

    #@6b
    :cond_6b
    const-string v1, "VIDEO"

    #@6d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v1

    #@71
    if-eqz v1, :cond_76

    #@73
    iput v5, p0, Lcom/google/android/gms/cast/MediaTrack;->AT:I

    #@75
    goto :goto_1f

    #@76
    :cond_76
    new-instance v1, Lorg/json/JSONException;

    #@78
    new-instance v2, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string v3, "invalid type: "

    #@7f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v0

    #@87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v0

    #@8b
    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v1

    #@8f
    :cond_8f
    const-string v1, "CAPTIONS"

    #@91
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v1

    #@95
    if-eqz v1, :cond_9a

    #@97
    iput v4, p0, Lcom/google/android/gms/cast/MediaTrack;->AU:I

    #@99
    goto :goto_57

    #@9a
    :cond_9a
    const-string v1, "DESCRIPTIONS"

    #@9c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9f
    move-result v1

    #@a0
    if-eqz v1, :cond_a5

    #@a2
    iput v5, p0, Lcom/google/android/gms/cast/MediaTrack;->AU:I

    #@a4
    goto :goto_57

    #@a5
    :cond_a5
    const-string v1, "CHAPTERS"

    #@a7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v1

    #@ab
    if-eqz v1, :cond_b1

    #@ad
    const/4 v0, 0x4

    #@ae
    iput v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AU:I

    #@b0
    goto :goto_57

    #@b1
    :cond_b1
    const-string v1, "METADATA"

    #@b3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b6
    move-result v1

    #@b7
    if-eqz v1, :cond_bd

    #@b9
    const/4 v0, 0x5

    #@ba
    iput v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AU:I

    #@bc
    goto :goto_57

    #@bd
    :cond_bd
    new-instance v1, Lorg/json/JSONException;

    #@bf
    new-instance v2, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string v3, "invalid subtype: "

    #@c6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v2

    #@ca
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v0

    #@ce
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v0

    #@d2
    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@d5
    throw v1

    #@d6
    :cond_d6
    const/4 v0, 0x0

    #@d7
    iput v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AU:I

    #@d9
    goto/16 :goto_57
.end method

.method private clear()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    const-wide/16 v0, 0x0

    #@3
    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AS:J

    #@5
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AT:I

    #@8
    iput-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->At:Ljava/lang/String;

    #@a
    iput-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;

    #@c
    iput-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Ar:Ljava/lang/String;

    #@e
    const/4 v0, -0x1

    #@f
    iput v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AU:I

    #@11
    iput-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AA:Lorg/json/JSONObject;

    #@13
    return-void
.end method


# virtual methods
.method R(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    if-le p1, v0, :cond_6

    #@3
    const/4 v0, 0x5

    #@4
    if-le p1, v0, :cond_1f

    #@6
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "invalid subtype "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    :cond_1f
    if-eqz p1, :cond_2e

    #@21
    iget v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AT:I

    #@23
    const/4 v1, 0x1

    #@24
    if-eq v0, v1, :cond_2e

    #@26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    const-string v1, "subtypes are only valid for text tracks"

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    :cond_2e
    iput p1, p0, Lcom/google/android/gms/cast/MediaTrack;->AU:I

    #@30
    return-void
.end method

.method public dZ()Lorg/json/JSONObject;
    .registers 5

    #@0
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    :try_start_5
    const-string v1, "trackId"

    #@7
    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AS:J

    #@9
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@c
    iget v1, p0, Lcom/google/android/gms/cast/MediaTrack;->AT:I

    #@e
    packed-switch v1, :pswitch_data_94

    #@11
    :goto_11
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->At:Ljava/lang/String;

    #@13
    if-eqz v1, :cond_1c

    #@15
    const-string v1, "trackContentId"

    #@17
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->At:Ljava/lang/String;

    #@19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@1c
    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->Av:Ljava/lang/String;

    #@1e
    if-eqz v1, :cond_27

    #@20
    const-string v1, "trackContentType"

    #@22
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Av:Ljava/lang/String;

    #@24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@27
    :cond_27
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;

    #@29
    if-eqz v1, :cond_32

    #@2b
    const-string v1, "name"

    #@2d
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;

    #@2f
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@32
    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->Ar:Ljava/lang/String;

    #@34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_41

    #@3a
    const-string v1, "language"

    #@3c
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Ar:Ljava/lang/String;

    #@3e
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@41
    :cond_41
    iget v1, p0, Lcom/google/android/gms/cast/MediaTrack;->AU:I

    #@43
    packed-switch v1, :pswitch_data_9e

    #@46
    :goto_46
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->AA:Lorg/json/JSONObject;

    #@48
    if-eqz v1, :cond_51

    #@4a
    const-string v1, "customData"

    #@4c
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AA:Lorg/json/JSONObject;

    #@4e
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@51
    :cond_51
    :goto_51
    return-object v0

    #@52
    :pswitch_52
    const-string v1, "type"

    #@54
    const-string v2, "TEXT"

    #@56
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@59
    goto :goto_11

    #@5a
    :catch_5a
    move-exception v1

    #@5b
    goto :goto_51

    #@5c
    :pswitch_5c
    const-string v1, "type"

    #@5e
    const-string v2, "AUDIO"

    #@60
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@63
    goto :goto_11

    #@64
    :pswitch_64
    const-string v1, "type"

    #@66
    const-string v2, "VIDEO"

    #@68
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@6b
    goto :goto_11

    #@6c
    :pswitch_6c
    const-string v1, "subtype"

    #@6e
    const-string v2, "SUBTITLES"

    #@70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@73
    goto :goto_46

    #@74
    :pswitch_74
    const-string v1, "subtype"

    #@76
    const-string v2, "CAPTIONS"

    #@78
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@7b
    goto :goto_46

    #@7c
    :pswitch_7c
    const-string v1, "subtype"

    #@7e
    const-string v2, "DESCRIPTIONS"

    #@80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@83
    goto :goto_46

    #@84
    :pswitch_84
    const-string v1, "subtype"

    #@86
    const-string v2, "CHAPTERS"

    #@88
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@8b
    goto :goto_46

    #@8c
    :pswitch_8c
    const-string v1, "subtype"

    #@8e
    const-string v2, "METADATA"

    #@90
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_93} :catch_5a

    #@93
    goto :goto_46

    #@94
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_52
        :pswitch_5c
        :pswitch_64
    .end packed-switch

    #@9e
    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_74
        :pswitch_7c
        :pswitch_84
        :pswitch_8c
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
    instance-of v2, p1, Lcom/google/android/gms/cast/MediaTrack;

    #@7
    if-eqz v2, :cond_6b

    #@9
    check-cast p1, Lcom/google/android/gms/cast/MediaTrack;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AA:Lorg/json/JSONObject;

    #@d
    if-nez v2, :cond_67

    #@f
    move v2, v0

    #@10
    :goto_10
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->AA:Lorg/json/JSONObject;

    #@12
    if-nez v3, :cond_69

    #@14
    move v3, v0

    #@15
    :goto_15
    if-ne v2, v3, :cond_6b

    #@17
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AA:Lorg/json/JSONObject;

    #@19
    if-eqz v2, :cond_29

    #@1b
    iget-object v2, p1, Lcom/google/android/gms/cast/MediaTrack;->AA:Lorg/json/JSONObject;

    #@1d
    if-eqz v2, :cond_29

    #@1f
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AA:Lorg/json/JSONObject;

    #@21
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->AA:Lorg/json/JSONObject;

    #@23
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/in;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_6b

    #@29
    :cond_29
    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AS:J

    #@2b
    iget-wide v4, p1, Lcom/google/android/gms/cast/MediaTrack;->AS:J

    #@2d
    cmp-long v2, v2, v4

    #@2f
    if-nez v2, :cond_65

    #@31
    iget v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AT:I

    #@33
    iget v3, p1, Lcom/google/android/gms/cast/MediaTrack;->AT:I

    #@35
    if-ne v2, v3, :cond_65

    #@37
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->At:Ljava/lang/String;

    #@39
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->At:Ljava/lang/String;

    #@3b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_65

    #@41
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Av:Ljava/lang/String;

    #@43
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->Av:Ljava/lang/String;

    #@45
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_65

    #@4b
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;

    #@4d
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;

    #@4f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_65

    #@55
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Ar:Ljava/lang/String;

    #@57
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->Ar:Ljava/lang/String;

    #@59
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_65

    #@5f
    iget v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AU:I

    #@61
    iget v3, p1, Lcom/google/android/gms/cast/MediaTrack;->AU:I

    #@63
    if-eq v2, v3, :cond_4

    #@65
    :cond_65
    move v0, v1

    #@66
    goto :goto_4

    #@67
    :cond_67
    move v2, v1

    #@68
    goto :goto_10

    #@69
    :cond_69
    move v3, v1

    #@6a
    goto :goto_15

    #@6b
    :cond_6b
    move v0, v1

    #@6c
    goto :goto_4
.end method

.method public getContentId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->At:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->Av:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AA:Lorg/json/JSONObject;

    #@2
    return-object v0
.end method

.method public getId()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AS:J

    #@2
    return-wide v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->Ar:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSubtype()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AU:I

    #@2
    return v0
.end method

.method public getType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AT:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 5

    #@0
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AS:J

    #@7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a
    move-result-object v2

    #@b
    aput-object v2, v0, v1

    #@d
    const/4 v1, 0x1

    #@e
    iget v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AT:I

    #@10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v2

    #@14
    aput-object v2, v0, v1

    #@16
    const/4 v1, 0x2

    #@17
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->At:Ljava/lang/String;

    #@19
    aput-object v2, v0, v1

    #@1b
    const/4 v1, 0x3

    #@1c
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Av:Ljava/lang/String;

    #@1e
    aput-object v2, v0, v1

    #@20
    const/4 v1, 0x4

    #@21
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;

    #@23
    aput-object v2, v0, v1

    #@25
    const/4 v1, 0x5

    #@26
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Ar:Ljava/lang/String;

    #@28
    aput-object v2, v0, v1

    #@2a
    const/4 v1, 0x6

    #@2b
    iget v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AU:I

    #@2d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v2

    #@31
    aput-object v2, v0, v1

    #@33
    const/4 v1, 0x7

    #@34
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AA:Lorg/json/JSONObject;

    #@36
    aput-object v2, v0, v1

    #@38
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@3b
    move-result v0

    #@3c
    return v0
.end method

.method public setContentId(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->At:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->Av:Ljava/lang/String;

    #@2
    return-void
.end method

.method setCustomData(Lorg/json/JSONObject;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->AA:Lorg/json/JSONObject;

    #@2
    return-void
.end method

.method setLanguage(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->Ar:Ljava/lang/String;

    #@2
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;

    #@2
    return-void
.end method
