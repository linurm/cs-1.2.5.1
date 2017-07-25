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
.field private static final ButtonHeight:I = 0x42

.field private static final SET_VIEW_START:I = 0x1

.field private static final SET_VIEW_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FloatWinService"

.field static ns:Lzj/zfenlly/gua/NotifySound;


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

.field private isOnExpandView:Z

.field mContext:Landroid/content/Context;

.field mDownFloatLayout:Landroid/widget/LinearLayout;

.field mFloatLayout:Landroid/widget/LinearLayout;

.field mFloatLayout2:Landroid/widget/LinearLayout;

.field public mHandler:Landroid/os/Handler;

.field mMidFloatLayout:Landroid/widget/LinearLayout;

.field mUpFloatLayout:Landroid/widget/LinearLayout;

.field private mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

.field mWindowManager:Landroid/view/WindowManager;

.field private refreshView:Landroid/widget/Button;

.field private settingsView:Landroid/widget/Button;

.field private settings_flag:Z

.field private start19ClickView:Landroid/widget/Button;

.field private start3ClickView:Landroid/widget/Button;

.field private start7ClickView:Landroid/widget/Button;

.field private startClickView:Landroid/widget/Button;

.field private timeSettingView:Landroid/widget/Button;

.field v:Lzj/zfenlly/gua/MZFloatView;

.field private wifiControlView:Landroid/widget/Button;

.field wmParams:Landroid/view/WindowManager$LayoutParams;

.field wmParams2:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lzj/zfenlly/gua/NotifySound;

    invoke-direct {v0}, Lzj/zfenlly/gua/NotifySound;-><init>()V

    sput-object v0, Lzj/zfenlly/gua/FloatWinService;->ns:Lzj/zfenlly/gua/NotifySound;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    .line 50
    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    .line 66
    new-instance v0, Lzj/zfenlly/gua/FloatWinService$1;

    invoke-direct {v0, p0}, Lzj/zfenlly/gua/FloatWinService$1;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mHandler:Landroid/os/Handler;

    .line 85
    iput-boolean v1, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    .line 86
    iput-boolean v1, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    .line 90
    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    .line 91
    iput-boolean v1, p0, Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z

    return-void
.end method

.method private StartClick(I)V
    .locals 1
    .param p1, "t"    # I

    .prologue
    .line 561
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    iget-boolean v0, v0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->isStart:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    invoke-virtual {v0}, Lzj/zfenlly/gua/FloatWinService$ClickThread;->stopThread()V

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    .line 571
    :goto_0
    return-void

    .line 565
    :cond_0
    new-instance v0, Lzj/zfenlly/gua/FloatWinService$ClickThread;

    invoke-direct {v0, p0}, Lzj/zfenlly/gua/FloatWinService$ClickThread;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    .line 566
    if-eqz p1, :cond_1

    .line 567
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    invoke-virtual {v0, p1}, Lzj/zfenlly/gua/FloatWinService$ClickThread;->setTempTimes(I)V

    .line 569
    :cond_1
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/FloatWinService$ClickThread;

    invoke-virtual {v0}, Lzj/zfenlly/gua/FloatWinService$ClickThread;->start()V

    goto :goto_0
.end method

