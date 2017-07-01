.class final Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QuestUpdateBinderCallback"
.end annotation


# instance fields
.field final synthetic NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field private final Ou:Lcom/google/android/gms/games/quest/QuestUpdateListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/quest/QuestUpdateListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->Ou:Lcom/google/android/gms/games/quest/QuestUpdateListener;

    #@7
    return-void
.end method

.method private R(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/quest/Quest;
    .registers 5

    #@0
    new-instance v1, Lcom/google/android/gms/games/quest/QuestBuffer;

    #@2
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/quest/QuestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@5
    const/4 v0, 0x0

    #@6
    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->getCount()I

    #@9
    move-result v2

    #@a
    if-lez v2, :cond_19

    #@c
    const/4 v0, 0x0

    #@d
    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/quest/QuestBuffer;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/google/android/gms/games/quest/Quest;

    #@13
    invoke-interface {v0}, Lcom/google/android/gms/games/quest/Quest;->freeze()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/games/quest/Quest;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    #@19
    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->close()V

    #@1c
    return-object v0

    #@1d
    :catchall_1d
    move-exception v0

    #@1e
    invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->close()V

    #@21
    throw v0
.end method


# virtual methods
.method public M(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 7

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->R(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/quest/Quest;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_14

    #@6
    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@8
    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedCallback;

    #@a
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@c
    iget-object v4, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->Ou:Lcom/google/android/gms/games/quest/QuestUpdateListener;

    #@e
    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/quest/QuestUpdateListener;Lcom/google/android/gms/games/quest/Quest;)V

    #@11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@14
    :cond_14
    return-void
.end method
