.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$QuestsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QuestsColumns"
.end annotation


# static fields
.field public static final HR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/16 v0, 0x12

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    const/4 v1, 0x0

    #@5
    const-string v2, "accepted_ts"

    #@7
    aput-object v2, v0, v1

    #@9
    const/4 v1, 0x1

    #@a
    const-string v2, "quest_banner_image_id"

    #@c
    aput-object v2, v0, v1

    #@e
    const/4 v1, 0x2

    #@f
    const-string v2, "quest_banner_image_uri"

    #@11
    aput-object v2, v0, v1

    #@13
    const/4 v1, 0x3

    #@14
    const-string v2, "quest_banner_image_url"

    #@16
    aput-object v2, v0, v1

    #@18
    const/4 v1, 0x4

    #@19
    const-string v2, "quest_description"

    #@1b
    aput-object v2, v0, v1

    #@1d
    const/4 v1, 0x5

    #@1e
    const-string v2, "quest_end_ts"

    #@20
    aput-object v2, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    const-string v2, "external_quest_id"

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x7

    #@28
    const-string v2, "game_id"

    #@2a
    aput-object v2, v0, v1

    #@2c
    const/16 v1, 0x8

    #@2e
    const-string v2, "quest_icon_image_id"

    #@30
    aput-object v2, v0, v1

    #@32
    const/16 v1, 0x9

    #@34
    const-string v2, "quest_icon_image_uri"

    #@36
    aput-object v2, v0, v1

    #@38
    const/16 v1, 0xa

    #@3a
    const-string v2, "quest_icon_image_url"

    #@3c
    aput-object v2, v0, v1

    #@3e
    const/16 v1, 0xb

    #@40
    const-string v2, "quest_last_updated_ts"

    #@42
    aput-object v2, v0, v1

    #@44
    const/16 v1, 0xc

    #@46
    const-string v2, "quest_name"

    #@48
    aput-object v2, v0, v1

    #@4a
    const/16 v1, 0xd

    #@4c
    const-string v2, "notified"

    #@4e
    aput-object v2, v0, v1

    #@50
    const/16 v1, 0xe

    #@52
    const-string v2, "notification_ts"

    #@54
    aput-object v2, v0, v1

    #@56
    const/16 v1, 0xf

    #@58
    const-string v2, "quest_start_ts"

    #@5a
    aput-object v2, v0, v1

    #@5c
    const/16 v1, 0x10

    #@5e
    const-string v2, "quest_state"

    #@60
    aput-object v2, v0, v1

    #@62
    const/16 v1, 0x11

    #@64
    const-string v2, "quest_type"

    #@66
    aput-object v2, v0, v1

    #@68
    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$QuestsColumns;->HR:[Ljava/lang/String;

    #@6a
    return-void
.end method
