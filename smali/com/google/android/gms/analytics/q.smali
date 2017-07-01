.class Lcom/google/android/gms/analytics/q;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static final tR:Ljava/lang/String;


# instance fields
.field private final tS:Lcom/google/android/gms/analytics/af;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/google/android/gms/analytics/q;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/analytics/q;->tR:Ljava/lang/String;

    #@8
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/af;)V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/analytics/q;->tS:Lcom/google/android/gms/analytics/af;

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
    sget-object v1, Lcom/google/android/gms/analytics/q;->tR:Ljava/lang/String;

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
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    #@7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1c

    #@d
    const-string v1, "noConnectivity"

    #@f
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@12
    move-result v1

    #@13
    iget-object v2, p0, Lcom/google/android/gms/analytics/q;->tS:Lcom/google/android/gms/analytics/af;

    #@15
    if-nez v1, :cond_18

    #@17
    const/4 v0, 0x1

    #@18
    :cond_18
    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/af;->t(Z)V

    #@1b
    :cond_1b
    :goto_1b
    return-void

    #@1c
    :cond_1c
    const-string v0, "com.google.analytics.RADIO_POWERED"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1b

    #@24
    sget-object v0, Lcom/google/android/gms/analytics/q;->tR:Ljava/lang/String;

    #@26
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_1b

    #@2c
    iget-object v0, p0, Lcom/google/android/gms/analytics/q;->tS:Lcom/google/android/gms/analytics/af;

    #@2e
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/af;->cI()V

    #@31
    goto :goto_1b
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
