.class public Landroid/support/v4/view/MenuItemCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;,
        Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;,
        Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;,
        Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;,
        Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

.field public static final SHOW_AS_ACTION_ALWAYS:I = 0x2

.field public static final SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:I = 0x8

.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1

.field public static final SHOW_AS_ACTION_NEVER:I = 0x0

.field public static final SHOW_AS_ACTION_WITH_TEXT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MenuItemCompat"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xe

    #@4
    if-lt v0, v1, :cond_e

    #@6
    new-instance v0, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;

    #@8
    invoke-direct {v0}, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;-><init>()V

    #@b
    sput-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    const/16 v1, 0xb

    #@10
    if-lt v0, v1, :cond_1a

    #@12
    new-instance v0, Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;

    #@14
    invoke-direct {v0}, Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;-><init>()V

    #@17
    sput-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    #@19
    goto :goto_d

    #@1a
    :cond_1a
    new-instance v0, Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;

    #@1c
    invoke-direct {v0}, Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;-><init>()V

    #@1f
    sput-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    #@21
    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static collapseActionView(Landroid/view/MenuItem;)Z
    .registers 2

    #@0
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0}, Landroid/support/v4/internal/view/SupportMenuItem;->collapseActionView()Z

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    #@d
    invoke-interface {v0, p0}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->collapseActionView(Landroid/view/MenuItem;)Z

    #@10
    move-result v0

    #@11
    goto :goto_a
.end method

.method public static expandActionView(Landroid/view/MenuItem;)Z
    .registers 2

    #@0
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0}, Landroid/support/v4/internal/view/SupportMenuItem;->expandActionView()Z

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    #@d
    invoke-interface {v0, p0}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->expandActionView(Landroid/view/MenuItem;)Z

    #@10
    move-result v0

    #@11
    goto :goto_a
.end method

.method public static getActionProvider(Landroid/view/MenuItem;)Landroid/support/v4/view/ActionProvider;
    .registers 3

    #@0
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0}, Landroid/support/v4/internal/view/SupportMenuItem;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    const-string v0, "MenuItemCompat"

    #@d
    const-string v1, "getActionProvider: item does not implement SupportMenuItem; returning null"

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    const/4 v0, 0x0

    #@13
    goto :goto_a
.end method

.method public static getActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 2

    #@0
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0}, Landroid/support/v4/internal/view/SupportMenuItem;->getActionView()Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    #@d
    invoke-interface {v0, p0}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    goto :goto_a
.end method

.method public static isActionViewExpanded(Landroid/view/MenuItem;)Z
    .registers 2

    #@0
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0}, Landroid/support/v4/internal/view/SupportMenuItem;->isActionViewExpanded()Z

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    #@d
    invoke-interface {v0, p0}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->isActionViewExpanded(Landroid/view/MenuItem;)Z

    #@10
    move-result v0

    #@11
    goto :goto_a
.end method

.method public static setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4

    #@0
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;

    #@9
    move-result-object p0

    #@a
    :goto_a
    return-object p0

    #@b
    :cond_b
    const-string v0, "MenuItemCompat"

    #@d
    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    goto :goto_a
.end method

.method public static setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .registers 3

    #@0
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setActionView(I)Landroid/view/MenuItem;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    #@d
    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    #@10
    move-result-object v0

    #@11
    goto :goto_a
.end method

.method public static setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    #@0
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    #@d
    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    #@10
    move-result-object v0

    #@11
    goto :goto_a
.end method

.method public static setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 3

    #@0
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setSupportOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    #@d
    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    #@10
    move-result-object v0

    #@11
    goto :goto_a
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .registers 3

    #@0
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@2
    if-eqz v0, :cond_a

    #@4
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    #@6
    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setShowAsAction(I)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    #@c
    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setShowAsAction(Landroid/view/MenuItem;I)V

    #@f
    goto :goto_9
.end method
