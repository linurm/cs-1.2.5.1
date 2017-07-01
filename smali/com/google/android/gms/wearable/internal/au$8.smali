.class Lcom/google/android/gms/wearable/internal/au$8;
.super Lcom/google/android/gms/wearable/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/au;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic alU:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

.field final synthetic amh:Lcom/google/android/gms/wearable/internal/au;

.field final synthetic ami:Lcom/google/android/gms/common/api/a$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/common/api/a$d;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$8;->amh:Lcom/google/android/gms/wearable/internal/au;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$8;->alU:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/au$8;->ami:Lcom/google/android/gms/common/api/a$d;

    #@6
    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_19

    #@6
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$8;->amh:Lcom/google/android/gms/wearable/internal/au;

    #@8
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/au;->c(Lcom/google/android/gms/wearable/internal/au;)Ljava/util/HashMap;

    #@b
    move-result-object v1

    #@c
    monitor-enter v1

    #@d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$8;->amh:Lcom/google/android/gms/wearable/internal/au;

    #@f
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/au;->c(Lcom/google/android/gms/wearable/internal/au;)Ljava/util/HashMap;

    #@12
    move-result-object v0

    #@13
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/au$8;->alU:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    #@15
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1f

    #@19
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$8;->ami:Lcom/google/android/gms/common/api/a$d;

    #@1b
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@1e
    return-void

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    #@21
    throw v0
.end method
