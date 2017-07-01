.class Lcom/google/android/gms/internal/bp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bp;->b(JJ)Lcom/google/android/gms/internal/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nJ:Lcom/google/android/gms/internal/bo;

.field final synthetic nK:Lcom/google/android/gms/internal/bp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bo;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/bp$1;->nK:Lcom/google/android/gms/internal/bp;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/bp$1;->nJ:Lcom/google/android/gms/internal/bo;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp$1;->nK:Lcom/google/android/gms/internal/bp;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/bp;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/bp$1;->nK:Lcom/google/android/gms/internal/bp;

    #@9
    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->b(Lcom/google/android/gms/internal/bp;)I

    #@c
    move-result v0

    #@d
    const/4 v2, -0x2

    #@e
    if-eq v0, v2, :cond_12

    #@10
    monitor-exit v1

    #@11
    :goto_11
    return-void

    #@12
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/bp$1;->nK:Lcom/google/android/gms/internal/bp;

    #@14
    iget-object v2, p0, Lcom/google/android/gms/internal/bp$1;->nK:Lcom/google/android/gms/internal/bp;

    #@16
    invoke-static {v2}, Lcom/google/android/gms/internal/bp;->c(Lcom/google/android/gms/internal/bp;)Lcom/google/android/gms/internal/bu;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bu;)Lcom/google/android/gms/internal/bu;

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/internal/bp$1;->nK:Lcom/google/android/gms/internal/bp;

    #@1f
    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->d(Lcom/google/android/gms/internal/bp;)Lcom/google/android/gms/internal/bu;

    #@22
    move-result-object v0

    #@23
    if-nez v0, :cond_30

    #@25
    iget-object v0, p0, Lcom/google/android/gms/internal/bp$1;->nK:Lcom/google/android/gms/internal/bp;

    #@27
    const/4 v2, 0x4

    #@28
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/bp;->g(I)V

    #@2b
    monitor-exit v1

    #@2c
    goto :goto_11

    #@2d
    :catchall_2d
    move-exception v0

    #@2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    #@2f
    throw v0

    #@30
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/android/gms/internal/bp$1;->nJ:Lcom/google/android/gms/internal/bo;

    #@32
    iget-object v2, p0, Lcom/google/android/gms/internal/bp$1;->nK:Lcom/google/android/gms/internal/bp;

    #@34
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/bo;->a(Lcom/google/android/gms/internal/bq$a;)V

    #@37
    iget-object v0, p0, Lcom/google/android/gms/internal/bp$1;->nK:Lcom/google/android/gms/internal/bp;

    #@39
    iget-object v2, p0, Lcom/google/android/gms/internal/bp$1;->nJ:Lcom/google/android/gms/internal/bo;

    #@3b
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bo;)V

    #@3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_2d

    #@3f
    goto :goto_11
.end method
