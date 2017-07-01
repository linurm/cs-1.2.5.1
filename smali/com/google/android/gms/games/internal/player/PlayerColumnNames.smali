.class public final Lcom/google/android/gms/games/internal/player/PlayerColumnNames;
.super Ljava/lang/Object;


# instance fields
.field public final RO:Ljava/lang/String;

.field public final RP:Ljava/lang/String;

.field public final RQ:Ljava/lang/String;

.field public final RR:Ljava/lang/String;

.field public final RS:Ljava/lang/String;

.field public final RT:Ljava/lang/String;

.field public final RU:Ljava/lang/String;

.field public final RV:Ljava/lang/String;

.field public final RW:Ljava/lang/String;

.field public final RX:Ljava/lang/String;

.field public final RY:Ljava/lang/String;

.field public final RZ:Ljava/lang/String;

.field public final Sa:Ljava/lang/String;

.field public final Sb:Ljava/lang/String;

.field public final Sc:Ljava/lang/String;

.field public final Sd:Ljava/lang/String;

.field public final Se:Ljava/lang/String;

.field public final Sf:Ljava/lang/String;

.field public final Sg:Ljava/lang/String;

.field public final Sh:Ljava/lang/String;

.field public final Si:Ljava/lang/String;

.field public final Sj:Ljava/lang/String;

.field public final Sk:Ljava/lang/String;

