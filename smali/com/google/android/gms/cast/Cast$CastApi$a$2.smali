.class Lcom/google/android/gms/cast/Cast$CastApi$a$2;
.super Lcom/google/android/gms/cast/Cast$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/Cast$CastApi$a;->launchApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zW:Lcom/google/android/gms/cast/Cast$CastApi$a;

.field final synthetic zX:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$2;->zW:Lcom/google/android/gms/cast/Cast$CastApi$a;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$2;->zX:Ljava/lang/String;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/Cast$c;-><init>(Lcom/google/android/gms/cast/Cast$1;)V

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
    check-cast p1, Lcom/google/android/gms/internal/gh;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$a$2;->a(Lcom/google/android/gms/internal/gh;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gh;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$2;->zX:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/gh;->a(Ljava/lang/String;ZLcom/google/android/gms/common/api/a$d;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7

    #@6
    :goto_6
    return-void

    #@7
    :catch_7
    move-exception v0

    #@8
    const/16 v0, 0x7d1

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$CastApi$a$2;->N(I)V

    #@d
    goto :goto_6
.end method
