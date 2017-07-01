.class Lcom/google/android/gms/drive/internal/x$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/google/android/gms/drive/events/DriveEvent;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/drive/internal/x$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/x$a;-><init>(Landroid/os/Looper;)V

    #@3
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/events/DriveEvent$Listener;Lcom/google/android/gms/drive/events/DriveEvent;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/events/DriveEvent$Listener",
            "<TE;>;TE;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    new-instance v1, Landroid/util/Pair;

    #@3
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/internal/x$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/x$a;->sendMessage(Landroid/os/Message;)Z

    #@d
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    #@0
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_1e

    #@5
    const-string v0, "EventCallback"

    #@7
    const-string v1, "Don\'t know how to handle this event"

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    :goto_c
    return-void

    #@d
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f
    check-cast v0, Landroid/util/Pair;

    #@11
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@13
    check-cast v1, Lcom/google/android/gms/drive/events/DriveEvent$Listener;

    #@15
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@17
    check-cast v0, Lcom/google/android/gms/drive/events/DriveEvent;

    #@19
    invoke-interface {v1, v0}, Lcom/google/android/gms/drive/events/DriveEvent$Listener;->onEvent(Lcom/google/android/gms/drive/events/DriveEvent;)V

    #@1c
    goto :goto_c

    #@1d
    nop

    #@1e
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method
