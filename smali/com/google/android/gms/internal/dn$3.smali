.class Lcom/google/android/gms/internal/dn$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dn;->e(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pG:Lcom/google/android/gms/internal/dn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dn;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/dn$3;->pG:Lcom/google/android/gms/internal/dn;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dn$3;->pG:Lcom/google/android/gms/internal/dn;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/dn;->a(Lcom/google/android/gms/internal/dn;)Ljava/lang/Object;

    #@5
    move-result-object v6

    #@6
    monitor-enter v6

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/dn$3;->pG:Lcom/google/android/gms/internal/dn;

    #@9
    invoke-static {v0}, Lcom/google/android/gms/internal/dn;->c(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/du;

    #@c
    move-result-object v0

    #@d
    iget v0, v0, Lcom/google/android/gms/internal/du;->errorCode:I

    #@f
    const/4 v1, -0x2

    #@10
    if-eq v0, v1, :cond_14

    #@12
    monitor-exit v6

    #@13
    :goto_13
    return-void

    #@14
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/dn$3;->pG:Lcom/google/android/gms/internal/dn;

    #@16
    invoke-static {v0}, Lcom/google/android/gms/internal/dn;->d(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/ex;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@1d
    move-result-object v0

    #@1e
    iget-object v1, p0, Lcom/google/android/gms/internal/dn$3;->pG:Lcom/google/android/gms/internal/dn;

    #@20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/ey$a;)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/internal/dn$3;->pG:Lcom/google/android/gms/internal/dn;

    #@25
    invoke-static {v0}, Lcom/google/android/gms/internal/dn;->c(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/du;

    #@28
    move-result-object v0

    #@29
    iget v0, v0, Lcom/google/android/gms/internal/du;->errorCode:I

    #@2b
    const/4 v1, -0x3

    #@2c
    if-ne v0, v1, :cond_62

    #@2e
    new-instance v0, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string v1, "Loading URL in WebView: "

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    iget-object v1, p0, Lcom/google/android/gms/internal/dn$3;->pG:Lcom/google/android/gms/internal/dn;

    #@3b
    invoke-static {v1}, Lcom/google/android/gms/internal/dn;->c(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/du;

    #@3e
    move-result-object v1

    #@3f
    iget-object v1, v1, Lcom/google/android/gms/internal/du;->oA:Ljava/lang/String;

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@4c
    iget-object v0, p0, Lcom/google/android/gms/internal/dn$3;->pG:Lcom/google/android/gms/internal/dn;

    #@4e
    invoke-static {v0}, Lcom/google/android/gms/internal/dn;->d(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/ex;

    #@51
    move-result-object v0

    #@52
    iget-object v1, p0, Lcom/google/android/gms/internal/dn$3;->pG:Lcom/google/android/gms/internal/dn;

    #@54
    invoke-static {v1}, Lcom/google/android/gms/internal/dn;->c(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/du;

    #@57
    move-result-object v1

    #@58
    iget-object v1, v1, Lcom/google/android/gms/internal/du;->oA:Ljava/lang/String;

    #@5a
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ex;->loadUrl(Ljava/lang/String;)V

    #@5d
    :goto_5d
    monitor-exit v6

    #@5e
    goto :goto_13

    #@5f
    :catchall_5f
    move-exception v0

    #@60
    monitor-exit v6
    :try_end_61
    .catchall {:try_start_7 .. :try_end_61} :catchall_5f

    #@61
    throw v0

    #@62
    :cond_62
    :try_start_62
    const-string v0, "Loading HTML in WebView."

    #@64
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@67
    iget-object v0, p0, Lcom/google/android/gms/internal/dn$3;->pG:Lcom/google/android/gms/internal/dn;

    #@69
    invoke-static {v0}, Lcom/google/android/gms/internal/dn;->d(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/ex;

    #@6c
    move-result-object v0

    #@6d
    iget-object v1, p0, Lcom/google/android/gms/internal/dn$3;->pG:Lcom/google/android/gms/internal/dn;

    #@6f
    invoke-static {v1}, Lcom/google/android/gms/internal/dn;->c(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/du;

    #@72
    move-result-object v1

    #@73
    iget-object v1, v1, Lcom/google/android/gms/internal/du;->oA:Ljava/lang/String;

    #@75
    invoke-static {v1}, Lcom/google/android/gms/internal/eo;->v(Ljava/lang/String;)Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    iget-object v2, p0, Lcom/google/android/gms/internal/dn$3;->pG:Lcom/google/android/gms/internal/dn;

    #@7b
    invoke-static {v2}, Lcom/google/android/gms/internal/dn;->c(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/du;

    #@7e
    move-result-object v2

    #@7f
    iget-object v2, v2, Lcom/google/android/gms/internal/du;->qe:Ljava/lang/String;

    #@81
    const-string v3, "text/html"

    #@83
    const-string v4, "UTF-8"

    #@85
    const/4 v5, 0x0

    #@86
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ex;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_62 .. :try_end_89} :catchall_5f

    #@89
    goto :goto_5d
.end method
