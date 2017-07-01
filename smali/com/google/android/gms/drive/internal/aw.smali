.class public Lcom/google/android/gms/drive/internal/aw;
.super Lcom/google/android/gms/drive/internal/c;


# instance fields
.field private final yR:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/c;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/aw;->yR:Lcom/google/android/gms/common/api/a$d;

    #@5
    return-void
.end method


# virtual methods
.method public o(Lcom/google/android/gms/common/api/Status;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aw;->yR:Lcom/google/android/gms/common/api/a$d;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@5
    return-void
.end method

.method public onSuccess()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aw;->yR:Lcom/google/android/gms/common/api/a$d;

    #@2
    sget-object v1, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@4
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@7
    return-void
.end method
