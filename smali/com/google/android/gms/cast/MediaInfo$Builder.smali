.class public Lcom/google/android/gms/cast/MediaInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final AB:Lcom/google/android/gms/cast/MediaInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
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
    const-string v1, "Content ID cannot be empty"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_11
    new-instance v0, Lcom/google/android/gms/cast/MediaInfo;

    #@13
    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;)V

    #@16
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->AB:Lcom/google/android/gms/cast/MediaInfo;

    #@18
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->AB:Lcom/google/android/gms/cast/MediaInfo;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->dY()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->AB:Lcom/google/android/gms/cast/MediaInfo;

    #@7
    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->AB:Lcom/google/android/gms/cast/MediaInfo;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaInfo;->setContentType(Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->AB:Lcom/google/android/gms/cast/MediaInfo;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaInfo;->setCustomData(Lorg/json/JSONObject;)V

    #@5
    return-object p0
.end method

.method public setMediaTracks(Ljava/util/List;)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;)",
            "Lcom/google/android/gms/cast/MediaInfo$Builder;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->AB:Lcom/google/android/gms/cast/MediaInfo;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaInfo;->b(Ljava/util/List;)V

    #@5
    return-object p0
.end method

.method public setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->AB:Lcom/google/android/gms/cast/MediaInfo;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaInfo;->a(Lcom/google/android/gms/cast/MediaMetadata;)V

    #@5
    return-object p0
.end method

.method public setStreamDuration(J)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->AB:Lcom/google/android/gms/cast/MediaInfo;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/MediaInfo;->m(J)V

    #@5
    return-object p0
.end method

.method public setStreamType(I)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->AB:Lcom/google/android/gms/cast/MediaInfo;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaInfo;->setStreamType(I)V

    #@5
    return-object p0
.end method

.method public setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->AB:Lcom/google/android/gms/cast/MediaInfo;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaInfo;->setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)V

    #@5
    return-object p0
.end method
