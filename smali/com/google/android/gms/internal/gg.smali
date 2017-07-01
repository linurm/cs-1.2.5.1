.class public abstract Lcom/google/android/gms/internal/gg;
.super Ljava/lang/Object;


# instance fields
.field protected final BD:Lcom/google/android/gms/internal/gn;

.field private final BE:Ljava/lang/String;

.field private BF:Lcom/google/android/gms/internal/gp;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/gi;->ak(Ljava/lang/String;)V

    #@6
    iput-object p1, p0, Lcom/google/android/gms/internal/gg;->BE:Ljava/lang/String;

    #@8
    new-instance v0, Lcom/google/android/gms/internal/gn;

    #@a
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/gn;-><init>(Ljava/lang/String;)V

    #@d
    iput-object v0, p0, Lcom/google/android/gms/internal/gg;->BD:Lcom/google/android/gms/internal/gn;

    #@f
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1a

    #@15
    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->BD:Lcom/google/android/gms/internal/gn;

    #@17
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/gn;->ap(Ljava/lang/String;)V

    #@1a
    :cond_1a
    return-void
.end method


# virtual methods
.method public a(JI)V
    .registers 4

    #@0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/gp;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/gg;->BF:Lcom/google/android/gms/internal/gp;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->BF:Lcom/google/android/gms/internal/gp;

    #@4
    if-nez v0, :cond_9

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gg;->ee()V

    #@9
    :cond_9
    return-void
.end method

.method protected final a(Ljava/lang/String;JLjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->BD:Lcom/google/android/gms/internal/gn;

    #@2
    const-string v1, "Sending text message: %s to: %s"

    #@4
    const/4 v2, 0x2

    #@5
    new-array v2, v2, [Ljava/lang/Object;

    #@7
    const/4 v3, 0x0

    #@8
    aput-object p1, v2, v3

    #@a
    const/4 v3, 0x1

    #@b
    aput-object p4, v2, v3

    #@d
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gn;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    #@10
    iget-object v1, p0, Lcom/google/android/gms/internal/gg;->BF:Lcom/google/android/gms/internal/gp;

    #@12
    iget-object v2, p0, Lcom/google/android/gms/internal/gg;->BE:Ljava/lang/String;

    #@14
    move-object v3, p1

    #@15
    move-wide v4, p2

    #@16
    move-object v6, p4

    #@17
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/gp;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    #@1a
    return-void
.end method

.method public ai(Ljava/lang/String;)V
    .registers 2

    #@0
    return-void
.end method

.method protected final ed()J
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->BF:Lcom/google/android/gms/internal/gp;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/gp;->eb()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public ee()V
    .registers 1

    #@0
    return-void
.end method

.method public final getNamespace()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->BE:Ljava/lang/String;

    #@2
    return-object v0
.end method
