.class Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SlidingPanelLayoutImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .registers 7

    #@0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    #@b
    move-result v2

    #@c
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    #@f
    move-result v3

    #@10
    invoke-static {p1, v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    #@13
    return-void
.end method
