.class Lcom/google/android/gms/internal/kl$3;
.super Lcom/google/android/gms/internal/kl$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/kl;->write(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/plus/model/moments/Moment;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ace:Lcom/google/android/gms/internal/kl;

.field final synthetic acj:Lcom/google/android/gms/plus/model/moments/Moment;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kl;Lcom/google/android/gms/plus/model/moments/Moment;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/kl$3;->ace:Lcom/google/android/gms/internal/kl;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/kl$3;->acj:Lcom/google/android/gms/plus/model/moments/Moment;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kl$c;-><init>(Lcom/google/android/gms/internal/kl$1;)V

    #@8
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kl$3;->a(Lcom/google/android/gms/plus/internal/e;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kl$3;->acj:Lcom/google/android/gms/plus/model/moments/Moment;

    #@2
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/plus/model/moments/Moment;)V

    #@5
    return-void
.end method
