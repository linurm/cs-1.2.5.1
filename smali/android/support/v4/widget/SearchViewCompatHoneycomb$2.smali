.class final Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SearchViewCompatHoneycomb;->newOnCloseListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)V
    .registers 2

    #@0
    iput-object p1, p0, Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;->val$listener:Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClose()Z
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;->val$listener:Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;

    #@2
    invoke-interface {v0}, Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;->onClose()Z

    #@5
    move-result v0

    #@6
    return v0
.end method
