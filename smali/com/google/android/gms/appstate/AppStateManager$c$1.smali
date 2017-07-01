.class Lcom/google/android/gms/appstate/AppStateManager$c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appstate/AppStateManager$StateListResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appstate/AppStateManager$c;->h(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yJ:Lcom/google/android/gms/common/api/Status;

.field final synthetic yP:Lcom/google/android/gms/appstate/AppStateManager$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/appstate/AppStateManager$c;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/appstate/AppStateManager$c$1;->yP:Lcom/google/android/gms/appstate/AppStateManager$c;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateManager$c$1;->yJ:Lcom/google/android/gms/common/api/Status;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public getStateBuffer()Lcom/google/android/gms/appstate/AppStateBuffer;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/appstate/AppStateBuffer;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/google/android/gms/appstate/AppStateBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@6
    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateManager$c$1;->yJ:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method
