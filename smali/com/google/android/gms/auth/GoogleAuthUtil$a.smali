.class Lcom/google/android/gms/auth/GoogleAuthUtil$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/GoogleAuthUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final lz:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_10

    #@6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@9
    move-result-object v0

    #@a
    :goto_a
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@d
    iput-object p1, p0, Lcom/google/android/gms/auth/GoogleAuthUtil$a;->lz:Landroid/content/Context;

    #@f
    return-void

    #@10
    :cond_10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@13
    move-result-object v0

    #@14
    goto :goto_a
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    #@0
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_17

    #@5
    iget-object v0, p0, Lcom/google/android/gms/auth/GoogleAuthUtil$a;->lz:Landroid/content/Context;

    #@7
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    #@a
    move-result v0

    #@b
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_16

    #@11
    iget-object v1, p0, Lcom/google/android/gms/auth/GoogleAuthUtil$a;->lz:Landroid/content/Context;

    #@13
    invoke-static {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorNotification(ILandroid/content/Context;)V

    #@16
    :cond_16
    :goto_16
    return-void

    #@17
    :cond_17
    const-string v0, "GoogleAuthUtil"

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string v2, "Don\'t know how to handle this message: "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget v2, p1, Landroid/os/Message;->what:I

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    goto :goto_16
.end method
