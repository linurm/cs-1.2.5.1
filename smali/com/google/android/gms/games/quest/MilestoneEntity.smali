.class public final Lcom/google/android/gms/games/quest/MilestoneEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/quest/Milestone;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/quest/MilestoneEntityCreator;


# instance fields
.field private final Ni:Ljava/lang/String;

.field private final Ot:Ljava/lang/String;

.field private final TM:J

.field private final TN:J

.field private final TO:[B

.field private final mState:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/quest/MilestoneEntityCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/quest/MilestoneEntityCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/quest/MilestoneEntity;->CREATOR:Lcom/google/android/gms/games/quest/MilestoneEntityCreator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;JJ[BILjava/lang/String;)V
    .registers 11

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->Ot:Ljava/lang/String;

    #@7
    iput-wide p3, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->TM:J

    #@9
    iput-wide p5, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->TN:J

    #@b
    iput-object p7, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->TO:[B

    #@d
    iput p8, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->mState:I

    #@f
    iput-object p9, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->Ni:Ljava/lang/String;

    #@11
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/quest/Milestone;)V
    .registers 6

    #@0
    const/4 v3, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, 0x4

    #@5
    iput v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->xM:I

    #@7
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->Ot:Ljava/lang/String;

    #@d
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->TM:J

    #@13
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    #@16
    move-result-wide v0

    #@17
    iput-wide v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->TN:J

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->mState:I

    #@1f
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->Ni:Ljava/lang/String;

    #@25
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getCompletionRewardData()[B

    #@28
    move-result-object v0

    #@29
    if-nez v0, :cond_2f

    #@2b
    const/4 v0, 0x0

    #@2c
    iput-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->TO:[B

    #@2e
    :goto_2e
    return-void

    #@2f
    :cond_2f
    array-length v1, v0

    #@30
    new-array v1, v1, [B

    #@32
    iput-object v1, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->TO:[B

    #@34
    iget-object v1, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->TO:[B

    #@36
    array-length v2, v0

    #@37
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3a
    goto :goto_2e
.end method

.method static a(Lcom/google/android/gms/games/quest/Milestone;)I
    .registers 5

    #@0
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    aput-object v2, v0, v1

    #@a
    const/4 v1, 0x1

    #@b
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    #@e
    move-result-wide v2

    #@f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v0, v1

    #@15
    const/4 v1, 0x2

    #@16
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    #@19
    move-result-wide v2

    #@1a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1d
    move-result-object v2

    #@1e
    aput-object v2, v0, v1

    #@20
    const/4 v1, 0x3

    #@21
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    #@24
    move-result v2

    #@25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v2

    #@29
    aput-object v2, v0, v1

    #@2b
    const/4 v1, 0x4

    #@2c
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    aput-object v2, v0, v1

    #@32
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@35
    move-result v0

    #@36
    return v0
.end method

.method static a(Lcom/google/android/gms/games/quest/Milestone;Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/quest/Milestone;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_69

    #@9
    check-cast p1, Lcom/google/android/gms/games/quest/Milestone;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_6

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    #@1c
    move-result-wide v2

    #@1d
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@20
    move-result-object v2

    #@21
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    #@24
    move-result-wide v4

    #@25
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@28
    move-result-object v3

    #@29
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_6

    #@2f
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    #@32
    move-result-wide v2

    #@33
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@36
    move-result-object v2

    #@37
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    #@3a
    move-result-wide v4

    #@3b
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3e
    move-result-object v3

    #@3f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_6

    #@45
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    #@48
    move-result v2

    #@49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v2

    #@4d
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    #@50
    move-result v3

    #@51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v3

    #@55
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_6

    #@5b
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@66
    move-result v2

    #@67
    if-eqz v2, :cond_6

    #@69
    :cond_69
    move v0, v1

    #@6a
    goto :goto_6
.end method

.method static b(Lcom/google/android/gms/games/quest/Milestone;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "MilestoneId"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "CurrentProgress"

    #@10
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    #@13
    move-result-wide v2

    #@14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@1b
    move-result-object v0

    #@1c
    const-string v1, "TargetProgress"

    #@1e
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    #@21
    move-result-wide v2

    #@22
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@29
    move-result-object v0

    #@2a
    const-string v1, "State"

    #@2c
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    #@2f
    move-result v2

    #@30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@37
    move-result-object v0

    #@38
    const-string v1, "CompletionRewardData"

    #@3a
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getCompletionRewardData()[B

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@41
    move-result-object v0

    #@42
    const-string v1, "EventId"

    #@44
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    return-object v0
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
    .registers 1

    #@0
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->freeze()Lcom/google/android/gms/games/quest/Milestone;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCompletionRewardData()[B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->TO:[B

    #@2
    return-object v0
.end method

.method public getCurrentProgress()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->TM:J

    #@2
    return-wide v0
.end method

.method public getEventId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->Ni:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMilestoneId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->Ot:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getState()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->mState:I

    #@2
    return v0
.end method

.method public getTargetProgress()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->TN:J

    #@2
    return-wide v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->xM:I

    #@2
    return v0
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

.method public isDataValid()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
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
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/quest/MilestoneEntityCreator;->a(Lcom/google/android/gms/games/quest/MilestoneEntity;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
