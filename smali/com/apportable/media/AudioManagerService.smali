.class public Lcom/apportable/media/AudioManagerService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private activityAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private am:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/Binder;

.field private mObject:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "AudioManagerService"

    #@2
    sput-object v0, Lcom/apportable/media/AudioManagerService;->TAG:Ljava/lang/String;

    #@4
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@4
    iput-object v1, p0, Lcom/apportable/media/AudioManagerService;->am:Landroid/media/AudioManager;

    #@6
    new-instance v0, Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;

    #@8
    invoke-direct {v0, p0}, Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;-><init>(Lcom/apportable/media/AudioManagerService;)V

    #@b
    iput-object v0, p0, Lcom/apportable/media/AudioManagerService;->mBinder:Landroid/os/Binder;

    #@d
    iput-object v1, p0, Lcom/apportable/media/AudioManagerService;->activityAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@f
    new-instance v0, Lcom/apportable/media/AudioManagerService$1;

    #@11
    invoke-direct {v0, p0}, Lcom/apportable/media/AudioManagerService$1;-><init>(Lcom/apportable/media/AudioManagerService;)V

    #@14
    iput-object v0, p0, Lcom/apportable/media/AudioManagerService;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@16
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/media/AudioManagerService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/media/AudioManagerService;->activityAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@2
    return-object v0
.end method


# virtual methods
.method public abandonAudioFocus()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/media/AudioManagerService;->am:Landroid/media/AudioManager;

    #@2
    iget-object v1, p0, Lcom/apportable/media/AudioManagerService;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@4
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    #@7
    return-void
.end method

.method public isMusicActive()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/media/AudioManagerService;->am:Landroid/media/AudioManager;

    #@2
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/Binder;
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/apportable/media/AudioManagerService;->getApplication()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "audio"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/media/AudioManager;

    #@c
    iput-object v0, p0, Lcom/apportable/media/AudioManagerService;->am:Landroid/media/AudioManager;

    #@e
    iget-object v0, p0, Lcom/apportable/media/AudioManagerService;->mBinder:Landroid/os/Binder;

    #@10
    return-object v0
.end method

.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/apportable/media/AudioManagerService;->onBind(Landroid/content/Intent;)Landroid/os/Binder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/apportable/media/AudioManagerService;->getApplication()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "audio"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/media/AudioManager;

    #@c
    iput-object v0, p0, Lcom/apportable/media/AudioManagerService;->am:Landroid/media/AudioManager;

    #@e
    const/4 v0, 0x2

    #@f
    return v0
.end method

.method public requestAudioFocusPermanent()Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    iget-object v2, p0, Lcom/apportable/media/AudioManagerService;->am:Landroid/media/AudioManager;

    #@4
    if-eqz v2, :cond_13

    #@6
    iget-object v2, p0, Lcom/apportable/media/AudioManagerService;->am:Landroid/media/AudioManager;

    #@8
    iget-object v3, p0, Lcom/apportable/media/AudioManagerService;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@a
    const/4 v4, 0x3

    #@b
    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    #@e
    move-result v2

    #@f
    :goto_f
    if-ne v2, v1, :cond_12

    #@11
    move v0, v1

    #@12
    :cond_12
    return v0

    #@13
    :cond_13
    move v2, v0

    #@14
    goto :goto_f
.end method

.method public setListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/media/AudioManagerService;->activityAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@2
    const/4 v0, 0x1

    #@3
    return v0
.end method
