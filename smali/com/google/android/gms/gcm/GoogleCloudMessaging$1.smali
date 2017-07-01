.class Lcom/google/android/gms/gcm/GoogleCloudMessaging$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/GoogleCloudMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ux:Lcom/google/android/gms/gcm/GoogleCloudMessaging;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/GoogleCloudMessaging;Landroid/os/Looper;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging$1;->Ux:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    #@0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/content/Intent;

    #@4
    iget-object v1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging$1;->Ux:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    #@6
    iget-object v1, v1, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->Uu:Ljava/util/concurrent/BlockingQueue;

    #@8
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    #@b
    return-void
.end method
