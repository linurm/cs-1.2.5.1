.class public Lcom/google/android/gms/wearable/Wearable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/Wearable$WearableOptions;,
        Lcom/google/android/gms/wearable/Wearable$WearableOptions$Builder;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/wearable/Wearable$WearableOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final DataApi:Lcom/google/android/gms/wearable/DataApi;

.field public static final MessageApi:Lcom/google/android/gms/wearable/MessageApi;

.field public static final NodeApi:Lcom/google/android/gms/wearable/NodeApi;

.field public static final alp:Lcom/google/android/gms/wearable/b;

.field public static final yH:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/wearable/internal/au;",
            ">;"
        }
    .end annotation
.end field

.field private static final yI:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/wearable/internal/au;",
            "Lcom/google/android/gms/wearable/Wearable$WearableOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/f;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/f;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    #@7
    new-instance v0, Lcom/google/android/gms/wearable/internal/ae;

    #@9
    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/ae;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    #@e
    new-instance v0, Lcom/google/android/gms/wearable/internal/ah;

    #@10
    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/ah;-><init>()V

    #@13
    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    #@15
    new-instance v0, Lcom/google/android/gms/wearable/internal/e;

    #@17
    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/e;-><init>()V

    #@1a
    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->alp:Lcom/google/android/gms/wearable/b;

    #@1c
    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    #@1e
    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    #@21
    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@23
    new-instance v0, Lcom/google/android/gms/wearable/Wearable$1;

    #@25
    invoke-direct {v0}, Lcom/google/android/gms/wearable/Wearable$1;-><init>()V

    #@28
    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->yI:Lcom/google/android/gms/common/api/Api$b;

    #@2a
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    #@2c
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->yI:Lcom/google/android/gms/common/api/Api$b;

    #@2e
    sget-object v2, Lcom/google/android/gms/wearable/Wearable;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@30
    const/4 v3, 0x0

    #@31
    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    #@33
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    #@36
    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->API:Lcom/google/android/gms/common/api/Api;

    #@38
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
