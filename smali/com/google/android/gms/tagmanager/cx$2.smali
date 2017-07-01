.class Lcom/google/android/gms/tagmanager/cx$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cx;->cG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahV:Lcom/google/android/gms/tagmanager/cx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cx;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cx$2;->ahV:Lcom/google/android/gms/tagmanager/cx;

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
    if-ne v4, v0, :cond_44

    #@5
    invoke-static {}, Lcom/google/android/gms/tagmanager/cx;->cJ()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_44

    #@11
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx$2;->ahV:Lcom/google/android/gms/tagmanager/cx;

    #@13
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->cq()V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx$2;->ahV:Lcom/google/android/gms/tagmanager/cx;

    #@18
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cx;->b(Lcom/google/android/gms/tagmanager/cx;)I

    #@1b
    move-result v0

    #@1c
    if-lez v0, :cond_44

    #@1e
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx$2;->ahV:Lcom/google/android/gms/tagmanager/cx;

    #@20
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cx;->c(Lcom/google/android/gms/tagmanager/cx;)Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_44

    #@26
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx$2;->ahV:Lcom/google/android/gms/tagmanager/cx;

    #@28
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cx;->d(Lcom/google/android/gms/tagmanager/cx;)Landroid/os/Handler;

    #@2b
    move-result-object v0

    #@2c
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cx$2;->ahV:Lcom/google/android/gms/tagmanager/cx;

    #@2e
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/cx;->d(Lcom/google/android/gms/tagmanager/cx;)Landroid/os/Handler;

    #@31
    move-result-object v1

    #@32
    invoke-static {}, Lcom/google/android/gms/tagmanager/cx;->cJ()Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@39
    move-result-object v1

    #@3a
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cx$2;->ahV:Lcom/google/android/gms/tagmanager/cx;

    #@3c
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/cx;->b(Lcom/google/android/gms/tagmanager/cx;)I

    #@3f
    move-result v2

    #@40
    int-to-long v2, v2

    #@41
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@44
    :cond_44
    return v4
.end method
