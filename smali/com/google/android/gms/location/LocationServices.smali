.class public Lcom/google/android/gms/location/LocationServices;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/LocationServices$a;
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

.field public static FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

.field public static GeofencingApi:Lcom/google/android/gms/location/GeofencingApi;

.field private static final yH:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/internal/jg;",
            ">;"
        }
    .end annotation
.end field

.field private static final yI:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/jg;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
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
    sput-object v0, Lcom/google/android/gms/location/LocationServices;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@7
    new-instance v0, Lcom/google/android/gms/location/LocationServices$1;

    #@9
    invoke-direct {v0}, Lcom/google/android/gms/location/LocationServices$1;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/gms/location/LocationServices;->yI:Lcom/google/android/gms/common/api/Api$b;

    #@e
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    #@10
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->yI:Lcom/google/android/gms/common/api/Api$b;

    #@12
    sget-object v2, Lcom/google/android/gms/location/LocationServices;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@14
    const/4 v3, 0x0

    #@15
    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    #@17
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    #@1a
    sput-object v0, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    #@1c
    new-instance v0, Lcom/google/android/gms/internal/jb;

    #@1e
    invoke-direct {v0}, Lcom/google/android/gms/internal/jb;-><init>()V

    #@21
    sput-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    #@23
    new-instance v0, Lcom/google/android/gms/internal/jc;

    #@25
    invoke-direct {v0}, Lcom/google/android/gms/internal/jc;-><init>()V

    #@28
    sput-object v0, Lcom/google/android/gms/location/LocationServices;->GeofencingApi:Lcom/google/android/gms/location/GeofencingApi;

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

.method public static e(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/jg;
    .registers 5

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    if-eqz p0, :cond_1a

    #@4
    move v0, v1

    #@5
    :goto_5
    const-string v3, "GoogleApiClient parameter is required."

    #@7
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@a
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@c
    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/internal/jg;

    #@12
    if-eqz v0, :cond_1c

    #@14
    :goto_14
    const-string v2, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature."

    #@16
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@19
    return-object v0

    #@1a
    :cond_1a
    move v0, v2

    #@1b
    goto :goto_5

    #@1c
    :cond_1c
    move v1, v2

    #@1d
    goto :goto_14
.end method

.method static synthetic iV()Lcom/google/android/gms/common/api/Api$c;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    return-object v0
.end method
