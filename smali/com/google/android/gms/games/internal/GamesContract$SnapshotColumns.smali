.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$SnapshotColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SnapshotColumns"
.end annotation


# static fields
.field public static final HR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/16 v0, 0x10

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
    const-string v2, "owner_id"

    #@c
    aput-object v2, v0, v1

    #@e
    const/4 v1, 0x2

    #@f
    const-string v2, "external_snapshot_id"

    #@11
    aput-object v2, v0, v1

    #@13
    const/4 v1, 0x3

    #@14
    const-string v2, "drive_resolved_id_string"

    #@16
    aput-object v2, v0, v1

    #@18
    const/4 v1, 0x4

    #@19
    const-string v2, "drive_resource_id_string"

    #@1b
    aput-object v2, v0, v1

    #@1d
    const/4 v1, 0x5

    #@1e
    const-string v2, "cover_icon_image_id"

    #@20
    aput-object v2, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    const-string v2, "cover_icon_image_uri"

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x7

    #@28
    const-string v2, "cover_icon_image_url"

    #@2a
    aput-object v2, v0, v1

    #@2c
    const/16 v1, 0x8

    #@2e
    const-string v2, "cover_icon_image_width"

    #@30
    aput-object v2, v0, v1

    #@32
    const/16 v1, 0x9

    #@34
    const-string v2, "cover_icon_image_height"

    #@36
    aput-object v2, v0, v1

    #@38
    const/16 v1, 0xa

    #@3a
    const-string v2, "title"

    #@3c
    aput-object v2, v0, v1

    #@3e
    const/16 v1, 0xb

    #@40
    const-string v2, "description"

    #@42
    aput-object v2, v0, v1

    #@44
    const/16 v1, 0xc

    #@46
    const-string v2, "last_modified_timestamp"

    #@48
    aput-object v2, v0, v1

    #@4a
    const/16 v1, 0xd

    #@4c
    const-string v2, "duration"

    #@4e
    aput-object v2, v0, v1

    #@50
    const/16 v1, 0xe

    #@52
    const-string v2, "unique_name"

    #@54
    aput-object v2, v0, v1

    #@56
    const/16 v1, 0xf

    #@58
    const-string v2, "visible"

    #@5a
    aput-object v2, v0, v1

    #@5c
    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$SnapshotColumns;->HR:[Ljava/lang/String;

    #@5e
    return-void
.end method
