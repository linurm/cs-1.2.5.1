.class Lcom/apportable/activity/VerdeActivity$1;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/Context;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$1;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@5
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 7

    #@0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    #@3
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$1;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@5
    # getter for: Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$000(Lcom/apportable/activity/VerdeActivity;)Lcom/apportable/activity/BackgroundLibraryLoader;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_14

    #@f
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$1;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@11
    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeRootGeometryChanged()V
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$100(Lcom/apportable/activity/VerdeActivity;)V

    #@14
    :cond_14
    return-void
.end method
