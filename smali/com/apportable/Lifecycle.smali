.class public Lcom/apportable/Lifecycle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/Lifecycle$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG_LIFECYCLE:Z = false

.field public static final EVENT_ACTIVITY_CREATED:I = 0x1

.field public static final EVENT_ACTIVITY_DESTROYED:I = 0x7

.field public static final EVENT_ACTIVITY_PAUSED:I = 0x5

.field public static final EVENT_ACTIVITY_RESTARTED:I = 0x3

.field public static final EVENT_ACTIVITY_RESUMED:I = 0x4

.field public static final EVENT_ACTIVITY_STARTED:I = 0x2

.field public static final EVENT_ACTIVITY_STOPPED:I = 0x6

.field public static final EVENT_APPLICATION_CREATED:I

.field private static TAG:Ljava/lang/String;

.field private static didNotReceiveUnfocus:Z

.field private static sActivity:Lcom/apportable/activity/VerdeActivity;

.field private static sActivityPaused:Z

.field private static sActivityWasCreated:Z

.field private static sActivityWasInited:Z

.field private static sActivityWasRestarted:Z

.field private static sActivityWasResumed:Z

.field private static sActivityWasStarted:Z

.field private static sActivityWasStopped:Z

.field private static sApplication:Lcom/apportable/app/VerdeApplication;

.field private static sApplicationWasConstructed:Z

.field private static sApplicationWasCreated:Z

.field private static sApplicationWasInited:Z

.field private static sContextChanged:Z

.field private static sContextHasSurface:Z

.field private static sContextIsValid:Z

.field private static sLibrariesWereLoaded:Z

.field private static sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apportable/Lifecycle$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static sNativeApplicationInBackground:Z

.field private static sNativeApplicationStarted:Z

.field private static sOrientation:I

.field private static sWindowHasFocus:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    sput-object v0, Lcom/apportable/Lifecycle;->sListeners:Ljava/util/List;

    #@4
    sput-boolean v1, Lcom/apportable/Lifecycle;->sApplicationWasConstructed:Z

    #@6
    sput-boolean v1, Lcom/apportable/Lifecycle;->sApplicationWasInited:Z

    #@8
    sput-boolean v1, Lcom/apportable/Lifecycle;->sApplicationWasCreated:Z

    #@a
    sput-boolean v1, Lcom/apportable/Lifecycle;->sLibrariesWereLoaded:Z

    #@c
    sput-boolean v1, Lcom/apportable/Lifecycle;->sActivityWasInited:Z

    #@e
    sput-boolean v1, Lcom/apportable/Lifecycle;->sActivityWasCreated:Z

    #@10
    sput-boolean v1, Lcom/apportable/Lifecycle;->sActivityWasStarted:Z

    #@12
    sput-boolean v1, Lcom/apportable/Lifecycle;->sActivityWasRestarted:Z

    #@14
    sput-boolean v1, Lcom/apportable/Lifecycle;->sActivityWasResumed:Z

    #@16
    sput-boolean v1, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    #@18
    sput-boolean v1, Lcom/apportable/Lifecycle;->sActivityWasStopped:Z

    #@1a
    sput-boolean v1, Lcom/apportable/Lifecycle;->didNotReceiveUnfocus:Z

    #@1c
    sput-boolean v1, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    #@1e
    sput-boolean v1, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    #@20
    sput-boolean v1, Lcom/apportable/Lifecycle;->sContextIsValid:Z

    #@22
    sput-boolean v1, Lcom/apportable/Lifecycle;->sContextChanged:Z

    #@24
    sput-boolean v1, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    #@26
    sput-boolean v1, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    #@28
    const-string v0, "Lifecycle.java"

    #@2a
    sput-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@2c
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    #@0
    sget-boolean v0, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    #@2
    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    #@0
    sget-boolean v0, Lcom/apportable/Lifecycle;->didNotReceiveUnfocus:Z

    #@2
    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    #@0
    sput-boolean p0, Lcom/apportable/Lifecycle;->didNotReceiveUnfocus:Z

    #@2
    return p0
.end method

