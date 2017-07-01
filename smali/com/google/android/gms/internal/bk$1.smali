.class Lcom/google/android/gms/internal/bk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bk;->a(JJ)Lcom/google/android/gms/internal/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ni:Lcom/google/android/gms/internal/bq;

.field final synthetic nj:Lcom/google/android/gms/internal/bk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/bq;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/bk$1;->nj:Lcom/google/android/gms/internal/bk;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/bk$1;->ni:Lcom/google/android/gms/internal/bq;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bk$1;->ni:Lcom/google/android/gms/internal/bq;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->nN:Lcom/google/android/gms/internal/bu;

    #@4
    invoke-interface {v0}, Lcom/google/android/gms/internal/bu;->destroy()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    #@7
    :goto_7
    return-void

    #@8
    :catch_8
    move-exception v0

    #@9
    const-string v1, "Could not destroy mediation adapter."

    #@b
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e
    goto :goto_7
.end method
