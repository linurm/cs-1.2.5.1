.class Lcom/apportable/activity/VerdeActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apportable/activity/ExpansionFileDownloader$Callback;


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
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFinished()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@4
    # getter for: Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/apportable/activity/VerdeActivity;->access$200(Lcom/apportable/activity/VerdeActivity;)Landroid/widget/FrameLayout;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->setContentView(Landroid/view/View;)V

    #@b
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@d
    # getter for: Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$000(Lcom/apportable/activity/VerdeActivity;)Lcom/apportable/activity/BackgroundLibraryLoader;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@13
    new-instance v2, Lcom/apportable/activity/VerdeActivity$3$1;

    #@15
    invoke-direct {v2, p0}, Lcom/apportable/activity/VerdeActivity$3$1;-><init>(Lcom/apportable/activity/VerdeActivity$3;)V

    #@18
    invoke-virtual {v0, v1, v2}, Lcom/apportable/activity/BackgroundLibraryLoader;->load(Landroid/app/Activity;Lcom/apportable/activity/BackgroundLibraryLoader$Callback;)V
    
    const-string v0, "ZTAG"

    const-string v1, "BackgroundLibraryLoader load() end "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    return-void
.end method
