.class Lcom/google/android/gms/internal/kh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;


# instance fields
.field private final abo:Landroid/content/Intent;

.field private final yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/common/api/Status;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/internal/kh;->yz:Lcom/google/android/gms/common/api/Status;

    #@b
    iput-object p2, p0, Lcom/google/android/gms/internal/kh;->abo:Landroid/content/Intent;

    #@d
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kh;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method

.method public getViewerIntent()Landroid/content/Intent;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kh;->abo:Landroid/content/Intent;

    #@2
    return-object v0
.end method
