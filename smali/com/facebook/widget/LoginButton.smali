.class public Lcom/facebook/widget/LoginButton;
.super Landroid/widget/Button;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/LoginButton$LoginButtonCallback;,
        Lcom/facebook/widget/LoginButton$LoginButtonProperties;,
        Lcom/facebook/widget/LoginButton$LoginClickListener;,
        Lcom/facebook/widget/LoginButton$OnErrorListener;,
        Lcom/facebook/widget/LoginButton$ToolTipMode;,
        Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private applicationId:Ljava/lang/String;

.field private confirmLogout:Z

.field private fetchUserInfo:Z

.field private listenerCallback:Landroid/view/View$OnClickListener;

.field private loginLogoutEventName:Ljava/lang/String;

.field private loginText:Ljava/lang/String;

.field private logoutText:Ljava/lang/String;

.field private nuxChecked:Z

.field private nuxDisplayTime:J

.field private nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

.field private nuxPopup:Lcom/facebook/widget/ToolTipPopup;

.field private nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

.field private parentFragment:Landroid/support/v4/app/Fragment;

.field private properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

.field private sessionTracker:Lcom/facebook/internal/SessionTracker;

.field private user:Lcom/facebook/model/GraphUser;

.field private userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

.field private userInfoSession:Lcom/facebook/Session;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/widget/LoginButton;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    #@4
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    #@6
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    #@8
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    #@a
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@c
    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    #@f
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@11
    const-string v0, "fb_login_view_usage"

    #@13
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    #@15
    sget-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/widget/ToolTipPopup$Style;

    #@17
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    #@19
    sget-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/widget/LoginButton$ToolTipMode;

    #@1b
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    #@1d
    const-wide/16 v0, 0x1770

    #@1f
    iput-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    #@21
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    #@24
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->finishInit()V

    #@27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    #@7
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    #@9
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    #@b
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@d
    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    #@10
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@12
    const-string v0, "fb_login_view_usage"

    #@14
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    #@16
    sget-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/widget/ToolTipPopup$Style;

    #@18
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    #@1a
    sget-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/widget/LoginButton$ToolTipMode;

    #@1c
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    #@1e
    const-wide/16 v0, 0x1770

    #@20
    iput-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    #@22
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_66

    #@28
    const/16 v0, 0x11

    #@2a
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setGravity(I)V

    #@2d
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    #@30
    move-result-object v0

    #@31
    const v1, 0x7f060006

    #@34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    #@37
    move-result v0

    #@38
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setTextColor(I)V

    #@3b
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    #@3e
    move-result-object v0

    #@3f
    const v1, 0x7f050009

    #@42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    #@45
    move-result v0

    #@46
    invoke-virtual {p0, v2, v0}, Lcom/facebook/widget/LoginButton;->setTextSize(IF)V

    #@49
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    #@4b
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setTypeface(Landroid/graphics/Typeface;)V

    #@4e
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_73

    #@54
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    #@57
    move-result-object v0

    #@58
    const v1, 0x7f060002

    #@5b
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    #@5e
    move-result v0

    #@5f
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundColor(I)V

    #@62
    const-string v0, "Log in with Facebook"

    #@64
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    #@66
    :cond_66
    :goto_66
    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->parseAttributes(Landroid/util/AttributeSet;)V

    #@69
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    #@6c
    move-result v0

    #@6d
    if-nez v0, :cond_72

    #@6f
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    #@72
    :cond_72
    return-void

    #@73
    :cond_73
    const/high16 v0, 0x7f020000

    #@75
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundResource(I)V

    #@78
    const v0, 0x7f02000b

    #@7b
    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/facebook/widget/LoginButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    #@7e
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    #@81
    move-result-object v0

    #@82
    const v1, 0x7f050008

    #@85
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@88
    move-result v0

    #@89
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setCompoundDrawablePadding(I)V

    #@8c
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    #@8f
    move-result-object v0

    #@90
    const v1, 0x7f050004

    #@93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@96
    move-result v0

    #@97
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    #@9a
    move-result-object v1

    #@9b
    const v2, 0x7f050006

    #@9e
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@a1
    move-result v1

    #@a2
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    #@a5
    move-result-object v2

    #@a6
    const v3, 0x7f050005

    #@a9
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@ac
    move-result v2

    #@ad
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    #@b0
    move-result-object v3

    #@b1
    const v4, 0x7f050007

    #@b4
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@b7
    move-result v3

    #@b8
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/widget/LoginButton;->setPadding(IIII)V

    #@bb
    goto :goto_66
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    #@6
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    #@8
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    #@a
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@c
    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    #@f
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@11
    const-string v0, "fb_login_view_usage"

    #@13
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    #@15
    sget-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/widget/ToolTipPopup$Style;

    #@17
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    #@19
    sget-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/widget/LoginButton$ToolTipMode;

    #@1b
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    #@1d
    const-wide/16 v0, 0x1770

    #@1f
    iput-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    #@21
    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->parseAttributes(Landroid/util/AttributeSet;)V

    #@24
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    #@27
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    return-object v0
.end method

