.class abstract Lcom/google/android/gms/internal/fy$c;
.super Lcom/google/android/gms/common/api/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/a$b",
        "<TT;",
        "Lcom/google/android/gms/internal/fx;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ff;->xI:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$b;-><init>(Lcom/google/android/gms/common/api/Api$c;)V

    #@5
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    check-cast p1, Lcom/google/android/gms/internal/fx;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fy$c;->a(Lcom/google/android/gms/internal/fx;)V

    #@5
    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/internal/fu;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected final a(Lcom/google/android/gms/internal/fx;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fx;->dR()Lcom/google/android/gms/internal/fu;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fy$c;->a(Lcom/google/android/gms/internal/fu;)V

    #@7
    return-void
.end method
