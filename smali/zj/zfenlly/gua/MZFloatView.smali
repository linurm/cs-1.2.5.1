.class public Lzj/zfenlly/gua/MZFloatView;
.super Lzj/zfenlly/gua/FloatView;
.source "MZFloatView.java"


# instance fields
.field public x1:I

.field public y1:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mLinearLayout"    # Landroid/widget/LinearLayout;
    .param p3, "mWindowManager"    # Landroid/view/WindowManager;
    .param p4, "wmParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lzj/zfenlly/gua/FloatView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V

    .line 13
    const/16 v0, 0x550

    iput v0, p0, Lzj/zfenlly/gua/MZFloatView;->x1:I

    const/16 v0, 0x3e4

    iput v0, p0, Lzj/zfenlly/gua/MZFloatView;->y1:I

    .line 17
    return-void
.end method


# virtual methods
.method public updateViewPosition()V
    .locals 4

    .prologue
    .line 21
    sget v1, Lzj/zfenlly/gua/MZFloatView;->i:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lzj/zfenlly/gua/MZFloatView;->i:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 24
    iget-object v1, p0, Lzj/zfenlly/gua/MZFloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lzj/zfenlly/gua/MZFloatView;->x:F

    iget v3, p0, Lzj/zfenlly/gua/MZFloatView;->mTouchX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 25
    iget-object v1, p0, Lzj/zfenlly/gua/MZFloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lzj/zfenlly/gua/MZFloatView;->y:F

    iget v3, p0, Lzj/zfenlly/gua/MZFloatView;->mTouchY:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 26
    iget-object v1, p0, Lzj/zfenlly/gua/MZFloatView;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lzj/zfenlly/gua/MZFloatView;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lzj/zfenlly/gua/MZFloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 29
    .local v0, "anchorPos":[I
    invoke-virtual {p0, v0}, Lzj/zfenlly/gua/MZFloatView;->getLocationOnScreen([I)V

    .line 31
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p0}, Lzj/zfenlly/gua/MZFloatView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lzj/zfenlly/gua/MZFloatView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lzj/zfenlly/gua/MZFloatView;->x1:I

    .line 32
    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-virtual {p0}, Lzj/zfenlly/gua/MZFloatView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lzj/zfenlly/gua/MZFloatView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lzj/zfenlly/gua/MZFloatView;->y1:I

    .line 34
    .end local v0    # "anchorPos":[I
    :cond_0
    return-void
.end method