.method public static addLifecycleListener(Lcom/apportable/Lifecycle$Listener;)V
    .registers 2

    #@0
    sget-object v0, Lcom/apportable/Lifecycle;->sListeners:Ljava/util/List;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    sput-object v0, Lcom/apportable/Lifecycle;->sListeners:Ljava/util/List;

    #@b
    :cond_b
    sget-object v0, Lcom/apportable/Lifecycle;->sListeners:Ljava/util/List;

    #@d
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method private static native applicationDidBecomeActive()V
.end method

.method private static native applicationDidEnterBackground()V
.end method

.method private static native applicationDidReceiveMemoryWarning()V
.end method

.method private static native applicationWillEnterForeground()V
.end method

.method private static native applicationWillResignActive()V
.end method

.method private static native applicationWillTerminate()V
.end method

.method private static native contextDidBecomeInvalid()V
.end method

.method private static native contextDidBecomeValid()V
.end method

.method private static expectGainFocus(Lcom/apportable/activity/VerdeActivity;)V
    .registers 5

    #@0
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@5
    new-instance v1, Lcom/apportable/Lifecycle$3;

    #@7
    invoke-direct {v1, p0}, Lcom/apportable/Lifecycle$3;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    #@a
    const-wide/16 v2, 0x1f4

    #@c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@f
    return-void
.end method

.method private static expectLoseFocus(Lcom/apportable/activity/VerdeActivity;)V
    .registers 5

    #@0
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@5
    new-instance v1, Lcom/apportable/Lifecycle$2;

    #@7
    invoke-direct {v1, p0}, Lcom/apportable/Lifecycle$2;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    #@a
    const-wide/16 v2, 0x1f4

    #@c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@f
    return-void
.end method

.method public static isCreated()Z
    .registers 1

    #@0
    sget-boolean v0, Lcom/apportable/Lifecycle;->sApplicationWasCreated:Z

    #@2
    return v0
.end method

.method public static isInBackground()Z
    .registers 1

    #@0
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    #@2
    return v0
.end method

.method public static isNativeApplicationStarted()Z
    .registers 1

    #@0
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    #@2
    return v0
.end method

