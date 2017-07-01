.class final Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;Landroid/os/Looper;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->this$0:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->this$0:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;

    #@2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4
    check-cast v0, Landroid/content/Intent;

    #@6
    invoke-virtual {v1, v0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->onHandleIntent(Landroid/content/Intent;)V

    #@9
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->this$0:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;

    #@b
    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->shouldStop()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_26

    #@11
    const-string v0, "CancellableIntentService"

    #@13
    const-string v1, "stopSelf"

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->this$0:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;

    #@1a
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@1c
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->stopSelf(I)V

    #@1f
    const-string v0, "CancellableIntentService"

    #@21
    const-string v1, "afterStopSelf"

    #@23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    :cond_26
    return-void
.end method
