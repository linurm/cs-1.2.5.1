.class public final Lcom/google/android/gms/internal/cw;
.super Lcom/google/android/gms/internal/df$a;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mContext:Landroid/content/Context;

.field private oY:Lcom/google/android/gms/internal/cr;

.field private pf:Ljava/lang/String;

.field private pj:Lcom/google/android/gms/internal/cv;

.field private po:Z

.field private pp:I

.field private pq:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/cv;)V
    .registers 8

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/df$a;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cw;->po:Z

    #@6
    iput-object p2, p0, Lcom/google/android/gms/internal/cw;->pf:Ljava/lang/String;

    #@8
    iput p4, p0, Lcom/google/android/gms/internal/cw;->pp:I

    #@a
    iput-object p5, p0, Lcom/google/android/gms/internal/cw;->pq:Landroid/content/Intent;

    #@c
    iput-boolean p3, p0, Lcom/google/android/gms/internal/cw;->po:Z

    #@e
    iput-object p1, p0, Lcom/google/android/gms/internal/cw;->mContext:Landroid/content/Context;

    #@10
    iput-object p6, p0, Lcom/google/android/gms/internal/cw;->pj:Lcom/google/android/gms/internal/cv;

    #@12
    return-void
.end method


# virtual methods
.method public finishPurchase()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->pq:Landroid/content/Intent;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/cy;->c(Landroid/content/Intent;)I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/google/android/gms/internal/cw;->pp:I

    #@8
    const/4 v2, -0x1

    #@9
    if-ne v1, v2, :cond_d

    #@b
    if-eqz v0, :cond_e

    #@d
    :cond_d
    :goto_d
    return-void

    #@e
    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/cr;

    #@10
    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->mContext:Landroid/content/Context;

    #@12
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cr;-><init>(Landroid/content/Context;)V

    #@15
    iput-object v0, p0, Lcom/google/android/gms/internal/cw;->oY:Lcom/google/android/gms/internal/cr;

    #@17
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->mContext:Landroid/content/Context;

    #@19
    new-instance v1, Landroid/content/Intent;

    #@1b
    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    #@1d
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@20
    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->mContext:Landroid/content/Context;

    #@22
    const/4 v2, 0x1

    #@23
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@26
    goto :goto_d
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->pf:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPurchaseData()Landroid/content/Intent;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->pq:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getResultCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/cw;->pp:I

    #@2
    return v0
.end method

.method public isVerified()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cw;->po:Z

    #@2
    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    #@0
    const-string v0, "In-app billing service connected."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->oY:Lcom/google/android/gms/internal/cr;

    #@7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cr;->o(Landroid/os/IBinder;)V

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->pq:Landroid/content/Intent;

    #@c
    invoke-static {v0}, Lcom/google/android/gms/internal/cy;->d(Landroid/content/Intent;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Lcom/google/android/gms/internal/cy;->q(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    if-nez v0, :cond_17

    #@16
    :goto_16
    return-void

    #@17
    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->oY:Lcom/google/android/gms/internal/cr;

    #@19
    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->mContext:Landroid/content/Context;

    #@1b
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/cr;->a(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_30

    #@25
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->mContext:Landroid/content/Context;

    #@27
    invoke-static {v0}, Lcom/google/android/gms/internal/cx;->k(Landroid/content/Context;)Lcom/google/android/gms/internal/cx;

    #@2a
    move-result-object v0

    #@2b
    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->pj:Lcom/google/android/gms/internal/cv;

    #@2d
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cx;->a(Lcom/google/android/gms/internal/cv;)V

    #@30
    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->mContext:Landroid/content/Context;

    #@32
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@35
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->oY:Lcom/google/android/gms/internal/cr;

    #@37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->destroy()V

    #@3a
    goto :goto_16
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    #@0
    const-string v0, "In-app billing service disconnected."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->oY:Lcom/google/android/gms/internal/cr;

    #@7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->destroy()V

    #@a
    return-void
.end method
