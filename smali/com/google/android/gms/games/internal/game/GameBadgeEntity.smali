.class public final Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;

# interfaces
.implements Lcom/google/android/gms/games/internal/game/GameBadge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/game/GameBadgeEntity$GameBadgeEntityCreatorCompat;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;


# instance fields
.field private AT:I

.field private HY:Ljava/lang/String;

.field private Mp:Ljava/lang/String;

.field private Mr:Landroid/net/Uri;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity$GameBadgeEntityCreatorCompat;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity$GameBadgeEntityCreatorCompat;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->CREATOR:Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;

    #@7
    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->xM:I

    #@5
    iput p2, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->AT:I

    #@7
    iput-object p3, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->HY:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->Mp:Ljava/lang/String;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->Mr:Landroid/net/Uri;

    #@d
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/internal/game/GameBadge;)V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->xM:I

    #@6
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->getType()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->AT:I

    #@c
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->getTitle()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->HY:Ljava/lang/String;

    #@12
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->getDescription()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->Mp:Ljava/lang/String;

    #@18
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->getIconImageUri()Landroid/net/Uri;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->Mr:Landroid/net/Uri;

    #@1e
    return-void
.end method

.method static a(Lcom/google/android/gms/games/internal/game/GameBadge;)I
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getType()I

    #@7
    move-result v2

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    aput-object v2, v0, v1

    #@e
    const/4 v1, 0x1

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getTitle()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v0, v1

    #@15
    const/4 v1, 0x2

    #@16
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getDescription()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    aput-object v2, v0, v1

    #@1c
    const/4 v1, 0x3

    #@1d
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getIconImageUri()Landroid/net/Uri;

    #@20
    move-result-object v2

    #@21
    aput-object v2, v0, v1

    #@23
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@26
    move-result v0

    #@27
    return v0
.end method

.method static a(Lcom/google/android/gms/games/internal/game/GameBadge;Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/internal/game/GameBadge;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_2b

    #@9
    check-cast p1, Lcom/google/android/gms/games/internal/game/GameBadge;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->getType()I

    #@e
    move-result v2

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v2

    #@13
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getTitle()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_6

    #@1d
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->getDescription()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getIconImageUri()Landroid/net/Uri;

    #@24
    move-result-object v3

    #@25
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_6

    #@2b
    :cond_2b
    move v0, v1

    #@2c
    goto :goto_6
.end method

.method static synthetic aQ(Ljava/lang/String;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->aA(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static b(Lcom/google/android/gms/games/internal/game/GameBadge;)Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "Type"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getType()I

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
    const-string v1, "Title"

    #@14
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getTitle()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@1b
    move-result-object v0

    #@1c
    const-string v1, "Description"

    #@1e
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getDescription()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@25
    move-result-object v0

    #@26
    const-string v1, "IconImageUri"

    #@28
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getIconImageUri()Landroid/net/Uri;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method

.method static synthetic b(Ljava/lang/Integer;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->c(Ljava/lang/Integer;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic gR()Ljava/lang/Integer;
    .registers 1

    #@0
    invoke-static {}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->fq()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->a(Lcom/google/android/gms/games/internal/game/GameBadge;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->ic()Lcom/google/android/gms/games/internal/game/GameBadge;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->Mp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->Mr:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->HY:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->AT:I

    #@2
    return v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->a(Lcom/google/android/gms/games/internal/game/GameBadge;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public ic()Lcom/google/android/gms/games/internal/game/GameBadge;
    .registers 1

    #@0
    return-object p0
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
    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->b(Lcom/google/android/gms/games/internal/game/GameBadge;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->fr()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_a

    #@6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;->a(Lcom/google/android/gms/games/internal/game/GameBadgeEntity;Landroid/os/Parcel;I)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    iget v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->AT:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->HY:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->Mp:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->Mr:Landroid/net/Uri;

    #@1b
    if-nez v0, :cond_22

    #@1d
    const/4 v0, 0x0

    #@1e
    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    goto :goto_9

    #@22
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->Mr:Landroid/net/Uri;

    #@24
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    goto :goto_1e
.end method
