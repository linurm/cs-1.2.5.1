.class public Lcom/google/android/gms/internal/do;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/do$a;
    }
.end annotation


# instance fields
.field private final ku:I

.field private final kv:I

.field protected final lN:Lcom/google/android/gms/internal/ex;

.field private final pK:Landroid/os/Handler;

.field private final pL:J

.field private pM:J

.field private pN:Lcom/google/android/gms/internal/ey$a;

.field protected pO:Z

.field protected pP:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ey$a;Lcom/google/android/gms/internal/ex;II)V
    .registers 15

    #@0
    const-wide/16 v6, 0xc8

    #@2
    const-wide/16 v8, 0x32

    #@4
    move-object v1, p0

    #@5
    move-object v2, p1

    #@6
    move-object v3, p2

    #@7
    move v4, p3

    #@8
    move v5, p4

    #@9
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/do;-><init>(Lcom/google/android/gms/internal/ey$a;Lcom/google/android/gms/internal/ex;IIJJ)V

    #@c
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ey$a;Lcom/google/android/gms/internal/ex;IIJJ)V
    .registers 12

    #@0
    const/4 v2, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-wide p5, p0, Lcom/google/android/gms/internal/do;->pL:J

    #@6
    iput-wide p7, p0, Lcom/google/android/gms/internal/do;->pM:J

    #@8
    new-instance v0, Landroid/os/Handler;

    #@a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@11
    iput-object v0, p0, Lcom/google/android/gms/internal/do;->pK:Landroid/os/Handler;

    #@13
    iput-object p2, p0, Lcom/google/android/gms/internal/do;->lN:Lcom/google/android/gms/internal/ex;

    #@15
    iput-object p1, p0, Lcom/google/android/gms/internal/do;->pN:Lcom/google/android/gms/internal/ey$a;

    #@17
    iput-boolean v2, p0, Lcom/google/android/gms/internal/do;->pO:Z

    #@19
    iput-boolean v2, p0, Lcom/google/android/gms/internal/do;->pP:Z

    #@1b
    iput p4, p0, Lcom/google/android/gms/internal/do;->kv:I

    #@1d
    iput p3, p0, Lcom/google/android/gms/internal/do;->ku:I

    #@1f
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/do;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/do;->ku:I

    #@2
    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/do;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/do;->kv:I

    #@2
    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/do;)J
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/internal/do;->pM:J

    #@2
    const-wide/16 v2, 0x1

    #@4
    sub-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Lcom/google/android/gms/internal/do;->pM:J

    #@7
    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/do;)J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/internal/do;->pM:J

    #@2
    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/ey$a;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/do;->pN:Lcom/google/android/gms/internal/ey$a;

    #@2
    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/do;)J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/internal/do;->pL:J

    #@2
    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/do;)Landroid/os/Handler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/do;->pK:Landroid/os/Handler;

    #@2
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/fc;)V
    .registers 9

    #@0
    const/4 v5, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/do;->lN:Lcom/google/android/gms/internal/ex;

    #@3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ex;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/do;->lN:Lcom/google/android/gms/internal/ex;

    #@8
    iget-object v1, p1, Lcom/google/android/gms/internal/du;->oA:Ljava/lang/String;

    #@a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1b

    #@10
    move-object v1, v5

    #@11
    :goto_11
    iget-object v2, p1, Lcom/google/android/gms/internal/du;->qe:Ljava/lang/String;

    #@13
    const-string v3, "text/html"

    #@15
    const-string v4, "UTF-8"

    #@17
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ex;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    return-void

    #@1b
    :cond_1b
    iget-object v1, p1, Lcom/google/android/gms/internal/du;->oA:Ljava/lang/String;

    #@1d
    invoke-static {v1}, Lcom/google/android/gms/internal/eo;->v(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    goto :goto_11
.end method

.method public b(Lcom/google/android/gms/internal/du;)V
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/internal/fc;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/do;->lN:Lcom/google/android/gms/internal/ex;

    #@4
    iget-object v2, p1, Lcom/google/android/gms/internal/du;->qn:Ljava/lang/String;

    #@6
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/fc;-><init>(Lcom/google/android/gms/internal/do;Lcom/google/android/gms/internal/ex;Ljava/lang/String;)V

    #@9
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/do;->a(Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/fc;)V

    #@c
    return-void
.end method

.method public bo()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/do;->pK:Landroid/os/Handler;

    #@2
    iget-wide v2, p0, Lcom/google/android/gms/internal/do;->pL:J

    #@4
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@7
    return-void
.end method

.method public bp()V
    .registers 2

    #@0
    monitor-enter p0

    #@1
    const/4 v0, 0x1

    #@2
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/do;->pO:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    #@4
    monitor-exit p0

    #@5
    return-void

    #@6
    :catchall_6
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public bq()Z
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/do;->pO:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public br()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/do;->pP:Z

    #@2
    return v0
.end method

.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/do;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    if-eqz v0, :cond_a

    #@4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/do;->bq()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_12

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/do;->pN:Lcom/google/android/gms/internal/ey$a;

    #@c
    iget-object v1, p0, Lcom/google/android/gms/internal/do;->lN:Lcom/google/android/gms/internal/ex;

    #@e
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ey$a;->a(Lcom/google/android/gms/internal/ex;)V

    #@11
    :goto_11
    return-void

    #@12
    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/do$a;

    #@14
    iget-object v1, p0, Lcom/google/android/gms/internal/do;->lN:Lcom/google/android/gms/internal/ex;

    #@16
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/do$a;-><init>(Lcom/google/android/gms/internal/do;Landroid/webkit/WebView;)V

    #@19
    const/4 v1, 0x0

    #@1a
    new-array v1, v1, [Ljava/lang/Void;

    #@1c
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/do$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@1f
    goto :goto_11
.end method
