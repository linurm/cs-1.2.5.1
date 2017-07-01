.class Landroid/support/v4/view/ViewCompatGingerbread;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    #@3
    return-void
.end method
