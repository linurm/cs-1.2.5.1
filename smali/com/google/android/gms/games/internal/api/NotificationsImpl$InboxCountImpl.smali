.class abstract Lcom/google/android/gms/games/internal/api/NotificationsImpl$InboxCountImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/NotificationsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "InboxCountImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/Notifications$InboxCountResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public N(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Notifications$InboxCountResult;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$InboxCountImpl$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/NotificationsImpl$InboxCountImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/NotificationsImpl$InboxCountImpl;Lcom/google/android/gms/common/api/Status;)V

    #@5
    return-object v0
.end method

.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/NotificationsImpl$InboxCountImpl;->N(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Notifications$InboxCountResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
