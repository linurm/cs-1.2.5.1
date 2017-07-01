.class final Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AcceptQuestResultImpl"
.end annotation


# instance fields
.field private final NG:Lcom/google/android/gms/games/quest/Quest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3
    new-instance v1, Lcom/google/android/gms/games/quest/QuestBuffer;

    #@5
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/quest/QuestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@8
    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->getCount()I

    #@b
    move-result v0

    #@c
    if-lez v0, :cond_20

    #@e
    new-instance v2, Lcom/google/android/gms/games/quest/QuestEntity;

    #@10
    const/4 v0, 0x0

    #@11
    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/quest/QuestBuffer;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/google/android/gms/games/quest/Quest;

    #@17
    invoke-direct {v2, v0}, Lcom/google/android/gms/games/quest/QuestEntity;-><init>(Lcom/google/android/gms/games/quest/Quest;)V

    #@1a
    iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;->NG:Lcom/google/android/gms/games/quest/Quest;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    #@1c
    :goto_1c
    invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->close()V

    #@1f
    return-void

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    :try_start_21
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;->NG:Lcom/google/android/gms/games/quest/Quest;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_24

    #@23
    goto :goto_1c

    #@24
    :catchall_24
    move-exception v0

    #@25
    invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->close()V

    #@28
    throw v0
.end method


# virtual methods
.method public getQuest()Lcom/google/android/gms/games/quest/Quest;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;->NG:Lcom/google/android/gms/games/quest/Quest;

    #@2
    return-object v0
.end method
