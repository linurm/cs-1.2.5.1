.class public final Lcom/google/android/gms/games/internal/notification/GameNotificationBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/games/internal/notification/GameNotification;",
        ">;"
    }
.end annotation


# virtual methods
.method public ct(I)Lcom/google/android/gms/games/internal/notification/GameNotification;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/notification/GameNotificationBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@4
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@7
    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/notification/GameNotificationBuffer;->ct(I)Lcom/google/android/gms/games/internal/notification/GameNotification;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
