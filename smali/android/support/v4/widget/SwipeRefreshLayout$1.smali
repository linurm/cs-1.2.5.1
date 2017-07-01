.class Landroid/support/v4/widget/SwipeRefreshLayout$1;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .registers 2

    #@0
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@2
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@3
    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I
    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$000(Landroid/support/v4/widget/SwipeRefreshLayout;)I

    #@6
    move-result v1

    #@7
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@9
    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I
    invoke-static {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)I

    #@c
    move-result v2

    #@d
    if-eq v1, v2, :cond_26

    #@f
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@11
    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$000(Landroid/support/v4/widget/SwipeRefreshLayout;)I

    #@14
    move-result v0

    #@15
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@17
    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I
    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)I

    #@1a
    move-result v1

    #@1b
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@1d
    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I
    invoke-static {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$000(Landroid/support/v4/widget/SwipeRefreshLayout;)I

    #@20
    move-result v2

    #@21
    sub-int/2addr v1, v2

    #@22
    int-to-float v1, v1

    #@23
    mul-float/2addr v1, p1

    #@24
    float-to-int v1, v1

    #@25
    add-int/2addr v0, v1

    #@26
    :cond_26
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@28
    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$200(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/View;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@2f
    move-result v1

    #@30
    sub-int/2addr v0, v1

    #@31
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@33
    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$200(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/View;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@3a
    move-result v1

    #@3b
    add-int v2, v0, v1

    #@3d
    if-gez v2, :cond_41

    #@3f
    rsub-int/lit8 v0, v1, 0x0

    #@41
    :cond_41
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@43
    # invokes: Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V
    invoke-static {v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$300(Landroid/support/v4/widget/SwipeRefreshLayout;I)V

    #@46
    return-void
.end method
