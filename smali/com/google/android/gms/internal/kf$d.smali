.class abstract Lcom/google/android/gms/internal/kf$d;
.super Lcom/google/android/gms/common/api/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/a$b",
        "<TR;",
        "Lcom/google/android/gms/internal/kg;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/panorama/Panorama;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$b;-><init>(Lcom/google/android/gms/common/api/Api$c;)V

    #@5
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Lcom/google/android/gms/internal/ke;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    check-cast p1, Lcom/google/android/gms/internal/kg;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kf$d;->a(Lcom/google/android/gms/internal/kg;)V

    #@5
    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/kg;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kg;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kg;->ft()Landroid/os/IInterface;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/google/android/gms/internal/ke;

    #@a
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/kf$d;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ke;)V

    #@d
    return-void
.end method
