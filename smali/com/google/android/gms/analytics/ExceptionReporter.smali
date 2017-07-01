.class public Lcom/google/android/gms/analytics/ExceptionReporter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final tO:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final tP:Lcom/google/android/gms/analytics/Tracker;

.field private tQ:Lcom/google/android/gms/analytics/ExceptionParser;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "tracker cannot be null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    if-nez p3, :cond_17

    #@f
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string v1, "context cannot be null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    iput-object p2, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tO:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@19
    iput-object p1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tP:Lcom/google/android/gms/analytics/Tracker;

    #@1b
    new-instance v0, Lcom/google/android/gms/analytics/StandardExceptionParser;

    #@1d
    new-instance v1, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@22
    invoke-direct {v0, p3, v1}, Lcom/google/android/gms/analytics/StandardExceptionParser;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    #@25
    iput-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tQ:Lcom/google/android/gms/analytics/ExceptionParser;

    #@27
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->mContext:Landroid/content/Context;

    #@2d
    new-instance v0, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string v1, "ExceptionReporter created, original handler is "

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    if-nez p2, :cond_48

    #@3a
    const-string v0, "null"

    #@3c
    :goto_3c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@47
    return-void

    #@48
    :cond_48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    goto :goto_3c
.end method


# virtual methods
.method cD()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tO:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@2
    return-object v0
.end method

.method public getExceptionParser()Lcom/google/android/gms/analytics/ExceptionParser;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tQ:Lcom/google/android/gms/analytics/ExceptionParser;

    #@2
    return-object v0
.end method

.method public setExceptionParser(Lcom/google/android/gms/analytics/ExceptionParser;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tQ:Lcom/google/android/gms/analytics/ExceptionParser;

    #@2
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    #@0
    const-string v0, "UncaughtException"

    #@2
    iget-object v1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tQ:Lcom/google/android/gms/analytics/ExceptionParser;

    #@4
    if-eqz v1, :cond_12

    #@6
    if-eqz p1, :cond_57

    #@8
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    :goto_c
    iget-object v1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tQ:Lcom/google/android/gms/analytics/ExceptionParser;

    #@e
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/analytics/ExceptionParser;->getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "Tracking Exception: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@28
    iget-object v1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tP:Lcom/google/android/gms/analytics/Tracker;

    #@2a
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    #@2c
    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;-><init>()V

    #@2f
    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    #@32
    move-result-object v0

    #@33
    const/4 v2, 0x1

    #@34
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setFatal(Z)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    #@3f
    iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->mContext:Landroid/content/Context;

    #@41
    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    #@48
    iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tO:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@4a
    if-eqz v0, :cond_56

    #@4c
    const-string v0, "Passing exception to original handler."

    #@4e
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@51
    iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tO:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@53
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    #@56
    :cond_56
    return-void

    #@57
    :cond_57
    const/4 v0, 0x0

    #@58
    goto :goto_c
.end method