.field public final Sl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_6a

    #@9
    const-string v0, "external_player_id"

    #@b
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RO:Ljava/lang/String;

    #@d
    const-string v0, "profile_name"

    #@f
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RP:Ljava/lang/String;

    #@11
    const-string v0, "profile_icon_image_uri"

    #@13
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RQ:Ljava/lang/String;

    #@15
    const-string v0, "profile_icon_image_url"

    #@17
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RR:Ljava/lang/String;

    #@19
    const-string v0, "profile_hi_res_image_uri"

    #@1b
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RS:Ljava/lang/String;

    #@1d
    const-string v0, "profile_hi_res_image_url"

    #@1f
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RT:Ljava/lang/String;

    #@21
    const-string v0, "last_updated"

    #@23
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RU:Ljava/lang/String;

    #@25
    const-string v0, "is_in_circles"

    #@27
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RV:Ljava/lang/String;

    #@29
    const-string v0, "played_with_timestamp"

    #@2b
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RW:Ljava/lang/String;

    #@2d
    const-string v0, "current_xp_total"

    #@2f
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RX:Ljava/lang/String;

    #@31
    const-string v0, "current_level"

    #@33
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RY:Ljava/lang/String;

    #@35
    const-string v0, "current_level_min_xp"

    #@37
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RZ:Ljava/lang/String;

    #@39
    const-string v0, "current_level_max_xp"

    #@3b
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sa:Ljava/lang/String;

    #@3d
    const-string v0, "next_level"

    #@3f
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sb:Ljava/lang/String;

    #@41
    const-string v0, "next_level_max_xp"

    #@43
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sc:Ljava/lang/String;

    #@45
    const-string v0, "last_level_up_timestamp"

    #@47
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sd:Ljava/lang/String;

    #@49
    const-string v0, "player_title"

    #@4b
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Se:Ljava/lang/String;

    #@4d
    const-string v0, "has_all_public_acls"

    #@4f
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sf:Ljava/lang/String;

    #@51
    const-string v0, "most_recent_external_game_id"

    #@53
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sg:Ljava/lang/String;

    #@55
    const-string v0, "most_recent_game_name"

    #@57
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sh:Ljava/lang/String;

    #@59
    const-string v0, "most_recent_activity_timestamp"

    #@5b
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Si:Ljava/lang/String;

    #@5d
    const-string v0, "most_recent_game_icon_uri"

    #@5f
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sj:Ljava/lang/String;

    #@61
    const-string v0, "most_recent_game_hi_res_uri"

    #@63
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sk:Ljava/lang/String;

    #@65
    const-string v0, "most_recent_game_featured_uri"

    #@67
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sl:Ljava/lang/String;

    #@69
    :goto_69
    return-void

    #@6a
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    const-string v1, "external_player_id"

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v0

    #@7d
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RO:Ljava/lang/String;

    #@7f
    new-instance v0, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    const-string v1, "profile_name"

    #@8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v0

    #@92
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RP:Ljava/lang/String;

    #@94
    new-instance v0, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    const-string v1, "profile_icon_image_uri"

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RQ:Ljava/lang/String;

    #@a9
    new-instance v0, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v0

    #@b2
    const-string v1, "profile_icon_image_url"

    #@b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v0

    #@b8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v0

    #@bc
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RR:Ljava/lang/String;

    #@be
    new-instance v0, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v0

    #@c7
    const-string v1, "profile_hi_res_image_uri"

    #@c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v0

    #@cd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v0

    #@d1
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RS:Ljava/lang/String;

    #@d3
    new-instance v0, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v0

    #@dc
    const-string v1, "profile_hi_res_image_url"

    #@de
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v0

    #@e2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v0

    #@e6
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RT:Ljava/lang/String;

    #@e8
    new-instance v0, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v0

    #@f1
    const-string v1, "last_updated"

    #@f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v0

    #@f7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v0

    #@fb
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RU:Ljava/lang/String;

    #@fd
    new-instance v0, Ljava/lang/StringBuilder;

    #@ff
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v0

    #@106
    const-string v1, "is_in_circles"

    #@108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v0

    #@10c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v0

    #@110
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RV:Ljava/lang/String;

    #@112
    new-instance v0, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v0

    #@11b
    const-string v1, "played_with_timestamp"

    #@11d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v0

    #@121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v0

    #@125
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RW:Ljava/lang/String;

    #@127
    new-instance v0, Ljava/lang/StringBuilder;

    #@129
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v0

    #@130
    const-string v1, "current_xp_total"

    #@132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v0

    #@136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v0

    #@13a
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RX:Ljava/lang/String;

    #@13c
    new-instance v0, Ljava/lang/StringBuilder;

    #@13e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v0

    #@145
    const-string v1, "current_level"

    #@147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v0

    #@14b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14e
    move-result-object v0

    #@14f
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RY:Ljava/lang/String;

    #@151
    new-instance v0, Ljava/lang/StringBuilder;

    #@153
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v0

    #@15a
    const-string v1, "current_level_min_xp"

    #@15c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v0

    #@160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@163
    move-result-object v0

    #@164
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RZ:Ljava/lang/String;

    #@166
    new-instance v0, Ljava/lang/StringBuilder;

    #@168
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v0

    #@16f
    const-string v1, "current_level_max_xp"

    #@171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v0

    #@175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@178
    move-result-object v0

    #@179
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sa:Ljava/lang/String;

    #@17b
    new-instance v0, Ljava/lang/StringBuilder;

    #@17d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v0

    #@184
    const-string v1, "next_level"

    #@186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v0

    #@18a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18d
    move-result-object v0

    #@18e
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sb:Ljava/lang/String;

    #@190
    new-instance v0, Ljava/lang/StringBuilder;

    #@192
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@195
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v0

    #@199
    const-string v1, "next_level_max_xp"

    #@19b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v0

    #@19f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a2
    move-result-object v0

    #@1a3
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sc:Ljava/lang/String;

    #@1a5
    new-instance v0, Ljava/lang/StringBuilder;

    #@1a7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1aa
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v0

    #@1ae
    const-string v1, "last_level_up_timestamp"

    #@1b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v0

    #@1b4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b7
    move-result-object v0

    #@1b8
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sd:Ljava/lang/String;

    #@1ba
    new-instance v0, Ljava/lang/StringBuilder;

    #@1bc
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1bf
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v0

    #@1c3
    const-string v1, "player_title"

    #@1c5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v0

    #@1c9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cc
    move-result-object v0

    #@1cd
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Se:Ljava/lang/String;

    #@1cf
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1d4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v0

    #@1d8
    const-string v1, "has_all_public_acls"

    #@1da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v0

    #@1de
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e1
    move-result-object v0

    #@1e2
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sf:Ljava/lang/String;

    #@1e4
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v0

    #@1ed
    const-string v1, "most_recent_external_game_id"

    #@1ef
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f2
    move-result-object v0

    #@1f3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f6
    move-result-object v0

    #@1f7
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sg:Ljava/lang/String;

    #@1f9
    new-instance v0, Ljava/lang/StringBuilder;

    #@1fb
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1fe
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v0

    #@202
    const-string v1, "most_recent_game_name"

    #@204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v0

    #@208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20b
    move-result-object v0

    #@20c
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sh:Ljava/lang/String;

    #@20e
    new-instance v0, Ljava/lang/StringBuilder;

    #@210
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@213
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@216
    move-result-object v0

    #@217
    const-string v1, "most_recent_activity_timestamp"

    #@219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21c
    move-result-object v0

    #@21d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@220
    move-result-object v0

    #@221
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Si:Ljava/lang/String;

    #@223
    new-instance v0, Ljava/lang/StringBuilder;

    #@225
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@228
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v0

    #@22c
    const-string v1, "most_recent_game_icon_uri"

    #@22e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@231
    move-result-object v0

    #@232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@235
    move-result-object v0

    #@236
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sj:Ljava/lang/String;

    #@238
    new-instance v0, Ljava/lang/StringBuilder;

    #@23a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@240
    move-result-object v0

    #@241
    const-string v1, "most_recent_game_hi_res_uri"

    #@243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v0

    #@247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24a
    move-result-object v0

    #@24b
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sk:Ljava/lang/String;

    #@24d
    new-instance v0, Ljava/lang/StringBuilder;

    #@24f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@252
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v0

    #@256
    const-string v1, "most_recent_game_featured_uri"

    #@258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v0

    #@25c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25f
    move-result-object v0

    #@260
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sl:Ljava/lang/String;

    #@262
    goto/16 :goto_69
.end method
