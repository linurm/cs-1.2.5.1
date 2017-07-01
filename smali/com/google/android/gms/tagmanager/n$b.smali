.class Lcom/google/android/gms/tagmanager/n$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final aeG:Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;

.field final synthetic aeH:Lcom/google/android/gms/tagmanager/n;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/n;Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;Landroid/os/Looper;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/n$b;->aeH:Lcom/google/android/gms/tagmanager/n;

    #@2
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/n$b;->aeG:Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;

    #@7
    return-void
.end method


# virtual methods
.method public bK(Ljava/lang/String;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tagmanager/n$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/n$b;->sendMessage(Landroid/os/Message;)Z

    #@8
    return-void
.end method

.method protected bL(Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n$b;->aeG:Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/n$b;->aeH:Lcom/google/android/gms/tagmanager/n;

    #@4
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;->onContainerAvailable(Lcom/google/android/gms/tagmanager/ContainerHolder;Ljava/lang/String;)V

    #@7
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    #@0
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_14

    #@5
    const-string v0, "Don\'t know how to handle this message."

    #@7
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@a
    :goto_a
    return-void

    #@b
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d
    check-cast v0, Ljava/lang/String;

    #@f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/n$b;->bL(Ljava/lang/String;)V

    #@12
    goto :goto_a

    #@13
    nop

    #@14
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method
