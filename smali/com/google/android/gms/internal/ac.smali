.class public final Lcom/google/android/gms/internal/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# static fields
.field private static final lG:J


# instance fields
.field private final lA:Lcom/google/android/gms/internal/ae;

.field private lB:Z

.field private final lC:Landroid/view/WindowManager;

.field private final lD:Landroid/os/PowerManager;

.field private final lE:Landroid/app/KeyguardManager;

.field private lF:Lcom/google/android/gms/internal/ad;

.field private lH:Z

.field private lI:J

.field private lJ:Z

.field private lK:Landroid/content/BroadcastReceiver;

.field private lL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/z;",
            ">;"
        }
    .end annotation
.end field

.field private lj:Z

.field private final ls:Ljava/lang/Object;

.field private final lv:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ef;",
            ">;"
        }
    .end annotation
.end field

.field private lw:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final lx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final ly:Lcom/google/android/gms/internal/aa;

.field private final lz:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@2
    const-wide/16 v2, 0x64

    #@4
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@7
    move-result-wide v0

    #@8
    sput-wide v0, Lcom/google/android/gms/internal/ac;->lG:J

    #@a
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ef;)V
    .registers 9

    #@0
    iget-object v0, p2, Lcom/google/android/gms/internal/ef;->oy:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->cd()Lcom/google/android/gms/internal/ev;

    #@5
    move-result-object v3

    #@6
    iget-object v4, p2, Lcom/google/android/gms/internal/ef;->oy:Lcom/google/android/gms/internal/ex;

    #@8
    new-instance v5, Lcom/google/android/gms/internal/af;

    #@a
    iget-object v0, p2, Lcom/google/android/gms/internal/ef;->oy:Lcom/google/android/gms/internal/ex;

    #@c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p2, Lcom/google/android/gms/internal/ef;->oy:Lcom/google/android/gms/internal/ex;

    #@12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ex;->cd()Lcom/google/android/gms/internal/ev;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v5, v0, v1}, Lcom/google/android/gms/internal/af;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ev;)V

    #@19
    move-object v0, p0

    #@1a
    move-object v1, p1

    #@1b
    move-object v2, p2

    #@1c
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ac;-><init>(Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ef;Lcom/google/android/gms/internal/ev;Landroid/view/View;Lcom/google/android/gms/internal/ae;)V

    #@1f
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ef;Lcom/google/android/gms/internal/ev;Landroid/view/View;Lcom/google/android/gms/internal/ae;)V
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/lang/Object;

    #@b
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ac;->lj:Z

    #@d
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ac;->lH:Z

    #@f
    const-wide/high16 v0, -0x8000000000000000L

    #@11
    iput-wide v0, p0, Lcom/google/android/gms/internal/ac;->lI:J

    #@13
    new-instance v0, Ljava/util/HashSet;

    #@15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@18
    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->lL:Ljava/util/HashSet;

    #@1a
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@1c
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1f
    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->lv:Ljava/lang/ref/WeakReference;

    #@21
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@23
    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@26
    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->lx:Ljava/lang/ref/WeakReference;

    #@28
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@2a
    const/4 v1, 0x0

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@2e
    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->lw:Ljava/lang/ref/WeakReference;

    #@30
    const/4 v0, 0x1

    #@31
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ac;->lJ:Z

    #@33
    new-instance v0, Lcom/google/android/gms/internal/aa;

    #@35
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    #@38
    move-result v1

    #@39
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    iget-object v2, p1, Lcom/google/android/gms/internal/al;->me:Ljava/lang/String;

    #@3f
    iget-object v3, p2, Lcom/google/android/gms/internal/ef;->ry:Lorg/json/JSONObject;

    #@41
    invoke-direct {v0, v1, p3, v2, v3}, Lcom/google/android/gms/internal/aa;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ev;Ljava/lang/String;Lorg/json/JSONObject;)V

    #@44
    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->ly:Lcom/google/android/gms/internal/aa;

    #@46
    iput-object p5, p0, Lcom/google/android/gms/internal/ac;->lA:Lcom/google/android/gms/internal/ae;

    #@48
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@4b
    move-result-object v0

    #@4c
    const-string v1, "window"

    #@4e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Landroid/view/WindowManager;

    #@54
    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->lC:Landroid/view/WindowManager;

    #@56
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@5d
    move-result-object v0

    #@5e
    const-string v1, "power"

    #@60
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@63
    move-result-object v0

    #@64
    check-cast v0, Landroid/os/PowerManager;

    #@66
    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->lD:Landroid/os/PowerManager;

    #@68
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@6b
    move-result-object v0

    #@6c
    const-string v1, "keyguard"

    #@6e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@71
    move-result-object v0

    #@72
    check-cast v0, Landroid/app/KeyguardManager;

    #@74
    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->lE:Landroid/app/KeyguardManager;

    #@76
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@7d
    move-result-object v0

    #@7e
    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->lz:Landroid/content/Context;

    #@80
    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ac;->a(Lcom/google/android/gms/internal/ae;)V

    #@83
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lA:Lcom/google/android/gms/internal/ae;

    #@85
    new-instance v1, Lcom/google/android/gms/internal/ac$1;

    #@87
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ac$1;-><init>(Lcom/google/android/gms/internal/ac;)V

    #@8a
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/internal/ae$a;)V

    #@8d
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lA:Lcom/google/android/gms/internal/ae;

    #@8f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ac;->b(Lcom/google/android/gms/internal/ae;)V

    #@92
    new-instance v0, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string v1, "Tracking ad unit: "

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->ly:Lcom/google/android/gms/internal/aa;

    #@9f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/aa;->au()Ljava/lang/String;

    #@a2
    move-result-object v1

    #@a3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v0

    #@a7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v0

    #@ab
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@ae
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ac;)Lcom/google/android/gms/internal/ae;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lA:Lcom/google/android/gms/internal/ae;

    #@2
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ac;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ac;->lB:Z

    #@2
    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ac;)Lcom/google/android/gms/internal/aa;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->ly:Lcom/google/android/gms/internal/aa;

    #@2
    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/util/DisplayMetrics;)I
    .registers 5

    #@0
    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    #@2
    int-to-float v1, p1

    #@3
    div-float v0, v1, v0

    #@5
    float-to-int v0, v0

    #@6
    return v0
