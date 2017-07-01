.class Lcom/google/android/gms/wearable/WearableListenerService$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/WearableListenerService$a;->Y(Lcom/google/android/gms/common/data/DataHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic alv:Lcom/google/android/gms/common/data/DataHolder;

.field final synthetic alw:Lcom/google/android/gms/wearable/WearableListenerService$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$a;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$1;->alw:Lcom/google/android/gms/wearable/WearableListenerService$a;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$1;->alv:Lcom/google/android/gms/common/data/DataHolder;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    new-instance v1, Lcom/google/android/gms/wearable/DataEventBuffer;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$1;->alv:Lcom/google/android/gms/common/data/DataHolder;

    #@4
    invoke-direct {v1, v0}, Lcom/google/android/gms/wearable/DataEventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$1;->alw:Lcom/google/android/gms/wearable/WearableListenerService$a;

    #@9
    iget-object v0, v0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/WearableListenerService;->onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    #@e
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/DataEventBuffer;->release()V

    #@11
    return-void

    #@12
    :catchall_12
    move-exception v0

    #@13
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/DataEventBuffer;->release()V

    #@16
    throw v0
.end method
