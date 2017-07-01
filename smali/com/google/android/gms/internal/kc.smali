.class public Lcom/google/android/gms/internal/kc;
.super Lcom/google/android/gms/internal/kh;

# interfaces
.implements Lcom/google/android/gms/panorama/PanoramaApi$a;


# instance fields
.field private final abj:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;I)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/kh;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V

    #@3
    iput p3, p0, Lcom/google/android/gms/internal/kc;->abj:I

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    invoke-super {p0}, Lcom/google/android/gms/internal/kh;->getStatus()Lcom/google/android/gms/common/api/Status;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getViewerIntent()Landroid/content/Intent;
    .registers 2

    #@0
    invoke-super {p0}, Lcom/google/android/gms/internal/kh;->getViewerIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
