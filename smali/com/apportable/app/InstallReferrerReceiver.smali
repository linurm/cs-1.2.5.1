.class public Lcom/apportable/app/InstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "InstallReferrerReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    #@0
    const/4 v4, 0x0

    #@1
    const-string v0, "InstallReferrerReceiver"

    #@3
    const-string v1, "onReceive"

    #@5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_40

    #@e
    const-string v1, "referrer"

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    if-eqz v0, :cond_40

    #@16
    const-string v1, "InstallReferrerReceiver"

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string v3, "onReceive, referrer = "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    const-string v1, "com.android.vending.INSTALL_REFERRER"

    #@30
    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@33
    move-result-object v1

    #@34
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@37
    move-result-object v1

    #@38
    const-string v2, "com.android.vending.INSTALL_REFERRER"

    #@3a
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@3d
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@40
    :cond_40
    new-instance v1, Landroid/content/ComponentName;

    #@42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@45
    move-result-object v0

    #@46
    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@49
    const/4 v0, 0x0

    #@4a
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@4d
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0, p2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@54
    move-result-object v0

    #@55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@58
    move-result-object v2

    #@59
    :cond_59
    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@5c
    move-result v0

    #@5d
    if-eqz v0, :cond_7f

    #@5f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@62
    move-result-object v0

    #@63
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@65
    new-instance v3, Landroid/content/ComponentName;

    #@67
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@69
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@6b
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6d
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@6f
    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@72
    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v0

    #@76
    if-nez v0, :cond_59

    #@78
    invoke-virtual {p2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@7b
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@7e
    goto :goto_59

    #@7f
    :cond_7f
    return-void
.end method
