.class final Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedCallback;
.super Lcom/google/android/gms/internal/hb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QuestCompletedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/games/internal/IGamesService;",
        ">.b<",
        "Lcom/google/android/gms/games/quest/QuestUpdateListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field private final NG:Lcom/google/android/gms/games/quest/Quest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/quest/QuestUpdateListener;Lcom/google/android/gms/games/quest/Quest;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedCallback;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hb$b;-><init>(Lcom/google/android/gms/internal/hb;Ljava/lang/Object;)V

    #@5
    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedCallback;->NG:Lcom/google/android/gms/games/quest/Quest;

    #@7
    return-void
.end method


# virtual methods
.method protected b(Lcom/google/android/gms/games/quest/QuestUpdateListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedCallback;->NG:Lcom/google/android/gms/games/quest/Quest;

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/gms/games/quest/QuestUpdateListener;->onQuestCompleted(Lcom/google/android/gms/games/quest/Quest;)V

    #@5
    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Lcom/google/android/gms/games/quest/QuestUpdateListener;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedCallback;->b(Lcom/google/android/gms/games/quest/QuestUpdateListener;)V

    #@5
    return-void
.end method

.method protected fu()V
    .registers 1

    #@0
    return-void
.end method
