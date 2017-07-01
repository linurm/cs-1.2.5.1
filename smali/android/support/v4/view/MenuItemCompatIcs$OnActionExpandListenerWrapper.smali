.class Landroid/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MenuItemCompatIcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnActionExpandListenerWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroid/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;->mWrapped:Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;

    #@5
    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;->mWrapped:Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;

    #@2
    invoke-interface {v0, p1}, Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;->mWrapped:Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;

    #@2
    invoke-interface {v0, p1}, Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
