.class public Lcom/google/android/gms/internal/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ae;


# instance fields
.field private final lN:Lcom/google/android/gms/internal/ex;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ev;)V
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    new-instance v1, Lcom/google/android/gms/internal/al;

    #@6
    invoke-direct {v1}, Lcom/google/android/gms/internal/al;-><init>()V

    #@9
    const/4 v4, 0x0

    #@a
    move-object v0, p1

    #@b
    move v3, v2

    #@c
    move-object v5, p2

    #@d
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ex;->a(Landroid/content/Context;Lcom/google/android/gms/internal/al;ZZLcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/ev;)Lcom/google/android/gms/internal/ex;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/google/android/gms/internal/af;->lN:Lcom/google/android/gms/internal/ex;

    #@13
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ae$a;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Lcom/google/android/gms/internal/af$1;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/af$1;-><init>(Lcom/google/android/gms/internal/af;Lcom/google/android/gms/internal/ae$a;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/ey$a;)V

    #@e
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@9
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ex;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    #@5
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ex;->loadUrl(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@a
    return-void
.end method

.method public pause()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eo;->a(Landroid/webkit/WebView;)V

    #@5
    return-void
.end method

.method public resume()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eo;->b(Landroid/webkit/WebView;)V

    #@5
    return-void
.end method
