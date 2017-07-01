.class Lcom/google/android/gms/analytics/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/Logger;


# instance fields
.field private tN:I


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/analytics/l;->tN:I

    #@6
    return-void
.end method

.method private L(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, ": "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/analytics/l;->tN:I

    #@2
    const/4 v1, 0x3

    #@3
    if-gt v0, v1, :cond_b

    #@5
    const-string v0, "GAV4"

    #@7
    const/4 v1, 0x0

    #@8
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b
    :cond_b
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/analytics/l;->tN:I

    #@2
    const/4 v1, 0x3

    #@3
    if-gt v0, v1, :cond_e

    #@5
    const-string v0, "GAV4"

    #@7
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/l;->L(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    :cond_e
    return-void
.end method

.method public getLogLevel()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/analytics/l;->tN:I

    #@2
    return v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/analytics/l;->tN:I

    #@2
    const/4 v1, 0x1

    #@3
    if-gt v0, v1, :cond_e

    #@5
    const-string v0, "GAV4"

    #@7
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/l;->L(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    :cond_e
    return-void
.end method

.method public setLogLevel(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/analytics/l;->tN:I

    #@2
    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/analytics/l;->tN:I

    #@2
    if-gtz v0, :cond_d

    #@4
    const-string v0, "GAV4"

    #@6
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/l;->L(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    :cond_d
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/analytics/l;->tN:I

    #@2
    const/4 v1, 0x2

    #@3
    if-gt v0, v1, :cond_e

    #@5
    const-string v0, "GAV4"

    #@7
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/l;->L(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    :cond_e
    return-void
.end method
