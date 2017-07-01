.class Landroid/support/v4/widget/ScrollerCompatIcs;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getCurrVelocity(Ljava/lang/Object;)F
    .registers 2

    #@0
    check-cast p0, Landroid/widget/OverScroller;

    #@2
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    #@5
    move-result v0

    #@6
    return v0
.end method
