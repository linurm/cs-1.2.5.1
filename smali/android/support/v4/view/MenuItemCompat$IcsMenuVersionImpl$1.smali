.class Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;->setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;

.field final synthetic val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;


# direct methods
.method constructor <init>(Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;->this$0:Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;

    #@2
    iput-object p2, p0, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;->val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;->val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    #@2
    invoke-interface {v0, p1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;->val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    #@2
    invoke-interface {v0, p1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
