.class final Lcom/google/android/gms/internal/kf$c;
.super Lcom/google/android/gms/internal/kd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final yR:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/kd$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/kf$c;->yR:Lcom/google/android/gms/common/api/a$d;

    #@5
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    if-eqz p2, :cond_1b

    #@3
    const-string v0, "pendingIntent"

    #@5
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/app/PendingIntent;

    #@b
    :goto_b
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    #@d
    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/internal/kf$c;->yR:Lcom/google/android/gms/common/api/a$d;

    #@12
    new-instance v1, Lcom/google/android/gms/internal/kh;

    #@14
    invoke-direct {v1, v2, p4}, Lcom/google/android/gms/internal/kh;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V

    #@17
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@1a
    return-void

    #@1b
    :cond_1b
    move-object v0, v1

    #@1c
    goto :goto_b
.end method
