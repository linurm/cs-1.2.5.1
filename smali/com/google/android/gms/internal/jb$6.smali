.class Lcom/google/android/gms/internal/jb$6;
.super Lcom/google/android/gms/internal/jb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jb;->setMockMode(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic VA:Z

.field final synthetic Vy:Lcom/google/android/gms/internal/jb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jb;Z)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/jb$6;->Vy:Lcom/google/android/gms/internal/jb;

    #@2
    iput-boolean p2, p0, Lcom/google/android/gms/internal/jb$6;->VA:Z

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jb$a;-><init>(Lcom/google/android/gms/internal/jb$1;)V

    #@8
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
    check-cast p1, Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jb$6;->a(Lcom/google/android/gms/internal/jg;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jg;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/jb$6;->VA:Z

    #@2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jg;->setMockMode(Z)V

    #@5
    sget-object v0, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jb$6;->b(Lcom/google/android/gms/common/api/Result;)V

    #@a
    return-void
.end method
