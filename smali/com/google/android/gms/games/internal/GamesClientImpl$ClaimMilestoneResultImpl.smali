.class final Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClaimMilestoneResultImpl"
.end annotation


# instance fields
.field private final NG:Lcom/google/android/gms/games/quest/Quest;

.field private final NI:Lcom/google/android/gms/games/quest/Milestone;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@4
    new-instance v2, Lcom/google/android/gms/games/quest/QuestBuffer;

    #@6
    invoke-direct {v2, p1}, Lcom/google/android/gms/games/quest/QuestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@9
    :try_start_9
    invoke-virtual {v2}, Lcom/google/android/gms/games/quest/QuestBuffer;->getCount()I

    #@c
    move-result v0

    #@d
    if-lez v0, :cond_50

    #@f
    new-instance v3, Lcom/google/android/gms/games/quest/QuestEntity;

    #@11
    const/4 v0, 0x0

    #@12
    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/quest/QuestBuffer;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/google/android/gms/games/quest/Quest;

    #@18
    invoke-direct {v3, v0}, Lcom/google/android/gms/games/quest/QuestEntity;-><init>(Lcom/google/android/gms/games/quest/Quest;)V

    #@1b
    iput-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->NG:Lcom/google/android/gms/games/quest/Quest;

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->NG:Lcom/google/android/gms/games/quest/Quest;

    #@1f
    invoke-interface {v0}, Lcom/google/android/gms/games/quest/Quest;->iJ()Ljava/util/List;

    #@22
    move-result-object v3

    #@23
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@26
    move-result v4

    #@27
    :goto_27
    if-ge v1, v4, :cond_49

    #@29
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lcom/google/android/gms/games/quest/Milestone;

    #@2f
    invoke-interface {v0}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_45

    #@39
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Lcom/google/android/gms/games/quest/Milestone;

    #@3f
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->NI:Lcom/google/android/gms/games/quest/Milestone;
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_57

    #@41
    invoke-virtual {v2}, Lcom/google/android/gms/games/quest/QuestBuffer;->close()V

    #@44
    :goto_44
    return-void

    #@45
    :cond_45
    add-int/lit8 v0, v1, 0x1

    #@47
    move v1, v0

    #@48
    goto :goto_27

    #@49
    :cond_49
    const/4 v0, 0x0

    #@4a
    :try_start_4a
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->NI:Lcom/google/android/gms/games/quest/Milestone;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_57

    #@4c
    :goto_4c
    invoke-virtual {v2}, Lcom/google/android/gms/games/quest/QuestBuffer;->close()V

    #@4f
    goto :goto_44

    #@50
    :cond_50
    const/4 v0, 0x0

    #@51
    :try_start_51
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->NI:Lcom/google/android/gms/games/quest/Milestone;

    #@53
    const/4 v0, 0x0

    #@54
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->NG:Lcom/google/android/gms/games/quest/Quest;
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_57

    #@56
    goto :goto_4c

    #@57
    :catchall_57
    move-exception v0

    #@58
    invoke-virtual {v2}, Lcom/google/android/gms/games/quest/QuestBuffer;->close()V

    #@5b
    throw v0
.end method


# virtual methods
.method public getMilestone()Lcom/google/android/gms/games/quest/Milestone;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->NI:Lcom/google/android/gms/games/quest/Milestone;

    #@2
    return-object v0
.end method

.method public getQuest()Lcom/google/android/gms/games/quest/Quest;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->NG:Lcom/google/android/gms/games/quest/Quest;

    #@2
    return-object v0
.end method
