.class final Lcom/apportable/verde/DebuggerSupport$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/verde/DebuggerSupport;->startGdbServer(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/verde/DebuggerSupport$1;->val$path:Ljava/lang/String;

    #@2
    iput p2, p0, Lcom/apportable/verde/DebuggerSupport$1;->val$port:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@5
    move-result v2

    #@6
    new-instance v3, Ljava/lang/ProcessBuilder;

    #@8
    const/4 v4, 0x0

    #@9
    new-array v4, v4, [Ljava/lang/String;

    #@b
    invoke-direct {v3, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    #@e
    iget-object v4, p0, Lcom/apportable/verde/DebuggerSupport$1;->val$path:Ljava/lang/String;

    #@10
    new-instance v5, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string v6, "tcp:"

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    iget v6, p0, Lcom/apportable/verde/DebuggerSupport$1;->val$port:I

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    new-instance v6, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const/4 v7, 0x4

    #@2b
    new-array v7, v7, [Ljava/lang/String;

    #@2d
    const/4 v8, 0x0

    #@2e
    aput-object v4, v7, v8

    #@30
    const/4 v4, 0x1

    #@31
    aput-object v5, v7, v4

    #@33
    const/4 v4, 0x2

    #@34
    const-string v5, "--attach"

    #@36
    aput-object v5, v7, v4

    #@38
    const/4 v4, 0x3

    #@39
    const-string v5, ""

    #@3b
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    aput-object v5, v7, v4

    #@49
    invoke-virtual {v3, v7}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    #@4c
    move-result-object v3

    #@4d
    const/4 v4, 0x1

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    #@55
    move-result-object v3

    #@56
    # setter for: Lcom/apportable/verde/DebuggerSupport;->mGDBProcess:Ljava/lang/Process;
    invoke-static {v3}, Lcom/apportable/verde/DebuggerSupport;->access$002(Ljava/lang/Process;)Ljava/lang/Process;
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_59} :catch_d7
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_59} :catch_10f

    #@59
    :try_start_59
    # getter for: Lcom/apportable/verde/DebuggerSupport;->mGDBProcess:Ljava/lang/Process;
    invoke-static {}, Lcom/apportable/verde/DebuggerSupport;->access$000()Ljava/lang/Process;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    #@60
    move-result v0

    #@61
    new-instance v3, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string v4, "DebuggerSupport"

    #@68
    const-string v5, "gdbserver failed with value "

    #@6a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v3

    #@6e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_59 .. :try_end_79} :catch_b1
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_79} :catch_d7
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_79} :catch_10f

    #@79
    :goto_79
    if-eqz v0, :cond_f6

    #@7b
    :try_start_7b
    # getter for: Lcom/apportable/verde/DebuggerSupport;->mGDBProcess:Ljava/lang/Process;
    invoke-static {}, Lcom/apportable/verde/DebuggerSupport;->access$000()Ljava/lang/Process;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    #@82
    move-result-object v3

    #@83
    # getter for: Lcom/apportable/verde/DebuggerSupport;->mGDBProcess:Ljava/lang/Process;
    invoke-static {}, Lcom/apportable/verde/DebuggerSupport;->access$000()Ljava/lang/Process;

    #@86
    move-result-object v0

    #@87
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    #@8a
    move-result v0

    #@8b
    const/16 v2, 0x400

    #@8d
    new-array v4, v2, [B
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_8f} :catch_d7
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_8f} :catch_10f

    #@8f
    const-string v2, ""

    #@91
    :goto_91
    const/4 v5, 0x0

    #@92
    :try_start_92
    array-length v6, v4

    #@93
    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    #@96
    move-result v5

    #@97
    if-lez v5, :cond_e0

    #@99
    new-instance v6, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    new-instance v6, Ljava/lang/String;

    #@a4
    const/4 v7, 0x0

    #@a5
    invoke-direct {v6, v4, v7, v5}, Ljava/lang/String;-><init>([BII)V

    #@a8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v2

    #@ac
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v2

    #@b0
    goto :goto_91

    #@b1
    :catch_b1
    move-exception v3

    #@b2
    new-instance v3, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string v4, "DebuggerSupport"

    #@b9
    const-string v5, "Started gdbserver on port "

    #@bb
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v3

    #@bf
    iget v5, p0, Lcom/apportable/verde/DebuggerSupport$1;->val$port:I

    #@c1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v3

    #@c5
    const-string v5, " attached to pid "

    #@c7
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v3

    #@cb
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v2

    #@cf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v2

    #@d3
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_d6} :catch_d7
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_d6} :catch_10f

    #@d6
    goto :goto_79

    #@d7
    :catch_d7
    move-exception v0

    #@d8
    const-string v0, "DebuggerSupport"

    #@da
    const-string v1, "IOException failed to start/run gdbserver"

    #@dc
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@df
    :goto_df
    return-void

    #@e0
    :cond_e0
    :try_start_e0
    const-string v4, "\\n"

    #@e2
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@e5
    move-result-object v2

    #@e6
    array-length v4, v2

    #@e7
    :goto_e7
    if-ge v1, v4, :cond_f3

    #@e9
    const-string v5, "DebuggerSupport"

    #@eb
    aget-object v6, v2, v1

    #@ed
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f0
    add-int/lit8 v1, v1, 0x1

    #@f2
    goto :goto_e7

    #@f3
    :cond_f3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    #@f6
    :cond_f6
    new-instance v1, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string v2, "DebuggerSupport"

    #@fd
    const-string v3, "gdb server exited with code "

    #@ff
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v1

    #@103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@106
    move-result-object v0

    #@107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v0

    #@10b
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_10e} :catch_d7
    .catch Ljava/lang/InterruptedException; {:try_start_e0 .. :try_end_10e} :catch_10f

    #@10e
    goto :goto_df

    #@10f
    :catch_10f
    move-exception v0

    #@110
    const-string v0, "DebuggerSupport"

    #@112
    const-string v1, "gdbserver output was interrupted"

    #@114
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@117
    goto :goto_df
.end method
