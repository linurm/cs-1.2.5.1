.class public Lzj/zfenlly/gua/FloatWinService;
.super Landroid/app/Service;
.source "FloatWinService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzj/zfenlly/gua/FloatWinService$ClickThread;
    }
.end annotation


# static fields
.field private static final ButtonWeight:I = 0x1e

.field private static final SET_VIEW_START:I = 0x1

.field private static final SET_VIEW_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FloatWinService"


# instance fields
.field private CoordinateView:Lzj/zfenlly/gua/MZFloatView;

.field private addCoordinateView:Landroid/widget/Button;

.field private addIntervalView:Landroid/widget/Button;

.field private addTimesView:Landroid/widget/Button;

.field private add_flag:Z

.field private after10minites:Landroid/widget/TextView;

.field private after1hour:Landroid/widget/Button;

.field private afterhalfhour:Landroid/widget/TextView;

.field private before10minites:Landroid/widget/TextView;

.field private before1hour:Landroid/widget/Button;

.field private click_interval:I

.field private click_times:I

.field private ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

.field private delIntervalView:Landroid/widget/Button;

.field private delTimesView:Landroid/widget/Button;

.field private floatView:Lzj/zfenlly/gua/FloatView;

.field mContext:Landroid/content/Context;

.field mDownFloatLayout:Landroid/widget/LinearLayout;

.field mFloatLayout:Landroid/widget/LinearLayout;

.field mFloatLayout2:Landroid/widget/LinearLayout;

.field public mHandler:Landroid/os/Handler;

.field mMidFloatLayout:Landroid/widget/LinearLayout;

.field mUpFloatLayout:Landroid/widget/LinearLayout;

.field private mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

.field mWindowManager:Landroid/view/WindowManager;

.field ns:Lzj/zfenlly/gua/NotifySound;

.field private refreshView:Landroid/widget/Button;

.field private settingsView:Landroid/widget/Button;

.field private settings_flag:Z

.field private startClickView:Landroid/widget/Button;

.field v:Lzj/zfenlly/gua/MZFloatView;

.field wmParams:Landroid/view/WindowManager$LayoutParams;

.field wmParams2:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Lzj/zfenlly/gua/NotifySound;

    invoke-direct {v0}, Lzj/zfenlly/gua/NotifySound;-><init>()V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ns:Lzj/zfenlly/gua/NotifySound;

    .line 49
    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    .line 50
    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    .line 64
    new-instance v0, Lzj/zfenlly/gua/FloatWinService$1;

    invoke-direct {v0, p0}, Lzj/zfenlly/gua/FloatWinService$1;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mHandler:Landroid/os/Handler;

    .line 80
    iput-boolean v2, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    .line 81
    iput-boolean v2, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    .line 85
    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    return-void
.end method

.method private StartClick(Lzj/zfenlly/gua/MZFloatView;)V
    .locals 1
    .param p1, "bv"    # Lzj/zfenlly/gua/MZFloatView;

    .prologue
    .line 449
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    iget-boolean v0, v0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->isStart:Z

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    invoke-virtual {v0}, Lzj/zfenlly/gua/FloatWinService$ClickThread;->stopThread()V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    .line 470
    :goto_0
    return-void

    .line 453
    :cond_0
    new-instance v0, Lzj/zfenlly/gua/FloatWinService$ClickThread;

    invoke-direct {v0, p0}, Lzj/zfenlly/gua/FloatWinService$ClickThread;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    .line 454
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    invoke-virtual {v0}, Lzj/zfenlly/gua/FloatWinService$ClickThread;->start()V

    goto :goto_0
.end method

