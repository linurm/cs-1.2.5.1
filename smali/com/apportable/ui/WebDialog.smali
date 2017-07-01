.class public Lcom/apportable/ui/WebDialog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/WebDialog$ApportableWebView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebDialog"

.field private static final WEBVIEW_INSET:I = 0x32


# instance fields
.field private mAlert:Landroid/app/AlertDialog;

.field private mCtx:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTitle:Ljava/lang/String;

.field private mURL:Ljava/lang/String;

.field private mURLOverrideList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/apportable/ui/WebDialog;->mTitle:Ljava/lang/String;

    #@5
    iput-object p2, p0, Lcom/apportable/ui/WebDialog;->mURL:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;

    #@9
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/apportable/ui/WebDialog;->mAlert:Landroid/app/AlertDialog;

    #@c
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Lcom/apportable/ui/WebDialog;->mURLOverrideList:Ljava/util/ArrayList;

    #@13
    return-void
.end method

.method private _dismiss()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mAlert:Landroid/app/AlertDialog;

    #@2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    #@5
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/apportable/ui/WebDialog;->mAlert:Landroid/app/AlertDialog;

    #@8
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/WebDialog;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/WebDialog;->_dismiss()V

    #@3
    return-void
.end method

.method static synthetic access$100(Lcom/apportable/ui/WebDialog;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/WebDialog;->onClose()V

    #@3
    return-void
.end method

.method static synthetic access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic access$300(Lcom/apportable/ui/WebDialog;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mTitle:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$400(Lcom/apportable/ui/WebDialog;)Ljava/util/ArrayList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mURLOverrideList:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic access$500(Lcom/apportable/ui/WebDialog;Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/WebDialog;->onOverrideURL(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic access$600(Lcom/apportable/ui/WebDialog;)Landroid/widget/ProgressBar;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;

    #@2
    return-object v0
.end method

.method static synthetic access$602(Lcom/apportable/ui/WebDialog;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;

    #@2
    return-object p1
.end method

.method static synthetic access$700(Lcom/apportable/ui/WebDialog;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mURL:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$802(Lcom/apportable/ui/WebDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebDialog;->mAlert:Landroid/app/AlertDialog;

    #@2
    return-object p1
.end method

.method private native onClose()V
.end method

.method private native onOverrideURL(Ljava/lang/String;)V
.end method


# virtual methods
.method public addOverrideURLLoadingPrefix(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mURLOverrideList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public cancel()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mAlert:Landroid/app/AlertDialog;

    #@2
    if-eqz v0, :cond_7

    #@4
    invoke-direct {p0}, Lcom/apportable/ui/WebDialog;->_dismiss()V

    #@7
    :cond_7
    return-void
.end method

.method public setOverrideURLLoadingPrefix(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mURLOverrideList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mURLOverrideList:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    return-void
.end method

.method public show()V
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/apportable/ui/WebDialog;->mAlert:Landroid/app/AlertDialog;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    #@3
    if-eqz v0, :cond_7

    #@5
    :goto_5
    monitor-exit p0

    #@6
    return-void

    #@7
    :cond_7
    :try_start_7
    new-instance v0, Lcom/apportable/ui/WebDialog$1;

    #@9
    invoke-direct {v0, p0}, Lcom/apportable/ui/WebDialog$1;-><init>(Lcom/apportable/ui/WebDialog;)V

    #@c
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    #@f
    goto :goto_5

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method
