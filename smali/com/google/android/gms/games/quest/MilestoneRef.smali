.class public final Lcom/google/android/gms/games/quest/MilestoneRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/quest/Milestone;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    return-void
.end method

.method private iI()J
    .registers 3

    #@0
    const-string v0, "initial_value"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/quest/MilestoneEntity;->a(Lcom/google/android/gms/games/quest/Milestone;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/quest/Milestone;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/quest/MilestoneEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;-><init>(Lcom/google/android/gms/games/quest/Milestone;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->freeze()Lcom/google/android/gms/games/quest/Milestone;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCompletionRewardData()[B
    .registers 2

    #@0
    const-string v0, "completion_reward_data"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getByteArray(Ljava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCurrentProgress()J
    .registers 5

    #@0
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getState()I

    #@5
    move-result v2

    #@6
    packed-switch v2, :pswitch_data_1c

    #@9
    :goto_9
    :pswitch_9
    return-wide v0

    #@a
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getTargetProgress()J

    #@d
    move-result-wide v0

    #@e
    goto :goto_9

    #@f
    :pswitch_f
    const-string v0, "current_value"

    #@11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getLong(Ljava/lang/String;)J

    #@14
    move-result-wide v0

    #@15
    invoke-direct {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->iI()J

    #@18
    move-result-wide v2

    #@19
    sub-long/2addr v0, v2

    #@1a
    goto :goto_9

    #@1b
    nop

    #@1c
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public getEventId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_event_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMilestoneId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_milestone_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getState()I
    .registers 2

    #@0
    const-string v0, "milestone_state"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTargetProgress()J
    .registers 3

    #@0
    const-string v0, "target_value"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->a(Lcom/google/android/gms/games/quest/Milestone;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->b(Lcom/google/android/gms/games/quest/Milestone;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->freeze()Lcom/google/android/gms/games/quest/Milestone;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/quest/MilestoneEntity;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/quest/MilestoneEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    return-void
.end method
