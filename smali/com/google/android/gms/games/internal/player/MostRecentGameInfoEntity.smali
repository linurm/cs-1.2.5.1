.class public final Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntityCreator;


# instance fields
.field private final RI:Ljava/lang/String;

.field private final RJ:Ljava/lang/String;

.field private final RK:J

.field private final RL:Landroid/net/Uri;

.field private final RM:Landroid/net/Uri;

.field private final RN:Landroid/net/Uri;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntityCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntityCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->CREATOR:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntityCreator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RI:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RJ:Ljava/lang/String;

    #@9
    iput-wide p4, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RK:J

    #@b
    iput-object p6, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RL:Landroid/net/Uri;

    #@d
    iput-object p7, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RM:Landroid/net/Uri;

    #@f
    iput-object p8, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RN:Landroid/net/Uri;

    #@11
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x2

    #@4
    iput v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->xM:I

    #@6
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->ip()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RI:Ljava/lang/String;

    #@c
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->iq()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RJ:Ljava/lang/String;

    #@12
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->ir()J

    #@15
    move-result-wide v0

    #@16
    iput-wide v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RK:J

    #@18
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->is()Landroid/net/Uri;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RL:Landroid/net/Uri;

    #@1e
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->it()Landroid/net/Uri;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RM:Landroid/net/Uri;

    #@24
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->iu()Landroid/net/Uri;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RN:Landroid/net/Uri;

    #@2a
    return-void
.end method

.method static a(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;)I
    .registers 5

    #@0
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->ip()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    aput-object v2, v0, v1

    #@a
    const/4 v1, 0x1

    #@b
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->iq()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    aput-object v2, v0, v1

    #@11
    const/4 v1, 0x2

    #@12
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->ir()J

    #@15
    move-result-wide v2

    #@16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v2

    #@1a
    aput-object v2, v0, v1

    #@1c
    const/4 v1, 0x3

    #@1d
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->is()Landroid/net/Uri;

    #@20
    move-result-object v2

    #@21
    aput-object v2, v0, v1

    #@23
    const/4 v1, 0x4

    #@24
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->it()Landroid/net/Uri;

    #@27
    move-result-object v2

    #@28
    aput-object v2, v0, v1

    #@2a
    const/4 v1, 0x5

    #@2b
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->iu()Landroid/net/Uri;

    #@2e
    move-result-object v2

    #@2f
    aput-object v2, v0, v1

    #@31
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@34
    move-result v0

    #@35
    return v0
.end method

.method static a(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_67

    #@9
    check-cast p1, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->ip()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->ip()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_6

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->iq()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->iq()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_6

    #@27
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->ir()J

    #@2a
    move-result-wide v2

    #@2b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->ir()J

    #@32
    move-result-wide v4

    #@33
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_6

    #@3d
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->is()Landroid/net/Uri;

    #@40
    move-result-object v2

    #@41
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->is()Landroid/net/Uri;

    #@44
    move-result-object v3

    #@45
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_6

    #@4b
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->it()Landroid/net/Uri;

    #@4e
    move-result-object v2

    #@4f
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->it()Landroid/net/Uri;

    #@52
    move-result-object v3

    #@53
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@56
    move-result v2

    #@57
    if-eqz v2, :cond_6

    #@59
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->iu()Landroid/net/Uri;

    #@5c
    move-result-object v2

    #@5d
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->iu()Landroid/net/Uri;

    #@60
    move-result-object v3

    #@61
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@64
    move-result v2

    #@65
    if-eqz v2, :cond_6

    #@67
    :cond_67
    move v0, v1

    #@68
    goto :goto_6
.end method

.method static b(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "GameId"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->ip()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "GameName"

    #@10
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->iq()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "ActivityTimestampMillis"

    #@1a
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->ir()J

    #@1d
    move-result-wide v2

    #@1e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@25
    move-result-object v0

    #@26
    const-string v1, "GameIconUri"

    #@28
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->is()Landroid/net/Uri;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@2f
    move-result-object v0

    #@30
    const-string v1, "GameHiResUri"

    #@32
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->it()Landroid/net/Uri;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@39
    move-result-object v0

    #@3a
    const-string v1, "GameFeaturedUri"

    #@3c
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;->iu()Landroid/net/Uri;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->a(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->iv()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->a(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public ip()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public iq()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RJ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public ir()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RK:J

    #@2
    return-wide v0
.end method

.method public is()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RL:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public isDataValid()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public it()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RM:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public iu()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->RN:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public iv()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;
    .registers 1

    #@0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->b(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntityCreator;->a(Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
