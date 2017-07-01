.class public abstract Lcom/google/android/gms/drive/events/DriveEventService;
.super Landroid/app/IntentService;


# static fields
.field private static final Ih:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/google/android/gms/drive/events/DriveEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/events/DriveEventService;->Ih:Ljava/util/concurrent/LinkedBlockingDeque;

    #@7
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    #@0
    const-string v0, "DriveEventService"

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/events/DriveEventService;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->mName:Ljava/lang/String;

    #@5
    return-void
.end method

.method private a(Lcom/google/android/gms/drive/events/DriveEvent;)V
    .registers 7

    #@0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    #@3
    move-result v1

    #@4
    packed-switch v1, :pswitch_data_82

    #@7
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->mName:Ljava/lang/String;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string v3, "Unrecognized event: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    :goto_1f
    return-void

    #@20
    :pswitch_20
    instance-of v1, p1, Lcom/google/android/gms/drive/events/ChangeEvent;

    #@22
    const-string v2, "Unexpected event type: %s"

    #@24
    const/4 v3, 0x1

    #@25
    new-array v3, v3, [Ljava/lang/Object;

    #@27
    const/4 v4, 0x0

    #@28
    aput-object p1, v3, v4

    #@2a
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    #@2d
    move-object v0, p1

    #@2e
    check-cast v0, Lcom/google/android/gms/drive/events/ChangeEvent;

    #@30
    move-object v1, v0

    #@31
    invoke-virtual {p0, v1}, Lcom/google/android/gms/drive/events/DriveEventService;->onChangeEvent(Lcom/google/android/gms/drive/events/ChangeEvent;)V
    :try_end_34
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_34} :catch_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_68

    #@34
    goto :goto_1f

    #@35
    :catch_35
    move-exception v1

    #@36
    iget-object v2, p0, Lcom/google/android/gms/drive/events/DriveEventService;->mName:Ljava/lang/String;

    #@38
    new-instance v3, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string v4, "Service does not implement listener for type:"

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    #@46
    move-result v4

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@52
    goto :goto_1f

    #@53
    :pswitch_53
    :try_start_53
    instance-of v1, p1, Lcom/google/android/gms/drive/events/FileConflictEvent;

    #@55
    const-string v2, "Unexpected event type: %s"

    #@57
    const/4 v3, 0x1

    #@58
    new-array v3, v3, [Ljava/lang/Object;

    #@5a
    const/4 v4, 0x0

    #@5b
    aput-object p1, v3, v4

    #@5d
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    #@60
    move-object v0, p1

    #@61
    check-cast v0, Lcom/google/android/gms/drive/events/FileConflictEvent;

    #@63
    move-object v1, v0

    #@64
    invoke-virtual {p0, v1}, Lcom/google/android/gms/drive/events/DriveEventService;->a(Lcom/google/android/gms/drive/events/FileConflictEvent;)V
    :try_end_67
    .catch Ljava/lang/ClassCastException; {:try_start_53 .. :try_end_67} :catch_35
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_67} :catch_68

    #@67
    goto :goto_1f

    #@68
    :catch_68
    move-exception v1

    #@69
    iget-object v2, p0, Lcom/google/android/gms/drive/events/DriveEventService;->mName:Ljava/lang/String;

    #@6b
    new-instance v3, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string v4, "Error handling event: "

    #@72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v3

    #@7a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@81
    goto :goto_1f

    #@82
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_20
        :pswitch_53
    .end packed-switch
.end method

.method static synthetic gn()Ljava/util/concurrent/LinkedBlockingDeque;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/drive/events/DriveEventService;->Ih:Ljava/util/concurrent/LinkedBlockingDeque;

    #@2
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/events/FileConflictEvent;)V
    .registers 5

    #@0
    const-string v0, "DriveEventService"

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "Unhandled FileConflictEvent: "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/drive/events/DriveEventService$1;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/events/DriveEventService$1;-><init>(Lcom/google/android/gms/drive/events/DriveEventService;)V

    #@5
    return-object v0
.end method

.method public onChangeEvent(Lcom/google/android/gms/drive/events/ChangeEvent;)V
    .registers 5

    #@0
    const-string v0, "DriveEventService"

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "Unhandled ChangeEvent: "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    return-void
.end method

.method protected final onHandleIntent(Landroid/content/Intent;)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/events/DriveEventService;->getClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@7
    const-string v0, "event"

    #@9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/google/android/gms/drive/events/DriveEvent;

    #@f
    if-nez v0, :cond_19

    #@11
    sget-object v0, Lcom/google/android/gms/drive/events/DriveEventService;->Ih:Ljava/util/concurrent/LinkedBlockingDeque;

    #@13
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/drive/events/DriveEvent;

    #@19
    :cond_19
    if-eqz v0, :cond_1f

    #@1b
    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/events/DriveEventService;->a(Lcom/google/android/gms/drive/events/DriveEvent;)V

    #@1e
    :goto_1e
    return-void

    #@1f
    :cond_1f
    const-string v0, "DriveEventService"

    #@21
    const-string v1, "The event queue is unexpectedly empty."

    #@23
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_1e
.end method
