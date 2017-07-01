.class public abstract Lcom/google/android/gms/internal/dq;
.super Lcom/google/android/gms/internal/em;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dq$a;,
        Lcom/google/android/gms/internal/dq$b;
    }
.end annotation


# instance fields
.field private final ne:Lcom/google/android/gms/internal/ds;

.field private final pT:Lcom/google/android/gms/internal/dp$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/dp$a;)V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/em;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/dq;->ne:Lcom/google/android/gms/internal/ds;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/dq;->pT:Lcom/google/android/gms/internal/dp$a;

    #@7
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/dw;Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/du;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/dw;->b(Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/du;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_4} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_14

    #@4
    move-result-object v0

    #@5
    :goto_5
    return-object v0

    #@6
    :catch_6
    move-exception v1

    #@7
    const-string v2, "Could not fetch ad response from ad request service."

    #@9
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c
    goto :goto_5

    #@d
    :catch_d
    move-exception v1

    #@e
    const-string v2, "Could not fetch ad response from ad request service due to an Exception."

    #@10
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    goto :goto_5

    #@14
    :catch_14
    move-exception v1

    #@15
    const-string v2, "Could not fetch ad response from ad request service due to an Exception."

    #@17
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    goto :goto_5
.end method


# virtual methods
.method public final bh()V
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->bt()Lcom/google/android/gms/internal/dw;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_15

    #@6
    new-instance v0, Lcom/google/android/gms/internal/du;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/du;-><init>(I)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_24

    #@c
    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->bs()V

    #@f
    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->pT:Lcom/google/android/gms/internal/dp$a;

    #@11
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/dp$a;->a(Lcom/google/android/gms/internal/du;)V

    #@14
    return-void

    #@15
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->ne:Lcom/google/android/gms/internal/ds;

    #@17
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/dw;Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/du;

    #@1a
    move-result-object v0

    #@1b
    if-nez v0, :cond_c

    #@1d
    new-instance v0, Lcom/google/android/gms/internal/du;

    #@1f
    const/4 v1, 0x0

    #@20
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/du;-><init>(I)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_24

    #@23
    goto :goto_c

    #@24
    :catchall_24
    move-exception v0

    #@25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->bs()V

    #@28
    throw v0
.end method

.method public abstract bs()V
.end method

.method public abstract bt()Lcom/google/android/gms/internal/dw;
.end method

.method public final onStop()V
    .registers 1

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->bs()V

    #@3
    return-void
.end method
