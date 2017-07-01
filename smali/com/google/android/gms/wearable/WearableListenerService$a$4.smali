.class Lcom/google/android/gms/wearable/WearableListenerService$a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/WearableListenerService$a;->b(Lcom/google/android/gms/wearable/internal/ai;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic alw:Lcom/google/android/gms/wearable/WearableListenerService$a;

.field final synthetic aly:Lcom/google/android/gms/wearable/internal/ai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$a;Lcom/google/android/gms/wearable/internal/ai;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$4;->alw:Lcom/google/android/gms/wearable/WearableListenerService$a;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$4;->aly:Lcom/google/android/gms/wearable/internal/ai;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$4;->alw:Lcom/google/android/gms/wearable/WearableListenerService$a;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alu:Lcom/google/android/gms/wearable/WearableListenerService;

    #@4
    iget-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$4;->aly:Lcom/google/android/gms/wearable/internal/ai;

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/WearableListenerService;->onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V

    #@9
    return-void
.end method
