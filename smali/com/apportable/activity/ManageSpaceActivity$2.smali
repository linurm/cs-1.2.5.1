.class Lcom/apportable/activity/ManageSpaceActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/ManageSpaceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/ManageSpaceActivity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/ManageSpaceActivity;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    #@0
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    #@4
    invoke-virtual {v1}, Lcom/apportable/activity/ManageSpaceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object v1

    #@8
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@a
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    iget-object v1, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    #@f
    iget-object v1, v1, Lcom/apportable/activity/ManageSpaceActivity;->_ignoreList:Ljava/util/HashSet;

    #@11
    new-instance v2, Ljava/io/File;

    #@13
    const-string v3, "lib"

    #@15
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@18
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1b
    iget-object v1, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    #@1d
    iget-object v1, v1, Lcom/apportable/activity/ManageSpaceActivity;->_ignoreList:Ljava/util/HashSet;

    #@1f
    iget-object v2, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    #@21
    const-string v3, "external_patch"

    #@23
    const/4 v4, 0x3

    #@24
    invoke-virtual {v2, v3, v4}, Lcom/apportable/activity/ManageSpaceActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2b
    iget-object v1, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    #@2d
    const/4 v2, 0x1

    #@2e
    # invokes: Lcom/apportable/activity/ManageSpaceActivity;->rm(ZLjava/io/File;)V
    invoke-static {v1, v2, v0}, Lcom/apportable/activity/ManageSpaceActivity;->access$000(Lcom/apportable/activity/ManageSpaceActivity;ZLjava/io/File;)V

    #@31
    iget-object v0, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    #@33
    iget-object v0, v0, Lcom/apportable/activity/ManageSpaceActivity;->_couldNotDelete:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v0

    #@39
    if-lez v0, :cond_45

    #@3b
    iget-object v0, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    #@3d
    iget-object v1, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    #@3f
    iget-object v1, v1, Lcom/apportable/activity/ManageSpaceActivity;->_couldNotDelete:Ljava/util/ArrayList;

    #@41
    # invokes: Lcom/apportable/activity/ManageSpaceActivity;->showBadFiles(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/apportable/activity/ManageSpaceActivity;->access$100(Lcom/apportable/activity/ManageSpaceActivity;Ljava/util/ArrayList;)V

    #@44
    :goto_44
    return-void

    #@45
    :cond_45
    iget-object v0, p0, Lcom/apportable/activity/ManageSpaceActivity$2;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    #@47
    invoke-virtual {v0}, Lcom/apportable/activity/ManageSpaceActivity;->finish()V

    #@4a
    goto :goto_44
.end method
