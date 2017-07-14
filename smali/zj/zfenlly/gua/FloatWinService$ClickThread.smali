.class Lzj/zfenlly/gua/FloatWinService$ClickThread;
.super Ljava/lang/Thread;
.source "FloatWinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzj/zfenlly/gua/FloatWinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClickThread"
.end annotation


# instance fields
.field downTime:J

.field eventTime:J

.field interval:I

.field isStart:Z

.field mInst:Landroid/app/Instrumentation;

.field final synthetic this$0:Lzj/zfenlly/gua/FloatWinService;

.field times:I


# direct methods
.method constructor <init>(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 1
    .param p1, "this$0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 749
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 752
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->getTimes()I
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$2100(Lzj/zfenlly/gua/FloatWinService;)I

    move-result v0

    iput v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->times:I

    .line 753
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # invokes: Lzj/zfenlly/gua/FloatWinService;->getInterval()I
    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$2200(Lzj/zfenlly/gua/FloatWinService;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->interval:I

    .line 754
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->mInst:Landroid/app/Instrumentation;

    .line 757
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->isStart:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 772
    iput-boolean v12, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->isStart:Z

    .line 773
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->this$0:Lzj/zfenlly/gua/FloatWinService;

    iget-object v0, v0, Lzj/zfenlly/gua/FloatWinService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->this$0:Lzj/zfenlly/gua/FloatWinService;

    iget-object v1, v1, Lzj/zfenlly/gua/FloatWinService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 775
    :cond_0
    iget v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->times:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->times:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->isStart:Z

    if-eqz v0, :cond_1

    .line 778
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->downTime:J

    .line 779
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->eventTime:J

    .line 780
    iget-wide v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->downTime:J

    iget-wide v2, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->eventTime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->CoordinateView:Lzj/zfenlly/gua/MZFloatView;
    invoke-static {v5}, Lzj/zfenlly/gua/FloatWinService;->access$2300(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/gua/MZFloatView;

    move-result-object v5

    iget v5, v5, Lzj/zfenlly/gua/MZFloatView;->x1:I

    int-to-float v5, v5

    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->CoordinateView:Lzj/zfenlly/gua/MZFloatView;
    invoke-static {v6}, Lzj/zfenlly/gua/FloatWinService;->access$2300(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/gua/MZFloatView;

    move-result-object v6

    iget v6, v6, Lzj/zfenlly/gua/MZFloatView;->y1:I

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 781
    .local v9, "me1":Landroid/view/MotionEvent;
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->mInst:Landroid/app/Instrumentation;

    invoke-virtual {v0, v9}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 784
    .end local v9    # "me1":Landroid/view/MotionEvent;
    :goto_0
    monitor-enter p0

    .line 786
    const-wide/16 v0, 0xc8

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 792
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->isStart:Z

    if-nez v0, :cond_2

    .line 812
    :cond_1
    :goto_2
    iput-boolean v11, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->isStart:Z

    .line 813
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->this$0:Lzj/zfenlly/gua/FloatWinService;

    iget-object v0, v0, Lzj/zfenlly/gua/FloatWinService;->ns:Lzj/zfenlly/gua/NotifySound;

    invoke-static {v13}, Lzj/zfenlly/gua/NotifySound;->play(I)V

    .line 814
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->this$0:Lzj/zfenlly/gua/FloatWinService;

    iget-object v0, v0, Lzj/zfenlly/gua/FloatWinService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->this$0:Lzj/zfenlly/gua/FloatWinService;

    iget-object v1, v1, Lzj/zfenlly/gua/FloatWinService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v12, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 816
    return-void

    .line 787
    :catch_0
    move-exception v8

    .line 789
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 791
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 794
    :cond_2
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->downTime:J

    .line 795
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->eventTime:J

    .line 796
    iget-wide v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->downTime:J

    iget-wide v2, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->eventTime:J

    const/4 v4, 0x1

    iget-object v5, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->CoordinateView:Lzj/zfenlly/gua/MZFloatView;
    invoke-static {v5}, Lzj/zfenlly/gua/FloatWinService;->access$2300(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/gua/MZFloatView;

    move-result-object v5

    iget v5, v5, Lzj/zfenlly/gua/MZFloatView;->x1:I

    int-to-float v5, v5

    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->CoordinateView:Lzj/zfenlly/gua/MZFloatView;
    invoke-static {v6}, Lzj/zfenlly/gua/FloatWinService;->access$2300(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/gua/MZFloatView;

    move-result-object v6

    iget v6, v6, Lzj/zfenlly/gua/MZFloatView;->y1:I

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 797
    .local v10, "me2":Landroid/view/MotionEvent;
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->mInst:Landroid/app/Instrumentation;

    invoke-virtual {v0, v10}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 798
    const-string v0, "instrument"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send pointersync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->CoordinateView:Lzj/zfenlly/gua/MZFloatView;
    invoke-static {v2}, Lzj/zfenlly/gua/FloatWinService;->access$2300(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/gua/MZFloatView;

    move-result-object v2

    iget v2, v2, Lzj/zfenlly/gua/MZFloatView;->x1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->this$0:Lzj/zfenlly/gua/FloatWinService;

    # getter for: Lzj/zfenlly/gua/FloatWinService;->CoordinateView:Lzj/zfenlly/gua/MZFloatView;
    invoke-static {v2}, Lzj/zfenlly/gua/FloatWinService;->access$2300(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/gua/MZFloatView;

    move-result-object v2

    iget v2, v2, Lzj/zfenlly/gua/MZFloatView;->y1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 802
    .end local v10    # "me2":Landroid/view/MotionEvent;
    :goto_3
    monitor-enter p0

    .line 804
    :try_start_5
    iget v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->interval:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 809
    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 810
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->isStart:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 799
    :catch_1
    move-exception v8

    .line 800
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 805
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 807
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 809
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 782
    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method public setTempTimes(I)V
    .locals 0
    .param p1, "t"    # I

    .prologue
    .line 760
    iput p1, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->times:I

    .line 761
    return-void
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService$ClickThread;->isStart:Z

    .line 765
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService$ClickThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService$ClickThread;->interrupt()V

    .line 768
    :cond_0
    return-void
.end method
