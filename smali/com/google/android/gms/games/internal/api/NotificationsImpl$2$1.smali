.class Lcom/google/android/gms/games/internal/api/NotificationsImpl$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/NotificationsImpl$2;->K(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PX:Lcom/google/android/gms/games/internal/api/NotificationsImpl$2;

.field final synthetic yJ:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/NotificationsImpl$2;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$2$1;->PX:Lcom/google/android/gms/games/internal/api/NotificationsImpl$2;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$2$1;->yJ:Lcom/google/android/gms/common/api/Status;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$2$1;->yJ:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method