.end method

.method public a(Lcom/google/android/gms/internal/ad;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ac;->lF:Lcom/google/android/gms/internal/ad;

    #@5
    monitor-exit v1

    #@6
    return-void

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method protected a(Lcom/google/android/gms/internal/ae;)V
    .registers 3

    #@0
    const-string v0, "http://googleads.g.doubleclick.net/mads/static/sdk/native/sdk-core-v40.html"

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ae;->d(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ex;Ljava/util/Map;)V
    .registers 4
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
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ac;->e(Z)V

    #@4
    return-void
.end method

.method public a(Lcom/google/android/gms/internal/z;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lL:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    new-instance v0, Lorg/json/JSONArray;

    #@2
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@5
    new-instance v1, Lorg/json/JSONObject;

    #@7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    #@a
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@d
    const-string v2, "units"

    #@f
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@12
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lA:Lcom/google/android/gms/internal/ae;

    #@14
    const-string v2, "AFMA_updateActiveView"

    #@16
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ae;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    #@19
    return-void
.end method

.method protected a(Landroid/view/View;Z)Z
    .registers 4

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_20

    #@6
    if-eqz p2, :cond_20

    #@8
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_20

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lD:Landroid/os/PowerManager;

    #@10
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_20

    #@16
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lE:Landroid/app/KeyguardManager;

    #@18
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_20

    #@1e
    const/4 v0, 0x1

    #@1f
    :goto_1f
    return v0

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    goto :goto_1f
.end method

.method protected aA()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lx:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    if-nez v0, :cond_b

    #@a
    :cond_a
    :goto_a
    return-void

    #@b
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->lw:Ljava/lang/ref/WeakReference;

    #@d
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/view/ViewTreeObserver;

    #@13
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@16
    move-result-object v0

    #@17
    if-eq v0, v1, :cond_a

    #@19
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@1b
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1e
    iput-object v1, p0, Lcom/google/android/gms/internal/ac;->lw:Ljava/lang/ref/WeakReference;

    #@20
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@23
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@26
    goto :goto_a
.end method

.method protected aB()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lw:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewTreeObserver;

    #@8
    if-eqz v0, :cond_10

    #@a
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_11

    #@10
    :cond_10
    :goto_10
    return-void

    #@11
    :cond_11
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@14
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@17
    goto :goto_10
.end method

.method protected aC()Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    const-string v1, "afmaVersion"

    #@7
    iget-object v2, p0, Lcom/google/android/gms/internal/ac;->ly:Lcom/google/android/gms/internal/aa;

    #@9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/aa;->as()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@10
    move-result-object v1

    #@11
    const-string v2, "activeViewJSON"

    #@13
    iget-object v3, p0, Lcom/google/android/gms/internal/ac;->ly:Lcom/google/android/gms/internal/aa;

    #@15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/aa;->at()Lorg/json/JSONObject;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@1c
    move-result-object v1

    #@1d
    const-string v2, "timestamp"

    #@1f
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@24
    move-result-wide v4

    #@25
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@28
    move-result-wide v4

    #@29
    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@2c
    move-result-object v1

    #@2d
    const-string v2, "adFormat"

    #@2f
    iget-object v3, p0, Lcom/google/android/gms/internal/ac;->ly:Lcom/google/android/gms/internal/aa;

    #@31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/aa;->ar()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@38
    move-result-object v1

    #@39
    const-string v2, "hashCode"

    #@3b
    iget-object v3, p0, Lcom/google/android/gms/internal/ac;->ly:Lcom/google/android/gms/internal/aa;

    #@3d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/aa;->au()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@44
    return-object v0
.end method

.method protected aD()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ac;->aC()Lorg/json/JSONObject;

    #@3
    move-result-object v0

    #@4
    const-string v1, "doneReasonCode"

    #@6
    const-string v2, "u"

    #@8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@b
    return-object v0
.end method

.method protected av()V
    .registers 5

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lK:Landroid/content/BroadcastReceiver;

    #@5
    if-eqz v0, :cond_9

    #@7
    monitor-exit v1

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    new-instance v0, Landroid/content/IntentFilter;

    #@b
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@e
    const-string v2, "android.intent.action.SCREEN_ON"

    #@10
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@13
    const-string v2, "android.intent.action.SCREEN_OFF"

    #@15
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@18
    new-instance v2, Lcom/google/android/gms/internal/ac$2;

    #@1a
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ac$2;-><init>(Lcom/google/android/gms/internal/ac;)V

    #@1d
    iput-object v2, p0, Lcom/google/android/gms/internal/ac;->lK:Landroid/content/BroadcastReceiver;

    #@1f
    iget-object v2, p0, Lcom/google/android/gms/internal/ac;->lz:Landroid/content/Context;

    #@21
    iget-object v3, p0, Lcom/google/android/gms/internal/ac;->lK:Landroid/content/BroadcastReceiver;

    #@23
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@26
    monitor-exit v1

    #@27
    goto :goto_8

    #@28
    :catchall_28
    move-exception v0

    #@29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    #@2a
    throw v0
.end method

.method protected aw()V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lK:Landroid/content/BroadcastReceiver;

    #@5
    if-eqz v0, :cond_11

    #@7
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lz:Landroid/content/Context;

    #@9
    iget-object v2, p0, Lcom/google/android/gms/internal/ac;->lK:Landroid/content/BroadcastReceiver;

    #@b
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@e
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->lK:Landroid/content/BroadcastReceiver;

    #@11
    :cond_11
    monitor-exit v1

    #@12
    return-void

    #@13
    :catchall_13
    move-exception v0

    #@14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    #@15
    throw v0
.end method

.method public ax()V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ac;->lJ:Z

    #@5
    if-eqz v0, :cond_36

    #@7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ac;->aB()V

    #@a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ac;->aw()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_3f

    #@d
    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ac;->aD()Lorg/json/JSONObject;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ac;->a(Lorg/json/JSONObject;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_14} :catch_38
    .catchall {:try_start_d .. :try_end_14} :catchall_3f

    #@14
    :goto_14
    const/4 v0, 0x0

    #@15
    :try_start_15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ac;->lJ:Z

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ac;->ay()V

    #@1a
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string v2, "Untracked ad unit: "

    #@21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    iget-object v2, p0, Lcom/google/android/gms/internal/ac;->ly:Lcom/google/android/gms/internal/aa;

    #@27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/aa;->au()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@36
    :cond_36
    monitor-exit v1

    #@37
    return-void

    #@38
    :catch_38
    move-exception v0

    #@39
    const-string v2, "JSON Failure while processing active view data."

    #@3b
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/eu;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3e
    goto :goto_14

    #@3f
    :catchall_3f
    move-exception v0

    #@40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_15 .. :try_end_41} :catchall_3f

    #@41
    throw v0
.end method

.method protected ay()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lF:Lcom/google/android/gms/internal/ad;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lF:Lcom/google/android/gms/internal/ad;

    #@6
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ad;->a(Lcom/google/android/gms/internal/ac;)V

    #@9
    :cond_9
    return-void
.end method

.method public az()Z
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ac;->lJ:Z

    #@5
    monitor-exit v1

    #@6
    return v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method protected b(Lcom/google/android/gms/internal/ae;)V
    .registers 4

    #@0
    const-string v0, "/updateActiveView"

    #@2
    new-instance v1, Lcom/google/android/gms/internal/ac$3;

    #@4
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ac$3;-><init>(Lcom/google/android/gms/internal/ac;)V

    #@7
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ae;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@a
    const-string v0, "/activeViewPingSent"

    #@c
    new-instance v1, Lcom/google/android/gms/internal/ac$4;

    #@e
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ac$4;-><init>(Lcom/google/android/gms/internal/ac;)V

    #@11
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ae;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@14
    const-string v0, "/visibilityChanged"

    #@16
    new-instance v1, Lcom/google/android/gms/internal/ac$5;

    #@18
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ac$5;-><init>(Lcom/google/android/gms/internal/ac;)V

    #@1b
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ae;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@1e
    const-string v0, "/viewabilityChanged"

    #@20
    sget-object v1, Lcom/google/android/gms/internal/bb;->mT:Lcom/google/android/gms/internal/bc;

    #@22
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ae;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@25
    return-void
.end method

.method protected c(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [I

    #@3
    new-array v1, v1, [I

    #@5
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@8
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    #@b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ac;->aC()Lorg/json/JSONObject;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1a
    move-result-object v2

    #@1b
    new-instance v3, Landroid/graphics/Rect;

    #@1d
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@20
    const/4 v4, 0x0

    #@21
    aget v4, v0, v4

    #@23
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@25
    const/4 v4, 0x1

    #@26
    aget v0, v0, v4

    #@28
    iput v0, v3, Landroid/graphics/Rect;->top:I

    #@2a
    iget v0, v3, Landroid/graphics/Rect;->left:I

    #@2c
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@2f
    move-result v4

    #@30
    add-int/2addr v0, v4

    #@31
    iput v0, v3, Landroid/graphics/Rect;->right:I

    #@33
    iget v0, v3, Landroid/graphics/Rect;->top:I

    #@35
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@38
    move-result v4

    #@39
    add-int/2addr v0, v4

    #@3a
    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    #@3c
    new-instance v0, Landroid/graphics/Rect;

    #@3e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@41
    iget-object v4, p0, Lcom/google/android/gms/internal/ac;->lC:Landroid/view/WindowManager;

    #@43
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    #@4a
    move-result v4

    #@4b
    iput v4, v0, Landroid/graphics/Rect;->right:I

    #@4d
    iget-object v4, p0, Lcom/google/android/gms/internal/ac;->lC:Landroid/view/WindowManager;

    #@4f
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    #@56
    move-result v4

    #@57
    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    #@59
    new-instance v4, Landroid/graphics/Rect;

    #@5b
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@5e
    const/4 v5, 0x0

    #@5f
    invoke-virtual {p1, v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    #@62
    move-result v5

    #@63
    new-instance v6, Landroid/graphics/Rect;

    #@65
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    #@68
    invoke-virtual {p1, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    #@6b
    const-string v7, "viewBox"

    #@6d
    new-instance v8, Lorg/json/JSONObject;

    #@6f
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    #@72
    const-string v9, "top"

    #@74
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@76
    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@79
    move-result v10

    #@7a
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@7d
    move-result-object v8

    #@7e
    const-string v9, "bottom"

    #@80
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    #@82
    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@85
    move-result v10

    #@86
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@89
    move-result-object v8

    #@8a
    const-string v9, "left"

    #@8c
    iget v10, v0, Landroid/graphics/Rect;->left:I

    #@8e
    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@91
    move-result v10

    #@92
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@95
    move-result-object v8

    #@96
    const-string v9, "right"

    #@98
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@9a
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@9d
    move-result v0

    #@9e
    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@a1
    move-result-object v0

    #@a2
    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@a5
    move-result-object v0

    #@a6
    const-string v7, "adBox"

    #@a8
    new-instance v8, Lorg/json/JSONObject;

    #@aa
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    #@ad
    const-string v9, "top"

    #@af
    iget v10, v3, Landroid/graphics/Rect;->top:I

    #@b1
    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@b4
    move-result v10

    #@b5
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@b8
    move-result-object v8

    #@b9
    const-string v9, "bottom"

    #@bb
    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    #@bd
    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@c0
    move-result v10

    #@c1
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@c4
    move-result-object v8

    #@c5
    const-string v9, "left"

    #@c7
    iget v10, v3, Landroid/graphics/Rect;->left:I

    #@c9
    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@cc
    move-result v10

    #@cd
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@d0
    move-result-object v8

    #@d1
    const-string v9, "right"

    #@d3
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@d5
    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@d8
    move-result v3

    #@d9
    invoke-virtual {v8, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@dc
    move-result-object v3

    #@dd
    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@e0
    move-result-object v0

    #@e1
    const-string v3, "globalVisibleBox"

    #@e3
    new-instance v7, Lorg/json/JSONObject;

    #@e5
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    #@e8
    const-string v8, "top"

    #@ea
    iget v9, v4, Landroid/graphics/Rect;->top:I

    #@ec
    invoke-virtual {p0, v9, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@ef
    move-result v9

    #@f0
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@f3
    move-result-object v7

    #@f4
    const-string v8, "bottom"

    #@f6
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    #@f8
    invoke-virtual {p0, v9, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@fb
    move-result v9

    #@fc
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@ff
    move-result-object v7

    #@100
    const-string v8, "left"

    #@102
    iget v9, v4, Landroid/graphics/Rect;->left:I

    #@104
    invoke-virtual {p0, v9, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@107
    move-result v9

    #@108
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@10b
    move-result-object v7

    #@10c
    const-string v8, "right"

    #@10e
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@110
    invoke-virtual {p0, v4, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@113
    move-result v4

    #@114
    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@117
    move-result-object v4

    #@118
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@11b
    move-result-object v0

    #@11c
    const-string v3, "localVisibleBox"

    #@11e
    new-instance v4, Lorg/json/JSONObject;

    #@120
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    #@123
    const-string v7, "top"

    #@125
    iget v8, v6, Landroid/graphics/Rect;->top:I

    #@127
    invoke-virtual {p0, v8, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@12a
    move-result v8

    #@12b
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@12e
    move-result-object v4

    #@12f
    const-string v7, "bottom"

    #@131
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    #@133
    invoke-virtual {p0, v8, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@136
    move-result v8

    #@137
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@13a
    move-result-object v4

    #@13b
    const-string v7, "left"

    #@13d
    iget v8, v6, Landroid/graphics/Rect;->left:I

    #@13f
    invoke-virtual {p0, v8, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@142
    move-result v8

    #@143
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@146
    move-result-object v4

    #@147
    const-string v7, "right"

    #@149
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@14b
    invoke-virtual {p0, v6, v2}, Lcom/google/android/gms/internal/ac;->a(ILandroid/util/DisplayMetrics;)I

    #@14e
    move-result v6

    #@14f
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@152
    move-result-object v4

    #@153
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@156
    move-result-object v0

    #@157
    const-string v3, "screenDensity"

    #@159
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    #@15b
    float-to-double v6, v2

    #@15c
    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    #@15f
    move-result-object v0

    #@160
    const-string v2, "isVisible"

    #@162
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/ac;->a(Landroid/view/View;Z)Z

    #@165
    move-result v3

    #@166
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    #@169
    move-result-object v0

    #@16a
    const-string v2, "isStopped"

    #@16c
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ac;->lH:Z

    #@16e
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    #@171
    move-result-object v0

    #@172
    const-string v2, "isPaused"

    #@174
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ac;->lj:Z

    #@176
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    #@179
    return-object v1
.end method

.method protected c(Lcom/google/android/gms/internal/ae;)V
    .registers 3

    #@0
    const-string v0, "/viewabilityChanged"

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ae;->e(Ljava/lang/String;)V

    #@5
    const-string v0, "/visibilityChanged"

    #@7
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ae;->e(Ljava/lang/String;)V

    #@a
    const-string v0, "/activeViewPingSent"

    #@c
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ae;->e(Ljava/lang/String;)V

    #@f
    const-string v0, "/updateActiveView"

    #@11
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ae;->e(Ljava/lang/String;)V

    #@14
    return-void
.end method

.method protected d(Z)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lL:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_16

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/internal/z;

    #@12
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/ac;Z)V

    #@15
    goto :goto_6

    #@16
    :cond_16
    return-void
.end method

.method protected e(Z)V
    .registers 10

    #@0
    iget-object v2, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ac;->lB:Z

    #@5
    if-eqz v0, :cond_b

    #@7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ac;->lJ:Z

    #@9
    if-nez v0, :cond_d

    #@b
    :cond_b
    monitor-exit v2

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@10
    move-result-wide v0

    #@11
    if-eqz p1, :cond_21

    #@13
    iget-wide v4, p0, Lcom/google/android/gms/internal/ac;->lI:J

    #@15
    sget-wide v6, Lcom/google/android/gms/internal/ac;->lG:J

    #@17
    add-long/2addr v4, v6

    #@18
    cmp-long v3, v4, v0

    #@1a
    if-lez v3, :cond_21

    #@1c
    monitor-exit v2

    #@1d
    goto :goto_c

    #@1e
    :catchall_1e
    move-exception v0

    #@1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    #@20
    throw v0

    #@21
    :cond_21
    :try_start_21
    iput-wide v0, p0, Lcom/google/android/gms/internal/ac;->lI:J

    #@23
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lv:Ljava/lang/ref/WeakReference;

    #@25
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Lcom/google/android/gms/internal/ef;

    #@2b
    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->lx:Ljava/lang/ref/WeakReference;

    #@2d
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Landroid/view/View;

    #@33
    if-eqz v1, :cond_37

    #@35
    if-nez v0, :cond_3f

    #@37
    :cond_37
    const/4 v0, 0x1

    #@38
    :goto_38
    if-eqz v0, :cond_41

    #@3a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ac;->ax()V

    #@3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_1e

    #@3e
    goto :goto_c

    #@3f
    :cond_3f
    const/4 v0, 0x0

    #@40
    goto :goto_38

    #@41
    :cond_41
    :try_start_41
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ac;->c(Landroid/view/View;)Lorg/json/JSONObject;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ac;->a(Lorg/json/JSONObject;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_48} :catch_50
    .catchall {:try_start_41 .. :try_end_48} :catchall_1e

    #@48
    :goto_48
    :try_start_48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ac;->aA()V

    #@4b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ac;->ay()V

    #@4e
    monitor-exit v2

    #@4f
    goto :goto_c

    #@50
    :catch_50
    move-exception v0

    #@51
    const-string v1, "Active view update failed."

    #@53
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_48 .. :try_end_56} :catchall_1e

    #@56
    goto :goto_48
.end method

.method public onGlobalLayout()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ac;->e(Z)V

    #@4
    return-void
.end method

.method public onScrollChanged()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ac;->e(Z)V

    #@4
    return-void
.end method

.method public pause()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    const/4 v0, 0x1

    #@4
    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ac;->lj:Z

    #@6
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ac;->e(Z)V

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lA:Lcom/google/android/gms/internal/ae;

    #@c
    invoke-interface {v0}, Lcom/google/android/gms/internal/ae;->pause()V

    #@f
    monitor-exit v1

    #@10
    return-void

    #@11
    :catchall_11
    move-exception v0

    #@12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    #@13
    throw v0
.end method

.method public resume()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lA:Lcom/google/android/gms/internal/ae;

    #@5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ae;->resume()V

    #@8
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ac;->lj:Z

    #@b
    const/4 v0, 0x0

    #@c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ac;->e(Z)V

    #@f
    monitor-exit v1

    #@10
    return-void

    #@11
    :catchall_11
    move-exception v0

    #@12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    #@13
    throw v0
.end method

.method public stop()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    const/4 v0, 0x1

    #@4
    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ac;->lH:Z

    #@6
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ac;->e(Z)V

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lA:Lcom/google/android/gms/internal/ae;

    #@c
    invoke-interface {v0}, Lcom/google/android/gms/internal/ae;->pause()V

    #@f
    monitor-exit v1

    #@10
    return-void

    #@11
    :catchall_11
    move-exception v0

    #@12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    #@13
    throw v0
.end method
