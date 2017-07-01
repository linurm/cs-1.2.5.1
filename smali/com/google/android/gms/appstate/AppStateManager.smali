.class public final Lcom/google/android/gms/appstate/AppStateManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;,
        Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;,
        Lcom/google/android/gms/appstate/AppStateManager$StateListResult;,
        Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;,
        Lcom/google/android/gms/appstate/AppStateManager$StateResult;,
        Lcom/google/android/gms/appstate/AppStateManager$a;,
        Lcom/google/android/gms/appstate/AppStateManager$b;,
        Lcom/google/android/gms/appstate/AppStateManager$c;,
        Lcom/google/android/gms/appstate/AppStateManager$d;,
        Lcom/google/android/gms/appstate/AppStateManager$e;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCOPE_APP_STATE:Lcom/google/android/gms/common/api/Scope;

.field static final yH:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/internal/ga;",
            ">;"
        }
    .end annotation
.end field

.field private static final yI:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/ga;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    #@0
    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/appstate/AppStateManager;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@7
    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$1;

    #@9
    invoke-direct {v0}, Lcom/google/android/gms/appstate/AppStateManager$1;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/gms/appstate/AppStateManager;->yI:Lcom/google/android/gms/common/api/Api$b;

    #@e
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    #@10
    const-string v1, "https://www.googleapis.com/auth/appstate"

    #@12
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    #@15
    sput-object v0, Lcom/google/android/gms/appstate/AppStateManager;->SCOPE_APP_STATE:Lcom/google/android/gms/common/api/Scope;

    #@17
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    #@19
    sget-object v1, Lcom/google/android/gms/appstate/AppStateManager;->yI:Lcom/google/android/gms/common/api/Api$b;

    #@1b
    sget-object v2, Lcom/google/android/gms/appstate/AppStateManager;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@1d
    const/4 v3, 0x1

    #@1e
    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    #@20
    const/4 v4, 0x0

    #@21
    sget-object v5, Lcom/google/android/gms/appstate/AppStateManager;->SCOPE_APP_STATE:Lcom/google/android/gms/common/api/Scope;

    #@23
    aput-object v5, v3, v4

    #@25
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    #@28
    sput-object v0, Lcom/google/android/gms/appstate/AppStateManager;->API:Lcom/google/android/gms/common/api/Api;

    #@2a
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/ga;
    .registers 5

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    if-eqz p0, :cond_23

    #@4
    move v0, v1

    #@5
    :goto_5
    const-string v3, "GoogleApiClient parameter is required."

    #@7
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@a
    invoke-interface {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    #@d
    move-result v0

    #@e
    const-string v3, "GoogleApiClient must be connected."

    #@10
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@13
    sget-object v0, Lcom/google/android/gms/appstate/AppStateManager;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@15
    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/google/android/gms/internal/ga;

    #@1b
    if-eqz v0, :cond_25

    #@1d
    :goto_1d
    const-string v2, "GoogleApiClient is not configured to use the AppState API. Pass AppStateManager.API into GoogleApiClient.Builder#addApi() to use this feature."

    #@1f
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@22
    return-object v0

    #@23
    :cond_23
    move v0, v2

    #@24
    goto :goto_5

    #@25
    :cond_25
    move v1, v2

    #@26
    goto :goto_1d
.end method

.method public static delete(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$5;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/gms/appstate/AppStateManager$5;-><init>(I)V

    #@5
    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static e(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateResult;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$2;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/appstate/AppStateManager$2;-><init>(Lcom/google/android/gms/common/api/Status;)V

    #@5
    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateResult;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/appstate/AppStateManager;->e(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getMaxNumKeys(Lcom/google/android/gms/common/api/GoogleApiClient;)I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/appstate/AppStateManager;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/ga;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga;->dV()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getMaxStateSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/appstate/AppStateManager;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/ga;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga;->dU()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static list(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateListResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$7;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/appstate/AppStateManager$7;-><init>()V

    #@5
    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static load(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$6;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/gms/appstate/AppStateManager$6;-><init>(I)V

    #@5
    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static resolve(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;[B)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I",
            "Ljava/lang/String;",
            "[B)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$8;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/appstate/AppStateManager$8;-><init>(ILjava/lang/String;[B)V

    #@5
    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$9;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/appstate/AppStateManager$9;-><init>()V

    #@5
    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static update(Lcom/google/android/gms/common/api/GoogleApiClient;I[B)V
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$3;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/appstate/AppStateManager$3;-><init>(I[B)V

    #@5
    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    return-void
.end method

.method public static updateImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;I[B)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I[B)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$4;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/appstate/AppStateManager$4;-><init>(I[B)V

    #@5
    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
