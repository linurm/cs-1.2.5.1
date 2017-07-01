.class public Lcom/google/android/gms/drive/internal/x;
.super Lcom/google/android/gms/drive/internal/ac$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/internal/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/gms/drive/events/DriveEvent;",
        ">",
        "Lcom/google/android/gms/drive/internal/ac$a;"
    }
.end annotation


# instance fields
.field private final Iq:I

.field private final Jn:Lcom/google/android/gms/drive/events/DriveEvent$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/events/DriveEvent$Listener",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final Jo:Lcom/google/android/gms/drive/internal/x$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/internal/x$a",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;ILcom/google/android/gms/drive/events/DriveEvent$Listener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "I",
            "Lcom/google/android/gms/drive/events/DriveEvent$Listener",
            "<TC;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/ac$a;-><init>()V

    #@3
    iput p2, p0, Lcom/google/android/gms/drive/internal/x;->Iq:I

    #@5
    iput-object p3, p0, Lcom/google/android/gms/drive/internal/x;->Jn:Lcom/google/android/gms/drive/events/DriveEvent$Listener;

    #@7
    new-instance v0, Lcom/google/android/gms/drive/internal/x$a;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/x$a;-><init>(Landroid/os/Looper;Lcom/google/android/gms/drive/internal/x$1;)V

    #@d
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/x;->Jo:Lcom/google/android/gms/drive/internal/x$a;

    #@f
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/internal/OnEventResponse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget v0, p0, Lcom/google/android/gms/drive/internal/x;->Iq:I

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->getEventType()I

    #@5
    move-result v1

    #@6
    if-ne v0, v1, :cond_30

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/hm;->A(Z)V

    #@c
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->getEventType()I

    #@f
    move-result v0

    #@10
    packed-switch v0, :pswitch_data_4a

    #@13
    const-string v0, "EventCallback"

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v2, "Unexpected event type:"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->getEventType()I

    #@23
    move-result v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    :goto_2f
    return-void

    #@30
    :cond_30
    const/4 v0, 0x0

    #@31
    goto :goto_9

    #@32
    :pswitch_32
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/x;->Jo:Lcom/google/android/gms/drive/internal/x$a;

    #@34
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/x;->Jn:Lcom/google/android/gms/drive/events/DriveEvent$Listener;

    #@36
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->gw()Lcom/google/android/gms/drive/events/ChangeEvent;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/internal/x$a;->a(Lcom/google/android/gms/drive/events/DriveEvent$Listener;Lcom/google/android/gms/drive/events/DriveEvent;)V

    #@3d
    goto :goto_2f

    #@3e
    :pswitch_3e
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/x;->Jo:Lcom/google/android/gms/drive/internal/x$a;

    #@40
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/x;->Jn:Lcom/google/android/gms/drive/events/DriveEvent$Listener;

    #@42
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->gx()Lcom/google/android/gms/drive/events/FileConflictEvent;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/internal/x$a;->a(Lcom/google/android/gms/drive/events/DriveEvent$Listener;Lcom/google/android/gms/drive/events/DriveEvent;)V

    #@49
    goto :goto_2f

    #@4a
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_32
        :pswitch_3e
    .end packed-switch
.end method
