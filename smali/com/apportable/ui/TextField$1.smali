.class Lcom/apportable/ui/TextField$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/TextField;


# direct methods
.method constructor <init>(Lcom/apportable/ui/TextField;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    iget-object v0, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    #@4
    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v0}, Lcom/apportable/ui/TextField;->access$1300(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->isFirstResponder()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_64

    #@e
    iget-object v0, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    #@10
    invoke-virtual {v0}, Lcom/apportable/ui/TextField;->getWidth()I

    #@13
    move-result v0

    #@14
    div-int/lit8 v8, v0, 0x2

    #@16
    iget-object v0, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    #@18
    invoke-virtual {v0}, Lcom/apportable/ui/TextField;->getHeight()I

    #@1b
    move-result v0

    #@1c
    div-int/lit8 v9, v0, 0x2

    #@1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@21
    move-result-wide v0

    #@22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@25
    move-result-wide v2

    #@26
    int-to-float v5, v8

    #@27
    int-to-float v6, v9

    #@28
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@2b
    move-result-object v10

    #@2c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2f
    move-result-wide v0

    #@30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@33
    move-result-wide v2

    #@34
    int-to-float v5, v8

    #@35
    int-to-float v6, v9

    #@36
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@39
    move-result-object v0

    #@3a
    iget-object v1, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    #@3c
    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v1}, Lcom/apportable/ui/TextField;->access$1300(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1, v4}, Lcom/apportable/ui/TextField$TextFieldLayer;->setFocusable(Z)V

    #@43
    iget-object v1, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    #@45
    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v1}, Lcom/apportable/ui/TextField;->access$1300(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1, v4}, Lcom/apportable/ui/TextField$TextFieldLayer;->setFocusableInTouchMode(Z)V

    #@4c
    iget-object v1, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    #@4e
    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v1}, Lcom/apportable/ui/TextField;->access$1300(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1, v10}, Lcom/apportable/ui/TextField$TextFieldLayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@55
    iget-object v1, p0, Lcom/apportable/ui/TextField$1;->this$0:Lcom/apportable/ui/TextField;

    #@57
    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v1}, Lcom/apportable/ui/TextField;->access$1300(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@5e
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    #@61
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@64
    :cond_64
    return-void
.end method
