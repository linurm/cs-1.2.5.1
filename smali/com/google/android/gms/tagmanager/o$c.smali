.class Lcom/google/android/gms/tagmanager/o$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/bg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/bg",
        "<",
        "Lcom/google/android/gms/internal/c$j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aeS:Lcom/google/android/gms/tagmanager/o;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/o;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/o$c;-><init>(Lcom/google/android/gms/tagmanager/o;)V

    #@3
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/bg$a;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/o;->f(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/tagmanager/n;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_1c

    #@8
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@a
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@c
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/o;->f(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/tagmanager/n;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/o;->b(Lcom/google/android/gms/common/api/Result;)V

    #@13
    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@15
    const-wide/32 v2, 0x36ee80

    #@18
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;J)V

    #@1b
    return-void

    #@1c
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@1e
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@20
    sget-object v2, Lcom/google/android/gms/common/api/Status;->Eq:Lcom/google/android/gms/common/api/Status;

    #@22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tagmanager/o;->ap(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/o;->b(Lcom/google/android/gms/common/api/Result;)V

    #@29
    goto :goto_13
.end method

.method public b(Lcom/google/android/gms/internal/c$j;)V
    .registers 7

    #@0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p1, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@5
    if-nez v0, :cond_2a

    #@7
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@9
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/o;->c(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/internal/c$j;

    #@c
    move-result-object v0

    #@d
    iget-object v0, v0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@f
    if-nez v0, :cond_20

    #@11
    const-string v0, "Current resource is null; network resource is also null"

    #@13
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@18
    const-wide/32 v2, 0x36ee80

    #@1b
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;J)V

    #@1e
    monitor-exit v1

    #@1f
    :goto_1f
    return-void

    #@20
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@22
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/o;->c(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/internal/c$j;

    #@25
    move-result-object v0

    #@26
    iget-object v0, v0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@28
    iput-object v0, p1, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@2a
    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@2c
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@2e
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/internal/ij;

    #@31
    move-result-object v2

    #@32
    invoke-interface {v2}, Lcom/google/android/gms/internal/ij;->currentTimeMillis()J

    #@35
    move-result-wide v2

    #@36
    const/4 v4, 0x0

    #@37
    invoke-static {v0, p1, v2, v3, v4}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/internal/c$j;JZ)V

    #@3a
    new-instance v0, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string v2, "setting refresh time to current time: "

    #@41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@47
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/o;->d(Lcom/google/android/gms/tagmanager/o;)J

    #@4a
    move-result-wide v2

    #@4b
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@56
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@58
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/o;->e(Lcom/google/android/gms/tagmanager/o;)Z

    #@5b
    move-result v0

    #@5c
    if-nez v0, :cond_63

    #@5e
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@60
    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/internal/c$j;)V

    #@63
    :cond_63
    monitor-exit v1

    #@64
    goto :goto_1f

    #@65
    :catchall_65
    move-exception v0

    #@66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_65

    #@67
    throw v0
.end method

.method public synthetic i(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Lcom/google/android/gms/internal/c$j;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/o$c;->b(Lcom/google/android/gms/internal/c$j;)V

    #@5
    return-void
.end method

.method public lv()V
    .registers 1

    #@0
    return-void
.end method
