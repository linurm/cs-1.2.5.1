.class public final Lcom/google/android/gms/games/internal/data/GamesDataChangeUris;
.super Ljava/lang/Object;


# static fields
.field private static final Rj:Landroid/net/Uri;

.field public static final Rk:Landroid/net/Uri;

.field public static final Rl:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-string v0, "content://com.google.android.gms.games/"

    #@2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@9
    move-result-object v0

    #@a
    const-string v1, "data_change"

    #@c
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Lcom/google/android/gms/games/internal/data/GamesDataChangeUris;->Rj:Landroid/net/Uri;

    #@16
    sget-object v0, Lcom/google/android/gms/games/internal/data/GamesDataChangeUris;->Rj:Landroid/net/Uri;

    #@18
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@1b
    move-result-object v0

    #@1c
    const-string v1, "invitations"

    #@1e
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@25
    move-result-object v0

    #@26
    sput-object v0, Lcom/google/android/gms/games/internal/data/GamesDataChangeUris;->Rk:Landroid/net/Uri;

    #@28
    sget-object v0, Lcom/google/android/gms/games/internal/data/GamesDataChangeUris;->Rj:Landroid/net/Uri;

    #@2a
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@2d
    move-result-object v0

    #@2e
    const-string v1, "players"

    #@30
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@37
    move-result-object v0

    #@38
    sput-object v0, Lcom/google/android/gms/games/internal/data/GamesDataChangeUris;->Rl:Landroid/net/Uri;

    #@3a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
