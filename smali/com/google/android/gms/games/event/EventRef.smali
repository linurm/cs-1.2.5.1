.class public final Lcom/google/android/gms/games/event/EventRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/event/Event;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/event/EventEntity;->a(Lcom/google/android/gms/games/event/Event;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/event/Event;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/event/EventEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/event/EventEntity;-><init>(Lcom/google/android/gms/games/event/Event;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/event/EventRef;->freeze()Lcom/google/android/gms/games/event/Event;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "description"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "description"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/event/EventRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getEventId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_event_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFormattedValue()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "formatted_value"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFormattedValue(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "formatted_value"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/event/EventRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "icon_image_uri"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "icon_image_url"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "name"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "name"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/event/EventRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getPlayer()Lcom/google/android/gms/games/Player;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/event/EventRef;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@4
    iget v2, p0, Lcom/google/android/gms/games/event/EventRef;->EC:I

    #@6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@9
    return-object v0
.end method

.method public getValue()J
    .registers 3

    #@0
    const-string v0, "value"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/event/EventEntity;->a(Lcom/google/android/gms/games/event/Event;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isVisible()Z
    .registers 2

    #@0
    const-string v0, "visibility"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->getBoolean(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/event/EventEntity;->b(Lcom/google/android/gms/games/event/Event;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/event/EventRef;->freeze()Lcom/google/android/gms/games/event/Event;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/event/EventEntity;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/event/EventEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    return-void
.end method