.method static synthetic access$1500(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$1600(Lcom/facebook/widget/LoginButton;)Landroid/view/View$OnClickListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->listenerCallback:Landroid/view/View$OnClickListener;

    #@2
    return-object v0
.end method

.method static synthetic access$1700(Lcom/facebook/widget/LoginButton;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    #@3
    return-void
.end method

.method static synthetic access$1800(Lcom/facebook/widget/LoginButton;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    #@3
    return-void
.end method

.method static synthetic access$300(Lcom/facebook/widget/LoginButton;Lcom/facebook/internal/Utility$FetchedAppSettings;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->showNuxPerSettings(Lcom/facebook/internal/Utility$FetchedAppSettings;)V

    #@3
    return-void
.end method

.method static synthetic access$400(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@2
    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    #@2
    return-object v0
.end method

.method static synthetic access$502(Lcom/facebook/widget/LoginButton;Lcom/facebook/model/GraphUser;)Lcom/facebook/model/GraphUser;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    #@2
    return-object p1
.end method

.method static synthetic access$600(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    #@2
    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/widget/LoginButton;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->confirmLogout:Z

    #@2
    return v0
.end method

.method static synthetic access$800(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;

    #@2
    return-object v0
.end method

.method private checkNuxSettings()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    #@2
    sget-object v1, Lcom/facebook/widget/LoginButton$ToolTipMode;->DISPLAY_ALWAYS:Lcom/facebook/widget/LoginButton$ToolTipMode;

    #@4
    if-ne v0, v1, :cond_15

    #@6
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    const v1, 0x7f070019

    #@d
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-direct {p0, v0}, Lcom/facebook/widget/LoginButton;->displayNux(Ljava/lang/String;)V

    #@14
    :goto_14
    return-void

    #@15
    :cond_15
    new-instance v1, Lcom/facebook/widget/LoginButton$1;

    #@17
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {v0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {v1, p0, v0}, Lcom/facebook/widget/LoginButton$1;-><init>(Lcom/facebook/widget/LoginButton;Ljava/lang/String;)V

    #@22
    const/4 v0, 0x0

    #@23
    check-cast v0, [Ljava/lang/Void;

    #@25
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@28
    goto :goto_14
.end method

.method private displayNux(Ljava/lang/String;)V
    .registers 6

    #@0
    new-instance v0, Lcom/facebook/widget/ToolTipPopup;

    #@2
    invoke-direct {v0, p1, p0}, Lcom/facebook/widget/ToolTipPopup;-><init>(Ljava/lang/String;Landroid/view/View;)V

    #@5
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    #@7
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    #@9
    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    #@b
    invoke-virtual {v0, v1}, Lcom/facebook/widget/ToolTipPopup;->setStyle(Lcom/facebook/widget/ToolTipPopup$Style;)V

    #@e
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    #@10
    iget-wide v2, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    #@12
    invoke-virtual {v0, v2, v3}, Lcom/facebook/widget/ToolTipPopup;->setNuxDisplayTime(J)V

    #@15
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    #@17
    invoke-virtual {v0}, Lcom/facebook/widget/ToolTipPopup;->show()V

    #@1a
    return-void
.end method

.method private fetchUserInfo()V
    .registers 5

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->fetchUserInfo:Z

    #@2
    if-eqz v0, :cond_24

    #@4
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@6
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_25

    #@c
    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    #@e
    if-eq v0, v1, :cond_24

    #@10
    const/4 v1, 0x1

    #@11
    new-array v1, v1, [Lcom/facebook/Request;

    #@13
    const/4 v2, 0x0

    #@14
    new-instance v3, Lcom/facebook/widget/LoginButton$2;

    #@16
    invoke-direct {v3, p0, v0}, Lcom/facebook/widget/LoginButton$2;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/Session;)V

    #@19
    invoke-static {v0, v3}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    #@1c
    move-result-object v3

    #@1d
    aput-object v3, v1, v2

    #@1f
    invoke-static {v1}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    #@22
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    #@24
    :cond_24
    :goto_24
    return-void

    #@25
    :cond_25
    const/4 v0, 0x0

    #@26
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    #@28
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    #@2a
    if-eqz v0, :cond_24

    #@2c
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    #@2e
    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    #@30
    invoke-interface {v0, v1}, Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;->onUserInfoFetched(Lcom/facebook/model/GraphUser;)V

    #@33
    goto :goto_24
.end method

.method private finishInit()V
    .registers 6

    #@0
    const/4 v4, 0x0

    #@1
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginClickListener;

    #@3
    invoke-direct {v0, p0, v4}, Lcom/facebook/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$1;)V

    #@6
    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@9
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    #@c
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_26

    #@12
    new-instance v0, Lcom/facebook/internal/SessionTracker;

    #@14
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    #@17
    move-result-object v1

    #@18
    new-instance v2, Lcom/facebook/widget/LoginButton$LoginButtonCallback;

    #@1a
    invoke-direct {v2, p0, v4}, Lcom/facebook/widget/LoginButton$LoginButtonCallback;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$1;)V

    #@1d
    const/4 v3, 0x0

    #@1e
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V

    #@21
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@23
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    #@26
    :cond_26
    return-void
.end method

.method private initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    :cond_3
    :goto_3
    return v0

    #@4
    :cond_4
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    #@7
    move-result-object v1

    #@8
    if-eqz v1, :cond_f

    #@a
    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    #@d
    move-result v0

    #@e
    goto :goto_3

    #@f
    :cond_f
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    if-eqz v1, :cond_3

    #@15
    invoke-static {p1}, Lcom/facebook/Session;->openActiveSessionFromCache(Landroid/content/Context;)Lcom/facebook/Session;

    #@18
    move-result-object v1

    #@19
    if-eqz v1, :cond_3

    #@1b
    const/4 v0, 0x1

    #@1c
    goto :goto_3
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .registers 5

    #@0
    const/4 v2, 0x1

    #@1
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    sget-object v1, Lcom/facebook/android/R$styleable;->com_facebook_login_view:[I

    #@7
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@f
    move-result v1

    #@10
    iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->confirmLogout:Z

    #@12
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@15
    move-result v1

    #@16
    iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->fetchUserInfo:Z

    #@18
    const/4 v1, 0x2

    #@19
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    #@1f
    const/4 v1, 0x3

    #@20
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Lcom/facebook/widget/LoginButton;->logoutText:Ljava/lang/String;

    #@26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    return-void
.end method

.method private setButtonText()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@2
    if-eqz v0, :cond_22

    #@4
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@6
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_22

    #@c
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->logoutText:Ljava/lang/String;

    #@e
    if-eqz v0, :cond_16

    #@10
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->logoutText:Ljava/lang/String;

    #@12
    :goto_12
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    #@15
    :goto_15
    return-void

    #@16
    :cond_16
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    #@19
    move-result-object v0

    #@1a
    const v1, 0x7f070001

    #@1d
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    goto :goto_12

    #@22
    :cond_22
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    #@24
    if-eqz v0, :cond_2c

    #@26
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    #@28
    :goto_28
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    #@2b
    goto :goto_15

    #@2c
    :cond_2c
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    #@2f
    move-result-object v0

    #@30
    const v1, 0x7f070002

    #@33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    goto :goto_28
.end method

.method private showNuxPerSettings(Lcom/facebook/internal/Utility$FetchedAppSettings;)V
    .registers 3

    #@0
    if-eqz p1, :cond_15

    #@2
    invoke-virtual {p1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->getNuxEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_15

    #@8
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getVisibility()I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_15

    #@e
    invoke-virtual {p1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->getNuxContent()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    invoke-direct {p0, v0}, Lcom/facebook/widget/LoginButton;->displayNux(Ljava/lang/String;)V

    #@15
    :cond_15
    return-void
.end method


# virtual methods
.method public clearPermissions()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->clearPermissions()V

    #@5
    return-void
.end method

.method public dismissToolTip()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    #@2
    if-eqz v0, :cond_c

    #@4
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    #@6
    invoke-virtual {v0}, Lcom/facebook/widget/ToolTipPopup;->dismiss()V

    #@9
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    #@c
    :cond_c
    return-void
.end method

.method public getDefaultAudience()Lcom/facebook/SessionDefaultAudience;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getDefaultAudience()Lcom/facebook/SessionDefaultAudience;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/LoginButton$OnErrorListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getOnErrorListener()Lcom/facebook/widget/LoginButton$OnErrorListener;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getPermissions()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSessionStatusCallback()Lcom/facebook/Session$StatusCallback;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getSessionStatusCallback()Lcom/facebook/Session$StatusCallback;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getToolTipDisplayTime()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    #@2
    return-wide v0
.end method

.method public getToolTipMode()Lcom/facebook/widget/LoginButton$ToolTipMode;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    #@2
    return-object v0
.end method

.method public getUserInfoChangedCallback()Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    #@2
    return-object v0
.end method

.method handleError(Ljava/lang/Exception;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$2000(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_17

    #@8
    instance-of v0, p1, Lcom/facebook/FacebookException;

    #@a
    if-eqz v0, :cond_18

    #@c
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@e
    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$2000(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;

    #@11
    move-result-object v0

    #@12
    check-cast p1, Lcom/facebook/FacebookException;

    #@14
    invoke-interface {v0, p1}, Lcom/facebook/widget/LoginButton$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    #@17
    :cond_17
    :goto_17
    return-void

    #@18
    :cond_18
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@1a
    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$2000(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;

    #@1d
    move-result-object v0

    #@1e
    new-instance v1, Lcom/facebook/FacebookException;

    #@20
    invoke-direct {v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    #@23
    invoke-interface {v0, v1}, Lcom/facebook/widget/LoginButton$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    #@26
    goto :goto_17
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 6

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@2
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_13

    #@8
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/app/Activity;

    #@e
    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    #@11
    move-result v0

    #@12
    :goto_12
    return v0

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    goto :goto_12
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    #@3
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@5
    if-eqz v0, :cond_1a

    #@7
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@9
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->isTracking()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1a

    #@f
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@11
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->startTracking()V

    #@14
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    #@17
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    #@1a
    :cond_1a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    #@3
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@9
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->stopTracking()V

    #@c
    :cond_c
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->dismissToolTip()V

    #@f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->nuxChecked:Z

    #@5
    if-nez v0, :cond_19

    #@7
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    #@9
    sget-object v1, Lcom/facebook/widget/LoginButton$ToolTipMode;->NEVER_DISPLAY:Lcom/facebook/widget/LoginButton$ToolTipMode;

    #@b
    if-eq v0, v1, :cond_19

    #@d
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_19

    #@13
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Lcom/facebook/widget/LoginButton;->nuxChecked:Z

    #@16
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->checkNuxSettings()V

    #@19
    :cond_19
    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    #@0
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    #@3
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->finishInit()V

    #@6
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    #@0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onVisibilityChanged(Landroid/view/View;I)V

    #@3
    if-eqz p2, :cond_8

    #@5
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->dismissToolTip()V

    #@8
    :cond_8
    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)V

    #@5
    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;

    #@2
    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)V

    #@5
    return-void
.end method

.method setLoginLogoutEventName(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->listenerCallback:Landroid/view/View$OnClickListener;

    #@2
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/LoginButton$OnErrorListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setOnErrorListener(Lcom/facebook/widget/LoginButton$OnErrorListener;)V

    #@5
    return-void
.end method

.method setProperties(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@4
    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setPublishPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    #@b
    return-void
.end method

.method public varargs setPublishPermissions([Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@8
    invoke-virtual {v2}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setPublishPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    #@f
    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@4
    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setReadPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    #@b
    return-void
.end method

.method public varargs setReadPermissions([Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@8
    invoke-virtual {v2}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setReadPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    #@f
    return-void
.end method

.method public setSession(Lcom/facebook/Session;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/facebook/internal/SessionTracker;->setSession(Lcom/facebook/Session;)V

    #@5
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    #@8
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    #@b
    return-void
.end method

.method public setSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #@2
    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V

    #@5
    return-void
.end method

.method public setToolTipDisplayTime(J)V
    .registers 4

    #@0
    iput-wide p1, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    #@2
    return-void
.end method

.method public setToolTipMode(Lcom/facebook/widget/LoginButton$ToolTipMode;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    #@2
    return-void
.end method

.method public setToolTipStyle(Lcom/facebook/widget/ToolTipPopup$Style;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    #@2
    return-void
.end method

.method public setUserInfoChangedCallback(Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    #@2
    return-void
.end method
