.class abstract Lcom/google/android/gms/appstate/AppStateManager$c;
.super Lcom/google/android/gms/appstate/AppStateManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appstate/AppStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/appstate/AppStateManager$a",
        "<",
        "Lcom/google/android/gms/appstate/AppStateManager$StateListResult;",
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
    invoke-direct {p0}, Lcom/google/android/gms/appstate/AppStateManager$c;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$c;->h(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateListResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public h(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateListResult;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$c$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$c$1;-><init>(Lcom/google/android/gms/appstate/AppStateManager$c;Lcom/google/android/gms/common/api/Status;)V

    #@5
    return-object v0
.end method
