.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$MatchesColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MatchesColumns"
.end annotation


# static fields
.field public static final HR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/16 v0, 0x18

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    const/4 v1, 0x0

    #@5
    const-string v2, "game_id"

    #@7
    aput-object v2, v0, v1

    #@9
    const/4 v1, 0x1

    #@a
    const-string v2, "external_match_id"

    #@c
    aput-object v2, v0, v1

    #@e
    const/4 v1, 0x2

    #@f
    const-string v2, "creator_external"

    #@11
    aput-object v2, v0, v1

    #@13
    const/4 v1, 0x3

    #@14
    const-string v2, "creation_timestamp"

    #@16
    aput-object v2, v0, v1

    #@18
    const/4 v1, 0x4

    #@19
    const-string v2, "last_updater_external"

    #@1b
    aput-object v2, v0, v1

    #@1d
    const/4 v1, 0x5

    #@1e
    const-string v2, "last_updated_timestamp"

    #@20
    aput-object v2, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    const-string v2, "pending_participant_external"

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x7

    #@28
    const-string v2, "data"

    #@2a
    aput-object v2, v0, v1

    #@2c
    const/16 v1, 0x8

    #@2e
    const-string v2, "status"

    #@30
    aput-object v2, v0, v1

    #@32
    const/16 v1, 0x9

    #@34
    const-string v2, "description"

    #@36
    aput-object v2, v0, v1

    #@38
    const/16 v1, 0xa

    #@3a
    const-string v2, "version"

    #@3c
    aput-object v2, v0, v1

    #@3e
    const/16 v1, 0xb

    #@40
    const-string v2, "variant"

    #@42
    aput-object v2, v0, v1

    #@44
    const/16 v1, 0xc

    #@46
    const-string v2, "notification_text"

    #@48
    aput-object v2, v0, v1

    #@4a
    const/16 v1, 0xd

    #@4c
    const-string v2, "user_match_status"

    #@4e
    aput-object v2, v0, v1

    #@50
    const/16 v1, 0xe

    #@52
    const-string v2, "has_automatch_criteria"

    #@54
    aput-object v2, v0, v1

    #@56
    const/16 v1, 0xf

    #@58
    const-string v2, "automatch_min_players"

    #@5a
    aput-object v2, v0, v1

    #@5c
    const/16 v1, 0x10

    #@5e
    const-string v2, "automatch_max_players"

    #@60
    aput-object v2, v0, v1

    #@62
    const/16 v1, 0x11

    #@64
    const-string v2, "automatch_bit_mask"

    #@66
    aput-object v2, v0, v1

    #@68
    const/16 v1, 0x12

    #@6a
    const-string v2, "automatch_wait_estimate_sec"

    #@6c
    aput-object v2, v0, v1

    #@6e
    const/16 v1, 0x13

    #@70
    const-string v2, "rematch_id"

    #@72
    aput-object v2, v0, v1

    #@74
    const/16 v1, 0x14

    #@76
    const-string v2, "match_number"

    #@78
    aput-object v2, v0, v1

    #@7a
    const/16 v1, 0x15

    #@7c
    const-string v2, "previous_match_data"

    #@7e
    aput-object v2, v0, v1

    #@80
    const/16 v1, 0x16

    #@82
    const-string v2, "upsync_required"

    #@84
    aput-object v2, v0, v1

    #@86
    const/16 v1, 0x17

    #@88
    const-string v2, "description_participant_id"

    #@8a
    aput-object v2, v0, v1

    #@8c
    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$MatchesColumns;->HR:[Ljava/lang/String;

    #@8e
    return-void
.end method
