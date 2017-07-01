.class public Lzj/zfenlly/gua/WifiStatusLoader;
.super Ljava/lang/Object;
.source "WifiStatusLoader.java"


# static fields
.field private static sInstance:Lzj/zfenlly/gua/WifiStatusLoader;


# instance fields
.field private isStartApp:Z

.field private mContext:Landroid/content/Context;

.field private mFloatView:Lzj/zfenlly/gua/FloatView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartApp:Z

    .line 19
    iput-object p1, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Lzj/zfenlly/gua/WifiStatusLoader;->sInstance:Lzj/zfenlly/gua/WifiStatusLoader;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lzj/zfenlly/gua/WifiStatusLoader;

    invoke-direct {v0, p0}, Lzj/zfenlly/gua/WifiStatusLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lzj/zfenlly/gua/WifiStatusLoader;->sInstance:Lzj/zfenlly/gua/WifiStatusLoader;

    .line 26
    :cond_0
    sget-object v0, Lzj/zfenlly/gua/WifiStatusLoader;->sInstance:Lzj/zfenlly/gua/WifiStatusLoader;

    return-object v0
.end method


# virtual methods
.method public StartAPP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartApp:Z

    if-eqz v0, :cond_0

    .line 61
    iput-boolean v1, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartApp:Z

    .line 62
    const-string v0, "0"

    invoke-virtual {p0, v1, v0}, Lzj/zfenlly/gua/WifiStatusLoader;->startO(ILjava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public WifiDisableDisplay()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzj/zfenlly/gua/FloatView;->setbClickable(Z)V

    .line 47
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    sget v1, Lzj/zfenlly/gua/Rfile;->wifi_off:I

    invoke-virtual {v0, v1}, Lzj/zfenlly/gua/FloatView;->setImageResource(I)V

    .line 49
    :cond_0
    return-void
.end method

.method public WifiEnableDisplay()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzj/zfenlly/gua/FloatView;->setbClickable(Z)V

    .line 54
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    sget v1, Lzj/zfenlly/gua/Rfile;->wifi_on:I

    invoke-virtual {v0, v1}, Lzj/zfenlly/gua/FloatView;->setImageResource(I)V

    .line 56
    :cond_0
    return-void
.end method

.method public setIsStartAPP(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartApp:Z

    .line 36
    return-void
.end method

.method public setIsStopAPP()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartApp:Z

    .line 41
    return-void
.end method

.method public setRecentsPanel(Lzj/zfenlly/gua/FloatView;)V
    .locals 0
    .param p1, "fv"    # Lzj/zfenlly/gua/FloatView;

    .prologue
    .line 30
    iput-object p1, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    .line 31
    return-void
.end method

.method public startAPP(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lzj/zfenlly/gua/WifiStatusLoader;->startO(ILjava/lang/String;)V

    .line 68
    return-void
.end method

.method public startO(ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mContext:Landroid/content/Context;

    const-class v3, Lzj/zfenlly/gua/OverActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v2, "value"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 76
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    iget-object v2, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method
