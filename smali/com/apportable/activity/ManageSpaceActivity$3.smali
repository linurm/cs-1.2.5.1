.class Lcom/apportable/activity/ManageSpaceActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/apportable/activity/ManageSpaceActivity$3;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/activity/ManageSpaceActivity$3;->this$0:Lcom/apportable/activity/ManageSpaceActivity;

    #@2
    invoke-virtual {v0}, Lcom/apportable/activity/ManageSpaceActivity;->finish()V

    #@5
    return-void
.end method
