.class Lcom/google/android/gms/games/internal/api/QuestsImpl$3;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl;->load(Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PE:I

.field final synthetic Pe:Z

.field final synthetic Qo:Lcom/google/android/gms/games/internal/api/QuestsImpl;

.field final synthetic Qq:[I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;[IIZ)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Qo:Lcom/google/android/gms/games/internal/api/QuestsImpl;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Qq:[I

    #@4
    iput p3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->PE:I

    #@6
    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Pe:Z

    #@8
    const/4 v0, 0x0

    #@9
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V

    #@c
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Qq:[I

    #@2
    iget v1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->PE:I

    #@4
    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Pe:Z

    #@6
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;[IIZ)V

    #@9
    return-void
.end method