.method private static logState(Ljava/lang/String;)V
    .registers 4

    #@0
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "=============="

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string v2, "=============="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string v2, "sApplicationWasConstructed = "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    sget-boolean v2, Lcom/apportable/Lifecycle;->sApplicationWasConstructed:Z

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string v2, "sApplicationWasInited = "

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    sget-boolean v2, Lcom/apportable/Lifecycle;->sApplicationWasInited:Z

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@54
    new-instance v1, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string v2, "sApplicationWasCreated = "

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    sget-boolean v2, Lcom/apportable/Lifecycle;->sApplicationWasCreated:Z

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@6e
    new-instance v1, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string v2, "sLibrariesWereLoaded = "

    #@75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    sget-boolean v2, Lcom/apportable/Lifecycle;->sLibrariesWereLoaded:Z

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@88
    new-instance v1, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string v2, "sActivityWasInited = "

    #@8f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v1

    #@93
    sget-boolean v2, Lcom/apportable/Lifecycle;->sActivityWasInited:Z

    #@95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@98
    move-result-object v1

    #@99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v1

    #@9d
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a0
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@a2
    new-instance v1, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string v2, "sActivityWasCreated = "

    #@a9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v1

    #@ad
    sget-boolean v2, Lcom/apportable/Lifecycle;->sActivityWasCreated:Z

    #@af
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v1

    #@b3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v1

    #@b7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ba
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@bc
    new-instance v1, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string v2, "sActivityWasStarted = "

    #@c3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v1

    #@c7
    sget-boolean v2, Lcom/apportable/Lifecycle;->sActivityWasStarted:Z

    #@c9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v1

    #@cd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v1

    #@d1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d4
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@d6
    new-instance v1, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string v2, "sActivityWasRestarted = "

    #@dd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v1

    #@e1
    sget-boolean v2, Lcom/apportable/Lifecycle;->sActivityWasRestarted:Z

    #@e3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v1

    #@e7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v1

    #@eb
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ee
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@f0
    new-instance v1, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string v2, "sActivityWasResumed = "

    #@f7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v1

    #@fb
    sget-boolean v2, Lcom/apportable/Lifecycle;->sActivityWasResumed:Z

    #@fd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@100
    move-result-object v1

    #@101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v1

    #@105
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@108
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@10a
    new-instance v1, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    const-string v2, "sActivityPaused = "

    #@111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v1

    #@115
    sget-boolean v2, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    #@117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v1

    #@11b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v1

    #@11f
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@122
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@124
    new-instance v1, Ljava/lang/StringBuilder;

    #@126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    const-string v2, "sActivityWasStopped = "

    #@12b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v1

    #@12f
    sget-boolean v2, Lcom/apportable/Lifecycle;->sActivityWasStopped:Z

    #@131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@134
    move-result-object v1

    #@135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v1

    #@139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13c
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@13e
    new-instance v1, Ljava/lang/StringBuilder;

    #@140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@143
    const-string v2, "sWindowHasFocus = "

    #@145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v1

    #@149
    sget-boolean v2, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    #@14b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v1

    #@14f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@152
    move-result-object v1

    #@153
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@156
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@158
    new-instance v1, Ljava/lang/StringBuilder;

    #@15a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15d
    const-string v2, "sContextHasSurface = "

    #@15f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v1

    #@163
    sget-boolean v2, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    #@165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@168
    move-result-object v1

    #@169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16c
    move-result-object v1

    #@16d
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@170
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@172
    new-instance v1, Ljava/lang/StringBuilder;

    #@174
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@177
    const-string v2, "sContextIsValid = "

    #@179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v1

    #@17d
    sget-boolean v2, Lcom/apportable/Lifecycle;->sContextIsValid:Z

    #@17f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@182
    move-result-object v1

    #@183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@186
    move-result-object v1

    #@187
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18a
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@18c
    new-instance v1, Ljava/lang/StringBuilder;

    #@18e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@191
    const-string v2, "sContextChanged = "

    #@193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v1

    #@197
    sget-boolean v2, Lcom/apportable/Lifecycle;->sContextChanged:Z

    #@199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v1

    #@19d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a0
    move-result-object v1

    #@1a1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a4
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@1a6
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ab
    const-string v2, "sNativeApplicationStarted = "

    #@1ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v1

    #@1b1
    sget-boolean v2, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    #@1b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v1

    #@1b7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ba
    move-result-object v1

    #@1bb
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1be
    sget-object v0, Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;

    #@1c0
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c5
    const-string v2, "sNativeApplicationInBackground = "

    #@1c7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ca
    move-result-object v1

    #@1cb
    sget-boolean v2, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    #@1cd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v1

    #@1d1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d4
    move-result-object v1

    #@1d5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d8
    return-void
.end method

.method public static onActivityCreate(Lcom/apportable/activity/VerdeActivity;)V
    .registers 5

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getPackageName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0, v2}, Lcom/apportable/activity/VerdeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@9
    move-result-object v0

    #@a
    const-string v1, "appIsActive"

    #@c
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #@f
    move-result v1

    #@10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@13
    move-result-object v0

    #@14
    const-string v2, "wasLifecycleInterrupted"

    #@16
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    #@19
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@1c
    sput-boolean v3, Lcom/apportable/Lifecycle;->sActivityWasCreated:Z

    #@1e
    invoke-static {v3}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    #@21
    return-void
.end method

.method public static onActivityDestroy(Lcom/apportable/activity/VerdeActivity;)V
    .registers 2

    #@0
    const/4 v0, 0x7

    #@1
    invoke-static {v0}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    #@4
    return-void
.end method

.method public static onActivityInit(Lcom/apportable/activity/VerdeActivity;)V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasInited:Z

    #@3
    sput-object p0, Lcom/apportable/Lifecycle;->sActivity:Lcom/apportable/activity/VerdeActivity;

    #@5
    invoke-static {}, Lcom/apportable/Lifecycle;->testLaunched()V

    #@8
    return-void
.end method

.method public static onActivityNewIntent(Lcom/apportable/activity/VerdeActivity;Landroid/content/Intent;)V
    .registers 2

    #@0
    return-void
.end method

