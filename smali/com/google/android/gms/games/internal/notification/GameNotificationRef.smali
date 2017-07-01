.class public final Lcom/google/android/gms/games/internal/notification/GameNotificationRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/internal/notification/GameNotification;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    return-void
.end method


# virtual methods
.method public getId()J
    .registers 3

    #@0
    const-string v0, "_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "text"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "title"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getType()I
    .registers 2

    #@0
    const-string v0, "type"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public ik()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "notification_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public il()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "ticker"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public im()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "coalesced_text"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public in()Z
    .registers 2

    #@0
    const-string v0, "acknowledged"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public io()Z
    .registers 2

    #@0
    const-string v0, "alert_level"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "Id"

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getId()J

    #@9
    move-result-wide v2

    #@a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@11
    move-result-object v0

    #@12
    const-string v1, "NotificationId"

    #@14
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->ik()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@1b
    move-result-object v0

    #@1c
    const-string v1, "Type"

    #@1e
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getType()I

    #@21
    move-result v2

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@29
    move-result-object v0

    #@2a
    const-string v1, "Title"

    #@2c
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getTitle()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@33
    move-result-object v0

    #@34
    const-string v1, "Ticker"

    #@36
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->il()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3d
    move-result-object v0

    #@3e
    const-string v1, "Text"

    #@40
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getText()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@47
    move-result-object v0

    #@48
    const-string v1, "CoalescedText"

    #@4a
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->im()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@51
    move-result-object v0

    #@52
    const-string v1, "isAcknowledged"

    #@54
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->in()Z

    #@57
    move-result v2

    #@58
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@5f
    move-result-object v0

    #@60
    const-string v1, "isSilent"

    #@62
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->io()Z

    #@65
    move-result v2

    #@66
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    return-object v0
.end method
