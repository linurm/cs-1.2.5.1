.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GameMuteStatusChangeResultImpl"
.end annotation


# instance fields
.field private final NL:Ljava/lang/String;

.field private final NM:Z

.field private final yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@5
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;->yz:Lcom/google/android/gms/common/api/Status;

    #@a
    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;->NL:Ljava/lang/String;

    #@c
    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;->NM:Z

    #@e
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method
