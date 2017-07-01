.class public final Lcom/google/android/gms/common/images/ImageManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;,
        Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;,
        Lcom/google/android/gms/common/images/ImageManager$a;,
        Lcom/google/android/gms/common/images/ImageManager$b;,
        Lcom/google/android/gms/common/images/ImageManager$c;,
        Lcom/google/android/gms/common/images/ImageManager$d;,
        Lcom/google/android/gms/common/images/ImageManager$e;,
        Lcom/google/android/gms/common/images/ImageManager$f;
    }
.end annotation


# static fields
.field private static final EX:Ljava/lang/Object;

.field private static EY:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static EZ:Lcom/google/android/gms/common/images/ImageManager;

.field private static Fa:Lcom/google/android/gms/common/images/ImageManager;


# instance fields
.field private final Fb:Ljava/util/concurrent/ExecutorService;

.field private final Fc:Lcom/google/android/gms/common/images/ImageManager$b;

.field private final Fd:Lcom/google/android/gms/internal/gw;

.field private final Fe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/images/a;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final Ff:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final Fg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->EX:Ljava/lang/Object;

    #@7
    new-instance v0, Ljava/util/HashSet;

    #@9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->EY:Ljava/util/HashSet;

    #@e
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    #@9
    new-instance v0, Landroid/os/Handler;

    #@b
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@12
    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mHandler:Landroid/os/Handler;

    #@14
    const/4 v0, 0x4

    #@15
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Fb:Ljava/util/concurrent/ExecutorService;

    #@1b
    if-eqz p2, :cond_4c

    #@1d
    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$b;

    #@1f
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    #@21
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/images/ImageManager$b;-><init>(Landroid/content/Context;)V

    #@24
    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Fc:Lcom/google/android/gms/common/images/ImageManager$b;

    #@26
    invoke-static {}, Lcom/google/android/gms/internal/ip;->gf()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_2f

    #@2c
    invoke-direct {p0}, Lcom/google/android/gms/common/images/ImageManager;->fc()V

    #@2f
    :cond_2f
    :goto_2f
    new-instance v0, Lcom/google/android/gms/internal/gw;

    #@31
    invoke-direct {v0}, Lcom/google/android/gms/internal/gw;-><init>()V

    #@34
    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Fd:Lcom/google/android/gms/internal/gw;

    #@36
    new-instance v0, Ljava/util/HashMap;

    #@38
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@3b
    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Fe:Ljava/util/Map;

    #@3d
    new-instance v0, Ljava/util/HashMap;

    #@3f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@42
    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Ff:Ljava/util/Map;

    #@44
    new-instance v0, Ljava/util/HashMap;

    #@46
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@49
    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Fg:Ljava/util/Map;

    #@4b
    return-void

    #@4c
    :cond_4c
    const/4 v0, 0x0

    #@4d
    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Fc:Lcom/google/android/gms/common/images/ImageManager$b;

    #@4f
    goto :goto_2f
.end method

.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/a$a;)Landroid/graphics/Bitmap;
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a$a;)Landroid/graphics/Bitmap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/images/a$a;)Landroid/graphics/Bitmap;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Fc:Lcom/google/android/gms/common/images/ImageManager$b;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Fc:Lcom/google/android/gms/common/images/ImageManager$b;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/images/ImageManager$b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/graphics/Bitmap;

    #@e
    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Z)Lcom/google/android/gms/common/images/ImageManager;
    .registers 4

    #@0
    if-eqz p1, :cond_11

    #@2
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->Fa:Lcom/google/android/gms/common/images/ImageManager;

    #@4
    if-nez v0, :cond_e

    #@6
    new-instance v0, Lcom/google/android/gms/common/images/ImageManager;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    #@c
    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->Fa:Lcom/google/android/gms/common/images/ImageManager;

    #@e
    :cond_e
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->Fa:Lcom/google/android/gms/common/images/ImageManager;

    #@10
    :goto_10
    return-object v0

    #@11
    :cond_11
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->EZ:Lcom/google/android/gms/common/images/ImageManager;

    #@13
    if-nez v0, :cond_1d

    #@15
    new-instance v0, Lcom/google/android/gms/common/images/ImageManager;

    #@17
    const/4 v1, 0x0

    #@18
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    #@1b
    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->EZ:Lcom/google/android/gms/common/images/ImageManager;

    #@1d
    :cond_1d
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->EZ:Lcom/google/android/gms/common/images/ImageManager;

    #@1f
    goto :goto_10
.end method

.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Fe:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/gw;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Fd:Lcom/google/android/gms/internal/gw;

    #@2
    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Landroid/content/Context;Z)Lcom/google/android/gms/common/images/ImageManager;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Fg:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Ff:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Fb:Ljava/util/concurrent/ExecutorService;

    #@2
    return-object v0
.end method

.method private fc()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    #@2
    new-instance v1, Lcom/google/android/gms/common/images/ImageManager$e;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager;->Fc:Lcom/google/android/gms/common/images/ImageManager$b;

    #@6
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/images/ImageManager$e;-><init>(Lcom/google/android/gms/common/images/ImageManager$b;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    #@c
    return-void
.end method

.method static synthetic fd()Ljava/lang/Object;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->EX:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic fe()Ljava/util/HashSet;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->EY:Ljava/util/HashSet;

    #@2
    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$b;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Fc:Lcom/google/android/gms/common/images/ImageManager$b;

    #@2
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/images/a;)V
    .registers 3

    #@0
    const-string v0, "ImageManager.loadImage() must be called in the main thread"

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->ay(Ljava/lang/String;)V

    #@5
    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$d;

    #@7
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/images/ImageManager$d;-><init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/a;)V

    #@a
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@d
    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;I)V
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/common/images/a$b;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/a$b;-><init>(Landroid/widget/ImageView;I)V

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a;)V

    #@8
    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/common/images/a$b;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/a$b;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a;)V

    #@8
    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/common/images/a$b;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/a$b;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    #@5
    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/images/a;->aj(I)V

    #@8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a;)V

    #@b
    return-void
.end method

.method public loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/common/images/a$c;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/a$c;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a;)V

    #@8
    return-void
.end method

.method public loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;I)V
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/common/images/a$c;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/a$c;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    #@5
    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/images/a;->aj(I)V

    #@8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a;)V

    #@b
    return-void
.end method
