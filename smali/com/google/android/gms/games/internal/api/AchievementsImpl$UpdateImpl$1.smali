.class Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;->w(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pl:Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;

.field final synthetic yJ:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;->Pl:Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;->yJ:Lcom/google/android/gms/common/api/Status;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public getAchievementId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;->Pl:Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;->a(Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;->yJ:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method