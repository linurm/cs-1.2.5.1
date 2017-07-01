.class final Lcom/google/android/gms/plus/internal/e$g;
.super Lcom/google/android/gms/plus/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field private final abL:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic abM:Lcom/google/android/gms/plus/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$g;->abM:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/plus/internal/a;-><init>()V

    #@5
    iput-object p2, p0, Lcom/google/android/gms/plus/internal/e$g;->abL:Lcom/google/android/gms/common/api/a$d;

    #@7
    return-void
.end method


# virtual methods
.method public h(ILandroid/os/Bundle;)V
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    if-eqz p2, :cond_1f

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
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$g;->abM:Lcom/google/android/gms/plus/internal/e;

    #@12
    new-instance v1, Lcom/google/android/gms/plus/internal/e$h;

    #@14
    iget-object v3, p0, Lcom/google/android/gms/plus/internal/e$g;->abM:Lcom/google/android/gms/plus/internal/e;

    #@16
    iget-object v4, p0, Lcom/google/android/gms/plus/internal/e$g;->abL:Lcom/google/android/gms/common/api/a$d;

    #@18
    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/gms/plus/internal/e$h;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/Status;)V

    #@1b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@1e
    return-void

    #@1f
    :cond_1f
    move-object v0, v1

    #@20
    goto :goto_b
.end method
