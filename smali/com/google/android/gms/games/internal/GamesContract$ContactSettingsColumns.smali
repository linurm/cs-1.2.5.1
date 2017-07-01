.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$ContactSettingsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContactSettingsColumns"
.end annotation


# static fields
.field public static final HR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    const-string v2, "mobile_notifications_enabled"

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    const-string v2, "match_notifications_enabled"

    #@b
    aput-object v2, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    const-string v2, "quest_notifications_enabled"

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x3

    #@13
    const-string v2, "request_notifications_enabled"

    #@15
    aput-object v2, v0, v1

    #@17
    const/4 v1, 0x4

    #@18
    const-string v2, "level_notifications_enabled"

    #@1a
    aput-object v2, v0, v1

    #@1c
    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$ContactSettingsColumns;->HR:[Ljava/lang/String;

    #@1e
    return-void
.end method
