.class final Lcom/google/android/gms/internal/bb$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ex;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ex;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "u"

    #@2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    if-nez v0, :cond_10

    #@a
    const-string v0, "URL missing from click GMSG."

    #@c
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v1

    #@14
    :try_start_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->cc()Lcom/google/android/gms/internal/k;

    #@17
    move-result-object v2

    #@18
    if-eqz v2, :cond_56

    #@1a
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/k;->b(Landroid/net/Uri;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_56

    #@20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/k;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_27
    .catch Lcom/google/android/gms/internal/l; {:try_start_14 .. :try_end_27} :catch_3f

    #@27
    move-result-object v0

    #@28
    :goto_28
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    new-instance v1, Lcom/google/android/gms/internal/es;

    #@2e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->cd()Lcom/google/android/gms/internal/ev;

    #@35
    move-result-object v3

    #@36
    iget-object v3, v3, Lcom/google/android/gms/internal/ev;->sw:Ljava/lang/String;

    #@38
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/es;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/es;->start()V

    #@3e
    goto :goto_f

    #@3f
    :catch_3f
    move-exception v2

    #@40
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string v3, "Unable to append parameter to URL: "

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@56
    :cond_56
    move-object v0, v1

    #@57
    goto :goto_28
.end method
