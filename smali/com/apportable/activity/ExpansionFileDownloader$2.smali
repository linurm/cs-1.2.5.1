.class Lcom/apportable/activity/ExpansionFileDownloader$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/ExpansionFileDownloader;->initializeDownloadUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/ExpansionFileDownloader;


# direct methods
.method constructor <init>(Lcom/apportable/activity/ExpansionFileDownloader;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/activity/ExpansionFileDownloader$2;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/activity/ExpansionFileDownloader$2;->this$0:Lcom/apportable/activity/ExpansionFileDownloader;

    #@2
    # getter for: Lcom/apportable/activity/ExpansionFileDownloader;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/apportable/activity/ExpansionFileDownloader;->access$300(Lcom/apportable/activity/ExpansionFileDownloader;)Landroid/app/Activity;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Landroid/content/Intent;

    #@8
    const-string v2, "android.settings.WIFI_SETTINGS"

    #@a
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@10
    return-void
.end method
