.class public Lcom/google/android/gms/location/ActivityRecognition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/ActivityRecognition$a;
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

.field public static ActivityRecognitionApi:Lcom/google/android/gms/location/ActivityRecognitionApi; = null

.field public static final CLIENT_NAME:Ljava/lang/String; = "activity_recognition"

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
    sput-object v0, Lcom/google/android/gms/location/ActivityRecognition;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@7
    new-instance v0, Lcom/google/android/gms/location/ActivityRecognition$1;

    #@9
    invoke-direct {v0}, Lcom/google/android/gms/location/ActivityRecognition$1;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/gms/location/ActivityRecognition;->yI:Lcom/google/android/gms/common/api/Api$b;

    #@e
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    #@10
    sget-object v1, Lcom/google/android/gms/location/ActivityRecognition;->yI:Lcom/google/android/gms/common/api/Api$b;

    #@12
    sget-object v2, Lcom/google/android/gms/location/ActivityRecognition;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@14
    const/4 v3, 0x0

    #@15
    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    #@17
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    #@1a
    sput-object v0, Lcom/google/android/gms/location/ActivityRecognition;->API:Lcom/google/android/gms/common/api/Api;

    #@1c
    new-instance v0, Lcom/google/android/gms/internal/ja;

    #@1e
    invoke-direct {v0}, Lcom/google/android/gms/internal/ja;-><init>()V

    #@21
    sput-object v0, Lcom/google/android/gms/location/ActivityRecognition;->ActivityRecognitionApi:Lcom/google/android/gms/location/ActivityRecognitionApi;

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

.method static synthetic iV()Lcom/google/android/gms/common/api/Api$c;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/location/ActivityRecognition;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    return-object v0
.end method
