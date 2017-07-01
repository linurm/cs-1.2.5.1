.class Lcom/apportable/activity/BackgroundLibraryLoader$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/BackgroundLibraryLoader;->load(Landroid/app/Activity;Lcom/apportable/activity/BackgroundLibraryLoader$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCallingThread:Landroid/os/Handler;

.field final synthetic this$0:Lcom/apportable/activity/BackgroundLibraryLoader;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/BackgroundLibraryLoader;Landroid/app/Activity;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1;->this$0:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@2
    iput-object p2, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1;->val$activity:Landroid/app/Activity;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    new-instance v0, Landroid/os/Handler;

    #@9
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@c
    iput-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1;->mCallingThread:Landroid/os/Handler;

    #@e
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    iget-object v1, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1;->val$activity:Landroid/app/Activity;

    #@3
    invoke-static {v1}, Lcom/apportable/LibraryManager;->loadLibraries(Landroid/app/Activity;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_11

    #@6
    :goto_6
    iget-object v1, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1;->mCallingThread:Landroid/os/Handler;

    #@8
    new-instance v2, Lcom/apportable/activity/BackgroundLibraryLoader$1$1;

    #@a
    invoke-direct {v2, p0, v0}, Lcom/apportable/activity/BackgroundLibraryLoader$1$1;-><init>(Lcom/apportable/activity/BackgroundLibraryLoader$1;Ljava/lang/Throwable;)V

    #@d
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@10
    return-void

    #@11
    :catch_11
    move-exception v0

    #@12
    goto :goto_6
.end method
