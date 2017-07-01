.class Lcom/google/android/gms/games/internal/api/QuestsImpl$4;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl;->loadByIds(Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pe:Z

.field final synthetic Qo:Lcom/google/android/gms/games/internal/api/QuestsImpl;

.field final synthetic Qr:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Z[Ljava/lang/String;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->Qo:Lcom/google/android/gms/games/internal/api/QuestsImpl;

    #@2
    iput-boolean p2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->Pe:Z

    #@4
    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->Qr:[Ljava/lang/String;

    #@6
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V

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
    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 4

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->Pe:Z

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->Qr:[Ljava/lang/String;

    #@4
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/api/a$d;Z[Ljava/lang/String;)V

    #@7
    return-void
.end method
