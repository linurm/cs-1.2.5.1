.class public Lcom/facebook/widget/ToolTipPopup;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/ToolTipPopup$PopupContentView;,
        Lcom/facebook/widget/ToolTipPopup$Style;
    }
.end annotation


# static fields
.field public static final DEFAULT_POPUP_DISPLAY_TIME:J = 0x1770L


# instance fields
.field private final mAnchorViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mNuxDisplayTime:J

.field private mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private final mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mStyle:Lcom/facebook/widget/ToolTipPopup$Style;

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    sget-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/widget/ToolTipPopup$Style;

    #@5
    iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    #@7
    const-wide/16 v0, 0x1770

    #@9
    iput-wide v0, p0, Lcom/facebook/widget/ToolTipPopup;->mNuxDisplayTime:J

    #@b
    new-instance v0, Lcom/facebook/widget/ToolTipPopup$1;

    #@d
    invoke-direct {v0, p0}, Lcom/facebook/widget/ToolTipPopup$1;-><init>(Lcom/facebook/widget/ToolTipPopup;)V

    #@10
    iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@12
    iput-object p1, p0, Lcom/facebook/widget/ToolTipPopup;->mText:Ljava/lang/String;

    #@14
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@16
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@19
    iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    #@1b
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mContext:Landroid/content/Context;

    #@21
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/ToolTipPopup;)Ljava/lang/ref/WeakReference;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/widget/ToolTipPopup;)Landroid/widget/PopupWindow;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/widget/ToolTipPopup;)Lcom/facebook/widget/ToolTipPopup$PopupContentView;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@2
    return-object v0
.end method

.method private registerObserver()V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/facebook/widget/ToolTipPopup;->unregisterObserver()V

    #@3
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    #@5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_1c

    #@b
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    #@d
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/view/View;

    #@13
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lcom/facebook/widget/ToolTipPopup;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@19
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@1c
    :cond_1c
    return-void
.end method

.method private unregisterObserver()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_19

    #@8
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    #@a
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/view/View;

    #@10
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lcom/facebook/widget/ToolTipPopup;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@16
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@19
    :cond_19
    return-void
.end method

.method private updateArrows()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@2
    if-eqz v0, :cond_19

    #@4
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@6
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_19

    #@c
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@e
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1a

    #@14
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@16
    invoke-virtual {v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->showBottomArrow()V

    #@19
    :cond_19
    :goto_19
    return-void

    #@1a
    :cond_1a
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@1c
    invoke-virtual {v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->showTopArrow()V

    #@1f
    goto :goto_19
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/facebook/widget/ToolTipPopup;->unregisterObserver()V

    #@3
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@9
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    #@c
    :cond_c
    return-void
.end method

.method public setNuxDisplayTime(J)V
    .registers 4

    #@0
    iput-wide p1, p0, Lcom/facebook/widget/ToolTipPopup;->mNuxDisplayTime:J

    #@2
    return-void
.end method

.method public setStyle(Lcom/facebook/widget/ToolTipPopup$Style;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/ToolTipPopup;->mStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    #@2
    return-void
.end method

.method public show()V
    .registers 5

    #@0
    const/high16 v3, -0x80000000

    #@2
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    #@4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_c6

    #@a
    new-instance v0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@c
    iget-object v1, p0, Lcom/facebook/widget/ToolTipPopup;->mContext:Landroid/content/Context;

    #@e
    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;-><init>(Lcom/facebook/widget/ToolTipPopup;Landroid/content/Context;)V

    #@11
    iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@13
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@15
    const v1, 0x7f04002b

    #@18
    invoke-virtual {v0, v1}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/widget/TextView;

    #@1e
    iget-object v1, p0, Lcom/facebook/widget/ToolTipPopup;->mText:Ljava/lang/String;

    #@20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@23
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    #@25
    sget-object v1, Lcom/facebook/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/widget/ToolTipPopup$Style;

    #@27
    if-ne v0, v1, :cond_c7

    #@29
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@2b
    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bodyFrame:Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$300(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/view/View;

    #@2e
    move-result-object v0

    #@2f
    const v1, 0x7f020021

    #@32
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    #@35
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@37
    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$400(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    #@3a
    move-result-object v0

    #@3b
    const v1, 0x7f020022

    #@3e
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@41
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@43
    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$500(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    #@46
    move-result-object v0

    #@47
    const v1, 0x7f020023

    #@4a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@4d
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@4f
    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->xOut:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$600(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    #@52
    move-result-object v0

    #@53
    const v1, 0x7f020024

    #@56
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@59
    :goto_59
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mContext:Landroid/content/Context;

    #@5b
    check-cast v0, Landroid/app/Activity;

    #@5d
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@68
    move-result v1

    #@69
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@6c
    move-result v0

    #@6d
    invoke-direct {p0}, Lcom/facebook/widget/ToolTipPopup;->registerObserver()V

    #@70
    iget-object v2, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@72
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@75
    move-result v1

    #@76
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@79
    move-result v0

    #@7a
    invoke-virtual {v2, v1, v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->onMeasure(II)V

    #@7d
    new-instance v0, Landroid/widget/PopupWindow;

    #@7f
    iget-object v1, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@81
    iget-object v2, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@83
    invoke-virtual {v2}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->getMeasuredWidth()I

    #@86
    move-result v2

    #@87
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@89
    invoke-virtual {v3}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->getMeasuredHeight()I

    #@8c
    move-result v3

    #@8d
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    #@90
    iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@92
    iget-object v1, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@94
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    #@96
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@99
    move-result-object v0

    #@9a
    check-cast v0, Landroid/view/View;

    #@9c
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    #@9f
    invoke-direct {p0}, Lcom/facebook/widget/ToolTipPopup;->updateArrows()V

    #@a2
    iget-wide v0, p0, Lcom/facebook/widget/ToolTipPopup;->mNuxDisplayTime:J

    #@a4
    const-wide/16 v2, 0x0

    #@a6
    cmp-long v0, v0, v2

    #@a8
    if-lez v0, :cond_b6

    #@aa
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@ac
    new-instance v1, Lcom/facebook/widget/ToolTipPopup$2;

    #@ae
    invoke-direct {v1, p0}, Lcom/facebook/widget/ToolTipPopup$2;-><init>(Lcom/facebook/widget/ToolTipPopup;)V

    #@b1
    iget-wide v2, p0, Lcom/facebook/widget/ToolTipPopup;->mNuxDisplayTime:J

    #@b3
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@b6
    :cond_b6
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    #@b8
    const/4 v1, 0x1

    #@b9
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    #@bc
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@be
    new-instance v1, Lcom/facebook/widget/ToolTipPopup$3;

    #@c0
    invoke-direct {v1, p0}, Lcom/facebook/widget/ToolTipPopup$3;-><init>(Lcom/facebook/widget/ToolTipPopup;)V

    #@c3
    invoke-virtual {v0, v1}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@c6
    :cond_c6
    return-void

    #@c7
    :cond_c7
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@c9
    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bodyFrame:Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$300(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/view/View;

    #@cc
    move-result-object v0

    #@cd
    const v1, 0x7f02001d

    #@d0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    #@d3
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@d5
    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$400(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    #@d8
    move-result-object v0

    #@d9
    const v1, 0x7f02001e

    #@dc
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@df
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@e1
    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$500(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    #@e4
    move-result-object v0

    #@e5
    const v1, 0x7f02001f

    #@e8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@eb
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    #@ed
    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->xOut:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$600(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    #@f0
    move-result-object v0

    #@f1
    const v1, 0x7f020020

    #@f4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@f7
    goto/16 :goto_59
.end method
