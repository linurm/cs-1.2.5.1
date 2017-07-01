.class final Lcom/google/android/gms/analytics/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic tB:Lcom/google/android/gms/analytics/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/c;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/c$a;->tB:Lcom/google/android/gms/analytics/c;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string v1, "service connected, binder: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@17
    :try_start_17
    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    #@19
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_38

    #@23
    const-string v0, "bound to service"

    #@25
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@28
    iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->tB:Lcom/google/android/gms/analytics/c;

    #@2a
    invoke-static {p2}, Lcom/google/android/gms/internal/fe$a;->z(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fe;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/c;Lcom/google/android/gms/internal/fe;)Lcom/google/android/gms/internal/fe;

    #@31
    iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->tB:Lcom/google/android/gms/analytics/c;

    #@33
    invoke-static {v0}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/c;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_36} :catch_37

    #@36
    :goto_36
    return-void

    #@37
    :catch_37
    move-exception v0

    #@38
    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->tB:Lcom/google/android/gms/analytics/c;

    #@3a
    invoke-static {v0}, Lcom/google/android/gms/analytics/c;->b(Lcom/google/android/gms/analytics/c;)Landroid/content/Context;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@41
    iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->tB:Lcom/google/android/gms/analytics/c;

    #@43
    invoke-static {v0, v2}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/c;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    #@46
    iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->tB:Lcom/google/android/gms/analytics/c;

    #@48
    invoke-static {v0}, Lcom/google/android/gms/analytics/c;->c(Lcom/google/android/gms/analytics/c;)Lcom/google/android/gms/analytics/c$c;

    #@4b
    move-result-object v0

    #@4c
    const/4 v1, 0x2

    #@4d
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/analytics/c$c;->a(ILandroid/content/Intent;)V

    #@50
    goto :goto_36
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "service disconnected: "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->tB:Lcom/google/android/gms/analytics/c;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/c;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->tB:Lcom/google/android/gms/analytics/c;

    #@1e
    invoke-static {v0}, Lcom/google/android/gms/analytics/c;->d(Lcom/google/android/gms/analytics/c;)Lcom/google/android/gms/analytics/c$b;

    #@21
    move-result-object v0

    #@22
    invoke-interface {v0}, Lcom/google/android/gms/analytics/c$b;->onDisconnected()V

    #@25
    return-void
.end method
