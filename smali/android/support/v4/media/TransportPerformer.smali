.class public abstract Landroid/support/v4/media/TransportPerformer;
.super Ljava/lang/Object;


# static fields
.field static final AUDIOFOCUS_GAIN:I = 0x1

.field static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field static final AUDIOFOCUS_LOSS:I = -0x1

.field static final AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 11

    #@0
    const/4 v7, 0x0

    #@1
    packed-switch p1, :pswitch_data_24

    #@4
    :goto_4
    if-eqz v7, :cond_20

    #@6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9
    move-result-wide v2

    #@a
    new-instance v1, Landroid/view/KeyEvent;

    #@c
    const/4 v6, 0x0

    #@d
    const/4 v8, 0x0

    #@e
    move-wide v4, v2

    #@f
    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    #@12
    invoke-virtual {p0, v7, v1}, Landroid/support/v4/media/TransportPerformer;->onMediaButtonDown(ILandroid/view/KeyEvent;)Z

    #@15
    new-instance v1, Landroid/view/KeyEvent;

    #@17
    const/4 v6, 0x1

    #@18
    const/4 v8, 0x0

    #@19
    move-wide v4, v2

    #@1a
    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    #@1d
    invoke-virtual {p0, v7, v1}, Landroid/support/v4/media/TransportPerformer;->onMediaButtonUp(ILandroid/view/KeyEvent;)Z

    #@20
    :cond_20
    return-void

    #@21
    :pswitch_21
    const/16 v7, 0x7f

    #@23
    goto :goto_4

    #@24
    :pswitch_data_24
    .packed-switch -0x1
        :pswitch_21
    .end packed-switch
.end method

.method public onGetBufferPercentage()I
    .registers 2

    #@0
    const/16 v0, 0x64

    #@2
    return v0
.end method

.method public abstract onGetCurrentPosition()J
.end method

.method public abstract onGetDuration()J
.end method

.method public onGetTransportControlFlags()I
    .registers 2

    #@0
    const/16 v0, 0x3c

    #@2
    return v0
.end method

.method public abstract onIsPlaying()Z
.end method

.method public onMediaButtonDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    #@0
    sparse-switch p1, :sswitch_data_20

    #@3
    :goto_3
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    :sswitch_5
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onStart()V

    #@8
    goto :goto_3

    #@9
    :sswitch_9
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onPause()V

    #@c
    goto :goto_3

    #@d
    :sswitch_d
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onStop()V

    #@10
    goto :goto_3

    #@11
    :sswitch_11
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onIsPlaying()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1b

    #@17
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onPause()V

    #@1a
    goto :goto_3

    #@1b
    :cond_1b
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onStart()V

    #@1e
    goto :goto_3

    #@1f
    nop

    #@20
    :sswitch_data_20
    .sparse-switch
        0x4f -> :sswitch_11
        0x55 -> :sswitch_11
        0x56 -> :sswitch_d
        0x7e -> :sswitch_5
        0x7f -> :sswitch_9
    .end sparse-switch
.end method

.method public onMediaButtonUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public abstract onPause()V
.end method

.method public abstract onSeekTo(J)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method