.method public static onActivityPause(Lcom/apportable/activity/VerdeActivity;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasResumed:Z

    #@3
    const/4 v0, 0x1

    #@4
    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    #@6
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    #@9
    invoke-static {p0}, Lcom/apportable/Lifecycle;->expectLoseFocus(Lcom/apportable/activity/VerdeActivity;)V

    #@c
    const/4 v0, 0x5

    #@d
    invoke-static {v0}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    #@10
    return-void
.end method

.method public static onActivityRestart(Lcom/apportable/activity/VerdeActivity;)V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasRestarted:Z

    #@3
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    #@6
    const/4 v0, 0x3

    #@7
    invoke-static {v0}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    #@a
    return-void
.end method

.method public static onActivityResult(Lcom/apportable/activity/VerdeActivity;IILandroid/content/Intent;)V
    .registers 4

    #@0
    return-void
.end method

.method public static onActivityResume(Lcom/apportable/activity/VerdeActivity;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    #@3
    const/4 v0, 0x1

    #@4
    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasResumed:Z

    #@6
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    #@9
    invoke-static {p0}, Lcom/apportable/Lifecycle;->expectGainFocus(Lcom/apportable/activity/VerdeActivity;)V

    #@c
    const/4 v0, 0x4

    #@d
    invoke-static {v0}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    #@10
    return-void
.end method

.method public static onActivityStart(Lcom/apportable/activity/VerdeActivity;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStopped:Z

    #@3
    const/4 v0, 0x1

    #@4
    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStarted:Z

    #@6
    invoke-static {}, Lcom/apportable/Lifecycle;->testLaunched()V

    #@9
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    #@c
    const/4 v0, 0x2

    #@d
    invoke-static {v0}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    #@10
    return-void
.end method

.method public static onActivityStop(Lcom/apportable/activity/VerdeActivity;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStarted:Z

    #@3
    const/4 v0, 0x1

    #@4
    sput-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStopped:Z

    #@6
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    #@9
    const/4 v0, 0x6

    #@a
    invoke-static {v0}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    #@d
    return-void
.end method

.method public static onActivityWindowFocusChanged(Lcom/apportable/activity/VerdeActivity;Z)V
    .registers 4

    #@0
    if-nez p1, :cond_5

    #@2
    const/4 v0, 0x0

    #@3
    sput-boolean v0, Lcom/apportable/Lifecycle;->didNotReceiveUnfocus:Z

    #@5
    :cond_5
    sget-boolean v0, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    #@7
    sput-boolean p1, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    #@9
    if-eq v0, p1, :cond_1d

    #@b
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@e
    move-result-object v0

    #@f
    new-instance v1, Lcom/apportable/Lifecycle$1;

    #@11
    invoke-direct {v1}, Lcom/apportable/Lifecycle$1;-><init>()V

    #@14
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@17
    invoke-static {}, Lcom/apportable/Lifecycle;->testLaunched()V

    #@1a
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    #@1d
    :cond_1d
    return-void
.end method

.method public static onApplicationConfigurationChanged(Lcom/apportable/app/VerdeApplication;Landroid/content/res/Configuration;)V
    .registers 3

    #@0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    #@2
    sput v0, Lcom/apportable/Lifecycle;->sOrientation:I

    #@4
    return-void
.end method

.method public static onApplicationConstruct()V
    .registers 1

    #@0
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Lcom/apportable/Lifecycle;->sApplicationWasConstructed:Z

    #@3
    return-void
.end method

.method public static onApplicationCreate(Lcom/apportable/app/VerdeApplication;)V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Lcom/apportable/Lifecycle;->sApplicationWasCreated:Z

    #@3
    invoke-static {}, Lcom/apportable/Lifecycle;->testLaunched()V

    #@6
    const/4 v0, 0x0

    #@7
    invoke-static {v0}, Lcom/apportable/Lifecycle;->raiseLifecycleStateChange(I)V

    #@a
    return-void
.end method

.method public static onApplicationInit(Lcom/apportable/app/VerdeApplication;)V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Lcom/apportable/Lifecycle;->sApplicationWasInited:Z

    #@3
    sput-object p0, Lcom/apportable/Lifecycle;->sApplication:Lcom/apportable/app/VerdeApplication;

    #@5
    invoke-static {}, Lcom/apportable/Lifecycle;->testLaunched()V

    #@8
    return-void
.end method

.method public static onApplicationLowMemory(Lcom/apportable/app/VerdeApplication;)V
    .registers 4

    #@0
    :try_start_0
    invoke-static {}, Lcom/apportable/Lifecycle;->applicationDidReceiveMemoryWarning()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_4

    #@3
    :goto_3
    return-void

    #@4
    :catch_4
    move-exception v0

    #@5
    const-string v1, "Lifecycle"

    #@7
    const-string v2, "Native code not loaded"

    #@9
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c
    goto :goto_3
.end method

.method public static onApplicationTerminate(Lcom/apportable/app/VerdeApplication;)V
    .registers 1

    #@0
    invoke-static {}, Lcom/apportable/Lifecycle;->applicationWillTerminate()V

    #@3
    return-void
.end method

.method public static onContextSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Lcom/apportable/Lifecycle;->sContextChanged:Z

    #@3
    return-void
.end method

.method public static onContextSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    #@3
    invoke-static {}, Lcom/apportable/Lifecycle;->testLaunched()V

    #@6
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    #@9
    return-void
.end method

.method public static onContextSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    #@3
    sput-boolean v0, Lcom/apportable/Lifecycle;->sContextChanged:Z

    #@5
    invoke-static {}, Lcom/apportable/Lifecycle;->testInBackground()V

    #@8
    return-void
.end method

.method public static onLibrariesFinishedLoading()V
    .registers 1

    #@0
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Lcom/apportable/Lifecycle;->sLibrariesWereLoaded:Z

    #@3
    invoke-static {}, Lcom/apportable/Lifecycle;->testLaunched()V

    #@6
    return-void
.end method

.method private static raiseLifecycleStateChange(I)V
    .registers 5

    #@0
    sget-object v0, Lcom/apportable/Lifecycle;->sListeners:Ljava/util/List;

    #@2
    if-nez v0, :cond_5

    #@4
    :cond_4
    return-void

    #@5
    :cond_5
    sget-object v0, Lcom/apportable/Lifecycle;->sListeners:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_4

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/apportable/Lifecycle$Listener;

    #@17
    sget-object v2, Lcom/apportable/Lifecycle;->sApplication:Lcom/apportable/app/VerdeApplication;

    #@19
    sget-object v3, Lcom/apportable/Lifecycle;->sActivity:Lcom/apportable/activity/VerdeActivity;

    #@1b
    invoke-interface {v0, p0, v2, v3}, Lcom/apportable/Lifecycle$Listener;->OnLifecycleStateChanged(ILandroid/app/Application;Landroid/app/Activity;)V

    #@1e
    goto :goto_b
.end method

.method private static startNativeApplication()V
    .registers 2

    #@0
    const/4 v1, 0x1

    #@1
    sput-boolean v1, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    #@3
    sget-boolean v0, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    #@5
    if-eqz v0, :cond_17

    #@7
    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    #@9
    if-nez v0, :cond_17

    #@b
    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStopped:Z

    #@d
    if-nez v0, :cond_17

    #@f
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    #@11
    if-eqz v0, :cond_17

    #@13
    const/4 v0, 0x0

    #@14
    sput-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    #@16
    :cond_16
    :goto_16
    return-void

    #@17
    :cond_17
    sget-boolean v0, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    #@19
    if-nez v0, :cond_16

    #@1b
    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    #@1d
    if-nez v0, :cond_23

    #@1f
    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStopped:Z

    #@21
    if-eqz v0, :cond_16

    #@23
    :cond_23
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    #@25
    if-eqz v0, :cond_16

    #@27
    sput-boolean v1, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    #@29
    goto :goto_16
.end method

.method private static testHasValidContext()V
    .registers 2

    #@0
    const/4 v1, 0x1

    #@1
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    #@3
    if-nez v0, :cond_1b

    #@5
    sget-boolean v0, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    #@7
    if-nez v0, :cond_11

    #@9
    sget-boolean v0, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    #@b
    if-nez v0, :cond_1b

    #@d
    sget-boolean v0, Lcom/apportable/Lifecycle;->sContextChanged:Z

    #@f
    if-eqz v0, :cond_1b

    #@11
    :cond_11
    sget-boolean v0, Lcom/apportable/Lifecycle;->sContextIsValid:Z

    #@13
    if-eq v0, v1, :cond_1a

    #@15
    sput-boolean v1, Lcom/apportable/Lifecycle;->sContextIsValid:Z

    #@17
    invoke-static {}, Lcom/apportable/Lifecycle;->contextDidBecomeValid()V

    #@1a
    :cond_1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    sget-boolean v0, Lcom/apportable/Lifecycle;->sContextIsValid:Z

    #@1d
    if-eqz v0, :cond_1a

    #@1f
    invoke-static {}, Lcom/apportable/Lifecycle;->contextDidBecomeInvalid()V

    #@22
    const/4 v0, 0x0

    #@23
    sput-boolean v0, Lcom/apportable/Lifecycle;->sContextIsValid:Z

    #@25
    goto :goto_1a
.end method

.method private static testInBackground()V
    .registers 1

    #@0
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    #@2
    if-eqz v0, :cond_21

    #@4
    sget-boolean v0, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    #@6
    if-eqz v0, :cond_21

    #@8
    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    #@a
    if-nez v0, :cond_21

    #@c
    sget-boolean v0, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    #@e
    if-eqz v0, :cond_21

    #@10
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    #@12
    if-eqz v0, :cond_21

    #@14
    const/4 v0, 0x0

    #@15
    sput-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    #@17
    invoke-static {}, Lcom/apportable/Lifecycle;->testHasValidContext()V

    #@1a
    invoke-static {}, Lcom/apportable/Lifecycle;->applicationWillEnterForeground()V

    #@1d
    invoke-static {}, Lcom/apportable/Lifecycle;->applicationDidBecomeActive()V

    #@20
    :cond_20
    :goto_20
    return-void

    #@21
    :cond_21
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    #@23
    if-nez v0, :cond_20

    #@25
    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityPaused:Z

    #@27
    if-nez v0, :cond_2d

    #@29
    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStopped:Z

    #@2b
    if-eqz v0, :cond_20

    #@2d
    :cond_2d
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    #@2f
    if-eqz v0, :cond_20

    #@31
    const/4 v0, 0x1

    #@32
    sput-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationInBackground:Z

    #@34
    invoke-static {}, Lcom/apportable/Lifecycle;->testHasValidContext()V

    #@37
    invoke-static {}, Lcom/apportable/Lifecycle;->applicationWillResignActive()V

    #@3a
    invoke-static {}, Lcom/apportable/Lifecycle;->applicationDidEnterBackground()V

    #@3d
    goto :goto_20
.end method

.method private static testLaunched()V
    .registers 1

    #@0
    sget-boolean v0, Lcom/apportable/Lifecycle;->sNativeApplicationStarted:Z

    #@2
    if-nez v0, :cond_23

    #@4
    sget-boolean v0, Lcom/apportable/Lifecycle;->sApplicationWasInited:Z

    #@6
    if-eqz v0, :cond_23

    #@8
    sget-boolean v0, Lcom/apportable/Lifecycle;->sApplicationWasCreated:Z

    #@a
    if-eqz v0, :cond_23

    #@c
    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasInited:Z

    #@e
    if-eqz v0, :cond_23

    #@10
    sget-boolean v0, Lcom/apportable/Lifecycle;->sActivityWasStarted:Z

    #@12
    if-eqz v0, :cond_23

    #@14
    sget-boolean v0, Lcom/apportable/Lifecycle;->sWindowHasFocus:Z

    #@16
    if-eqz v0, :cond_23

    #@18
    sget-boolean v0, Lcom/apportable/Lifecycle;->sContextHasSurface:Z

    #@1a
    if-eqz v0, :cond_23

    #@1c
    sget-boolean v0, Lcom/apportable/Lifecycle;->sLibrariesWereLoaded:Z

    #@1e
    if-eqz v0, :cond_23

    #@20
    invoke-static {}, Lcom/apportable/Lifecycle;->startNativeApplication()V

    #@23
    :cond_23
    return-void
.end method
