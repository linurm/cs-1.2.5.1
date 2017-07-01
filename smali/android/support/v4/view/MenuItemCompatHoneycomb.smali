.class Landroid/support/v4/view/MenuItemCompatHoneycomb;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 2

    #@0
    invoke-interface {p0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .registers 3

    #@0
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    #@0
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .registers 2

    #@0
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    #@3
    return-void
.end method
