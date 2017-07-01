.class final Lcom/apportable/app/SplashScreen$1;
.super Lcom/apportable/ApportableOrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/app/SplashScreen;->show(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field private currentOrientation:I

.field private lastEvent:J

.field private mCurrentOrientation:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ApportableOrientationEventListener;-><init>(Landroid/content/Context;)V

    #@3
    const/4 v0, -0x2

    #@4
    iput v0, p0, Lcom/apportable/app/SplashScreen$1;->mCurrentOrientation:I

    #@6
    const-wide/16 v0, -0x1

    #@8
    iput-wide v0, p0, Lcom/apportable/app/SplashScreen$1;->lastEvent:J

    #@a
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    #@d
    return-void
.end method


# virtual methods
.method public onOrientationChangedWithCompatibilityAdjustments(I)V
    .registers 12

    #@0
    const/16 v9, 0x13b

    #@2
    const/16 v8, 0xe1

    #@4
    const/16 v7, 0x87

    #@6
    const/16 v6, 0x2d

    #@8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b
    move-result-wide v0

    #@c
    iget v2, p0, Lcom/apportable/app/SplashScreen$1;->mCurrentOrientation:I

    #@e
    if-eq p1, v2, :cond_4e

    #@10
    iget-wide v2, p0, Lcom/apportable/app/SplashScreen$1;->lastEvent:J

    #@12
    sub-long v2, v0, v2

    #@14
    const-wide/16 v4, 0x190

    #@16
    cmp-long v2, v2, v4

    #@18
    if-lez v2, :cond_4e

    #@1a
    iput-wide v0, p0, Lcom/apportable/app/SplashScreen$1;->lastEvent:J

    #@1c
    iput p1, p0, Lcom/apportable/app/SplashScreen$1;->mCurrentOrientation:I

    #@1e
    # getter for: Lcom/apportable/app/SplashScreen;->isLandscapeDevice:Z
    invoke-static {}, Lcom/apportable/app/SplashScreen;->access$000()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_7f

    #@24
    add-int/lit8 v0, p1, -0x5a

    #@26
    :goto_26
    if-gez v0, :cond_2a

    #@28
    add-int/lit16 v0, v0, 0x168

    #@2a
    :cond_2a
    const/16 v1, 0x168

    #@2c
    if-le v0, v1, :cond_30

    #@2e
    add-int/lit16 v0, v0, -0x168

    #@30
    :cond_30
    iget v1, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    #@32
    if-le v9, v0, :cond_36

    #@34
    if-gt v0, v6, :cond_4f

    #@36
    :cond_36
    # getter for: Lcom/apportable/app/SplashScreen;->orientations:I
    invoke-static {}, Lcom/apportable/app/SplashScreen;->access$100()I

    #@39
    move-result v0

    #@3a
    and-int/lit8 v0, v0, 0x1

    #@3c
    if-eqz v0, :cond_41

    #@3e
    const/4 v0, 0x1

    #@3f
    iput v0, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    #@41
    :cond_41
    :goto_41
    iget v0, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    #@43
    if-eq v1, v0, :cond_4e

    #@45
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@48
    move-result-object v0

    #@49
    iget v1, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    #@4b
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->_setRequestedOrientation(I)V

    #@4e
    :cond_4e
    return-void

    #@4f
    :cond_4f
    if-ge v6, v0, :cond_5f

    #@51
    if-ge v0, v7, :cond_5f

    #@53
    # getter for: Lcom/apportable/app/SplashScreen;->orientations:I
    invoke-static {}, Lcom/apportable/app/SplashScreen;->access$100()I

    #@56
    move-result v0

    #@57
    and-int/lit8 v0, v0, 0x8

    #@59
    if-eqz v0, :cond_41

    #@5b
    const/4 v0, 0x4

    #@5c
    iput v0, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    #@5e
    goto :goto_41

    #@5f
    :cond_5f
    if-gt v7, v0, :cond_6f

    #@61
    if-gt v0, v8, :cond_6f

    #@63
    # getter for: Lcom/apportable/app/SplashScreen;->orientations:I
    invoke-static {}, Lcom/apportable/app/SplashScreen;->access$100()I

    #@66
    move-result v0

    #@67
    and-int/lit8 v0, v0, 0x2

    #@69
    if-eqz v0, :cond_41

    #@6b
    const/4 v0, 0x2

    #@6c
    iput v0, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    #@6e
    goto :goto_41

    #@6f
    :cond_6f
    if-ge v8, v0, :cond_41

    #@71
    if-ge v0, v9, :cond_41

    #@73
    # getter for: Lcom/apportable/app/SplashScreen;->orientations:I
    invoke-static {}, Lcom/apportable/app/SplashScreen;->access$100()I

    #@76
    move-result v0

    #@77
    and-int/lit8 v0, v0, 0x4

    #@79
    if-eqz v0, :cond_41

    #@7b
    const/4 v0, 0x3

    #@7c
    iput v0, p0, Lcom/apportable/app/SplashScreen$1;->currentOrientation:I

    #@7e
    goto :goto_41

    #@7f
    :cond_7f
    move v0, p1

    #@80
    goto :goto_26
.end method
