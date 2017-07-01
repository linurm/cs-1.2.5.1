.class public Lcom/apportable/ui/Window$WindowDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WindowDialog"
.end annotation


# instance fields
.field private handledKeyEventDown:I

.field private mWindow:Lcom/apportable/ui/Window;

.field final synthetic this$0:Lcom/apportable/ui/Window;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/Window;Landroid/content/Context;Lcom/apportable/ui/Window;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/apportable/ui/Window$WindowDialog;->this$0:Lcom/apportable/ui/Window;

    #@2
    const v0, 0x1030011

    #@5
    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@8
    iput-object p3, p0, Lcom/apportable/ui/Window$WindowDialog;->mWindow:Lcom/apportable/ui/Window;

    #@a
    const/4 v0, 0x0

    #@b
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Window$WindowDialog;->setCancelable(Z)V

    #@e
    return-void
.end method

.method static synthetic access$201(Lcom/apportable/ui/Window$WindowDialog;Landroid/view/WindowManager$LayoutParams;)V
    .registers 2

    #@0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@3
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    #@0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x42

    #@6
    if-ne v0, v1, :cond_d

    #@8
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@b
    move-result v0

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@10
    move-result v0

    #@11
    packed-switch v0, :pswitch_data_54

    #@14
    :cond_14
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@17
    move-result v0

    #@18
    goto :goto_c

    #@19
    :pswitch_19
    iget v0, p0, Lcom/apportable/ui/Window$WindowDialog;->handledKeyEventDown:I

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    iput v0, p0, Lcom/apportable/ui/Window$WindowDialog;->handledKeyEventDown:I

    #@1f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@22
    move-result v0

    #@23
    # invokes: Lcom/apportable/ui/Window;->isNativeKeyCode(I)Z
    invoke-static {v0}, Lcom/apportable/ui/Window;->access$100(I)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_34

    #@29
    iget-object v0, p0, Lcom/apportable/ui/Window$WindowDialog;->this$0:Lcom/apportable/ui/Window;

    #@2b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@2e
    move-result v1

    #@2f
    invoke-virtual {v0, v1, p1}, Lcom/apportable/ui/Window;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@32
    move-result v0

    #@33
    goto :goto_c

    #@34
    :cond_34
    :pswitch_34
    iget v0, p0, Lcom/apportable/ui/Window$WindowDialog;->handledKeyEventDown:I

    #@36
    if-lez v0, :cond_14

    #@38
    iget v0, p0, Lcom/apportable/ui/Window$WindowDialog;->handledKeyEventDown:I

    #@3a
    add-int/lit8 v0, v0, -0x1

    #@3c
    iput v0, p0, Lcom/apportable/ui/Window$WindowDialog;->handledKeyEventDown:I

    #@3e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@41
    move-result v0

    #@42
    # invokes: Lcom/apportable/ui/Window;->isNativeKeyCode(I)Z
    invoke-static {v0}, Lcom/apportable/ui/Window;->access$100(I)Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_14

    #@48
    iget-object v0, p0, Lcom/apportable/ui/Window$WindowDialog;->this$0:Lcom/apportable/ui/Window;

    #@4a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@4d
    move-result v1

    #@4e
    invoke-virtual {v0, v1, p1}, Lcom/apportable/ui/Window;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@51
    move-result v0

    #@52
    goto :goto_c

    #@53
    nop

    #@54
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_19
        :pswitch_34
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/apportable/ui/Window$WindowDialog;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x10

    #@6
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    #@9
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Window$WindowDialog;->mWindow:Lcom/apportable/ui/Window;

    #@2
    invoke-virtual {v0, p1}, Lcom/apportable/ui/Window;->motionEvent(Landroid/view/MotionEvent;)V

    #@5
    const/4 v0, 0x0

    #@6
    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/Window$WindowDialog$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Window$WindowDialog$1;-><init>(Lcom/apportable/ui/Window$WindowDialog;Landroid/view/WindowManager$LayoutParams;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method
