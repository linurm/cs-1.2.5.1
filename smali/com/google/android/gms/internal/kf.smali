.class public Lcom/google/android/gms/internal/kf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/panorama/PanoramaApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/kf$a;,
        Lcom/google/android/gms/internal/kf$b;,
        Lcom/google/android/gms/internal/kf$c;,
        Lcom/google/android/gms/internal/kf$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    #@4
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/kd;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    const-string v0, "com.google.android.gms"

    #@3
    invoke-virtual {p0, v0, p3, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    #@6
    new-instance v0, Lcom/google/android/gms/internal/kf$4;

    #@8
    invoke-direct {v0, p0, p3, p2}, Lcom/google/android/gms/internal/kf$4;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/kd;)V

    #@b
    const/4 v1, 0x1

    #@c
    :try_start_c
    invoke-interface {p1, v0, p3, p4, v1}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/kd;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_f} :catch_15

    #@f
    return-void

    #@10
    :catch_10
    move-exception v0

    #@11
    invoke-static {p0, p3}, Lcom/google/android/gms/internal/kf;->a(Landroid/content/Context;Landroid/net/Uri;)V

    #@14
    throw v0

    #@15
    :catch_15
    move-exception v0

    #@16
    invoke-static {p0, p3}, Lcom/google/android/gms/internal/kf;->a(Landroid/content/Context;Landroid/net/Uri;)V

    #@19
    throw v0
.end method

.method static synthetic b(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/kf;->a(Landroid/content/Context;Landroid/net/Uri;)V

    #@3
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/kd;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/kf;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/kd;Landroid/net/Uri;Landroid/os/Bundle;)V

    #@3
    return-void
.end method


# virtual methods
.method public loadPanoramaInfo(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/internal/kf$2;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/kf$2;-><init>(Lcom/google/android/gms/internal/kf;Landroid/net/Uri;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public loadPanoramaInfoAndGrantAccess(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/internal/kf$3;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/kf$3;-><init>(Lcom/google/android/gms/internal/kf;Landroid/net/Uri;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
