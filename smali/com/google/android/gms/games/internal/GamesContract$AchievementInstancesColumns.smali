.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$AchievementInstancesColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AchievementInstancesColumns"
.end annotation


# static fields
.field public static final HR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    const-string v2, "definition_id"

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    const-string v2, "player_id"

    #@b
    aput-object v2, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    const-string v2, "state"

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x3

    #@13
    const-string v2, "current_steps"

    #@15
    aput-object v2, v0, v1

    #@17
    const/4 v1, 0x4

    #@18
    const-string v2, "formatted_current_steps"

    #@1a
    aput-object v2, v0, v1

    #@1c
    const/4 v1, 0x5

    #@1d
    const-string v2, "last_updated_timestamp"

    #@1f
    aput-object v2, v0, v1

    #@21
    const/4 v1, 0x6

    #@22
    const-string v2, "instance_xp_value"

    #@24
    aput-object v2, v0, v1

    #@26
    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$AchievementInstancesColumns;->HR:[Ljava/lang/String;

    #@28
    return-void
.end method
