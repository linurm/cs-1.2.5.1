.class Lcom/google/android/gms/analytics/r$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/r;->cG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ug:Lcom/google/android/gms/analytics/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/r;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/r$2;->ug:Lcom/google/android/gms/analytics/r;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    #@0
    const/4 v4, 0x1

    #@1
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    if-ne v4, v0, :cond_55

    #@5
    invoke-static {}, Lcom/google/android/gms/analytics/r;->cJ()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_55

    #@11
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, v4}, Lcom/google/android/gms/analytics/u;->u(Z)V

    #@18
    iget-object v0, p0, Lcom/google/android/gms/analytics/r$2;->ug:Lcom/google/android/gms/analytics/r;

    #@1a
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/r;->dispatchLocalHits()V

    #@1d
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@20
    move-result-object v0

    #@21
    const/4 v1, 0x0

    #@22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->u(Z)V

    #@25
    iget-object v0, p0, Lcom/google/android/gms/analytics/r$2;->ug:Lcom/google/android/gms/analytics/r;

    #@27
    invoke-static {v0}, Lcom/google/android/gms/analytics/r;->b(Lcom/google/android/gms/analytics/r;)I

    #@2a
    move-result v0

    #@2b
    if-lez v0, :cond_55

    #@2d
    iget-object v0, p0, Lcom/google/android/gms/analytics/r$2;->ug:Lcom/google/android/gms/analytics/r;

    #@2f
    invoke-static {v0}, Lcom/google/android/gms/analytics/r;->c(Lcom/google/android/gms/analytics/r;)Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_55

    #@35
    iget-object v0, p0, Lcom/google/android/gms/analytics/r$2;->ug:Lcom/google/android/gms/analytics/r;

    #@37
    invoke-static {v0}, Lcom/google/android/gms/analytics/r;->d(Lcom/google/android/gms/analytics/r;)Landroid/os/Handler;

    #@3a
    move-result-object v0

    #@3b
    iget-object v1, p0, Lcom/google/android/gms/analytics/r$2;->ug:Lcom/google/android/gms/analytics/r;

    #@3d
    invoke-static {v1}, Lcom/google/android/gms/analytics/r;->d(Lcom/google/android/gms/analytics/r;)Landroid/os/Handler;

    #@40
    move-result-object v1

    #@41
    invoke-static {}, Lcom/google/android/gms/analytics/r;->cJ()Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@48
    move-result-object v1

    #@49
    iget-object v2, p0, Lcom/google/android/gms/analytics/r$2;->ug:Lcom/google/android/gms/analytics/r;

    #@4b
    invoke-static {v2}, Lcom/google/android/gms/analytics/r;->b(Lcom/google/android/gms/analytics/r;)I

    #@4e
    move-result v2

    #@4f
    mul-int/lit16 v2, v2, 0x3e8

    #@51
    int-to-long v2, v2

    #@52
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@55
    :cond_55
    return v4
.end method
