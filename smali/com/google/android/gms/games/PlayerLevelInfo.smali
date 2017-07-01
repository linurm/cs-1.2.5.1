.class public final Lcom/google/android/gms/games/PlayerLevelInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/PlayerLevelInfoCreator;


# instance fields
.field private final Nc:J

.field private final Nd:J

.field private final Ne:Lcom/google/android/gms/games/PlayerLevel;

.field private final Nf:Lcom/google/android/gms/games/PlayerLevel;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/PlayerLevelInfoCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/PlayerLevelInfoCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/PlayerLevelInfo;->CREATOR:Lcom/google/android/gms/games/PlayerLevelInfoCreator;

    #@7
    return-void
.end method

.method constructor <init>(IJJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V
    .registers 10

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-wide/16 v0, -0x1

    #@5
    cmp-long v0, p2, v0

    #@7
    if-eqz v0, :cond_1e

    #@9
    const/4 v0, 0x1

    #@a
    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/hm;->A(Z)V

    #@d
    invoke-static {p6}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    invoke-static {p7}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    iput p1, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->xM:I

    #@15
    iput-wide p2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Nc:J

    #@17
    iput-wide p4, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Nd:J

    #@19
    iput-object p6, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Ne:Lcom/google/android/gms/games/PlayerLevel;

    #@1b
    iput-object p7, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Nf:Lcom/google/android/gms/games/PlayerLevel;

    #@1d
    return-void

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_a
.end method

.method public constructor <init>(JJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V
    .registers 16

    #@0
    const/4 v1, 0x1

    #@1
    move-object v0, p0

    #@2
    move-wide v2, p1

    #@3
    move-wide v4, p3

    #@4
    move-object v6, p5

    #@5
    move-object v7, p6

    #@6
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/games/PlayerLevelInfo;-><init>(IJJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V

    #@9
    return-void
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
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/PlayerLevelInfo;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p1, p0, :cond_43

    #@9
    check-cast p1, Lcom/google/android/gms/games/PlayerLevelInfo;

    #@b
    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Nc:J

    #@d
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@10
    move-result-object v2

    #@11
    iget-wide v4, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->Nc:J

    #@13
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@16
    move-result-object v3

    #@17
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_6

    #@1d
    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Nd:J

    #@1f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@22
    move-result-object v2

    #@23
    iget-wide v4, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->Nd:J

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
    iget-object v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Ne:Lcom/google/android/gms/games/PlayerLevel;

    #@31
    iget-object v3, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->Ne:Lcom/google/android/gms/games/PlayerLevel;

    #@33
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_6

    #@39
    iget-object v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Nf:Lcom/google/android/gms/games/PlayerLevel;

    #@3b
    iget-object v3, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->Nf:Lcom/google/android/gms/games/PlayerLevel;

    #@3d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_6

    #@43
    :cond_43
    move v0, v1

    #@44
    goto :goto_6
.end method

.method public getCurrentLevel()Lcom/google/android/gms/games/PlayerLevel;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Ne:Lcom/google/android/gms/games/PlayerLevel;

    #@2
    return-object v0
.end method

.method public getCurrentXpTotal()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Nc:J

    #@2
    return-wide v0
.end method

.method public getLastLevelUpTimestamp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Nd:J

    #@2
    return-wide v0
.end method

.method public getNextLevel()Lcom/google/android/gms/games/PlayerLevel;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Nf:Lcom/google/android/gms/games/PlayerLevel;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 5

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Nc:J

    #@6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Nd:J

    #@f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v0, v1

    #@15
    const/4 v1, 0x2

    #@16
    iget-object v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Ne:Lcom/google/android/gms/games/PlayerLevel;

    #@18
    aput-object v2, v0, v1

    #@1a
    const/4 v1, 0x3

    #@1b
    iget-object v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Nf:Lcom/google/android/gms/games/PlayerLevel;

    #@1d
    aput-object v2, v0, v1

    #@1f
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@22
    move-result v0

    #@23
    return v0
.end method

.method public isMaxLevel()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Ne:Lcom/google/android/gms/games/PlayerLevel;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->Nf:Lcom/google/android/gms/games/PlayerLevel;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/PlayerLevel;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/PlayerLevelInfoCreator;->a(Lcom/google/android/gms/games/PlayerLevelInfo;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
