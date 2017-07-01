.class public final Lcom/google/android/gms/internal/do$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final pQ:Landroid/webkit/WebView;

.field private pR:Landroid/graphics/Bitmap;

.field final synthetic pS:Lcom/google/android/gms/internal/do;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/do;Landroid/webkit/WebView;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/do$a;->pQ:Landroid/webkit/WebView;

    #@7
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    monitor-enter p0

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/do$a;->pR:Landroid/graphics/Bitmap;

    #@4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@7
    move-result v4

    #@8
    iget-object v0, p0, Lcom/google/android/gms/internal/do$a;->pR:Landroid/graphics/Bitmap;

    #@a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_49

    #@d
    move-result v5

    #@e
    if-eqz v4, :cond_12

    #@10
    if-nez v5, :cond_18

    #@12
    :cond_12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@15
    move-result-object v0

    #@16
    :goto_16
    monitor-exit p0

    #@17
    return-object v0

    #@18
    :cond_18
    move v0, v1

    #@19
    move v3, v1

    #@1a
    :goto_1a
    if-ge v3, v4, :cond_30

    #@1c
    move v2, v1

    #@1d
    :goto_1d
    if-ge v2, v5, :cond_2c

    #@1f
    :try_start_1f
    iget-object v6, p0, Lcom/google/android/gms/internal/do$a;->pR:Landroid/graphics/Bitmap;

    #@21
    invoke-virtual {v6, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_49

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_29

    #@27
    add-int/lit8 v0, v0, 0x1

    #@29
    :cond_29
    add-int/lit8 v2, v2, 0xa

    #@2b
    goto :goto_1d

    #@2c
    :cond_2c
    add-int/lit8 v2, v3, 0xa

    #@2e
    move v3, v2

    #@2f
    goto :goto_1a

    #@30
    :cond_30
    int-to-double v2, v0

    #@31
    mul-int v0, v4, v5

    #@33
    int-to-double v4, v0

    #@34
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    #@36
    div-double/2addr v4, v6

    #@37
    div-double/2addr v2, v4

    #@38
    const-wide v4, 0x3fb999999999999aL    # 0.1

    #@3d
    cmpl-double v0, v2, v4

    #@3f
    if-lez v0, :cond_47

    #@41
    const/4 v0, 0x1

    #@42
    :goto_42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@45
    move-result-object v0

    #@46
    goto :goto_16

    #@47
    :cond_47
    move v0, v1

    #@48
    goto :goto_42

    #@49
    :catchall_49
    move-exception v0

    #@4a
    monitor-exit p0

    #@4b
    throw v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 6

    #@0
    const-wide/16 v2, 0x0

    #@2
    iget-object v0, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@4
    invoke-static {v0}, Lcom/google/android/gms/internal/do;->c(Lcom/google/android/gms/internal/do;)J

    #@7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1f

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/do;->bq()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1f

    #@15
    iget-object v0, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@17
    invoke-static {v0}, Lcom/google/android/gms/internal/do;->d(Lcom/google/android/gms/internal/do;)J

    #@1a
    move-result-wide v0

    #@1b
    cmp-long v0, v0, v2

    #@1d
    if-gtz v0, :cond_35

    #@1f
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@21
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@24
    move-result v1

    #@25
    iput-boolean v1, v0, Lcom/google/android/gms/internal/do;->pP:Z

    #@27
    iget-object v0, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@29
    invoke-static {v0}, Lcom/google/android/gms/internal/do;->e(Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/ey$a;

    #@2c
    move-result-object v0

    #@2d
    iget-object v1, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@2f
    iget-object v1, v1, Lcom/google/android/gms/internal/do;->lN:Lcom/google/android/gms/internal/ex;

    #@31
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ey$a;->a(Lcom/google/android/gms/internal/ex;)V

    #@34
    :cond_34
    :goto_34
    return-void

    #@35
    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@37
    invoke-static {v0}, Lcom/google/android/gms/internal/do;->d(Lcom/google/android/gms/internal/do;)J

    #@3a
    move-result-wide v0

    #@3b
    cmp-long v0, v0, v2

    #@3d
    if-lez v0, :cond_34

    #@3f
    const/4 v0, 0x2

    #@40
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->p(I)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_4b

    #@46
    const-string v0, "Ad not detected, scheduling another run."

    #@48
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@4b
    :cond_4b
    iget-object v0, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@4d
    invoke-static {v0}, Lcom/google/android/gms/internal/do;->g(Lcom/google/android/gms/internal/do;)Landroid/os/Handler;

    #@50
    move-result-object v0

    #@51
    iget-object v1, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@53
    iget-object v2, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@55
    invoke-static {v2}, Lcom/google/android/gms/internal/do;->f(Lcom/google/android/gms/internal/do;)J

    #@58
    move-result-wide v2

    #@59
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@5c
    goto :goto_34
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    check-cast p1, [Ljava/lang/Void;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/do$a;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Ljava/lang/Boolean;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/do$a;->a(Ljava/lang/Boolean;)V

    #@5
    return-void
.end method

.method protected onPreExecute()V
    .registers 6

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@3
    invoke-static {v0}, Lcom/google/android/gms/internal/do;->a(Lcom/google/android/gms/internal/do;)I

    #@6
    move-result v0

    #@7
    iget-object v1, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@9
    invoke-static {v1}, Lcom/google/android/gms/internal/do;->b(Lcom/google/android/gms/internal/do;)I

    #@c
    move-result v1

    #@d
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@f
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/google/android/gms/internal/do$a;->pR:Landroid/graphics/Bitmap;

    #@15
    iget-object v0, p0, Lcom/google/android/gms/internal/do$a;->pQ:Landroid/webkit/WebView;

    #@17
    const/4 v1, 0x0

    #@18
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    #@1b
    iget-object v0, p0, Lcom/google/android/gms/internal/do$a;->pQ:Landroid/webkit/WebView;

    #@1d
    iget-object v1, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@1f
    invoke-static {v1}, Lcom/google/android/gms/internal/do;->a(Lcom/google/android/gms/internal/do;)I

    #@22
    move-result v1

    #@23
    const/4 v2, 0x0

    #@24
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@27
    move-result v1

    #@28
    iget-object v2, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@2a
    invoke-static {v2}, Lcom/google/android/gms/internal/do;->b(Lcom/google/android/gms/internal/do;)I

    #@2d
    move-result v2

    #@2e
    const/4 v3, 0x0

    #@2f
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@32
    move-result v2

    #@33
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->measure(II)V

    #@36
    iget-object v0, p0, Lcom/google/android/gms/internal/do$a;->pQ:Landroid/webkit/WebView;

    #@38
    const/4 v1, 0x0

    #@39
    const/4 v2, 0x0

    #@3a
    iget-object v3, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@3c
    invoke-static {v3}, Lcom/google/android/gms/internal/do;->a(Lcom/google/android/gms/internal/do;)I

    #@3f
    move-result v3

    #@40
    iget-object v4, p0, Lcom/google/android/gms/internal/do$a;->pS:Lcom/google/android/gms/internal/do;

    #@42
    invoke-static {v4}, Lcom/google/android/gms/internal/do;->b(Lcom/google/android/gms/internal/do;)I

    #@45
    move-result v4

    #@46
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->layout(IIII)V

    #@49
    new-instance v0, Landroid/graphics/Canvas;

    #@4b
    iget-object v1, p0, Lcom/google/android/gms/internal/do$a;->pR:Landroid/graphics/Bitmap;

    #@4d
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@50
    iget-object v1, p0, Lcom/google/android/gms/internal/do$a;->pQ:Landroid/webkit/WebView;

    #@52
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    #@55
    iget-object v0, p0, Lcom/google/android/gms/internal/do$a;->pQ:Landroid/webkit/WebView;

    #@57
    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5c

    #@5a
    monitor-exit p0

    #@5b
    return-void

    #@5c
    :catchall_5c
    move-exception v0

    #@5d
    monitor-exit p0

    #@5e
    throw v0
.end method
