.class public Lcom/google/android/gms/cast/MediaMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaMetadata$a;
    }
.end annotation


# static fields
.field private static final AC:[Ljava/lang/String;

.field private static final AD:Lcom/google/android/gms/cast/MediaMetadata$a;

.field public static final KEY_ALBUM_ARTIST:Ljava/lang/String; = "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

.field public static final KEY_ALBUM_TITLE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.ALBUM_TITLE"

.field public static final KEY_ARTIST:Ljava/lang/String; = "com.google.android.gms.cast.metadata.ARTIST"

.field public static final KEY_BROADCAST_DATE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.BROADCAST_DATE"

.field public static final KEY_COMPOSER:Ljava/lang/String; = "com.google.android.gms.cast.metadata.COMPOSER"

.field public static final KEY_CREATION_DATE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.CREATION_DATE"

.field public static final KEY_DISC_NUMBER:Ljava/lang/String; = "com.google.android.gms.cast.metadata.DISC_NUMBER"

.field public static final KEY_EPISODE_NUMBER:Ljava/lang/String; = "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "com.google.android.gms.cast.metadata.HEIGHT"

.field public static final KEY_LOCATION_LATITUDE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

.field public static final KEY_LOCATION_LONGITUDE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

.field public static final KEY_LOCATION_NAME:Ljava/lang/String; = "com.google.android.gms.cast.metadata.LOCATION_NAME"

.field public static final KEY_RELEASE_DATE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.RELEASE_DATE"

.field public static final KEY_SEASON_NUMBER:Ljava/lang/String; = "com.google.android.gms.cast.metadata.SEASON_NUMBER"

.field public static final KEY_SERIES_TITLE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.SERIES_TITLE"

.field public static final KEY_STUDIO:Ljava/lang/String; = "com.google.android.gms.cast.metadata.STUDIO"

.field public static final KEY_SUBTITLE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.SUBTITLE"

.field public static final KEY_TITLE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.TITLE"

.field public static final KEY_TRACK_NUMBER:Ljava/lang/String; = "com.google.android.gms.cast.metadata.TRACK_NUMBER"

.field public static final KEY_WIDTH:Ljava/lang/String; = "com.google.android.gms.cast.metadata.WIDTH"

.field public static final MEDIA_TYPE_GENERIC:I = 0x0

.field public static final MEDIA_TYPE_MOVIE:I = 0x1

.field public static final MEDIA_TYPE_MUSIC_TRACK:I = 0x3

.field public static final MEDIA_TYPE_PHOTO:I = 0x4

.field public static final MEDIA_TYPE_TV_SHOW:I = 0x2

.field public static final MEDIA_TYPE_USER:I = 0x64


# instance fields
.field private final AE:Landroid/os/Bundle;

.field private AF:I

.field private final zQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    #@0
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x4

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v0, 0x5

    #@5
    new-array v0, v0, [Ljava/lang/String;

    #@7
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v2, v0, v1

    #@b
    const-string v1, "String"

    #@d
    aput-object v1, v0, v3

    #@f
    const-string v1, "int"

    #@11
    aput-object v1, v0, v4

    #@13
    const-string v1, "double"

    #@15
    aput-object v1, v0, v6

    #@17
    const-string v1, "ISO-8601 date String"

    #@19
    aput-object v1, v0, v5

    #@1b
    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->AC:[Ljava/lang/String;

    #@1d
    new-instance v0, Lcom/google/android/gms/cast/MediaMetadata$a;

    #@1f
    invoke-direct {v0}, Lcom/google/android/gms/cast/MediaMetadata$a;-><init>()V

    #@22
    const-string v1, "com.google.android.gms.cast.metadata.CREATION_DATE"

    #@24
    const-string v2, "creationDateTime"

    #@26
    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@29
    move-result-object v0

    #@2a
    const-string v1, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    #@2c
    const-string v2, "releaseDate"

    #@2e
    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@31
    move-result-object v0

    #@32
    const-string v1, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    #@34
    const-string v2, "originalAirdate"

    #@36
    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@39
    move-result-object v0

    #@3a
    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    #@3c
    const-string v2, "title"

    #@3e
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@41
    move-result-object v0

    #@42
    const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"

    #@44
    const-string v2, "subtitle"

    #@46
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@49
    move-result-object v0

    #@4a
    const-string v1, "com.google.android.gms.cast.metadata.ARTIST"

    #@4c
    const-string v2, "artist"

    #@4e
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@51
    move-result-object v0

    #@52
    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    #@54
    const-string v2, "albumArtist"

    #@56
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@59
    move-result-object v0

    #@5a
    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    #@5c
    const-string v2, "albumName"

    #@5e
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@61
    move-result-object v0

    #@62
    const-string v1, "com.google.android.gms.cast.metadata.COMPOSER"

    #@64
    const-string v2, "composer"

    #@66
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@69
    move-result-object v0

    #@6a
    const-string v1, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    #@6c
    const-string v2, "discNumber"

    #@6e
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@71
    move-result-object v0

    #@72
    const-string v1, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    #@74
    const-string v2, "trackNumber"

    #@76
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@79
    move-result-object v0

    #@7a
    const-string v1, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    #@7c
    const-string v2, "season"

    #@7e
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@81
    move-result-object v0

    #@82
    const-string v1, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    #@84
    const-string v2, "episode"

    #@86
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@89
    move-result-object v0

    #@8a
    const-string v1, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    #@8c
    const-string v2, "seriesTitle"

    #@8e
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@91
    move-result-object v0

    #@92
    const-string v1, "com.google.android.gms.cast.metadata.STUDIO"

    #@94
    const-string v2, "studio"

    #@96
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@99
    move-result-object v0

    #@9a
    const-string v1, "com.google.android.gms.cast.metadata.WIDTH"

    #@9c
    const-string v2, "width"

    #@9e
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@a1
    move-result-object v0

    #@a2
    const-string v1, "com.google.android.gms.cast.metadata.HEIGHT"

    #@a4
    const-string v2, "height"

    #@a6
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@a9
    move-result-object v0

    #@aa
    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    #@ac
    const-string v2, "location"

    #@ae
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@b1
    move-result-object v0

    #@b2
    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    #@b4
    const-string v2, "latitude"

    #@b6
    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@b9
    move-result-object v0

    #@ba
    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    #@bc
    const-string v2, "longitude"

    #@be
    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gms/cast/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$a;

    #@c1
    move-result-object v0

    #@c2
    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->AD:Lcom/google/android/gms/cast/MediaMetadata$a;

    #@c4
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    #@4
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zQ:Ljava/util/List;

    #@a
    new-instance v0, Landroid/os/Bundle;

    #@c
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@11
    iput p1, p0, Lcom/google/android/gms/cast/MediaMetadata;->AF:I

    #@13
    return-void
.end method

.method private varargs a(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .registers 9

    #@0
    :try_start_0
    array-length v1, p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1} :catch_2b

    #@1
    const/4 v0, 0x0

    #@2
    :goto_2
    if-ge v0, v1, :cond_4d

    #@4
    aget-object v2, p2, v0

    #@6
    :try_start_6
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@8
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_11

    #@e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_2

    #@11
    :cond_11
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->AD:Lcom/google/android/gms/cast/MediaMetadata$a;

    #@13
    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$a;->ag(Ljava/lang/String;)I

    #@16
    move-result v3

    #@17
    packed-switch v3, :pswitch_data_8a

    #@1a
    goto :goto_e

    #@1b
    :pswitch_1b
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->AD:Lcom/google/android/gms/cast/MediaMetadata$a;

    #@1d
    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$a;->ae(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@23
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@2a
    goto :goto_e

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    :cond_2c
    return-void

    #@2d
    :pswitch_2d
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->AD:Lcom/google/android/gms/cast/MediaMetadata$a;

    #@2f
    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$a;->ae(Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@35
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@38
    move-result v2

    #@39
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@3c
    goto :goto_e

    #@3d
    :pswitch_3d
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->AD:Lcom/google/android/gms/cast/MediaMetadata$a;

    #@3f
    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$a;->ae(Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@45
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    #@48
    move-result-wide v4

    #@49
    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    #@4c
    goto :goto_e

    #@4d
    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@4f
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@52
    move-result-object v0

    #@53
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@56
    move-result-object v1

    #@57
    :cond_57
    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_2c

    #@5d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Ljava/lang/String;

    #@63
    const-string v2, "com.google."

    #@65
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@68
    move-result v2

    #@69
    if-nez v2, :cond_57

    #@6b
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@6d
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@70
    move-result-object v2

    #@71
    instance-of v3, v2, Ljava/lang/String;

    #@73
    if-eqz v3, :cond_79

    #@75
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@78
    goto :goto_57

    #@79
    :cond_79
    instance-of v3, v2, Ljava/lang/Integer;

    #@7b
    if-eqz v3, :cond_81

    #@7d
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@80
    goto :goto_57

    #@81
    :cond_81
    instance-of v3, v2, Ljava/lang/Double;

    #@83
    if-eqz v3, :cond_57

    #@85
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_88
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_88} :catch_2b

    #@88
    goto :goto_57

    #@89
    nop

    #@8a
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_2d
        :pswitch_3d
        :pswitch_1b
    .end packed-switch
.end method

.method private a(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 10

    #@0
    const/4 v5, 0x0

    #@1
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    #@4
    move-result v0

    #@5
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    #@8
    move-result v1

    #@9
    if-eq v0, v1, :cond_d

    #@b
    move v0, v5

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v6

    #@15
    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_53

    #@1b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/lang/String;

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    instance-of v1, v2, Landroid/os/Bundle;

    #@2b
    if-eqz v1, :cond_3f

    #@2d
    instance-of v1, v4, Landroid/os/Bundle;

    #@2f
    if-eqz v1, :cond_3f

    #@31
    move-object v1, v2

    #@32
    check-cast v1, Landroid/os/Bundle;

    #@34
    move-object v3, v4

    #@35
    check-cast v3, Landroid/os/Bundle;

    #@37
    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/cast/MediaMetadata;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    #@3a
    move-result v1

    #@3b
    if-nez v1, :cond_3f

    #@3d
    move v0, v5

    #@3e
    goto :goto_c

    #@3f
    :cond_3f
    if-nez v2, :cond_4b

    #@41
    if-nez v4, :cond_49

    #@43
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@46
    move-result v0

    #@47
    if-nez v0, :cond_15

    #@49
    :cond_49
    move v0, v5

    #@4a
    goto :goto_c

    #@4b
    :cond_4b
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v0

    #@4f
    if-nez v0, :cond_15

    #@51
    move v0, v5

    #@52
    goto :goto_c

    #@53
    :cond_53
    const/4 v0, 0x1

    #@54
    goto :goto_c
.end method

.method private varargs b(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .registers 13

    #@0
    new-instance v4, Ljava/util/HashSet;

    #@2
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v2

    #@6
    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@9
    :try_start_9
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    #@c
    move-result-object v5

    #@d
    :cond_d
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_95

    #@13
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/lang/String;

    #@19
    const-string v3, "metadataType"

    #@1b
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_d

    #@21
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->AD:Lcom/google/android/gms/cast/MediaMetadata$a;

    #@23
    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$a;->af(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    if-eqz v6, :cond_83

    #@29
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_2c} :catch_94

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_d

    #@2f
    :try_start_2f
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    if-eqz v2, :cond_d

    #@35
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->AD:Lcom/google/android/gms/cast/MediaMetadata$a;

    #@37
    invoke-virtual {v3, v6}, Lcom/google/android/gms/cast/MediaMetadata$a;->ag(Ljava/lang/String;)I

    #@3a
    move-result v3

    #@3b
    packed-switch v3, :pswitch_data_b8

    #@3e
    goto :goto_d

    #@3f
    :pswitch_3f
    instance-of v3, v2, Ljava/lang/String;

    #@41
    if-eqz v3, :cond_d

    #@43
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@45
    check-cast v2, Ljava/lang/String;

    #@47
    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    goto :goto_d

    #@4b
    :catch_4b
    move-exception v2

    #@4c
    goto :goto_d

    #@4d
    :pswitch_4d
    instance-of v3, v2, Ljava/lang/String;

    #@4f
    if-eqz v3, :cond_d

    #@51
    move-object v0, v2

    #@52
    check-cast v0, Ljava/lang/String;

    #@54
    move-object v3, v0

    #@55
    invoke-static {v3}, Lcom/google/android/gms/internal/gs;->aq(Ljava/lang/String;)Ljava/util/Calendar;

    #@58
    move-result-object v3

    #@59
    if-eqz v3, :cond_d

    #@5b
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@5d
    check-cast v2, Ljava/lang/String;

    #@5f
    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@62
    goto :goto_d

    #@63
    :pswitch_63
    instance-of v3, v2, Ljava/lang/Integer;

    #@65
    if-eqz v3, :cond_d

    #@67
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@69
    check-cast v2, Ljava/lang/Integer;

    #@6b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@6e
    move-result v2

    #@6f
    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@72
    goto :goto_d

    #@73
    :pswitch_73
    instance-of v3, v2, Ljava/lang/Double;

    #@75
    if-eqz v3, :cond_d

    #@77
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@79
    check-cast v2, Ljava/lang/Double;

    #@7b
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    #@7e
    move-result-wide v8

    #@7f
    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_82} :catch_4b

    #@82
    goto :goto_d

    #@83
    :cond_83
    :try_start_83
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@86
    move-result-object v3

    #@87
    instance-of v6, v3, Ljava/lang/String;

    #@89
    if-eqz v6, :cond_96

    #@8b
    iget-object v6, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@8d
    check-cast v3, Ljava/lang/String;

    #@8f
    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@92
    goto/16 :goto_d

    #@94
    :catch_94
    move-exception v2

    #@95
    :cond_95
    return-void

    #@96
    :cond_96
    instance-of v6, v3, Ljava/lang/Integer;

    #@98
    if-eqz v6, :cond_a7

    #@9a
    iget-object v6, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@9c
    check-cast v3, Ljava/lang/Integer;

    #@9e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@a1
    move-result v3

    #@a2
    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@a5
    goto/16 :goto_d

    #@a7
    :cond_a7
    instance-of v6, v3, Ljava/lang/Double;

    #@a9
    if-eqz v6, :cond_d

    #@ab
    iget-object v6, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@ad
    check-cast v3, Ljava/lang/Double;

    #@af
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    #@b2
    move-result-wide v8

    #@b3
    invoke-virtual {v6, v2, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_b6} :catch_94

    #@b6
    goto/16 :goto_d

    #@b8
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_63
        :pswitch_73
        :pswitch_4d
    .end packed-switch
.end method

.method private d(Ljava/lang/String;I)V
    .registers 6
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
    const-string v1, "null and empty keys are not allowed"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    sget-object v0, Lcom/google/android/gms/cast/MediaMetadata;->AD:Lcom/google/android/gms/cast/MediaMetadata$a;

    #@10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaMetadata$a;->ag(Ljava/lang/String;)I

    #@13
    move-result v0

    #@14
    if-eq v0, p2, :cond_3f

    #@16
    if-eqz v0, :cond_3f

    #@18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string v2, "Value for "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string v2, " must be a "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    sget-object v2, Lcom/google/android/gms/cast/MediaMetadata;->AC:[Ljava/lang/String;

    #@31
    aget-object v2, v2, p2

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    :cond_3f
    return-void
.end method


# virtual methods
.method public addImage(Lcom/google/android/gms/common/images/WebImage;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zQ:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 9

    #@0
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaMetadata;->clear()V

    #@8
    iput v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->AF:I

    #@a
    :try_start_a
    const-string v0, "metadataType"

    #@c
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    iput v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AF:I
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_12} :catch_c0

    #@12
    :goto_12
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zQ:Ljava/util/List;

    #@14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gs;->a(Ljava/util/List;Lorg/json/JSONObject;)V

    #@17
    iget v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AF:I

    #@19
    packed-switch v0, :pswitch_data_c4

    #@1c
    new-array v0, v2, [Ljava/lang/String;

    #@1e
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    #@21
    :goto_21
    return-void

    #@22
    :pswitch_22
    new-array v0, v6, [Ljava/lang/String;

    #@24
    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    #@26
    aput-object v1, v0, v2

    #@28
    const-string v1, "com.google.android.gms.cast.metadata.ARTIST"

    #@2a
    aput-object v1, v0, v3

    #@2c
    const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"

    #@2e
    aput-object v1, v0, v4

    #@30
    const-string v1, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    #@32
    aput-object v1, v0, v5

    #@34
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    #@37
    goto :goto_21

    #@38
    :pswitch_38
    new-array v0, v6, [Ljava/lang/String;

    #@3a
    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    #@3c
    aput-object v1, v0, v2

    #@3e
    const-string v1, "com.google.android.gms.cast.metadata.STUDIO"

    #@40
    aput-object v1, v0, v3

    #@42
    const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"

    #@44
    aput-object v1, v0, v4

    #@46
    const-string v1, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    #@48
    aput-object v1, v0, v5

    #@4a
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    #@4d
    goto :goto_21

    #@4e
    :pswitch_4e
    const/4 v0, 0x5

    #@4f
    new-array v0, v0, [Ljava/lang/String;

    #@51
    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    #@53
    aput-object v1, v0, v2

    #@55
    const-string v1, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    #@57
    aput-object v1, v0, v3

    #@59
    const-string v1, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    #@5b
    aput-object v1, v0, v4

    #@5d
    const-string v1, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    #@5f
    aput-object v1, v0, v5

    #@61
    const-string v1, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    #@63
    aput-object v1, v0, v6

    #@65
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    #@68
    goto :goto_21

    #@69
    :pswitch_69
    const/16 v0, 0x8

    #@6b
    new-array v0, v0, [Ljava/lang/String;

    #@6d
    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    #@6f
    aput-object v1, v0, v2

    #@71
    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    #@73
    aput-object v1, v0, v3

    #@75
    const-string v1, "com.google.android.gms.cast.metadata.ARTIST"

    #@77
    aput-object v1, v0, v4

    #@79
    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    #@7b
    aput-object v1, v0, v5

    #@7d
    const-string v1, "com.google.android.gms.cast.metadata.COMPOSER"

    #@7f
    aput-object v1, v0, v6

    #@81
    const/4 v1, 0x5

    #@82
    const-string v2, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    #@84
    aput-object v2, v0, v1

    #@86
    const/4 v1, 0x6

    #@87
    const-string v2, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    #@89
    aput-object v2, v0, v1

    #@8b
    const/4 v1, 0x7

    #@8c
    const-string v2, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    #@8e
    aput-object v2, v0, v1

    #@90
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    #@93
    goto :goto_21

    #@94
    :pswitch_94
    const/16 v0, 0x8

    #@96
    new-array v0, v0, [Ljava/lang/String;

    #@98
    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    #@9a
    aput-object v1, v0, v2

    #@9c
    const-string v1, "com.google.android.gms.cast.metadata.ARTIST"

    #@9e
    aput-object v1, v0, v3

    #@a0
    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    #@a2
    aput-object v1, v0, v4

    #@a4
    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    #@a6
    aput-object v1, v0, v5

    #@a8
    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    #@aa
    aput-object v1, v0, v6

    #@ac
    const/4 v1, 0x5

    #@ad
    const-string v2, "com.google.android.gms.cast.metadata.WIDTH"

    #@af
    aput-object v2, v0, v1

    #@b1
    const/4 v1, 0x6

    #@b2
    const-string v2, "com.google.android.gms.cast.metadata.HEIGHT"

    #@b4
    aput-object v2, v0, v1

    #@b6
    const/4 v1, 0x7

    #@b7
    const-string v2, "com.google.android.gms.cast.metadata.CREATION_DATE"

    #@b9
    aput-object v2, v0, v1

    #@bb
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    #@be
    goto/16 :goto_21

    #@c0
    :catch_c0
    move-exception v0

    #@c1
    goto/16 :goto_12

    #@c3
    nop

    #@c4
    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_22
        :pswitch_38
        :pswitch_4e
        :pswitch_69
        :pswitch_94
    .end packed-switch
.end method

.method public clear()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zQ:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@a
    return-void
.end method

.method public clearImages()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zQ:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public dZ()Lorg/json/JSONObject;
    .registers 9

    #@0
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    new-instance v0, Lorg/json/JSONObject;

    #@7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@a
    :try_start_a
    const-string v1, "metadataType"

    #@c
    iget v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->AF:I

    #@e
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_11} :catch_bf

    #@11
    :goto_11
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zQ:Ljava/util/List;

    #@13
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gs;->a(Lorg/json/JSONObject;Ljava/util/List;)V

    #@16
    iget v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->AF:I

    #@18
    packed-switch v1, :pswitch_data_c2

    #@1b
    new-array v1, v3, [Ljava/lang/String;

    #@1d
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    #@20
    :goto_20
    return-object v0

    #@21
    :pswitch_21
    new-array v1, v7, [Ljava/lang/String;

    #@23
    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    #@25
    aput-object v2, v1, v3

    #@27
    const-string v2, "com.google.android.gms.cast.metadata.ARTIST"

    #@29
    aput-object v2, v1, v4

    #@2b
    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    #@2d
    aput-object v2, v1, v5

    #@2f
    const-string v2, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    #@31
    aput-object v2, v1, v6

    #@33
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    #@36
    goto :goto_20

    #@37
    :pswitch_37
    new-array v1, v7, [Ljava/lang/String;

    #@39
    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    #@3b
    aput-object v2, v1, v3

    #@3d
    const-string v2, "com.google.android.gms.cast.metadata.STUDIO"

    #@3f
    aput-object v2, v1, v4

    #@41
    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    #@43
    aput-object v2, v1, v5

    #@45
    const-string v2, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    #@47
    aput-object v2, v1, v6

    #@49
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    #@4c
    goto :goto_20

    #@4d
    :pswitch_4d
    const/4 v1, 0x5

    #@4e
    new-array v1, v1, [Ljava/lang/String;

    #@50
    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    #@52
    aput-object v2, v1, v3

    #@54
    const-string v2, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    #@56
    aput-object v2, v1, v4

    #@58
    const-string v2, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    #@5a
    aput-object v2, v1, v5

    #@5c
    const-string v2, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    #@5e
    aput-object v2, v1, v6

    #@60
    const-string v2, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    #@62
    aput-object v2, v1, v7

    #@64
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    #@67
    goto :goto_20

    #@68
    :pswitch_68
    const/16 v1, 0x8

    #@6a
    new-array v1, v1, [Ljava/lang/String;

    #@6c
    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    #@6e
    aput-object v2, v1, v3

    #@70
    const-string v2, "com.google.android.gms.cast.metadata.ARTIST"

    #@72
    aput-object v2, v1, v4

    #@74
    const-string v2, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    #@76
    aput-object v2, v1, v5

    #@78
    const-string v2, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    #@7a
    aput-object v2, v1, v6

    #@7c
    const-string v2, "com.google.android.gms.cast.metadata.COMPOSER"

    #@7e
    aput-object v2, v1, v7

    #@80
    const/4 v2, 0x5

    #@81
    const-string v3, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    #@83
    aput-object v3, v1, v2

    #@85
    const/4 v2, 0x6

    #@86
    const-string v3, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    #@88
    aput-object v3, v1, v2

    #@8a
    const/4 v2, 0x7

    #@8b
    const-string v3, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    #@8d
    aput-object v3, v1, v2

    #@8f
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    #@92
    goto :goto_20

    #@93
    :pswitch_93
    const/16 v1, 0x8

    #@95
    new-array v1, v1, [Ljava/lang/String;

    #@97
    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    #@99
    aput-object v2, v1, v3

    #@9b
    const-string v2, "com.google.android.gms.cast.metadata.ARTIST"

    #@9d
    aput-object v2, v1, v4

    #@9f
    const-string v2, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    #@a1
    aput-object v2, v1, v5

    #@a3
    const-string v2, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    #@a5
    aput-object v2, v1, v6

    #@a7
    const-string v2, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    #@a9
    aput-object v2, v1, v7

    #@ab
    const/4 v2, 0x5

    #@ac
    const-string v3, "com.google.android.gms.cast.metadata.WIDTH"

    #@ae
    aput-object v3, v1, v2

    #@b0
    const/4 v2, 0x6

    #@b1
    const-string v3, "com.google.android.gms.cast.metadata.HEIGHT"

    #@b3
    aput-object v3, v1, v2

    #@b5
    const/4 v2, 0x7

    #@b6
    const-string v3, "com.google.android.gms.cast.metadata.CREATION_DATE"

    #@b8
    aput-object v3, v1, v2

    #@ba
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    #@bd
    goto/16 :goto_20

    #@bf
    :catch_bf
    move-exception v1

    #@c0
    goto/16 :goto_11

    #@c2
    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_21
        :pswitch_37
        :pswitch_4d
        :pswitch_68
        :pswitch_93
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-ne p0, p1, :cond_6

    #@4
    :cond_4
    move v0, v1

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/cast/MediaMetadata;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/cast/MediaMetadata;

    #@c
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@e
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@10
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_5

    #@16
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->zQ:Ljava/util/List;

    #@18
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaMetadata;->zQ:Ljava/util/List;

    #@1a
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_4

    #@20
    goto :goto_5
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Calendar;
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V

    #@4
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_11

    #@c
    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->aq(Ljava/lang/String;)Ljava/util/Calendar;

    #@f
    move-result-object v0

    #@10
    :goto_10
    return-object v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_10
.end method

.method public getDateAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V

    #@4
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4

    #@0
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V

    #@4
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zQ:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V

    #@4
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getMediaType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AF:I

    #@2
    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V

    #@4
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public hasImages()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zQ:Ljava/util/List;

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zQ:Ljava/util/List;

    #@6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method public hashCode()I
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    const/16 v0, 0x11

    #@c
    move v1, v0

    #@d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_28

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/String;

    #@19
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@1b
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@22
    move-result v0

    #@23
    mul-int/lit8 v1, v1, 0x1f

    #@25
    add-int/2addr v0, v1

    #@26
    move v1, v0

    #@27
    goto :goto_d

    #@28
    :cond_28
    mul-int/lit8 v0, v1, 0x1f

    #@2a
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zQ:Ljava/util/List;

    #@2c
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    #@2f
    move-result v1

    #@30
    add-int/2addr v0, v1

    #@31
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public putDate(Ljava/lang/String;Ljava/util/Calendar;)V
    .registers 5

    #@0
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V

    #@4
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@6
    invoke-static {p2}, Lcom/google/android/gms/internal/gs;->a(Ljava/util/Calendar;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 6

    #@0
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V

    #@4
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    #@9
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V

    #@4
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@9
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->d(Ljava/lang/String;I)V

    #@4
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->AE:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-void
.end method
