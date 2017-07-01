.class public final Lcom/google/android/gms/internal/hn;
.super Lcom/google/android/gms/dynamic/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/g",
        "<",
        "Lcom/google/android/gms/internal/hj;",
        ">;"
    }
.end annotation


# static fields
.field private static final GL:Lcom/google/android/gms/internal/hn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/hn;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/hn;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/hn;->GL:Lcom/google/android/gms/internal/hn;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/g;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static b(Landroid/content/Context;II)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/g$a;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/internal/hn;->GL:Lcom/google/android/gms/internal/hn;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/hn;->c(Landroid/content/Context;II)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private c(Landroid/content/Context;II)Landroid/view/View;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/g$a;
        }
    .end annotation

    #@0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hn;->G(Landroid/content/Context;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/google/android/gms/internal/hj;

    #@a
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/hj;->a(Lcom/google/android/gms/dynamic/d;II)Lcom/google/android/gms/dynamic/d;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/view/View;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    #@14
    return-object v0

    #@15
    :catch_15
    move-exception v0

    #@16
    new-instance v1, Lcom/google/android/gms/dynamic/g$a;

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string v3, "Could not get button with size "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string v3, " and color "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/g$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@38
    throw v1
.end method


# virtual methods
.method public N(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hj;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hj$a;->M(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hj;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic d(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hn;->N(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hj;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
