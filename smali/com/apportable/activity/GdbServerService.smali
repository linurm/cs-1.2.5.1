.class public Lcom/apportable/activity/GdbServerService;
.super Landroid/app/Service;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mProcess:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "GdbServerService"

    #@2
    sput-object v0, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    #@4
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$002(Lcom/apportable/activity/GdbServerService;Ljava/lang/Process;)Ljava/lang/Process;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/activity/GdbServerService;->mProcess:Ljava/lang/Process;

    #@2
    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private killGdbServer(I)V
    .registers 7

    #@0
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    #@2
    const/4 v1, 0x0

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const/4 v2, 0x3

    #@e
    new-array v2, v2, [Ljava/lang/String;

    #@10
    const/4 v3, 0x0

    #@11
    const-string v4, "kill"

    #@13
    aput-object v4, v2, v3

    #@15
    const/4 v3, 0x1

    #@16
    const-string v4, "-9"

    #@18
    aput-object v4, v2, v3

    #@1a
    const/4 v3, 0x2

    #@1b
    const-string v4, ""

    #@1d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    aput-object v1, v2, v3

    #@2b
    invoke-virtual {v0, v2}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    #@2e
    move-result-object v0

    #@2f
    const/4 v1, 0x1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_37} :catch_38

    #@37
    :goto_37
    return-void

    #@38
    :catch_38
    move-exception v0

    #@39
    sget-object v0, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    #@3b
    const-string v1, "IOException failed to kill gdbserver"

    #@3d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    goto :goto_37
.end method

.method private startGdbServer(Ljava/lang/String;I)Ljava/lang/Process;
    .registers 5

    #@0
    new-instance v0, Ljava/lang/Thread;

    #@2
    new-instance v1, Lcom/apportable/activity/GdbServerService$1;

    #@4
    invoke-direct {v1, p0, p1, p2}, Lcom/apportable/activity/GdbServerService$1;-><init>(Lcom/apportable/activity/GdbServerService;Ljava/lang/String;I)V

    #@7
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@a
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@d
    const/4 v0, 0x0

    #@e
    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreate()V
    .registers 1

    #@0
    return-void
.end method

.method public onDestroy()V
    .registers 3

    #@0
    sget-object v0, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    #@2
    const-string v1, "in OnDestroy"

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    iget-object v0, p0, Lcom/apportable/activity/GdbServerService;->mProcess:Ljava/lang/Process;

    #@9
    if-eqz v0, :cond_10

    #@b
    iget-object v0, p0, Lcom/apportable/activity/GdbServerService;->mProcess:Ljava/lang/Process;

    #@d
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    #@10
    :cond_10
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    #@13
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/activity/GdbServerService;->mProcess:Ljava/lang/Process;

    #@3
    if-eqz v0, :cond_a

    #@5
    iget-object v0, p0, Lcom/apportable/activity/GdbServerService;->mProcess:Ljava/lang/Process;

    #@7
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    #@a
    :cond_a
    const-string v0, "command"

    #@c
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    const-string v1, "start"

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_3d

    #@18
    const-string v0, "gdbserver_port"

    #@1a
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_29

    #@20
    sget-object v0, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    #@22
    const-string v1, "Failed to get gdbserver_port"

    #@24
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    :goto_27
    const/4 v0, 0x2

    #@28
    return v0

    #@29
    :cond_29
    const-string v1, "gdbserver_name"

    #@2b
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    if-nez v1, :cond_39

    #@31
    sget-object v0, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    #@33
    const-string v1, "Failed to get gdbserver_name"

    #@35
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    goto :goto_27

    #@39
    :cond_39
    invoke-direct {p0, v1, v0}, Lcom/apportable/activity/GdbServerService;->startGdbServer(Ljava/lang/String;I)Ljava/lang/Process;

    #@3c
    goto :goto_27

    #@3d
    :cond_3d
    const-string v1, "kill"

    #@3f
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v1

    #@43
    if-eqz v1, :cond_59

    #@45
    const-string v0, "gdbserver_pid"

    #@47
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@4a
    move-result v0

    #@4b
    if-nez v0, :cond_55

    #@4d
    sget-object v0, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    #@4f
    const-string v1, "Failed to get gdbserver_pid"

    #@51
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    goto :goto_27

    #@55
    :cond_55
    invoke-direct {p0, v0}, Lcom/apportable/activity/GdbServerService;->killGdbServer(I)V

    #@58
    goto :goto_27

    #@59
    :cond_59
    sget-object v1, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    #@5b
    new-instance v2, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string v3, "Unknown command: "

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    goto :goto_27
.end method
