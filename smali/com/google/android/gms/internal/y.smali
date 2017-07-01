.class public final Lcom/google/android/gms/internal/y;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/y$a;
    }
.end annotation


# instance fields
.field private final lf:Lcom/google/android/gms/internal/y$a;

.field private final lg:Ljava/lang/Runnable;

.field private lh:Lcom/google/android/gms/internal/ai;

.field private li:Z

.field private lj:Z

.field private lk:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/u;)V
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/internal/y$a;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/y$a;-><init>(Landroid/os/Handler;)V

    #@7
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/y;-><init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/y$a;)V

    #@a
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/y$a;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/y;->li:Z

    #@6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/y;->lj:Z

    #@8
    const-wide/16 v0, 0x0

    #@a
    iput-wide v0, p0, Lcom/google/android/gms/internal/y;->lk:J

    #@c
    iput-object p2, p0, Lcom/google/android/gms/internal/y;->lf:Lcom/google/android/gms/internal/y$a;

    #@e
    new-instance v0, Lcom/google/android/gms/internal/y$1;

    #@10
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/y$1;-><init>(Lcom/google/android/gms/internal/y;Lcom/google/android/gms/internal/u;)V

    #@13
    iput-object v0, p0, Lcom/google/android/gms/internal/y;->lg:Ljava/lang/Runnable;

    #@15
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/y;)Lcom/google/android/gms/internal/ai;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/y;->lh:Lcom/google/android/gms/internal/ai;

    #@2
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/y;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/y;->li:Z

    #@2
    return p1
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ai;J)V
    .registers 6

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/y;->li:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    const-string v0, "An ad refresh is already scheduled."

    #@6
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@9
    :cond_9
    :goto_9
    return-void

    #@a
    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/internal/y;->lh:Lcom/google/android/gms/internal/ai;

    #@c
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lcom/google/android/gms/internal/y;->li:Z

    #@f
    iput-wide p2, p0, Lcom/google/android/gms/internal/y;->lk:J

    #@11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/y;->lj:Z

    #@13
    if-nez v0, :cond_9

    #@15
    new-instance v0, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v1, "Scheduling ad refresh "

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    const-string v1, " milliseconds from now."

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@31
    iget-object v0, p0, Lcom/google/android/gms/internal/y;->lf:Lcom/google/android/gms/internal/y$a;

    #@33
    iget-object v1, p0, Lcom/google/android/gms/internal/y;->lg:Ljava/lang/Runnable;

    #@35
    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/internal/y$a;->postDelayed(Ljava/lang/Runnable;J)Z

    #@38
    goto :goto_9
.end method

.method public cancel()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/y;->li:Z

    #@3
    iget-object v0, p0, Lcom/google/android/gms/internal/y;->lf:Lcom/google/android/gms/internal/y$a;

    #@5
    iget-object v1, p0, Lcom/google/android/gms/internal/y;->lg:Ljava/lang/Runnable;

    #@7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/y$a;->removeCallbacks(Ljava/lang/Runnable;)V

    #@a
    return-void
.end method

.method public d(Lcom/google/android/gms/internal/ai;)V
    .registers 4

    #@0
    const-wide/32 v0, 0xea60

    #@3
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/ai;J)V

    #@6
    return-void
.end method

.method public pause()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/y;->lj:Z

    #@3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/y;->li:Z

    #@5
    if-eqz v0, :cond_e

    #@7
    iget-object v0, p0, Lcom/google/android/gms/internal/y;->lf:Lcom/google/android/gms/internal/y$a;

    #@9
    iget-object v1, p0, Lcom/google/android/gms/internal/y;->lg:Ljava/lang/Runnable;

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/y$a;->removeCallbacks(Ljava/lang/Runnable;)V

    #@e
    :cond_e
    return-void
.end method

.method public resume()V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/y;->lj:Z

    #@3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/y;->li:Z

    #@5
    if-eqz v0, :cond_10

    #@7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/y;->li:Z

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/y;->lh:Lcom/google/android/gms/internal/ai;

    #@b
    iget-wide v2, p0, Lcom/google/android/gms/internal/y;->lk:J

    #@d
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/ai;J)V

    #@10
    :cond_10
    return-void
.end method
