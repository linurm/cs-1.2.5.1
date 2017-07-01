.class public Lzj/zfenlly/gua/OtherAPP;
.super Ljava/lang/Object;
.source "OtherAPP.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setWillStartAPP(Landroid/app/Activity;)V
    .locals 2
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    .line 15
    .local v0, "mWifiStatusLoader":Lzj/zfenlly/gua/WifiStatusLoader;
    invoke-virtual {v0, p0}, Lzj/zfenlly/gua/WifiStatusLoader;->setIsStartAPP(Landroid/app/Activity;)V

    .line 16
    return-void
.end method

.method static setWillStopAPP(Landroid/app/Activity;)V
    .locals 2
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    .line 20
    .local v0, "mWifiStatusLoader":Lzj/zfenlly/gua/WifiStatusLoader;
    invoke-virtual {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->setIsStopAPP()V

    .line 21
    return-void
.end method

.method public static startActivity3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "act"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 26
    return-void
.end method
