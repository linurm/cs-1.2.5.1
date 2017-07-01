.class public Lcom/apportable/SeekBarHandler;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private context:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/apportable/SeekBarHandler;->context:J

    #@5
    return-void
.end method

.method private static native AndroidSeekBarEvent(JLandroid/widget/SeekBar;IIZ)V
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 10

    #@0
    iget-wide v0, p0, Lcom/apportable/SeekBarHandler;->context:J

    #@2
    const/4 v3, 0x0

    #@3
    move-object v2, p1

    #@4
    move v4, p2

    #@5
    move v5, p3

    #@6
    invoke-static/range {v0 .. v5}, Lcom/apportable/SeekBarHandler;->AndroidSeekBarEvent(JLandroid/widget/SeekBar;IIZ)V

    #@9
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 8

    #@0
    const/4 v3, 0x1

    #@1
    iget-wide v0, p0, Lcom/apportable/SeekBarHandler;->context:J

    #@3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    #@6
    move-result v4

    #@7
    move-object v2, p1

    #@8
    move v5, v3

    #@9
    invoke-static/range {v0 .. v5}, Lcom/apportable/SeekBarHandler;->AndroidSeekBarEvent(JLandroid/widget/SeekBar;IIZ)V

    #@c
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 8

    #@0
    iget-wide v0, p0, Lcom/apportable/SeekBarHandler;->context:J

    #@2
    const/4 v3, -0x1

    #@3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    #@6
    move-result v4

    #@7
    const/4 v5, 0x1

    #@8
    move-object v2, p1

    #@9
    invoke-static/range {v0 .. v5}, Lcom/apportable/SeekBarHandler;->AndroidSeekBarEvent(JLandroid/widget/SeekBar;IIZ)V

    #@c
    return-void
.end method
