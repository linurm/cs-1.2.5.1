.class public Lcom/apportable/activity/ManageSpaceActivity;
.super Landroid/app/Activity;


# instance fields
.field _couldNotDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field _ignoreList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/apportable/activity/ManageSpaceActivity;->_couldNotDelete:Ljava/util/ArrayList;

    #@a
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v0, p0, Lcom/apportable/activity/ManageSpaceActivity;->_ignoreList:Ljava/util/HashSet;

    #@11
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/activity/ManageSpaceActivity;ZLjava/io/File;)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/activity/ManageSpaceActivity;->rm(ZLjava/io/File;)V

    #@3
    return-void
.end method

.method static synthetic access$100(Lcom/apportable/activity/ManageSpaceActivity;Ljava/util/ArrayList;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/activity/ManageSpaceActivity;->showBadFiles(Ljava/util/ArrayList;)V

    #@3
    return-void
.end method

.method private rm(ZLjava/io/File;)V
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/activity/ManageSpaceActivity;->_ignoreList:Ljava/util/HashSet;

    #@3
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_a

    #@9
    :cond_9
    :goto_9
    return-void

    #@a
    :cond_a
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_20

    #@10
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@13
    move-result-object v2

    #@14
    array-length v3, v2

    #@15
    move v0, v1

    #@16
    :goto_16
    if-ge v0, v3, :cond_20

    #@18
    aget-object v4, v2, v0

    #@1a
    invoke-direct {p0, v1, v4}, Lcom/apportable/activity/ManageSpaceActivity;->rm(ZLjava/io/File;)V

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_16

    #@20
    :cond_20
    if-nez p1, :cond_9

    #@22
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_9

    #@28
    iget-object v0, p0, Lcom/apportable/activity/ManageSpaceActivity;->_couldNotDelete:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    goto :goto_9
.end method

.method private showBadFiles(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    #@7
    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v3

    #@e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_24

    #@14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const/16 v4, 0xa

    #@20
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    goto :goto_e

    #@24
    :cond_24
    const-string v0, "Could not delete these files"

    #@26
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@30
    const-string v0, "OK"

    #@32
    new-instance v1, Lcom/apportable/activity/ManageSpaceActivity$4;

    #@34
    invoke-direct {v1, p0}, Lcom/apportable/activity/ManageSpaceActivity$4;-><init>(Lcom/apportable/activity/ManageSpaceActivity;)V

    #@37
    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@3a
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    #@3d
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    #@0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #@5
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@8
    const-string v1, "Clear data?"

    #@a
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@d
    move-result-object v0

    #@e
    const-string v1, "Cancel"

    #@10
    new-instance v2, Lcom/apportable/activity/ManageSpaceActivity$1;

    #@12
    invoke-direct {v2, p0}, Lcom/apportable/activity/ManageSpaceActivity$1;-><init>(Lcom/apportable/activity/ManageSpaceActivity;)V

    #@15
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@18
    move-result-object v0

    #@19
    const-string v1, "OK"

    #@1b
    new-instance v2, Lcom/apportable/activity/ManageSpaceActivity$2;

    #@1d
    invoke-direct {v2, p0}, Lcom/apportable/activity/ManageSpaceActivity$2;-><init>(Lcom/apportable/activity/ManageSpaceActivity;)V

    #@20
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@23
    new-instance v1, Lcom/apportable/activity/ManageSpaceActivity$3;

    #@25
    invoke-direct {v1, p0}, Lcom/apportable/activity/ManageSpaceActivity$3;-><init>(Lcom/apportable/activity/ManageSpaceActivity;)V

    #@28
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    #@2b
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    #@2e
    return-void
.end method
