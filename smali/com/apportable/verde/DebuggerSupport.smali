.class public Lcom/apportable/verde/DebuggerSupport;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "DebuggerSupport"

.field private static mGDBProcess:Ljava/lang/Process;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Process;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/verde/DebuggerSupport;->mGDBProcess:Ljava/lang/Process;

    #@2
    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Process;)Ljava/lang/Process;
    .registers 1

    #@0
    sput-object p0, Lcom/apportable/verde/DebuggerSupport;->mGDBProcess:Ljava/lang/Process;

    #@2
    return-object p0
.end method

.method public static startGdbServer(Ljava/lang/String;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/apportable/verde/DebuggerSupport;->mGDBProcess:Ljava/lang/Process;

    #@2
    if-eqz v0, :cond_c

    #@4
    const-string v0, "DebuggerSupport"

    #@6
    const-string v1, "Attempting to start gdb server twice, ignoring second launch"

    #@8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    :goto_b
    return-void

    #@c
    :cond_c
    new-instance v0, Ljava/lang/Thread;

    #@e
    new-instance v1, Lcom/apportable/verde/DebuggerSupport$1;

    #@10
    invoke-direct {v1, p0, p1}, Lcom/apportable/verde/DebuggerSupport$1;-><init>(Ljava/lang/String;I)V

    #@13
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@19
    goto :goto_b
.end method
