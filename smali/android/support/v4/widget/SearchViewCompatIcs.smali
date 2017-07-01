.class Landroid/support/v4/widget/SearchViewCompatIcs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;
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

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    #@0
    new-instance v0, Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method public static setImeOptions(Landroid/view/View;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/widget/SearchView;

    #@2
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setImeOptions(I)V

    #@5
    return-void
.end method

.method public static setInputType(Landroid/view/View;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/widget/SearchView;

    #@2
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setInputType(I)V

    #@5
    return-void
.end method
