.class public final Lcom/google/android/gms/internal/cm;
.super Lcom/google/android/gms/dynamic/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cm$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/g",
        "<",
        "Lcom/google/android/gms/internal/co;",
        ">;"
    }
.end annotation


# static fields
.field private static final oS:Lcom/google/android/gms/internal/cm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/cm;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/cm;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/cm;->oS:Lcom/google/android/gms/internal/cm;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.ads.AdOverlayCreatorImpl"

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/g;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/google/android/gms/internal/cn;
    .registers 2

    #@0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/cm;->b(Landroid/app/Activity;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_11

    #@6
    const-string v0, "Using AdOverlay from the client jar."

    #@8
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@b
    new-instance v0, Lcom/google/android/gms/internal/cf;

    #@d
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cf;-><init>(Landroid/app/Activity;)V

    #@10
    :goto_10
    return-object v0

    #@11
    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/cm;->oS:Lcom/google/android/gms/internal/cm;

    #@13
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cm;->c(Landroid/app/Activity;)Lcom/google/android/gms/internal/cn;
    :try_end_16
    .catch Lcom/google/android/gms/internal/cm$a; {:try_start_0 .. :try_end_16} :catch_18

    #@16
    move-result-object v0

    #@17
    goto :goto_10

    #@18
    :catch_18
    move-exception v0

    #@19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cm$a;->getMessage()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@20
    const/4 v0, 0x0

    #@21
    goto :goto_10
.end method

.method private static b(Landroid/app/Activity;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cm$a;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_14

    #@c
    new-instance v0, Lcom/google/android/gms/internal/cm$a;

    #@e
    const-string v1, "Ad overlay requires the useClientJar flag in intent extras."

    #@10
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cm$a;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    :cond_14
    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    #@16
    const/4 v2, 0x0

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method private c(Landroid/app/Activity;)Lcom/google/android/gms/internal/cn;
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cm;->G(Landroid/content/Context;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/internal/co;

    #@b
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/co;->a(Lcom/google/android/gms/dynamic/d;)Landroid/os/IBinder;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/google/android/gms/internal/cn$a;->m(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cn;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_14
    .catch Lcom/google/android/gms/dynamic/g$a; {:try_start_1 .. :try_end_12} :catch_1c

    #@12
    move-result-object v0

    #@13
    :goto_13
    return-object v0

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v2, "Could not create remote AdOverlay."

    #@17
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    move-object v0, v1

    #@1b
    goto :goto_13

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    const-string v2, "Could not create remote AdOverlay."

    #@1f
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@22
    move-object v0, v1

    #@23
    goto :goto_13
.end method


# virtual methods
.method protected synthetic d(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cm;->l(Landroid/os/IBinder;)Lcom/google/android/gms/internal/co;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected l(Landroid/os/IBinder;)Lcom/google/android/gms/internal/co;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/co$a;->n(Landroid/os/IBinder;)Lcom/google/android/gms/internal/co;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
