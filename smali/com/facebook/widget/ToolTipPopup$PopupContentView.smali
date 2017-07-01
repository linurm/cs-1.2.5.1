.class Lcom/facebook/widget/ToolTipPopup$PopupContentView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/ToolTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupContentView"
.end annotation


# instance fields
.field private bodyFrame:Landroid/view/View;

.field private bottomArrow:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/facebook/widget/ToolTipPopup;

.field private topArrow:Landroid/widget/ImageView;

.field private xOut:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/facebook/widget/ToolTipPopup;Landroid/content/Context;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->this$0:Lcom/facebook/widget/ToolTipPopup;

    #@2
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@5
    invoke-direct {p0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->init()V

    #@8
    return-void
.end method

.method static synthetic access$300(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/view/View;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bodyFrame:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    #@2
    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    #@2
    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->xOut:Landroid/widget/ImageView;

    #@2
    return-object v0
.end method

.method private init()V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@7
    move-result-object v0

    #@8
    const v1, 0x7f03000d

    #@b
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@e
    const v0, 0x7f040029

    #@11
    invoke-virtual {p0, v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/widget/ImageView;

    #@17
    iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    #@19
    const v0, 0x7f04002c

    #@1c
    invoke-virtual {p0, v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/widget/ImageView;

    #@22
    iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    #@24
    const v0, 0x7f040028

    #@27
    invoke-virtual {p0, v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bodyFrame:Landroid/view/View;

    #@2d
    const v0, 0x7f04002a

    #@30
    invoke-virtual {p0, v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Landroid/widget/ImageView;

    #@36
    iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->xOut:Landroid/widget/ImageView;

    #@38
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 3

    #@0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@3
    return-void
.end method

.method public showBottomArrow()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@6
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@c
    return-void
.end method

.method public showTopArrow()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@6
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    #@8
    const/4 v1, 0x4

    #@9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@c
    return-void
.end method
