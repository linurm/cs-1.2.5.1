.class Lcom/google/android/gms/analytics/GoogleAnalytics$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/GoogleAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic wu:Lcom/google/android/gms/analytics/GoogleAnalytics;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/GoogleAnalytics;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics$b;->wu:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    #@0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    #@0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics$b;->wu:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(Lcom/google/android/gms/analytics/GoogleAnalytics;Landroid/app/Activity;)V

    #@5
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics$b;->wu:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->b(Lcom/google/android/gms/analytics/GoogleAnalytics;Landroid/app/Activity;)V

    #@5
    return-void
.end method
