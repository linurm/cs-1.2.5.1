.class Lcom/google/android/gms/tagmanager/ca$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/da$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic agt:Lcom/google/android/gms/tagmanager/ca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ca;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ca$a;->agt:Lcom/google/android/gms/tagmanager/ca;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/ap;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca$a;->agt:Lcom/google/android/gms/tagmanager/ca;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->dl()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/tagmanager/ca;J)V

    #@9
    return-void
.end method

.method public b(Lcom/google/android/gms/tagmanager/ap;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca$a;->agt:Lcom/google/android/gms/tagmanager/ca;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->dl()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/tagmanager/ca;J)V

    #@9
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string v1, "Permanent failure dispatching hitId: "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->dl()J

    #@17
    move-result-wide v2

    #@18
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@23
    return-void
.end method

.method public c(Lcom/google/android/gms/tagmanager/ap;)V
    .registers 8

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->lN()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v2, v0, v2

    #@8
    if-nez v2, :cond_1e

    #@a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca$a;->agt:Lcom/google/android/gms/tagmanager/ca;

    #@c
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->dl()J

    #@f
    move-result-wide v2

    #@10
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ca$a;->agt:Lcom/google/android/gms/tagmanager/ca;

    #@12
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/tagmanager/ca;)Lcom/google/android/gms/internal/ij;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v1}, Lcom/google/android/gms/internal/ij;->currentTimeMillis()J

    #@19
    move-result-wide v4

    #@1a
    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/tagmanager/ca;JJ)V

    #@1d
    :cond_1d
    :goto_1d
    return-void

    #@1e
    :cond_1e
    const-wide/32 v2, 0xdbba00

    #@21
    add-long/2addr v0, v2

    #@22
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ca$a;->agt:Lcom/google/android/gms/tagmanager/ca;

    #@24
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/tagmanager/ca;)Lcom/google/android/gms/internal/ij;

    #@27
    move-result-object v2

    #@28
    invoke-interface {v2}, Lcom/google/android/gms/internal/ij;->currentTimeMillis()J

    #@2b
    move-result-wide v2

    #@2c
    cmp-long v0, v0, v2

    #@2e
    if-gez v0, :cond_1d

    #@30
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca$a;->agt:Lcom/google/android/gms/tagmanager/ca;

    #@32
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->dl()J

    #@35
    move-result-wide v2

    #@36
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/tagmanager/ca;J)V

    #@39
    new-instance v0, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string v1, "Giving up on failed hitId: "

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->dl()J

    #@47
    move-result-wide v2

    #@48
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@53
    goto :goto_1d
.end method
