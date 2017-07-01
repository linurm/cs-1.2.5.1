.class Lcom/google/android/gms/cast/Cast$CastApi$a$1;
.super Lcom/google/android/gms/cast/Cast$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/Cast$CastApi$a;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zU:Ljava/lang/String;

.field final synthetic zV:Ljava/lang/String;

.field final synthetic zW:Lcom/google/android/gms/cast/Cast$CastApi$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->zW:Lcom/google/android/gms/cast/Cast$CastApi$a;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->zU:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->zV:Ljava/lang/String;

    #@6
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/Cast$b;-><init>(Lcom/google/android/gms/cast/Cast$1;)V

    #@a
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->a(Lcom/google/android/gms/internal/gh;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gh;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/16 v2, 0x7d1

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->zU:Ljava/lang/String;

    #@4
    iget-object v1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->zV:Ljava/lang/String;

    #@6
    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/gh;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/a$d;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_9} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_9} :catch_f

    #@9
    :goto_9
    return-void

    #@a
    :catch_a
    move-exception v0

    #@b
    invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->N(I)V

    #@e
    goto :goto_9

    #@f
    :catch_f
    move-exception v0

    #@10
    invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->N(I)V

    #@13
    goto :goto_9
.end method
