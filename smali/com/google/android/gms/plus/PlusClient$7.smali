.class Lcom/google/android/gms/plus/PlusClient$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/plus/PlusClient;->revokeAccessAndDisconnect(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/a$d",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic abv:Lcom/google/android/gms/plus/PlusClient;

.field final synthetic abx:Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$7;->abv:Lcom/google/android/gms/plus/PlusClient;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/plus/PlusClient$7;->abx:Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusClient$7;->al(Lcom/google/android/gms/common/api/Status;)V

    #@5
    return-void
.end method

.method public al(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$7;->abx:Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatus()Lcom/google/android/gms/common/api/Status;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->eR()Lcom/google/android/gms/common/ConnectionResult;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;->onAccessRevoked(Lcom/google/android/gms/common/ConnectionResult;)V

    #@d
    return-void
.end method
