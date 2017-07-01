.class public Lcom/google/android/gms/internal/cs;
.super Lcom/google/android/gms/internal/em;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final ls:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private oW:Z

.field private oX:Lcom/google/android/gms/internal/dg;

.field private oY:Lcom/google/android/gms/internal/cr;

.field private oZ:Lcom/google/android/gms/internal/cx;

.field private pa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/cv;",
            ">;"
        }
    .end annotation
.end field

.field private pb:Lcom/google/android/gms/internal/cz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/dg;Lcom/google/android/gms/internal/cz;)V
    .registers 8

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/em;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/cs;->ls:Ljava/lang/Object;

    #@a
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cs;->oW:Z

    #@d
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/google/android/gms/internal/cs;->pa:Ljava/util/List;

    #@10
    iput-object p1, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    #@12
    iput-object p2, p0, Lcom/google/android/gms/internal/cs;->oX:Lcom/google/android/gms/internal/dg;

    #@14
    iput-object p3, p0, Lcom/google/android/gms/internal/cs;->pb:Lcom/google/android/gms/internal/cz;

    #@16
    new-instance v0, Lcom/google/android/gms/internal/cr;

    #@18
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cr;-><init>(Landroid/content/Context;)V

    #@1b
    iput-object v0, p0, Lcom/google/android/gms/internal/cs;->oY:Lcom/google/android/gms/internal/cr;

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    #@1f
    invoke-static {v0}, Lcom/google/android/gms/internal/cx;->k(Landroid/content/Context;)Lcom/google/android/gms/internal/cx;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/google/android/gms/internal/cs;->oZ:Lcom/google/android/gms/internal/cx;

    #@25
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oZ:Lcom/google/android/gms/internal/cx;

    #@27
    const-wide/16 v2, 0xa

    #@29
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/cx;->d(J)Ljava/util/List;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/google/android/gms/internal/cs;->pa:Ljava/util/List;

    #@2f
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/cz;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->pb:Lcom/google/android/gms/internal/cz;

    #@2
    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/cv;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    const-string v1, "RESPONSE_CODE"

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@b
    const-string v1, "INAPP_PURCHASE_DATA"

    #@d
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@10
    const-string v1, "INAPP_DATA_SIGNATURE"

    #@12
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@15
    sget-object v1, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@17
    new-instance v2, Lcom/google/android/gms/internal/cs$1;

    #@19
    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/cs$1;-><init>(Lcom/google/android/gms/internal/cs;Lcom/google/android/gms/internal/cv;Landroid/content/Intent;)V

    #@1c
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1f
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/cs;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method private b(J)V
    .registers 4

    #@0
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cs;->c(J)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_b

    #@6
    const-string v0, "Timeout waiting for pending transaction to be processed."

    #@8
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@b
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cs;->oW:Z

    #@d
    if-eqz v0, :cond_0

    #@f
    return-void
.end method

