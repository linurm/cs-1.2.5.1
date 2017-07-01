.class public Lcom/google/android/gms/cast/MediaTrack$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final AV:Lcom/google/android/gms/cast/MediaTrack;


# direct methods
.method public constructor <init>(JI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/cast/MediaTrack;

    #@5
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JI)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AV:Lcom/google/android/gms/cast/MediaTrack;

    #@a
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaTrack;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AV:Lcom/google/android/gms/cast/MediaTrack;

    #@2
    return-object v0
.end method

.method public setContentId(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AV:Lcom/google/android/gms/cast/MediaTrack;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setContentId(Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AV:Lcom/google/android/gms/cast/MediaTrack;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setContentType(Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaTrack$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AV:Lcom/google/android/gms/cast/MediaTrack;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setCustomData(Lorg/json/JSONObject;)V

    #@5
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AV:Lcom/google/android/gms/cast/MediaTrack;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setLanguage(Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public setLanguage(Ljava/util/Locale;)Lcom/google/android/gms/cast/MediaTrack$Builder;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AV:Lcom/google/android/gms/cast/MediaTrack;

    #@2
    invoke-static {p1}, Lcom/google/android/gms/internal/gi;->b(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaTrack;->setLanguage(Ljava/lang/String;)V

    #@9
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AV:Lcom/google/android/gms/cast/MediaTrack;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setName(Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public setSubtype(I)Lcom/google/android/gms/cast/MediaTrack$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AV:Lcom/google/android/gms/cast/MediaTrack;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->R(I)V

    #@5
    return-object p0
.end method
