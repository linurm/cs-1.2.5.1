.class Lcom/google/android/gms/cast/Cast$CastApi$a$8;
.super Lcom/google/android/gms/cast/Cast$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/Cast$CastApi$a;->stopApplication(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zW:Lcom/google/android/gms/cast/Cast$CastApi$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$8;->zW:Lcom/google/android/gms/cast/Cast$CastApi$a;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/Cast$b;-><init>(Lcom/google/android/gms/cast/Cast$1;)V

    #@6
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$a$8;->a(Lcom/google/android/gms/internal/gh;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gh;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    :try_start_0
    const-string v0, ""

    #@2
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/gh;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/a$d;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    :goto_5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    const/16 v0, 0x7d1

    #@9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$CastApi$a$8;->N(I)V

    #@c
    goto :goto_5
.end method
