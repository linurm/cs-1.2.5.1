.class abstract Lcom/google/android/gms/appstate/AppStateManager$d;
.super Lcom/google/android/gms/appstate/AppStateManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appstate/AppStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/appstate/AppStateManager$a",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/appstate/AppStateManager$a;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/appstate/AppStateManager$d;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$d;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    return-object p1
.end method
