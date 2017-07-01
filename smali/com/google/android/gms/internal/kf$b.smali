.class abstract Lcom/google/android/gms/internal/kf$b;
.super Lcom/google/android/gms/internal/kf$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kf$d",
        "<",
        "Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/kf$d;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/kf$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/kf$b;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected ak(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/internal/kh;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/kh;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V

    #@6
    return-object v0
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kf$b;->ak(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
