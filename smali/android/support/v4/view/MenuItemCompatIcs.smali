.class Landroid/support/v4/view/MenuItemCompatIcs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;,
        Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static collapseActionView(Landroid/view/MenuItem;)Z
    .registers 2

    #@0
    invoke-interface {p0}, Landroid/view/MenuItem;->collapseActionView()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static expandActionView(Landroid/view/MenuItem;)Z
    .registers 2

    #@0
    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isActionViewExpanded(Landroid/view/MenuItem;)Z
    .registers 2

    #@0
    invoke-interface {p0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;)Landroid/view/MenuItem;
    .registers 3

    #@0
    new-instance v0, Landroid/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;

    #@2
    invoke-direct {v0, p1}, Landroid/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;-><init>(Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;)V

    #@5
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