.method private bi()V
    .registers 13

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->pa:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    :cond_8
    return-void

    #@9
    :cond_9
    new-instance v6, Ljava/util/HashMap;

    #@b
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->pa:Ljava/util/List;

    #@10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_26

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/google/android/gms/internal/cv;

    #@20
    iget-object v2, v0, Lcom/google/android/gms/internal/cv;->pn:Ljava/lang/String;

    #@22
    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    goto :goto_14

    #@26
    :cond_26
    const/4 v0, 0x0

    #@27
    :goto_27
    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->oY:Lcom/google/android/gms/internal/cr;

    #@29
    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    #@2b
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/cr;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    #@32
    move-result-object v0

    #@33
    if-nez v0, :cond_55

    #@35
    :cond_35
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@38
    move-result-object v0

    #@39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v1

    #@3d
    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_8

    #@43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Ljava/lang/String;

    #@49
    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->oZ:Lcom/google/android/gms/internal/cx;

    #@4b
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Lcom/google/android/gms/internal/cv;

    #@51
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cx;->a(Lcom/google/android/gms/internal/cv;)V

    #@54
    goto :goto_3d

    #@55
    :cond_55
    invoke-static {v0}, Lcom/google/android/gms/internal/cy;->a(Landroid/os/Bundle;)I

    #@58
    move-result v1

    #@59
    if-nez v1, :cond_35

    #@5b
    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    #@5d
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@60
    move-result-object v7

    #@61
    const-string v1, "INAPP_PURCHASE_DATA_LIST"

    #@63
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@66
    move-result-object v8

    #@67
    const-string v1, "INAPP_DATA_SIGNATURE_LIST"

    #@69
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@6c
    move-result-object v9

    #@6d
    const-string v1, "INAPP_CONTINUATION_TOKEN"

    #@6f
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    const/4 v0, 0x0

    #@74
    move v4, v0

    #@75
    :goto_75
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@78
    move-result v0

    #@79
    if-ge v4, v0, :cond_b3

    #@7b
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@82
    move-result v0

    #@83
    if-eqz v0, :cond_af

    #@85
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@88
    move-result-object v0

    #@89
    check-cast v0, Ljava/lang/String;

    #@8b
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v1

    #@8f
    check-cast v1, Ljava/lang/String;

    #@91
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@94
    move-result-object v2

    #@95
    check-cast v2, Ljava/lang/String;

    #@97
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    move-result-object v3

    #@9b
    check-cast v3, Lcom/google/android/gms/internal/cv;

    #@9d
    invoke-static {v1}, Lcom/google/android/gms/internal/cy;->p(Ljava/lang/String;)Ljava/lang/String;

    #@a0
    move-result-object v10

    #@a1
    iget-object v11, v3, Lcom/google/android/gms/internal/cv;->pm:Ljava/lang/String;

    #@a3
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v10

    #@a7
    if-eqz v10, :cond_af

    #@a9
    invoke-direct {p0, v3, v1, v2}, Lcom/google/android/gms/internal/cs;->a(Lcom/google/android/gms/internal/cv;Ljava/lang/String;Ljava/lang/String;)V

    #@ac
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@af
    :cond_af
    add-int/lit8 v0, v4, 0x1

    #@b1
    move v4, v0

    #@b2
    goto :goto_75

    #@b3
    :cond_b3
    if-eqz v5, :cond_35

    #@b5
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    #@b8
    move-result v0

    #@b9
    if-nez v0, :cond_35

    #@bb
    move-object v0, v5

    #@bc
    goto/16 :goto_27
.end method

.method static synthetic c(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/dg;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oX:Lcom/google/android/gms/internal/dg;

    #@2
    return-object v0
.end method

.method private c(J)Z
    .registers 8

    #@0
    const-wide/32 v0, 0xea60

    #@3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6
    move-result-wide v2

    #@7
    sub-long/2addr v2, p1

    #@8
    sub-long/2addr v0, v2

    #@9
    const-wide/16 v2, 0x0

    #@b
    cmp-long v2, v0, v2

    #@d
    if-gtz v2, :cond_11

    #@f
    const/4 v0, 0x0

    #@10
    :goto_10
    return v0

    #@11
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->ls:Ljava/lang/Object;

    #@13
    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_18

    #@16
    :goto_16
    const/4 v0, 0x1

    #@17
    goto :goto_10

    #@18
    :catch_18
    move-exception v0

    #@19
    const-string v0, "waitWithTimeout_lock interrupted"

    #@1b
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@1e
    goto :goto_16
.end method


# virtual methods
.method public bh()V
    .registers 5

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    #@5
    new-instance v2, Landroid/content/Intent;

    #@7
    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    #@9
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    iget-object v3, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    #@e
    const/4 v3, 0x1

    #@f
    invoke-virtual {v0, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@15
    move-result-wide v2

    #@16
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/cs;->b(J)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    #@1b
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@1e
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oY:Lcom/google/android/gms/internal/cr;

    #@20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->destroy()V

    #@23
    monitor-exit v1

    #@24
    return-void

    #@25
    :catchall_25
    move-exception v0

    #@26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    #@27
    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oY:Lcom/google/android/gms/internal/cr;

    #@5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cr;->o(Landroid/os/IBinder;)V

    #@8
    invoke-direct {p0}, Lcom/google/android/gms/internal/cs;->bi()V

    #@b
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cs;->oW:Z

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->ls:Ljava/lang/Object;

    #@10
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    #@13
    monitor-exit v1

    #@14
    return-void

    #@15
    :catchall_15
    move-exception v0

    #@16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    #@17
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    #@0
    const-string v0, "In-app billing service disconnected."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oY:Lcom/google/android/gms/internal/cr;

    #@7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->destroy()V

    #@a
    return-void
.end method

.method public onStop()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@8
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oY:Lcom/google/android/gms/internal/cr;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->destroy()V

    #@d
    monitor-exit v1

    #@e
    return-void

    #@f
    :catchall_f
    move-exception v0

    #@10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    #@11
    throw v0
.end method
