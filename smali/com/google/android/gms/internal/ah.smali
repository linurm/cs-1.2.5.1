.class public final Lcom/google/android/gms/internal/ah;
.super Lcom/google/android/gms/dynamic/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/g",
        "<",
        "Lcom/google/android/gms/internal/ar;",
        ">;"
    }
.end annotation


# static fields
.field private static final lR:Lcom/google/android/gms/internal/ah;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ah;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ah;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/ah;->lR:Lcom/google/android/gms/internal/ah;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/g;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bs;)Lcom/google/android/gms/internal/aq;
    .registers 10

    #@0
    const v2, 0x4da6e8

    #@3
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_11

    #@9
    sget-object v0, Lcom/google/android/gms/internal/ah;->lR:Lcom/google/android/gms/internal/ah;

    #@b
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ah;->b(Landroid/content/Context;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bs;)Lcom/google/android/gms/internal/aq;

    #@e
    move-result-object v0

    #@f
    if-nez v0, :cond_25

    #@11
    :cond_11
    const-string v0, "Using AdManager from the client jar."

    #@13
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@16
    new-instance v0, Lcom/google/android/gms/internal/u;

    #@18
    new-instance v5, Lcom/google/android/gms/internal/ev;

    #@1a
    const/4 v1, 0x1

    #@1b
    invoke-direct {v5, v2, v2, v1}, Lcom/google/android/gms/internal/ev;-><init>(IIZ)V

    #@1e
    move-object v1, p0

    #@1f
    move-object v2, p1

    #@20
    move-object v3, p2

    #@21
    move-object v4, p3

    #@22
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/u;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bt;Lcom/google/android/gms/internal/ev;)V

    #@25
    :cond_25
    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bs;)Lcom/google/android/gms/internal/aq;
    .registers 12

    #@0
    const/4 v6, 0x0

    #@1
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ah;->G(Landroid/content/Context;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/internal/ar;

    #@b
    const v5, 0x4da6e8

    #@e
    move-object v2, p2

    #@f
    move-object v3, p3

    #@10
    move-object v4, p4

    #@11
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bt;I)Landroid/os/IBinder;

    #@14
    move-result-object v0

    #@15
    invoke-static {v0}, Lcom/google/android/gms/internal/aq$a;->f(Landroid/os/IBinder;)Lcom/google/android/gms/internal/aq;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1a
    .catch Lcom/google/android/gms/dynamic/g$a; {:try_start_1 .. :try_end_18} :catch_22

    #@18
    move-result-object v0

    #@19
    :goto_19
    return-object v0

    #@1a
    :catch_1a
    move-exception v0

    #@1b
    const-string v1, "Could not create remote AdManager."

    #@1d
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@20
    move-object v0, v6

    #@21
    goto :goto_19

    #@22
    :catch_22
    move-exception v0

    #@23
    const-string v1, "Could not create remote AdManager."

    #@25
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@28
    move-object v0, v6

    #@29
    goto :goto_19
.end method


# virtual methods
.method protected c(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ar;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/ar$a;->g(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ar;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected synthetic d(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ah;->c(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ar;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
