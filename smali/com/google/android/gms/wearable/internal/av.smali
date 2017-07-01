.class public Lcom/google/android/gms/wearable/internal/av;
.super Lcom/google/android/gms/wearable/internal/ac$a;


# instance fields
.field private final aml:Lcom/google/android/gms/wearable/DataApi$DataListener;

.field private final amm:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

.field private final amn:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

.field private final amo:[Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/DataApi$DataListener;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/wearable/NodeApi$NodeListener;[Landroid/content/IntentFilter;)V
    .registers 5

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/ac$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/av;->aml:Lcom/google/android/gms/wearable/DataApi$DataListener;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/av;->amm:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/av;->amn:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/av;->amo:[Landroid/content/IntentFilter;

    #@b
    return-void
.end method

.method public static a(Lcom/google/android/gms/wearable/DataApi$DataListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/av;
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v0, Lcom/google/android/gms/wearable/internal/av;

    #@3
    invoke-direct {v0, p0, v1, v1, p1}, Lcom/google/android/gms/wearable/internal/av;-><init>(Lcom/google/android/gms/wearable/DataApi$DataListener;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/wearable/NodeApi$NodeListener;[Landroid/content/IntentFilter;)V

    #@6
    return-object v0
.end method

.method public static a(Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/av;
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v0, Lcom/google/android/gms/wearable/internal/av;

    #@3
    invoke-direct {v0, v1, p0, v1, p1}, Lcom/google/android/gms/wearable/internal/av;-><init>(Lcom/google/android/gms/wearable/DataApi$DataListener;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/wearable/NodeApi$NodeListener;[Landroid/content/IntentFilter;)V

    #@6
    return-object v0
.end method

.method public static a(Lcom/google/android/gms/wearable/NodeApi$NodeListener;)Lcom/google/android/gms/wearable/internal/av;
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v0, Lcom/google/android/gms/wearable/internal/av;

    #@3
    invoke-direct {v0, v1, v1, p0, v1}, Lcom/google/android/gms/wearable/internal/av;-><init>(Lcom/google/android/gms/wearable/DataApi$DataListener;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/wearable/NodeApi$NodeListener;[Landroid/content/IntentFilter;)V

    #@6
    return-object v0
.end method


# virtual methods
.method public Y(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->aml:Lcom/google/android/gms/wearable/DataApi$DataListener;

    #@2
    if-eqz v0, :cond_17

    #@4
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->aml:Lcom/google/android/gms/wearable/DataApi$DataListener;

    #@6
    new-instance v1, Lcom/google/android/gms/wearable/DataEventBuffer;

    #@8
    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/DataEventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@b
    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/DataApi$DataListener;->onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    #@e
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    #@11
    :goto_11
    return-void

    #@12
    :catchall_12
    move-exception v0

    #@13
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    #@16
    throw v0

    #@17
    :cond_17
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    #@1a
    goto :goto_11
.end method

.method public a(Lcom/google/android/gms/wearable/internal/af;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->amm:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->amm:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    #@6
    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/MessageApi$MessageListener;->onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V

    #@9
    :cond_9
    return-void
.end method

.method public a(Lcom/google/android/gms/wearable/internal/ai;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->amn:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->amn:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    #@6
    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/NodeApi$NodeListener;->onPeerConnected(Lcom/google/android/gms/wearable/Node;)V

    #@9
    :cond_9
    return-void
.end method

.method public b(Lcom/google/android/gms/wearable/internal/ai;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->amn:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->amn:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    #@6
    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/NodeApi$NodeListener;->onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V

    #@9
    :cond_9
    return-void
.end method

.method public nu()[Landroid/content/IntentFilter;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->amo:[Landroid/content/IntentFilter;

    #@2
    return-object v0
.end method
