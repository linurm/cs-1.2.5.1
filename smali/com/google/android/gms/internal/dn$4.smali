.class Lcom/google/android/gms/internal/dn$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dn;->f(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pG:Lcom/google/android/gms/internal/dn;

.field final synthetic pI:Lcom/google/android/gms/internal/do;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/do;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/dn$4;->pG:Lcom/google/android/gms/internal/dn;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/dn$4;->pI:Lcom/google/android/gms/internal/do;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dn$4;->pG:Lcom/google/android/gms/internal/dn;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/dn;->a(Lcom/google/android/gms/internal/dn;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/dn$4;->pG:Lcom/google/android/gms/internal/dn;

    #@9
    invoke-static {v0}, Lcom/google/android/gms/internal/dn;->c(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/du;

    #@c
    move-result-object v0

    #@d
    iget v0, v0, Lcom/google/android/gms/internal/du;->errorCode:I

    #@f
    const/4 v2, -0x2

    #@10
    if-eq v0, v2, :cond_14

    #@12
    monitor-exit v1

    #@13
    :goto_13
    return-void

    #@14
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/dn$4;->pG:Lcom/google/android/gms/internal/dn;

    #@16
    invoke-static {v0}, Lcom/google/android/gms/internal/dn;->d(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/ex;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@1d
    move-result-object v0

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/internal/dn$4;->pG:Lcom/google/android/gms/internal/dn;

    #@20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/ey$a;)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/internal/dn$4;->pI:Lcom/google/android/gms/internal/do;

    #@25
    iget-object v2, p0, Lcom/google/android/gms/internal/dn$4;->pG:Lcom/google/android/gms/internal/dn;

    #@27
    invoke-static {v2}, Lcom/google/android/gms/internal/dn;->c(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/du;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/do;->b(Lcom/google/android/gms/internal/du;)V

    #@2e
    monitor-exit v1

    #@2f
    goto :goto_13

    #@30
    :catchall_30
    move-exception v0

    #@31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_30

    #@32
    throw v0
.end method
