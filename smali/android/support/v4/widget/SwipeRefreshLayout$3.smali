.class Landroid/support/v4/widget/SwipeRefreshLayout$3;
.super Landroid/support/v4/widget/SwipeRefreshLayout$BaseAnimationListener;


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
    .registers 3

    #@0
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout$BaseAnimationListener;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/support/v4/widget/SwipeRefreshLayout$1;)V

    #@6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@2
    const/4 v1, 0x0

    #@3
    # setter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I
    invoke-static {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$702(Landroid/support/v4/widget/SwipeRefreshLayout;I)I

    #@6
    return-void
.end method
