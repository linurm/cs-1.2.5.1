.class Lcom/apportable/activity/GdbServerService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/GdbServerService;->startGdbServer(Ljava/lang/String;I)Ljava/lang/Process;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/GdbServerService;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Lcom/apportable/activity/GdbServerService;Ljava/lang/String;I)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/activity/GdbServerService$1;->this$0:Lcom/apportable/activity/GdbServerService;

    #@2
    iput-object p2, p0, Lcom/apportable/activity/GdbServerService$1;->val$name:Ljava/lang/String;

    #@4
    iput p3, p0, Lcom/apportable/activity/GdbServerService$1;->val$port:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/apportable/activity/GdbServerService$1;->this$0:Lcom/apportable/activity/GdbServerService;

    #@2
    new-instance v1, Ljava/lang/ProcessBuilder;

    #@4
    const/4 v2, 0x0

    #@5
    new-array v2, v2, [Ljava/lang/String;

    #@7
    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    #@a
    iget-object v2, p0, Lcom/apportable/activity/GdbServerService$1;->val$name:Ljava/lang/String;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string v4, "tcp:"

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    iget v4, p0, Lcom/apportable/activity/GdbServerService$1;->val$port:I

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const/4 v5, 0x4

    #@27
    new-array v5, v5, [Ljava/lang/String;

    #@29
    const/4 v6, 0x0

    #@2a
    aput-object v2, v5, v6

    #@2c
    const/4 v2, 0x1

    #@2d
    aput-object v3, v5, v2

    #@2f
    const/4 v2, 0x2

    #@30
    const-string v3, "--attach"

    #@32
    aput-object v3, v5, v2

    #@34
    const/4 v2, 0x3

    #@35
    const-string v3, ""

    #@37
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@3e
    move-result v4

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    aput-object v3, v5, v2

    #@49
    invoke-virtual {v1, v5}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    #@4c
    move-result-object v1

    #@4d
    const/4 v2, 0x1

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    #@55
    move-result-object v1

    #@56
    # setter for: Lcom/apportable/activity/GdbServerService;->mProcess:Ljava/lang/Process;
    invoke-static {v0, v1}, Lcom/apportable/activity/GdbServerService;->access$002(Lcom/apportable/activity/GdbServerService;Ljava/lang/Process;)Ljava/lang/Process;
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_59} :catch_5a

    #@59
    :goto_59
    return-void

    #@5a
    :catch_5a
    move-exception v0

    #@5b
    # getter for: Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/apportable/activity/GdbServerService;->access$100()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    const-string v1, "IOException failed to start gdbserver"

    #@61
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    goto :goto_59
.end method