.method static synthetic access$000(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/gua/FloatView;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    return-object v0
.end method

.method static synthetic access$1000(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->addSettingsView()V

    return-void
.end method

.method static synthetic access$1100(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->addCView()V

    return-void
.end method

.method static synthetic access$1200(Lzj/zfenlly/gua/FloatWinService;I)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lzj/zfenlly/gua/FloatWinService;->StartClick(I)V

    return-void
.end method

.method static synthetic access$1300(Lzj/zfenlly/gua/FloatWinService;)I
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    iget v0, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    return v0
.end method

.method static synthetic access$1302(Lzj/zfenlly/gua/FloatWinService;I)I
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    return p1
.end method

.method static synthetic access$1400(Lzj/zfenlly/gua/FloatWinService;I)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lzj/zfenlly/gua/FloatWinService;->setTimes(I)V

    return-void
.end method

.method static synthetic access$1500(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1700(Lzj/zfenlly/gua/FloatWinService;)I
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    iget v0, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    return v0
.end method

.method static synthetic access$1702(Lzj/zfenlly/gua/FloatWinService;I)I
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    return p1
.end method

.method static synthetic access$1800(Lzj/zfenlly/gua/FloatWinService;I)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lzj/zfenlly/gua/FloatWinService;->setInterval(I)V

    return-void
.end method

.method static synthetic access$1900(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lzj/zfenlly/gua/FloatWinService;)Z
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z

    return v0
.end method

.method static synthetic access$2000(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2100(Lzj/zfenlly/gua/FloatWinService;)I
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->getTimes()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lzj/zfenlly/gua/FloatWinService;)I
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->getInterval()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/gua/MZFloatView;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->CoordinateView:Lzj/zfenlly/gua/MZFloatView;

    return-object v0
.end method

.method static synthetic access$300(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->addExpandView()V

    return-void
.end method

.method static synthetic access$400(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delExpandView()V

    return-void
.end method

.method static synthetic access$500(Lzj/zfenlly/gua/FloatWinService;)Z
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    return v0
.end method

.method static synthetic access$600(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delSettingsView()V

    return-void
.end method

.method static synthetic access$700(Lzj/zfenlly/gua/FloatWinService;)Z
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    return v0
.end method

.method static synthetic access$702(Lzj/zfenlly/gua/FloatWinService;Z)Z
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    return p1
.end method

.method static synthetic access$800(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delCView()V

    return-void
.end method

.method static synthetic access$900(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/wifi/WifiAdmin;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 32
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    return-object v0
.end method

.method private addCView()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 601
    iput-boolean v4, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    .line 602
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    .line 603
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 604
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 606
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x28

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 617
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 619
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x258

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 620
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0xc8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 622
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 623
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 624
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    .line 625
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 628
    .local v0, "mFloatLayoutLP":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 630
    new-instance v1, Lzj/zfenlly/gua/MZFloatView;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->mzParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lzj/zfenlly/gua/MZFloatView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->CoordinateView:Lzj/zfenlly/gua/MZFloatView;

    .line 632
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->CoordinateView:Lzj/zfenlly/gua/MZFloatView;

    sget v2, Lzj/zfenlly/gua/Rfile;->mz:I

    invoke-virtual {v1, v2}, Lzj/zfenlly/gua/MZFloatView;->setImageResource(I)V

    .line 633
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->CoordinateView:Lzj/zfenlly/gua/MZFloatView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 634
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    return-void
.end method

.method private addExpandView()V
    .locals 4

    .prologue
    const/high16 v3, 0x42840000    # 66.0f

    .line 299
    const/4 v1, 0x1

    iput-boolean v1, p0, Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z

    .line 300
    const-string v1, "FloatWinService"

    const-string v2, "addExpandView"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    .line 302
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 303
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    .line 304
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    const-string v2, "Set"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 305
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    .line 306
    invoke-static {v1, v3}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    .line 307
    invoke-static {v2, v3}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 309
    .local v0, "p":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 311
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 312
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$3;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$3;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    .line 326
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    const-string v2, "Time"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 329
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 330
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$4;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$4;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$5;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$5;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    .line 363
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    const-string v2, "F5"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 366
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 367
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$6;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$6;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    .line 386
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    const-string v2, "[ + ]"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 389
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 390
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$7;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$7;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    .line 404
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    const-string v2, "N"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 407
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 408
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$8;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$8;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start19ClickView:Landroid/widget/Button;

    .line 421
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start19ClickView:Landroid/widget/Button;

    const-string v2, "19"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start19ClickView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start19ClickView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 424
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start19ClickView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 425
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start19ClickView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$9;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$9;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    .line 438
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    const-string v2, "7"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 441
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 442
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$10;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$10;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    .line 455
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 458
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 459
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$11;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$11;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "rk3288"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    .line 472
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    const-string v2, "+ hour"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 475
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 476
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$12;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$12;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    .line 484
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    const-string v2, "- hour"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 487
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 488
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$13;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$13;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/TextView;

    .line 496
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/TextView;

    const-string v2, "+ 30m"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/TextView;

    sget v2, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 499
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/TextView;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 500
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/TextView;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$14;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$14;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/TextView;

    .line 509
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/TextView;

    const-string v2, "- 10m"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/TextView;

    sget v2, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 512
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/TextView;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 513
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/TextView;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$15;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$15;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/TextView;

    .line 522
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/TextView;

    const-string v2, "+ 10m"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/TextView;

    sget v2, Lzj/zfenlly/gua/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 525
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/TextView;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 526
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/TextView;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$16;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$16;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 534
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 535
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 537
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 539
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 541
    :cond_0
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 542
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 545
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 546
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 547
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 548
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 549
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->start19ClickView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 550
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 551
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 553
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "rk3288"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    :cond_1
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 557
    return-void
.end method

.method private addSettingsView()V
    .locals 5

    .prologue
    const/high16 v4, 0x42840000    # 66.0f

    .line 644
    const/4 v1, 0x1

    iput-boolean v1, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    .line 645
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xc8

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 649
    .local v0, "p":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    .line 650
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->getTimes()I

    move-result v1

    iput v1, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    .line 651
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

    .line 652
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 653
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 654
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$17;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$17;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 669
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    .line 670
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

    .line 671
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 672
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 673
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$18;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$18;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 692
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    .line 693
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->getInterval()I

    move-result v1

    iput v1, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    .line 694
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

    .line 695
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 696
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 697
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$19;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$19;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 712
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    .line 713
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

    .line 714
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 715
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 716
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$20;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$20;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 732
    const-string v1, "TAG"

    const-string v2, "add settings view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    return-void
.end method

.method private createView(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 203
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    .line 205
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 206
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 207
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 209
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x28

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 212
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 214
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0xc8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 215
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x64

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 217
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 218
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 220
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    .line 221
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    .local v0, "mFloatLayoutLP":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 226
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    .line 227
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "rk3288"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    .line 229
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 232
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    .line 233
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 236
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    .line 237
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 239
    new-instance v2, Lzj/zfenlly/gua/FloatView;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2, v3, v4, v5, v6}, Lzj/zfenlly/gua/FloatView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    .line 240
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    invoke-virtual {v2, v7}, Lzj/zfenlly/gua/FloatView;->setbClickable(Z)V

    .line 241
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    new-instance v3, Lzj/zfenlly/gua/FloatWinService$2;

    invoke-direct {v3, p0}, Lzj/zfenlly/gua/FloatWinService$2;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v2, v3}, Lzj/zfenlly/gua/FloatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    invoke-virtual {v2}, Lzj/zfenlly/wifi/WifiAdmin;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    sget v3, Lzj/zfenlly/gua/Rfile;->wifi_on:I

    invoke-virtual {v2, v3}, Lzj/zfenlly/gua/FloatView;->setImageResource(I)V

    .line 268
    :goto_0
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    invoke-static {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v1

    .line 272
    .local v1, "mWifiStatusLoader":Lzj/zfenlly/gua/WifiStatusLoader;
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    invoke-virtual {v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->setRecentsPanel(Lzj/zfenlly/gua/FloatView;)V

    .line 273
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    const-string v2, "addCView"

    const-string v3, "add cview"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void

    .line 265
    .end local v1    # "mWifiStatusLoader":Lzj/zfenlly/gua/WifiStatusLoader;
    :cond_1
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    sget v3, Lzj/zfenlly/gua/Rfile;->wifi_off:I

    invoke-virtual {v2, v3}, Lzj/zfenlly/gua/FloatView;->setImageResource(I)V

    goto :goto_0
.end method

.method private delCView()V
    .locals 2

    .prologue
    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    .line 639
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 640
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 641
    return-void
.end method

.method private delExpandView()V
    .locals 2

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z

    .line 279
    const-string v0, "FloatWinService"

    const-string v1, "delExpandView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 281
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start19ClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 282
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 283
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 284
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 286
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "rk3288"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 290
    :cond_0
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 291
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "rk3288"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 293
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 295
    :cond_1
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 296
    return-void
.end method

.method private delSettingsView()V
    .locals 2

    .prologue
    .line 736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    .line 737
    const-string v0, "TAG"

    const-string v1, "del settings view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 739
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 740
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 741
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 742
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 95
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

    .line 759
    const-string v1, "auto_click"

    invoke-virtual {p0, v1, v2}, Lzj/zfenlly/gua/FloatWinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 761
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

    .line 745
    const-string v1, "auto_click"

    invoke-virtual {p0, v1, v2}, Lzj/zfenlly/gua/FloatWinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 747
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
    .line 125
    return-void
.end method

.method private mzParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 574
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 575
    .local v0, "wmParamsmz":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 576
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 578
    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 589
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 591
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 592
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 594
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 595
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 597
    return-object v0
.end method

.method public static playSound()V
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lzj/zfenlly/gua/FloatWinService;->ns:Lzj/zfenlly/gua/NotifySound;

    const/4 v0, 0x2

    invoke-static {v0}, Lzj/zfenlly/gua/NotifySound;->play(I)V

    .line 105
    return-void
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 100
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
    .line 765
    const-string v2, "auto_click"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lzj/zfenlly/gua/FloatWinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 767
    .local v1, "mySharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 768
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "click_interval"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 769
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 770
    return-void
.end method

.method private setTimes(I)V
    .locals 4
    .param p1, "t"    # I

    .prologue
    .line 751
    const-string v2, "auto_click"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lzj/zfenlly/gua/FloatWinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 753
    .local v1, "mySharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 754
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "click_times"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 755
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 756
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 111
    new-instance v0, Lzj/zfenlly/wifi/WifiAdmin;

    invoke-direct {v0, p0}, Lzj/zfenlly/wifi/WifiAdmin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    .line 112
    sget-object v0, Lzj/zfenlly/gua/FloatWinService;->ns:Lzj/zfenlly/gua/NotifySound;

    invoke-static {p0}, Lzj/zfenlly/gua/NotifySound;->init(Landroid/content/Context;)Lzj/zfenlly/gua/NotifySound;

    .line 113
    invoke-direct {p0, p0}, Lzj/zfenlly/gua/FloatWinService;->createView(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 775
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 776
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 777
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 778
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    if-eqz v0, :cond_0

    .line 779
    iput-boolean v2, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    .line 780
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delCView()V

    .line 782
    :cond_0
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    if-eqz v0, :cond_1

    .line 783
    iput-boolean v2, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    .line 784
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delSettingsView()V

    .line 786
    :cond_1
    return-void
.end method

.method setRefresh()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "a0"

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(ILjava/lang/String;)V

    .line 195
    return-void
.end method

.method setTimeAfter10Minites()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "a10"

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(ILjava/lang/String;)V

    .line 133
    return-void
.end method

.method setTimeAfter1Hour()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "a60"

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(ILjava/lang/String;)V

    .line 141
    return-void
.end method

.method setTimeAfter30Minites()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "a30"

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(ILjava/lang/String;)V

    .line 137
    return-void
.end method

.method setTimeBefore10Minites()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "b10"

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(ILjava/lang/String;)V

    .line 129
    return-void
.end method

.method setTimeBefore1Hour()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "d60"

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(ILjava/lang/String;)V

    .line 199
    return-void
.end method
