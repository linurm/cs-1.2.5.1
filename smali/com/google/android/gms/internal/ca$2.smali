.class Lcom/google/android/gms/internal/ca$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ca;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nW:Lcom/google/android/gms/internal/ca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ca;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/ca$2;->nW:Lcom/google/android/gms/internal/ca;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ca$2;->nW:Lcom/google/android/gms/internal/ca;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/ca;->a(Lcom/google/android/gms/internal/ca;)Lcom/google/android/gms/internal/bv;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->onAdOpened()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    #@9
    :goto_9
    return-void

    #@a
    :catch_a
    move-exception v0

    #@b
    const-string v1, "Could not call onAdOpened."

    #@d
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    goto :goto_9
.end method
