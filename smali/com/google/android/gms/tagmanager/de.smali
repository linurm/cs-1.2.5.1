.class Lcom/google/android/gms/tagmanager/de;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/de$a;
    }
.end annotation


# instance fields
.field private aij:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private mContext:Landroid/content/Context;

.field private tP:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/de;->mContext:Landroid/content/Context;

    #@5
    return-void
.end method

.method private cn(Ljava/lang/String;)V
    .registers 4

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->aij:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@3
    if-nez v0, :cond_1f

    #@5
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->mContext:Landroid/content/Context;

    #@7
    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/de;->aij:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@d
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->aij:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@f
    new-instance v1, Lcom/google/android/gms/tagmanager/de$a;

    #@11
    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/de$a;-><init>()V

    #@14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLogger(Lcom/google/android/gms/analytics/Logger;)V

    #@17
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->aij:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@19
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/de;->tP:Lcom/google/android/gms/analytics/Tracker;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    #@1f
    :cond_1f
    monitor-exit p0

    #@20
    return-void

    #@21
    :catchall_21
    move-exception v0

    #@22
    monitor-exit p0

    #@23
    throw v0
.end method


# virtual methods
.method public cm(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/de;->cn(Ljava/lang/String;)V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->tP:Lcom/google/android/gms/analytics/Tracker;

    #@5
    return-object v0
.end method
