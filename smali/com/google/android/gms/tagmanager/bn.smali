.class Lcom/google/android/gms/tagmanager/bn;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static final tR:Ljava/lang/String;


# instance fields
.field private final agm:Lcom/google/android/gms/tagmanager/cw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/google/android/gms/tagmanager/bn;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/bn;->tR:Ljava/lang/String;

    #@8
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/cw;)V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/bn;->agm:Lcom/google/android/gms/tagmanager/cw;

    #@5
    return-void
.end method

.method public static w(Landroid/content/Context;)V
    .registers 4

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "com.google.analytics.RADIO_POWERED"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@e
    sget-object v1, Lcom/google/android/gms/tagmanager/bn;->tR:Ljava/lang/String;

    #@10
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@14
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@17
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    #@0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    #@6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_31

    #@c
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@f
    move-result-object v1

    #@10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@12
    if-eqz v1, :cond_22

    #@14
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@17
    move-result-object v0

    #@18
    const-string v1, "noConnectivity"

    #@1a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1d
    move-result v0

    #@1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@21
    move-result-object v0

    #@22
    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/bn;->agm:Lcom/google/android/gms/tagmanager/cw;

    #@24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_2f

    #@2a
    const/4 v0, 0x1

    #@2b
    :goto_2b
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/cw;->t(Z)V

    #@2e
    :cond_2e
    :goto_2e
    return-void

    #@2f
    :cond_2f
    const/4 v0, 0x0

    #@30
    goto :goto_2b

    #@31
    :cond_31
    const-string v1, "com.google.analytics.RADIO_POWERED"

    #@33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_2e

    #@39
    sget-object v0, Lcom/google/android/gms/tagmanager/bn;->tR:Ljava/lang/String;

    #@3b
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@3e
    move-result v0

    #@3f
    if-nez v0, :cond_2e

    #@41
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bn;->agm:Lcom/google/android/gms/tagmanager/cw;

    #@43
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cw;->cI()V

    #@46
    goto :goto_2e
.end method

.method public v(Landroid/content/Context;)V
    .registers 4

    #@0
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    #@7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@a
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@d
    new-instance v0, Landroid/content/IntentFilter;

    #@f
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@12
    const-string v1, "com.google.analytics.RADIO_POWERED"

    #@14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    #@1e
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@21
    return-void
.end method
