.class public abstract Lcom/apportable/ApportableOrientationEventListener;
.super Landroid/view/OrientationEventListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final needsKindleCompatibilityAdjustment:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "ApportableOrientationEventListener"

    #@2
    sput-object v0, Lcom/apportable/ApportableOrientationEventListener;->TAG:Ljava/lang/String;

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    #@3
    invoke-direct {p0}, Lcom/apportable/ApportableOrientationEventListener;->determineCompatibilityAdjustments()Z

    #@6
    move-result v0

    #@7
    iput-boolean v0, p0, Lcom/apportable/ApportableOrientationEventListener;->needsKindleCompatibilityAdjustment:Z

    #@9
    return-void
.end method

.method private determineCompatibilityAdjustments()Z
    .registers 6

    #@0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@2
    const/16 v1, 0x8

    #@4
    new-array v1, v1, [Ljava/lang/String;

    #@6
    const/4 v2, 0x0

    #@7
    const-string v3, "KFTT"

    #@9
    aput-object v3, v1, v2

    #@b
    const/4 v2, 0x1

    #@c
    const-string v3, "KFJWA"

    #@e
    aput-object v3, v1, v2

    #@10
    const/4 v2, 0x2

    #@11
    const-string v3, "KFJWI"

    #@13
    aput-object v3, v1, v2

    #@15
    const/4 v2, 0x3

    #@16
    const-string v3, "KFSOWI"

    #@18
    aput-object v3, v1, v2

    #@1a
    const/4 v2, 0x4

    #@1b
    const-string v3, "KFTHWA"

    #@1d
    aput-object v3, v1, v2

    #@1f
    const/4 v2, 0x5

    #@20
    const-string v3, "KFTHWI"

    #@22
    aput-object v3, v1, v2

    #@24
    const/4 v2, 0x6

    #@25
    const-string v3, "KFAPWA"

    #@27
    aput-object v3, v1, v2

    #@29
    const/4 v2, 0x7

    #@2a
    const-string v3, "KFAPWI"

    #@2c
    aput-object v3, v1, v2

    #@2e
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    sget-object v2, Lcom/apportable/ApportableOrientationEventListener;->TAG:Ljava/lang/String;

    #@3c
    new-instance v3, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string v4, "deviceModel = "

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    const-string v3, ", orientation adjustment = "

    #@4d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    return v1
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/apportable/ApportableOrientationEventListener;->needsKindleCompatibilityAdjustment:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    if-ltz p1, :cond_a

    #@6
    rsub-int v0, p1, 0x168

    #@8
    rem-int/lit16 p1, v0, 0x168

    #@a
    :cond_a
    invoke-virtual {p0, p1}, Lcom/apportable/ApportableOrientationEventListener;->onOrientationChangedWithCompatibilityAdjustments(I)V

    #@d
    return-void
.end method

.method public abstract onOrientationChangedWithCompatibilityAdjustments(I)V
.end method
