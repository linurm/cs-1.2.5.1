.class Landroid/support/v4/widget/SearchViewCompatHoneycomb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;,
        Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;
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

.method public static getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    check-cast p0, Landroid/widget/SearchView;

    #@2
    invoke-virtual {p0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static isIconified(Landroid/view/View;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/widget/SearchView;

    #@2
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isQueryRefinementEnabled(Landroid/view/View;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/widget/SearchView;

    #@2
    invoke-virtual {p0}, Landroid/widget/SearchView;->isQueryRefinementEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isSubmitButtonEnabled(Landroid/view/View;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/widget/SearchView;

    #@2
    invoke-virtual {p0}, Landroid/widget/SearchView;->isSubmitButtonEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static newOnCloseListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)Ljava/lang/Object;
    .registers 2

    #@0
    new-instance v0, Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;-><init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)V

    #@5
    return-object v0
.end method

.method public static newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;
    .registers 2

    #@0
    new-instance v0, Landroid/support/v4/widget/SearchViewCompatHoneycomb$1;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SearchViewCompatHoneycomb$1;-><init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)V

    #@5
    return-object v0
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    #@0
    new-instance v0, Landroid/widget/SearchView;

    #@2
    invoke-direct {v0, p0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method public static setIconified(Landroid/view/View;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/widget/SearchView;

    #@2
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setIconified(Z)V

    #@5
    return-void
.end method

.method public static setMaxWidth(Landroid/view/View;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/widget/SearchView;

    #@2
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setMaxWidth(I)V

    #@5
    return-void
.end method

.method public static setOnCloseListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p0, Landroid/widget/SearchView;

    #@2
    check-cast p1, Landroid/widget/SearchView$OnCloseListener;

    #@4
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    #@7
    return-void
.end method

.method public static setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p0, Landroid/widget/SearchView;

    #@2
    check-cast p1, Landroid/widget/SearchView$OnQueryTextListener;

    #@4
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    #@7
    return-void
.end method

.method public static setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .registers 3

    #@0
    check-cast p0, Landroid/widget/SearchView;

    #@2
    invoke-virtual {p0, p1, p2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    #@5
    return-void
.end method

.method public static setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    check-cast p0, Landroid/widget/SearchView;

    #@2
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public static setQueryRefinementEnabled(Landroid/view/View;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/widget/SearchView;

    #@2
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    #@5
    return-void
.end method

.method public static setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
    .registers 4

    #@0
    check-cast p0, Landroid/widget/SearchView;

    #@2
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string v1, "search"

    #@8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/app/SearchManager;

    #@e
    invoke-virtual {v0, p1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    #@15
    return-void
.end method

.method public static setSubmitButtonEnabled(Landroid/view/View;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/widget/SearchView;

    #@2
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    #@5
    return-void
.end method
