.class public Lzj/zfenlly/gua/OverActivity;
.super Landroid/app/Activity;
.source "OverActivity.java"


# instance fields
.field private final DEC_SEC:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x3

    iput v0, p0, Lzj/zfenlly/gua/OverActivity;->DEC_SEC:I

    return-void
.end method


# virtual methods
.method public getLunchActivity()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 71
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 72
    .local v1, "it":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "className":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    return-object v0
.end method

.method getStartAppAct()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    const-string v1, "gua"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lzj/zfenlly/gua/OverActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    .local v0, "mySharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "act"

    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getLunchActivity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getStartAppPkg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    const-string v1, "gua"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lzj/zfenlly/gua/OverActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    .local v0, "mySharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "pkg"

    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v3, Lzj/zfenlly/gua/Rfile;->over_main:I

    invoke-virtual {p0, v3}, Lzj/zfenlly/gua/OverActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "v":Ljava/lang/String;
    const/4 v1, 0x0

    .line 33
    .local v1, "t":I
    const-string v3, "b10"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    const/16 v1, -0x258

    .line 49
    :goto_0
    invoke-virtual {p0, v1}, Lzj/zfenlly/gua/OverActivity;->setTime(I)V

    .line 52
    :cond_0
    :goto_1
    return-void

    .line 35
    :cond_1
    const-string v3, "a10"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    const/16 v1, 0x258

    goto :goto_0

    .line 37
    :cond_2
    const-string v3, "a30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 38
    const/16 v1, 0x705

    goto :goto_0

    .line 39
    :cond_3
    const-string v3, "a60"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 40
    const/16 v1, 0xe0a

    goto :goto_0

    .line 41
    :cond_4
    const-string v3, "d60"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 42
    const/16 v1, -0xe0a

    goto :goto_0

    .line 43
    :cond_5
    const-string v3, "a0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    const/4 v1, 0x0

    .line 45
    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 58
    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getStartAppPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getStartAppAct()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lzj/zfenlly/gua/OtherAPP;->startActivity3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->finish()V

    .line 60
    return-void
.end method

.method public setTime(I)V
    .locals 8
    .param p1, "t"    # I

    .prologue
    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 96
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 97
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 99
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 100
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lzj/zfenlly/gua/OverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 102
    :cond_0
    return-void
.end method
