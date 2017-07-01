.class public abstract Lcom/google/android/gms/common/api/a$b;
.super Lcom/google/android/gms/common/api/a$a;

# interfaces
.implements Lcom/google/android/gms/common/api/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        "A::",
        "Lcom/google/android/gms/common/api/Api$a;",
        ">",
        "Lcom/google/android/gms/common/api/a$a",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/c$c",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final Dn:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<TA;>;"
        }
    .end annotation
.end field

.field private Dy:Lcom/google/android/gms/common/api/c$a;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/Api$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$c",
            "<TA;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/common/api/Api$c;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/common/api/a$b;->Dn:Lcom/google/android/gms/common/api/Api$c;

    #@b
    return-void
.end method

.method private a(Landroid/os/RemoteException;)V
    .registers 6

    #@0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x0

    #@9
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    #@c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$b;->m(Lcom/google/android/gms/common/api/Status;)V

    #@f
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/common/api/Api$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public a(Lcom/google/android/gms/common/api/c$a;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/api/a$b;->Dy:Lcom/google/android/gms/common/api/c$a;

    #@2
    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/common/api/a$c;

    #@2
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Api$a;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/a$c;-><init>(Landroid/os/Looper;)V

    #@9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$b;->a(Lcom/google/android/gms/common/api/a$c;)V

    #@c
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a$b;->a(Lcom/google/android/gms/common/api/Api$a;)V
    :try_end_f
    .catch Landroid/os/DeadObjectException; {:try_start_c .. :try_end_f} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_15

    #@f
    :goto_f
    return-void

    #@10
    :catch_10
    move-exception v0

    #@11
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$b;->a(Landroid/os/RemoteException;)V

    #@14
    throw v0

    #@15
    :catch_15
    move-exception v0

    #@16
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$b;->a(Landroid/os/RemoteException;)V

    #@19
    goto :goto_f
.end method

.method public final eB()Lcom/google/android/gms/common/api/Api$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$c",
            "<TA;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$b;->Dn:Lcom/google/android/gms/common/api/Api$c;

    #@2
    return-object v0
.end method

.method protected eD()V
    .registers 2

    #@0
    invoke-super {p0}, Lcom/google/android/gms/common/api/a$a;->eD()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$b;->Dy:Lcom/google/android/gms/common/api/c$a;

    #@5
    if-eqz v0, :cond_f

    #@7
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$b;->Dy:Lcom/google/android/gms/common/api/c$a;

    #@9
    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/c$a;->b(Lcom/google/android/gms/common/api/c$c;)V

    #@c
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lcom/google/android/gms/common/api/a$b;->Dy:Lcom/google/android/gms/common/api/c$a;

    #@f
    :cond_f
    return-void
.end method

.method public eG()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final m(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_14

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    const-string v1, "Failed result must not be success"

    #@9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@c
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a$b;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$b;->b(Lcom/google/android/gms/common/api/Result;)V

    #@13
    return-void

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    goto :goto_7
.end method
