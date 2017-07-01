.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$PlayersColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayersColumns"
.end annotation


# static fields
.field public static final HR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/16 v0, 0x1c

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    const/4 v1, 0x0

    #@5
    const-string v2, "external_player_id"

    #@7
    aput-object v2, v0, v1

    #@9
    const/4 v1, 0x1

    #@a
    const-string v2, "profile_icon_image_id"

    #@c
    aput-object v2, v0, v1

    #@e
    const/4 v1, 0x2

    #@f
    const-string v2, "profile_hi_res_image_id"

    #@11
    aput-object v2, v0, v1

    #@13
    const/4 v1, 0x3

    #@14
    const-string v2, "profile_icon_image_uri"

    #@16
    aput-object v2, v0, v1

    #@18
    const/4 v1, 0x4

    #@19
    const-string v2, "profile_icon_image_url"

    #@1b
    aput-object v2, v0, v1

    #@1d
    const/4 v1, 0x5

    #@1e
    const-string v2, "profile_hi_res_image_uri"

    #@20
    aput-object v2, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    const-string v2, "profile_hi_res_image_url"

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x7

    #@28
    const-string v2, "profile_name"

    #@2a
    aput-object v2, v0, v1

    #@2c
    const/16 v1, 0x8

    #@2e
    const-string v2, "last_updated"

    #@30
    aput-object v2, v0, v1

    #@32
    const/16 v1, 0x9

    #@34
    const-string v2, "is_in_circles"

    #@36
    aput-object v2, v0, v1

    #@38
    const/16 v1, 0xa

    #@3a
    const-string v2, "has_all_public_acls"

    #@3c
    aput-object v2, v0, v1

    #@3e
    const/16 v1, 0xb

    #@40
    const-string v2, "current_xp_total"

    #@42
    aput-object v2, v0, v1

    #@44
    const/16 v1, 0xc

    #@46
    const-string v2, "current_level"

    #@48
    aput-object v2, v0, v1

    #@4a
    const/16 v1, 0xd

    #@4c
    const-string v2, "current_level_min_xp"

    #@4e
    aput-object v2, v0, v1

    #@50
    const/16 v1, 0xe

    #@52
    const-string v2, "current_level_max_xp"

    #@54
    aput-object v2, v0, v1

    #@56
    const/16 v1, 0xf

    #@58
    const-string v2, "next_level"

    #@5a
    aput-object v2, v0, v1

    #@5c
    const/16 v1, 0x10

    #@5e
    const-string v2, "next_level_max_xp"

    #@60
    aput-object v2, v0, v1

    #@62
    const/16 v1, 0x11

    #@64
    const-string v2, "last_level_up_timestamp"

    #@66
    aput-object v2, v0, v1

    #@68
    const/16 v1, 0x12

    #@6a
    const-string v2, "player_title"

    #@6c
    aput-object v2, v0, v1

    #@6e
    const/16 v1, 0x13

    #@70
    const-string v2, "most_recent_external_game_id"

    #@72
    aput-object v2, v0, v1

    #@74
    const/16 v1, 0x14

    #@76
    const-string v2, "most_recent_game_name"

    #@78
    aput-object v2, v0, v1

    #@7a
    const/16 v1, 0x15

    #@7c
    const-string v2, "most_recent_activity_timestamp"

    #@7e
    aput-object v2, v0, v1

    #@80
    const/16 v1, 0x16

    #@82
    const-string v2, "most_recent_game_icon_id"

    #@84
    aput-object v2, v0, v1

    #@86
    const/16 v1, 0x17

    #@88
    const-string v2, "most_recent_game_icon_uri"

    #@8a
    aput-object v2, v0, v1

    #@8c
    const/16 v1, 0x18

    #@8e
    const-string v2, "most_recent_game_hi_res_id"

    #@90
    aput-object v2, v0, v1

    #@92
    const/16 v1, 0x19

    #@94
    const-string v2, "most_recent_game_hi_res_uri"

    #@96
    aput-object v2, v0, v1

    #@98
    const/16 v1, 0x1a

    #@9a
    const-string v2, "most_recent_game_featured_id"

    #@9c
    aput-object v2, v0, v1

    #@9e
    const/16 v1, 0x1b

    #@a0
    const-string v2, "most_recent_game_featured_uri"

    #@a2
    aput-object v2, v0, v1

    #@a4
    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$PlayersColumns;->HR:[Ljava/lang/String;

    #@a6
    return-void
.end method
