.class Lcom/google/android/gms/cast/Cast$CastApi$a$9;
.super Lcom/google/android/gms/cast/Cast$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/Cast$CastApi$a;->stopApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zW:Lcom/google/android/gms/cast/Cast$CastApi$a;

.field final synthetic zZ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->zW:Lcom/google/android/gms/cast/Cast$CastApi$a;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->zZ:Ljava/lang/String;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/Cast$b;-><init>(Lcom/google/android/gms/cast/Cast$1;)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->a(Lcom/google/android/gms/internal/gh;)V

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
    const/16 v1, 0x7d1

    #@2
    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->zZ:Ljava/lang/String;

    #@4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_10

    #@a
    const-string v0, "IllegalArgument: sessionId cannot be null or empty"

    #@c
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->c(ILjava/lang/String;)V

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->zZ:Ljava/lang/String;

    #@12
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/gh;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/a$d;)V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_15} :catch_16

    #@15
    goto :goto_f

    #@16
    :catch_16
    move-exception v0

    #@17
    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->N(I)V

    #@1a
    goto :goto_f
.end method
