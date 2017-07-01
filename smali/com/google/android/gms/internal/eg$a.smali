.class final Lcom/google/android/gms/internal/eg$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private rN:J

.field private rO:J


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    const-wide/16 v0, -0x1

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-wide v0, p0, Lcom/google/android/gms/internal/eg$a;->rN:J

    #@7
    iput-wide v0, p0, Lcom/google/android/gms/internal/eg$a;->rO:J

    #@9
    return-void
.end method


# virtual methods
.method public bE()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/internal/eg$a;->rO:J

    #@2
    return-wide v0
.end method

.method public bF()V
    .registers 3

    #@0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/google/android/gms/internal/eg$a;->rO:J

    #@6
    return-void
.end method

.method public bG()V
    .registers 3

    #@0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/google/android/gms/internal/eg$a;->rN:J

    #@6
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 5

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "topen"

    #@7
    iget-wide v2, p0, Lcom/google/android/gms/internal/eg$a;->rN:J

    #@9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@c
    const-string v1, "tclose"

    #@e
    iget-wide v2, p0, Lcom/google/android/gms/internal/eg$a;->rO:J

    #@10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@13
    return-object v0
.end method
