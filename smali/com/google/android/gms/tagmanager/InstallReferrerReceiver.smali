.class public final Lcom/google/android/gms/tagmanager/InstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;


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
    .registers 6

    #@0
    const-string v0, "referrer"

    #@2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string v1, "com.android.vending.INSTALL_REFERRER"

    #@8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_14

    #@12
    if-nez v0, :cond_15

    #@14
    :cond_14
    :goto_14
    return-void

    #@15
    :cond_15
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ay;->bX(Ljava/lang/String;)V

    #@18
    new-instance v1, Landroid/content/Intent;

    #@1a
    const-class v2, Lcom/google/android/gms/tagmanager/InstallReferrerService;

    #@1c
    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@1f
    const-string v2, "referrer"

    #@21
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@24
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@27
    goto :goto_14
.end method
