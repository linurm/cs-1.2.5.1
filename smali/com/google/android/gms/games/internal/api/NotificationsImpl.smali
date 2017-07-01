.class public final Lcom/google/android/gms/games/internal/api/NotificationsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Notifications;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/api/NotificationsImpl$ContactSettingLoadImpl;,
        Lcom/google/android/gms/games/internal/api/NotificationsImpl$ContactSettingUpdateImpl;,
        Lcom/google/android/gms/games/internal/api/NotificationsImpl$InboxCountImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public clear(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .registers 4

    #@0
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ch(I)V

    #@7
    return-void
.end method

.method public clearAll(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    #@0
    const/16 v0, 0x1f

    #@2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/games/internal/api/NotificationsImpl;->clear(Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    #@5
    return-void
.end method
