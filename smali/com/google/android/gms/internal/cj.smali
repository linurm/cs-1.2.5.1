.class public final Lcom/google/android/gms/internal/cj;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cj$a;
    }
.end annotation


# instance fields
.field private final lN:Lcom/google/android/gms/internal/ex;

.field private final oI:Landroid/widget/MediaController;

.field private final oJ:Lcom/google/android/gms/internal/cj$a;

.field private final oK:Landroid/widget/VideoView;

.field private oL:J

.field private oM:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ex;)V
    .registers 6

    #@0
    const/4 v2, -0x1

    #@1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@4
    iput-object p2, p0, Lcom/google/android/gms/internal/cj;->lN:Lcom/google/android/gms/internal/ex;

    #@6
    new-instance v0, Landroid/widget/VideoView;

    #@8
    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/internal/cj;->oK:Landroid/widget/VideoView;

    #@d
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@f
    const/16 v1, 0x11

    #@11
    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@14
    iget-object v1, p0, Lcom/google/android/gms/internal/cj;->oK:Landroid/widget/VideoView;

    #@16
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/cj;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@19
    new-instance v0, Landroid/widget/MediaController;

    #@1b
    invoke-direct {v0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    #@1e
    iput-object v0, p0, Lcom/google/android/gms/internal/cj;->oI:Landroid/widget/MediaController;

    #@20
    new-instance v0, Lcom/google/android/gms/internal/cj$a;

    #@22
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cj$a;-><init>(Lcom/google/android/gms/internal/cj;)V

    #@25
    iput-object v0, p0, Lcom/google/android/gms/internal/cj;->oJ:Lcom/google/android/gms/internal/cj$a;

    #@27
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oJ:Lcom/google/android/gms/internal/cj$a;

    #@29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cj$a;->bc()V

    #@2c
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oK:Landroid/widget/VideoView;

    #@2e
    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    #@31
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oK:Landroid/widget/VideoView;

    #@33
    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    #@36
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oK:Landroid/widget/VideoView;

    #@38
    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    #@3b
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ex;Ljava/lang/String;)V
    .registers 4

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@6
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/cj;->a(Lcom/google/android/gms/internal/ex;Ljava/lang/String;Ljava/util/Map;)V

    #@9
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ex;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    #@0
    if-nez p2, :cond_1e

    #@2
    const/4 v0, 0x1

    #@3
    move v1, v0

    #@4
    :goto_4
    if-eqz v1, :cond_21

    #@6
    const/4 v0, 0x2

    #@7
    :goto_7
    new-instance v2, Ljava/util/HashMap;

    #@9
    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    #@c
    const-string v0, "what"

    #@e
    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    if-nez v1, :cond_18

    #@13
    const-string v0, "extra"

    #@15
    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    :cond_18
    const-string v0, "error"

    #@1a
    invoke-static {p0, v0, v2}, Lcom/google/android/gms/internal/cj;->a(Lcom/google/android/gms/internal/ex;Ljava/lang/String;Ljava/util/Map;)V

    #@1d
    return-void

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    move v1, v0

    #@20
    goto :goto_4

    #@21
    :cond_21
    const/4 v0, 0x3

    #@22
    goto :goto_7
.end method

.method private static a(Lcom/google/android/gms/internal/ex;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@6
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/cj;->a(Lcom/google/android/gms/internal/ex;Ljava/lang/String;Ljava/util/Map;)V

    #@c
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ex;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ex;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "event"

    #@2
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    const-string v0, "onVideoEvent"

    #@7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ex;->a(Ljava/lang/String;Ljava/util/Map;)V

    #@a
    return-void
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oK:Landroid/widget/VideoView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@5
    return-void
.end method

.method public ba()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oM:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_10

    #@8
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oK:Landroid/widget/VideoView;

    #@a
    iget-object v1, p0, Lcom/google/android/gms/internal/cj;->oM:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->lN:Lcom/google/android/gms/internal/ex;

    #@12
    const-string v1, "no_src"

    #@14
    const/4 v2, 0x0

    #@15
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/cj;->a(Lcom/google/android/gms/internal/ex;Ljava/lang/String;Ljava/lang/String;)V

    #@18
    goto :goto_f
.end method

.method public bb()V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oK:Landroid/widget/VideoView;

    #@2
    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    #@5
    move-result v0

    #@6
    int-to-long v0, v0

    #@7
    iget-wide v2, p0, Lcom/google/android/gms/internal/cj;->oL:J

    #@9
    cmp-long v2, v2, v0

    #@b
    if-eqz v2, :cond_20

    #@d
    long-to-float v2, v0

    #@e
    const/high16 v3, 0x447a0000    # 1000.0f

    #@10
    div-float/2addr v2, v3

    #@11
    iget-object v3, p0, Lcom/google/android/gms/internal/cj;->lN:Lcom/google/android/gms/internal/ex;

    #@13
    const-string v4, "timeupdate"

    #@15
    const-string v5, "time"

    #@17
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v3, v4, v5, v2}, Lcom/google/android/gms/internal/cj;->a(Lcom/google/android/gms/internal/ex;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    iput-wide v0, p0, Lcom/google/android/gms/internal/cj;->oL:J

    #@20
    :cond_20
    return-void
.end method

.method public destroy()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oJ:Lcom/google/android/gms/internal/cj$a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cj$a;->cancel()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oK:Landroid/widget/VideoView;

    #@7
    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    #@a
    return-void
.end method

.method public l(Z)V
    .registers 4

    #@0
    if-eqz p1, :cond_a

    #@2
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oK:Landroid/widget/VideoView;

    #@4
    iget-object v1, p0, Lcom/google/android/gms/internal/cj;->oI:Landroid/widget/MediaController;

    #@6
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oI:Landroid/widget/MediaController;

    #@c
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oK:Landroid/widget/VideoView;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    #@15
    goto :goto_9
.end method

.method public o(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/cj;->oM:Ljava/lang/String;

    #@2
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    const-string v1, "ended"

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cj;->a(Lcom/google/android/gms/internal/ex;Ljava/lang/String;)V

    #@7
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/cj;->a(Lcom/google/android/gms/internal/ex;Ljava/lang/String;Ljava/lang/String;)V

    #@d
    const/4 v0, 0x1

    #@e
    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oK:Landroid/widget/VideoView;

    #@2
    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    #@5
    move-result v0

    #@6
    int-to-float v0, v0

    #@7
    const/high16 v1, 0x447a0000    # 1000.0f

    #@9
    div-float/2addr v0, v1

    #@a
    iget-object v1, p0, Lcom/google/android/gms/internal/cj;->lN:Lcom/google/android/gms/internal/ex;

    #@c
    const-string v2, "canplaythrough"

    #@e
    const-string v3, "duration"

    #@10
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/cj;->a(Lcom/google/android/gms/internal/ex;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@17
    return-void
.end method

.method public pause()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oK:Landroid/widget/VideoView;

    #@2
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    #@5
    return-void
.end method

.method public play()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oK:Landroid/widget/VideoView;

    #@2
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    #@5
    return-void
.end method

.method public seekTo(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->oK:Landroid/widget/VideoView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    #@5
    return-void
.end method