.method static synthetic access$000(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/gua/FloatView;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    return-object v0
.end method

.method static synthetic access$1000(Lzj/zfenlly/gua/FloatWinService;Lzj/zfenlly/gua/MZFloatView;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # Lzj/zfenlly/gua/MZFloatView;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lzj/zfenlly/gua/FloatWinService;->StartClick(Lzj/zfenlly/gua/MZFloatView;)V

    return-void
.end method

.method static synthetic access$1100(Lzj/zfenlly/gua/FloatWinService;)I
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    iget v0, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    return v0
.end method

.method static synthetic access$1102(Lzj/zfenlly/gua/FloatWinService;I)I
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    return p1
.end method

.method static synthetic access$1200(Lzj/zfenlly/gua/FloatWinService;I)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lzj/zfenlly/gua/FloatWinService;->setTimes(I)V

    return-void
.end method

.method static synthetic access$1300(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1400(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lzj/zfenlly/gua/FloatWinService;)I
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    iget v0, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    return v0
.end method

.method static synthetic access$1502(Lzj/zfenlly/gua/FloatWinService;I)I
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    return p1
.end method

.method static synthetic access$1600(Lzj/zfenlly/gua/FloatWinService;I)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lzj/zfenlly/gua/FloatWinService;->setInterval(I)V

    return-void
.end method

.method static synthetic access$1700(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1800(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1900(Lzj/zfenlly/gua/FloatWinService;)I
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->getTimes()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/wifi/WifiAdmin;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    return-object v0
.end method

.method static synthetic access$2000(Lzj/zfenlly/gua/FloatWinService;)I
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->getInterval()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lzj/zfenlly/gua/FloatWinService;)Z
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    return v0
.end method

.method static synthetic access$302(Lzj/zfenlly/gua/FloatWinService;Z)Z
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    return p1
.end method

.method static synthetic access$400(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delSettingsView()V

    return-void
.end method

.method static synthetic access$500(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->addSettingsView()V

    return-void
.end method

.method static synthetic access$600(Lzj/zfenlly/gua/FloatWinService;)Z
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    return v0
.end method

.method static synthetic access$602(Lzj/zfenlly/gua/FloatWinService;Z)Z
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    return p1
.end method

.method static synthetic access$700(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delCView()V

    return-void
.end method

.method static synthetic access$800(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->addCView()V

    return-void
.end method

.method static synthetic access$900(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/gua/MZFloatView;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 31
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->CoordinateView:Lzj/zfenlly/gua/MZFloatView;

    return-object v0
.end method

.method private addCView()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 473
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    .line 474
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 475
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 477
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x28

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 488
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 490
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x258

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 491
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x64

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 493
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 494
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 495
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    .line 496
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 499
    .local v0, "mFloatLayoutLP":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 501
    new-instance v1, Lzj/zfenlly/gua/MZFloatView;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v2, v3, v4, v5}, Lzj/zfenlly/gua/MZFloatView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->CoordinateView:Lzj/zfenlly/gua/MZFloatView;

    .line 503
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->CoordinateView:Lzj/zfenlly/gua/MZFloatView;

    sget v2, Lzj/zfenlly/gua/Rfile;->mz:I

    invoke-virtual {v1, v2}, Lzj/zfenlly/gua/MZFloatView;->setImageResource(I)V

    .line 504
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->CoordinateView:Lzj/zfenlly/gua/MZFloatView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 505
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    return-void
.end method

.method private addSettingsView()V
    .locals 5

    .prologue
    const/high16 v4, 0x41f00000    # 30.0f

    .line 514
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xc8

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 518
    .local v0, "p":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    .line 519
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->getTimes()I

    move-result v1

    iput v1, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    .line 520
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 522
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 523
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$12;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$12;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 538
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    .line 539
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 541
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 542
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$13;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$13;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 561
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    .line 562
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->getInterval()I

    move-result v1

    iput v1, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    .line 563
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 565
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 566
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$14;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$14;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 581
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    .line 582
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 584
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 585
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$15;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$15;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 601
    const-string v1, "TAG"

    const-string v2, "add settings view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void
.end method

.method private createView2(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    .line 200
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 201
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x7d2

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 202
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v7, 0x1

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 204
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x28

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 215
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x33

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 217
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0xc8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 218
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x64

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 220
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 221
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 223
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    .line 224
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 227
    .local v1, "mFloatLayoutLP":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 229
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    .line 230
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "rk3288"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 231
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    .line 232
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 235
    .local v3, "mUpFloatLayoutLP":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 238
    .end local v3    # "mUpFloatLayoutLP":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    .line 239
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 242
    .local v2, "mMidFloatLayoutLP":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 245
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    .line 246
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v0, "mDownFloatLayoutLP":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 251
    new-instance v6, Lzj/zfenlly/gua/FloatView;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6, v7, v8, v9, v10}, Lzj/zfenlly/gua/FloatView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    .line 252
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lzj/zfenlly/gua/FloatView;->setbClickable(Z)V

    .line 253
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    new-instance v7, Lzj/zfenlly/gua/FloatWinService$2;

    invoke-direct {v7, p0}, Lzj/zfenlly/gua/FloatWinService$2;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v6, v7}, Lzj/zfenlly/gua/FloatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    invoke-virtual {v6}, Lzj/zfenlly/wifi/WifiAdmin;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 271
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    sget v7, Lzj/zfenlly/gua/Rfile;->wifi_on:I

    invoke-virtual {v6, v7}, Lzj/zfenlly/gua/FloatView;->setImageResource(I)V

    .line 275
    :goto_0
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "rk3288"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 276
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    .line 277
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    const-string v7, "+ hour"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setHeight(I)V

    .line 279
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setWidth(I)V

    .line 280
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    sget v7, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 281
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 282
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    new-instance v7, Lzj/zfenlly/gua/FloatWinService$3;

    invoke-direct {v7, p0}, Lzj/zfenlly/gua/FloatWinService$3;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    .line 290
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    const-string v7, "- hour"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setHeight(I)V

    .line 292
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setWidth(I)V

    .line 293
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    sget v7, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 294
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 295
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    new-instance v7, Lzj/zfenlly/gua/FloatWinService$4;

    invoke-direct {v7, p0}, Lzj/zfenlly/gua/FloatWinService$4;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/TextView;

    .line 303
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/TextView;

    const-string v7, "+ 30m"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/TextView;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHeight(I)V

    .line 305
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/TextView;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 306
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/TextView;

    sget v7, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 307
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/TextView;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/TextView;

    new-instance v7, Lzj/zfenlly/gua/FloatWinService$5;

    invoke-direct {v7, p0}, Lzj/zfenlly/gua/FloatWinService$5;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/TextView;

    .line 317
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/TextView;

    const-string v7, "- 10m"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/TextView;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHeight(I)V

    .line 319
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/TextView;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 320
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/TextView;

    sget v7, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 321
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/TextView;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/TextView;

    new-instance v7, Lzj/zfenlly/gua/FloatWinService$6;

    invoke-direct {v7, p0}, Lzj/zfenlly/gua/FloatWinService$6;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/TextView;

    .line 331
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/TextView;

    const-string v7, "+ 10m"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/TextView;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHeight(I)V

    .line 333
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/TextView;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 334
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/TextView;

    sget v7, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 335
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/TextView;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/TextView;

    new-instance v7, Lzj/zfenlly/gua/FloatWinService$7;

    invoke-direct {v7, p0}, Lzj/zfenlly/gua/FloatWinService$7;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 344
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 346
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 347
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 349
    :cond_1
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "rk3288"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 351
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    :cond_2
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    .line 354
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    const-string v7, "Set"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 357
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0xc8

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 361
    .local v5, "p":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    sget v7, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 363
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 364
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    new-instance v7, Lzj/zfenlly/gua/FloatWinService$8;

    invoke-direct {v7, p0}, Lzj/zfenlly/gua/FloatWinService$8;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    .line 380
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    const-string v7, "F5"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setHeight(I)V

    .line 382
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setWidth(I)V

    .line 383
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    sget v7, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 385
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 386
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    new-instance v7, Lzj/zfenlly/gua/FloatWinService$9;

    invoke-direct {v7, p0}, Lzj/zfenlly/gua/FloatWinService$9;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    .line 394
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    const-string v7, "[ + ]"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setHeight(I)V

    .line 397
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setWidth(I)V

    .line 398
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    sget v7, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 399
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 400
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    new-instance v7, Lzj/zfenlly/gua/FloatWinService$10;

    invoke-direct {v7, p0}, Lzj/zfenlly/gua/FloatWinService$10;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    .line 416
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    const-string v7, "Start"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setHeight(I)V

    .line 419
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setWidth(I)V

    .line 420
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    sget v7, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 421
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 422
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    new-instance v7, Lzj/zfenlly/gua/FloatWinService$11;

    invoke-direct {v7, p0}, Lzj/zfenlly/gua/FloatWinService$11;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 435
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 437
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 439
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 440
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 441
    invoke-static {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v4

    .line 442
    .local v4, "mWifiStatusLoader":Lzj/zfenlly/gua/WifiStatusLoader;
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    invoke-virtual {v4, v6}, Lzj/zfenlly/gua/WifiStatusLoader;->setRecentsPanel(Lzj/zfenlly/gua/FloatView;)V

    .line 443
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    const-string v6, "addCView"

    const-string v7, "add cview"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void

    .line 273
    .end local v4    # "mWifiStatusLoader":Lzj/zfenlly/gua/WifiStatusLoader;
    .end local v5    # "p":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    sget v7, Lzj/zfenlly/gua/Rfile;->wifi_off:I

    invoke-virtual {v6, v7}, Lzj/zfenlly/gua/FloatView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private delCView()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 510
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 511
    return-void
.end method

.method private delSettingsView()V
    .locals 2

    .prologue
    .line 605
    const-string v0, "TAG"

    const-string v1, "del settings view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 607
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 608
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 609
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 610
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 89
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getInterval()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 627
    const-string v1, "auto_click"

    invoke-virtual {p0, v1, v2}, Lzj/zfenlly/gua/FloatWinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 629
    .local v0, "mySharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "click_interval"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getTimes()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 613
    const-string v1, "auto_click"

    invoke-virtual {p0, v1, v2}, Lzj/zfenlly/gua/FloatWinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 615
    .local v0, "mySharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "click_times"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private initViewBox(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    return-void
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 94
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private setInterval(I)V
    .locals 4
    .param p1, "t"    # I

    .prologue
    .line 633
    const-string v2, "auto_click"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lzj/zfenlly/gua/FloatWinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 635
    .local v1, "mySharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 636
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "click_interval"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 637
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 638
    return-void
.end method

.method private setTimes(I)V
    .locals 4
    .param p1, "t"    # I

    .prologue
    .line 619
    const-string v2, "auto_click"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lzj/zfenlly/gua/FloatWinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 621
    .local v1, "mySharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 622
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "click_times"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 623
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 624
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 101
    new-instance v0, Lzj/zfenlly/wifi/WifiAdmin;

    invoke-direct {v0, p0}, Lzj/zfenlly/wifi/WifiAdmin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    .line 102
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ns:Lzj/zfenlly/gua/NotifySound;

    invoke-static {p0}, Lzj/zfenlly/gua/NotifySound;->init(Landroid/content/Context;)Lzj/zfenlly/gua/NotifySound;

    .line 103
    invoke-direct {p0, p0}, Lzj/zfenlly/gua/FloatWinService;->createView2(Landroid/content/Context;)V

    .line 104
    new-instance v0, Lzj/zfenlly/gua/FloatWinService$ClickThread;

    invoke-direct {v0, p0}, Lzj/zfenlly/gua/FloatWinService$ClickThread;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    .line 105
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 643
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 644
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 645
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 646
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    if-eqz v0, :cond_0

    .line 647
    iput-boolean v2, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    .line 648
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delCView()V

    .line 650
    :cond_0
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    if-eqz v0, :cond_1

    .line 651
    iput-boolean v2, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    .line 652
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delSettingsView()V

    .line 654
    :cond_1
    return-void
.end method

.method setRefresh()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "a0"

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(ILjava/lang/String;)V

    .line 190
    return-void
.end method

.method setTimeAfter10Minites()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "a10"

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(ILjava/lang/String;)V

    .line 128
    return-void
.end method

.method setTimeAfter1Hour()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "a60"

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(ILjava/lang/String;)V

    .line 136
    return-void
.end method

.method setTimeAfter30Minites()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "a30"

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(ILjava/lang/String;)V

    .line 132
    return-void
.end method

.method setTimeBefore10Minites()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "b10"

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(ILjava/lang/String;)V

    .line 124
    return-void
.end method

.method setTimeBefore1Hour()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "d60"

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(ILjava/lang/String;)V

    .line 194
    return-void
.end method
