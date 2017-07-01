.class Lcom/google/android/gms/cast/Cast$CastApi$a$3;
.super Lcom/google/android/gms/cast/Cast$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/Cast$CastApi$a;->launchApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zW:Lcom/google/android/gms/cast/Cast$CastApi$a;

.field final synthetic zX:Ljava/lang/String;

.field final synthetic zY:Lcom/google/android/gms/cast/LaunchOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$3;->zW:Lcom/google/android/gms/cast/Cast$CastApi$a;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$3;->zX:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$3;->zY:Lcom/google/android/gms/cast/LaunchOptions;

    #@6
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/Cast$c;-><init>(Lcom/google/android/gms/cast/Cast$1;)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$a$3;->a(Lcom/google/android/gms/internal/gh;)V

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
    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$3;->zX:Ljava/lang/String;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$3;->zY:Lcom/google/android/gms/cast/LaunchOptions;

    #@4
    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/gh;->a(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/common/api/a$d;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8

    #@7
    :goto_7
    return-void

    #@8
    :catch_8
    move-exception v0

    #@9
    const/16 v0, 0x7d1

    #@b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$CastApi$a$3;->N(I)V

    #@e
    goto :goto_7
.end method
