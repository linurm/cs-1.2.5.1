.class public final Lcom/google/android/gms/panorama/Panorama;
.super Ljava/lang/Object;


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

.field public static final PanoramaApi:Lcom/google/android/gms/panorama/PanoramaApi;

.field public static final yH:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/internal/kg;",
            ">;"
        }
    .end annotation
.end field

.field static final yI:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/kg;",
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
    sput-object v0, Lcom/google/android/gms/panorama/Panorama;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@7
    new-instance v0, Lcom/google/android/gms/panorama/Panorama$1;

    #@9
    invoke-direct {v0}, Lcom/google/android/gms/panorama/Panorama$1;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/gms/panorama/Panorama;->yI:Lcom/google/android/gms/common/api/Api$b;

    #@e
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    #@10
    sget-object v1, Lcom/google/android/gms/panorama/Panorama;->yI:Lcom/google/android/gms/common/api/Api$b;

    #@12
    sget-object v2, Lcom/google/android/gms/panorama/Panorama;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@14
    const/4 v3, 0x0

    #@15
    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    #@17
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    #@1a
    sput-object v0, Lcom/google/android/gms/panorama/Panorama;->API:Lcom/google/android/gms/common/api/Api;

    #@1c
    new-instance v0, Lcom/google/android/gms/internal/kf;

    #@1e
    invoke-direct {v0}, Lcom/google/android/gms/internal/kf;-><init>()V

    #@21
    sput-object v0, Lcom/google/android/gms/panorama/Panorama;->PanoramaApi:Lcom/google/android/gms/panorama/PanoramaApi;

    #@23
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
