.class public final Lcom/google/android/gms/games/PlayerLevel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/PlayerLevelCreator;


# instance fields
.field private final MZ:I

.field private final Na:J

.field private final Nb:J

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/PlayerLevelCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/PlayerLevelCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/PlayerLevel;->CREATOR:Lcom/google/android/gms/games/PlayerLevelCreator;

    #@7
    return-void
.end method

.method constructor <init>(IIJJ)V
    .registers 14

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const-wide/16 v4, 0x0

    #@7
    cmp-long v0, p3, v4

    #@9
    if-ltz v0, :cond_23

    #@b
    move v0, v1

    #@c
    :goto_c
    const-string v3, "Min XP must be positive!"

    #@e
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@11
    cmp-long v0, p5, p3

    #@13
    if-lez v0, :cond_25

    #@15
    :goto_15
    const-string v0, "Max XP must be more than min XP!"

    #@17
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@1a
    iput p1, p0, Lcom/google/android/gms/games/PlayerLevel;->xM:I

    #@1c
    iput p2, p0, Lcom/google/android/gms/games/PlayerLevel;->MZ:I

    #@1e
    iput-wide p3, p0, Lcom/google/android/gms/games/PlayerLevel;->Na:J

    #@20
    iput-wide p5, p0, Lcom/google/android/gms/games/PlayerLevel;->Nb:J

    #@22
    return-void

    #@23
    :cond_23
    move v0, v2

    #@24
    goto :goto_c

    #@25
    :cond_25
    move v1, v2

    #@26
    goto :goto_15
.end method

.method public constructor <init>(IJJ)V
    .registers 14

    #@0
    const/4 v2, 0x1

    #@1
    move-object v1, p0

    #@2
    move v3, p1

    #@3
    move-wide v4, p2

    #@4
    move-wide v6, p4

    #@5
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IIJJ)V

    #@8
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
    instance-of v2, p1, Lcom/google/android/gms/games/PlayerLevel;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_4d

    #@9
    check-cast p1, Lcom/google/android/gms/games/PlayerLevel;

    #@b
    invoke-virtual {p1}, Lcom/google/android/gms/games/PlayerLevel;->getLevelNumber()I

    #@e
    move-result v2

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getLevelNumber()I

    #@16
    move-result v3

    #@17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_6

    #@21
    invoke-virtual {p1}, Lcom/google/android/gms/games/PlayerLevel;->getMinXp()J

    #@24
    move-result-wide v2

    #@25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getMinXp()J

    #@2c
    move-result-wide v4

    #@2d
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@30
    move-result-object v3

    #@31
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_6

    #@37
    invoke-virtual {p1}, Lcom/google/android/gms/games/PlayerLevel;->getMaxXp()J

    #@3a
    move-result-wide v2

    #@3b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getMaxXp()J

    #@42
    move-result-wide v4

    #@43
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@46
    move-result-object v3

    #@47
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4a
    move-result v2

    #@4b
    if-eqz v2, :cond_6

    #@4d
    :cond_4d
    move v0, v1

    #@4e
    goto :goto_6
.end method

.method public getLevelNumber()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/PlayerLevel;->MZ:I

    #@2
    return v0
.end method

.method public getMaxXp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerLevel;->Nb:J

    #@2
    return-wide v0
.end method

.method public getMinXp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerLevel;->Na:J

    #@2
    return-wide v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/PlayerLevel;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 5

    #@0
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget v2, p0, Lcom/google/android/gms/games/PlayerLevel;->MZ:I

    #@6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevel;->Na:J

    #@f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v0, v1

    #@15
    const/4 v1, 0x2

    #@16
    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevel;->Nb:J

    #@18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1b
    move-result-object v2

    #@1c
    aput-object v2, v0, v1

    #@1e
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@21
    move-result v0

    #@22
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "LevelNumber"

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getLevelNumber()I

    #@9
    move-result v2

    #@a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@11
    move-result-object v0

    #@12
    const-string v1, "MinXp"

    #@14
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getMinXp()J

    #@17
    move-result-wide v2

    #@18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@1f
    move-result-object v0

    #@20
    const-string v1, "MaxXp"

    #@22
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevel;->getMaxXp()J

    #@25
    move-result-wide v2

    #@26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/PlayerLevelCreator;->a(Lcom/google/android/gms/games/PlayerLevel;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
