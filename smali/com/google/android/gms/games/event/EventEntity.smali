.class public final Lcom/google/android/gms/games/event/EventEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/event/Event;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/event/EventEntityCreator;


# instance fields
.field private final MC:Ljava/lang/String;

.field private final Mp:Ljava/lang/String;

.field private final Mr:Landroid/net/Uri;

.field private final Ni:Ljava/lang/String;

.field private final Nj:Lcom/google/android/gms/games/PlayerEntity;

.field private final Nk:J

.field private final Nl:Ljava/lang/String;

.field private final Nm:Z

.field private final mName:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/event/EventEntityCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/event/EventEntityCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/event/EventEntity;->CREATOR:Lcom/google/android/gms/games/event/EventEntityCreator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/gms/games/Player;JLjava/lang/String;Z)V
    .registers 14

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/event/EventEntity;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/event/EventEntity;->Ni:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/games/event/EventEntity;->mName:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/games/event/EventEntity;->Mp:Ljava/lang/String;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/games/event/EventEntity;->Mr:Landroid/net/Uri;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/games/event/EventEntity;->MC:Ljava/lang/String;

    #@f
    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    #@11
    invoke-direct {v0, p7}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    #@14
    iput-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@16
    iput-wide p8, p0, Lcom/google/android/gms/games/event/EventEntity;->Nk:J

    #@18
    iput-object p10, p0, Lcom/google/android/gms/games/event/EventEntity;->Nl:Ljava/lang/String;

    #@1a
    iput-boolean p11, p0, Lcom/google/android/gms/games/event/EventEntity;->Nm:Z

    #@1c
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/event/Event;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/games/event/EventEntity;->xM:I

    #@6
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getEventId()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Ni:Ljava/lang/String;

    #@c
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->mName:Ljava/lang/String;

    #@12
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getDescription()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Mp:Ljava/lang/String;

    #@18
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getIconImageUri()Landroid/net/Uri;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Mr:Landroid/net/Uri;

    #@1e
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getIconImageUrl()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->MC:Ljava/lang/String;

    #@24
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getPlayer()Lcom/google/android/gms/games/Player;

    #@27
    move-result-object v0

    #@28
    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    #@2e
    iput-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@30
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getValue()J

    #@33
    move-result-wide v0

    #@34
    iput-wide v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Nk:J

    #@36
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getFormattedValue()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Nl:Ljava/lang/String;

    #@3c
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->isVisible()Z

    #@3f
    move-result v0

    #@40
    iput-boolean v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Nm:Z

    #@42
    return-void
.end method

.method static a(Lcom/google/android/gms/games/event/Event;)I
    .registers 5

    #@0
    const/16 v0, 0x9

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getEventId()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    aput-object v2, v0, v1

    #@b
    const/4 v1, 0x1

    #@c
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x2

    #@13
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getDescription()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    aput-object v2, v0, v1

    #@19
    const/4 v1, 0x3

    #@1a
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getIconImageUri()Landroid/net/Uri;

    #@1d
    move-result-object v2

    #@1e
    aput-object v2, v0, v1

    #@20
    const/4 v1, 0x4

    #@21
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getIconImageUrl()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x5

    #@28
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getPlayer()Lcom/google/android/gms/games/Player;

    #@2b
    move-result-object v2

    #@2c
    aput-object v2, v0, v1

    #@2e
    const/4 v1, 0x6

    #@2f
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getValue()J

    #@32
    move-result-wide v2

    #@33
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@36
    move-result-object v2

    #@37
    aput-object v2, v0, v1

    #@39
    const/4 v1, 0x7

    #@3a
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getFormattedValue()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    aput-object v2, v0, v1

    #@40
    const/16 v1, 0x8

    #@42
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->isVisible()Z

    #@45
    move-result v2

    #@46
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@49
    move-result-object v2

    #@4a
    aput-object v2, v0, v1

    #@4c
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@4f
    move-result v0

    #@50
    return v0
.end method

.method static a(Lcom/google/android/gms/games/event/Event;Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/event/Event;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_99

    #@9
    check-cast p1, Lcom/google/android/gms/games/event/Event;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getEventId()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getEventId()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_6

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_6

    #@27
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getDescription()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getDescription()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_6

    #@35
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getIconImageUri()Landroid/net/Uri;

    #@38
    move-result-object v2

    #@39
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getIconImageUri()Landroid/net/Uri;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_6

    #@43
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getIconImageUrl()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getIconImageUrl()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_6

    #@51
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getPlayer()Lcom/google/android/gms/games/Player;

    #@54
    move-result-object v2

    #@55
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getPlayer()Lcom/google/android/gms/games/Player;

    #@58
    move-result-object v3

    #@59
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_6

    #@5f
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getValue()J

    #@62
    move-result-wide v2

    #@63
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@66
    move-result-object v2

    #@67
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getValue()J

    #@6a
    move-result-wide v4

    #@6b
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6e
    move-result-object v3

    #@6f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@72
    move-result v2

    #@73
    if-eqz v2, :cond_6

    #@75
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->getFormattedValue()Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getFormattedValue()Ljava/lang/String;

    #@7c
    move-result-object v3

    #@7d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@80
    move-result v2

    #@81
    if-eqz v2, :cond_6

    #@83
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Event;->isVisible()Z

    #@86
    move-result v2

    #@87
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8a
    move-result-object v2

    #@8b
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->isVisible()Z

    #@8e
    move-result v3

    #@8f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@92
    move-result-object v3

    #@93
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@96
    move-result v2

    #@97
    if-eqz v2, :cond_6

    #@99
    :cond_99
    move v0, v1

    #@9a
    goto/16 :goto_6
.end method

.method static b(Lcom/google/android/gms/games/event/Event;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "Id"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getEventId()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "Name"

    #@10
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "Description"

    #@1a
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getDescription()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@21
    move-result-object v0

    #@22
    const-string v1, "IconImageUri"

    #@24
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getIconImageUri()Landroid/net/Uri;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@2b
    move-result-object v0

    #@2c
    const-string v1, "IconImageUrl"

    #@2e
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getIconImageUrl()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@35
    move-result-object v0

    #@36
    const-string v1, "Player"

    #@38
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getPlayer()Lcom/google/android/gms/games/Player;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3f
    move-result-object v0

    #@40
    const-string v1, "Value"

    #@42
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getValue()J

    #@45
    move-result-wide v2

    #@46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@4d
    move-result-object v0

    #@4e
    const-string v1, "FormattedValue"

    #@50
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getFormattedValue()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@57
    move-result-object v0

    #@58
    const-string v1, "isVisible"

    #@5a
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->isVisible()Z

    #@5d
    move-result v2

    #@5e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/event/EventEntity;->a(Lcom/google/android/gms/games/event/Event;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/event/Event;
    .registers 1

    #@0
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/event/EventEntity;->freeze()Lcom/google/android/gms/games/event/Event;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Mp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Mp:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ik;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getEventId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Ni:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFormattedValue()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Nl:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFormattedValue(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Nl:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ik;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Mr:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->MC:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->mName:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ik;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getPlayer()Lcom/google/android/gms/games/Player;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@2
    return-object v0
.end method

.method public getValue()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Nk:J

    #@2
    return-wide v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/event/EventEntity;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/event/EventEntity;->a(Lcom/google/android/gms/games/event/Event;)I

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

.method public isVisible()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/event/EventEntity;->Nm:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/event/EventEntity;->b(Lcom/google/android/gms/games/event/Event;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/event/EventEntityCreator;->a(Lcom/google/android/gms/games/event/EventEntity;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
