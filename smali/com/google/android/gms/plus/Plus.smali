.class public final Lcom/google/android/gms/plus/Plus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/Plus$PlusOptions;,
        Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;,
        Lcom/google/android/gms/plus/Plus$a;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/plus/Plus$PlusOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final AccountApi:Lcom/google/android/gms/plus/Account;

.field public static final MomentsApi:Lcom/google/android/gms/plus/Moments;

.field public static final PeopleApi:Lcom/google/android/gms/plus/People;

.field public static final SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/Scope;

.field public static final abp:Lcom/google/android/gms/plus/b;

.field public static final abq:Lcom/google/android/gms/plus/a;

.field public static final yH:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/plus/internal/e;",
            ">;"
        }
    .end annotation
.end field

.field static final yI:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/plus/internal/e;",
            "Lcom/google/android/gms/plus/Plus$PlusOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/plus/Plus;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@7
    new-instance v0, Lcom/google/android/gms/plus/Plus$1;

    #@9
    invoke-direct {v0}, Lcom/google/android/gms/plus/Plus$1;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/gms/plus/Plus;->yI:Lcom/google/android/gms/common/api/Api$b;

    #@e
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    #@10
    sget-object v1, Lcom/google/android/gms/plus/Plus;->yI:Lcom/google/android/gms/common/api/Api$b;

    #@12
    sget-object v2, Lcom/google/android/gms/plus/Plus;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@14
    const/4 v3, 0x0

    #@15
    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    #@17
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    #@1a
    sput-object v0, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    #@1c
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    #@1e
    const-string v1, "https://www.googleapis.com/auth/plus.login"

    #@20
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    #@23
    sput-object v0, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    #@25
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    #@27
    const-string v1, "https://www.googleapis.com/auth/plus.me"

    #@29
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    #@2c
    sput-object v0, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/Scope;

    #@2e
    new-instance v0, Lcom/google/android/gms/internal/kl;

    #@30
    invoke-direct {v0}, Lcom/google/android/gms/internal/kl;-><init>()V

    #@33
    sput-object v0, Lcom/google/android/gms/plus/Plus;->MomentsApi:Lcom/google/android/gms/plus/Moments;

    #@35
    new-instance v0, Lcom/google/android/gms/internal/km;

    #@37
    invoke-direct {v0}, Lcom/google/android/gms/internal/km;-><init>()V

    #@3a
    sput-object v0, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    #@3c
    new-instance v0, Lcom/google/android/gms/internal/ki;

    #@3e
    invoke-direct {v0}, Lcom/google/android/gms/internal/ki;-><init>()V

    #@41
    sput-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    #@43
    new-instance v0, Lcom/google/android/gms/internal/kk;

    #@45
    invoke-direct {v0}, Lcom/google/android/gms/internal/kk;-><init>()V

    #@48
    sput-object v0, Lcom/google/android/gms/plus/Plus;->abp:Lcom/google/android/gms/plus/b;

    #@4a
    new-instance v0, Lcom/google/android/gms/internal/kj;

    #@4c
    invoke-direct {v0}, Lcom/google/android/gms/internal/kj;-><init>()V

    #@4f
    sput-object v0, Lcom/google/android/gms/plus/Plus;->abq:Lcom/google/android/gms/plus/a;

    #@51
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/plus/internal/e;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/plus/internal/e;",
            ">;)",
            "Lcom/google/android/gms/plus/internal/e;"
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    if-eqz p0, :cond_21

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
    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/plus/internal/e;

    #@19
    if-eqz v0, :cond_23

    #@1b
    :goto_1b
    const-string v2, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature."

    #@1d
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@20
    return-object v0

    #@21
    :cond_21
    move v0, v2

    #@22
    goto :goto_5

    #@23
    :cond_23
    move v1, v2

    #@24
    goto :goto_1b
.end method
