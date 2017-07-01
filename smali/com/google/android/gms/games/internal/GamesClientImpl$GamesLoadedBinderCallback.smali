.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GamesLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GamesLoadedBinderCallback"
.end annotation


# instance fields
.field final synthetic NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field private final yR:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesLoadedBinderCallback;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    #@5
    const-string v0, "Holder must not be null"

    #@7
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    #@d
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesLoadedBinderCallback;->yR:Lcom/google/android/gms/common/api/a$d;

    #@f
    return-void
.end method


# virtual methods
.method public i(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesLoadedBinderCallback;->yR:Lcom/google/android/gms/common/api/a$d;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGamesResultImpl;

    #@4
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGamesResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@7
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@a
    return-void
.end method
