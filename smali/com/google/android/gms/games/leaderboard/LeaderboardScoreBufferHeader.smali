.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader$Builder;
    }
.end annotation


# instance fields
.field private final HM:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p1, :cond_a

    #@5
    new-instance p1, Landroid/os/Bundle;

    #@7
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    #@a
    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;->HM:Landroid/os/Bundle;

    #@c
    return-void
.end method


# virtual methods
.method public iB()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;->HM:Landroid/os/Bundle;

    #@2
    return-object v0
.end method
