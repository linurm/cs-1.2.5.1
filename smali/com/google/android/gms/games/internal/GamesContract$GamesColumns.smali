.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$GamesColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GamesColumns"
.end annotation


# static fields
.field public static final HR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/16 v0, 0x1b

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    const/4 v1, 0x0

    #@5
    const-string v2, "external_game_id"

    #@7
    aput-object v2, v0, v1

    #@9
    const/4 v1, 0x1

    #@a
    const-string v2, "display_name"

    #@c
    aput-object v2, v0, v1

    #@e
    const/4 v1, 0x2

    #@f
    const-string v2, "primary_category"

    #@11
    aput-object v2, v0, v1

    #@13
    const/4 v1, 0x3

    #@14
    const-string v2, "secondary_category"

    #@16
    aput-object v2, v0, v1

    #@18
    const/4 v1, 0x4

    #@19
    const-string v2, "developer_name"

    #@1b
    aput-object v2, v0, v1

    #@1d
    const/4 v1, 0x5

    #@1e
    const-string v2, "game_description"

    #@20
    aput-object v2, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    const-string v2, "game_icon_image_id"

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x7

    #@28
    const-string v2, "game_icon_image_uri"

    #@2a
    aput-object v2, v0, v1

    #@2c
    const/16 v1, 0x8

    #@2e
    const-string v2, "game_icon_image_url"

    #@30
    aput-object v2, v0, v1

    #@32
    const/16 v1, 0x9

    #@34
    const-string v2, "game_hi_res_image_id"

    #@36
    aput-object v2, v0, v1

    #@38
    const/16 v1, 0xa

    #@3a
    const-string v2, "game_hi_res_image_uri"

    #@3c
    aput-object v2, v0, v1

    #@3e
    const/16 v1, 0xb

    #@40
    const-string v2, "game_hi_res_image_url"

    #@42
    aput-object v2, v0, v1

    #@44
    const/16 v1, 0xc

    #@46
    const-string v2, "featured_image_id"

    #@48
    aput-object v2, v0, v1

    #@4a
    const/16 v1, 0xd

    #@4c
    const-string v2, "featured_image_uri"

    #@4e
    aput-object v2, v0, v1

    #@50
    const/16 v1, 0xe

    #@52
    const-string v2, "featured_image_url"

    #@54
    aput-object v2, v0, v1

    #@56
    const/16 v1, 0xf

    #@58
    const-string v2, "play_enabled_game"

    #@5a
    aput-object v2, v0, v1

    #@5c
    const/16 v1, 0x10

    #@5e
    const-string v2, "last_played_server_time"

    #@60
    aput-object v2, v0, v1

    #@62
    const/16 v1, 0x11

    #@64
    const-string v2, "last_connection_local_time"

    #@66
    aput-object v2, v0, v1

    #@68
    const/16 v1, 0x12

    #@6a
    const-string v2, "last_synced_local_time"

    #@6c
    aput-object v2, v0, v1

    #@6e
    const/16 v1, 0x13

    #@70
    const-string v2, "metadata_version"

    #@72
    aput-object v2, v0, v1

    #@74
    const/16 v1, 0x14

    #@76
    const-string v2, "target_instance"

    #@78
    aput-object v2, v0, v1

    #@7a
    const/16 v1, 0x15

    #@7c
    const-string v2, "gameplay_acl_status"

    #@7e
    aput-object v2, v0, v1

    #@80
    const/16 v1, 0x16

    #@82
    const-string v2, "achievement_total_count"

    #@84
    aput-object v2, v0, v1

    #@86
    const/16 v1, 0x17

    #@88
    const-string v2, "leaderboard_count"

    #@8a
    aput-object v2, v0, v1

    #@8c
    const/16 v1, 0x18

    #@8e
    const-string v2, "muted"

    #@90
    aput-object v2, v0, v1

    #@92
    const/16 v1, 0x19

    #@94
    const-string v2, "identity_sharing_confirmed"

    #@96
    aput-object v2, v0, v1

    #@98
    const/16 v1, 0x1a

    #@9a
    const-string v2, "snapshots_enabled"

    #@9c
    aput-object v2, v0, v1

    #@9e
    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$GamesColumns;->HR:[Ljava/lang/String;

    #@a0
    return-void
.end method
