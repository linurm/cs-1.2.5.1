.class Lcom/apportable/activity/BackgroundLibraryLoader$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/BackgroundLibraryLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/activity/BackgroundLibraryLoader$1;

.field final synthetic val$loadError:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/apportable/activity/BackgroundLibraryLoader$1;Ljava/lang/Throwable;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1$1;->this$1:Lcom/apportable/activity/BackgroundLibraryLoader$1;

    #@2
    iput-object p2, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1$1;->val$loadError:Ljava/lang/Throwable;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1$1;->this$1:Lcom/apportable/activity/BackgroundLibraryLoader$1;

    #@2
    iget-object v0, v0, Lcom/apportable/activity/BackgroundLibraryLoader$1;->this$0:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@4
    iget-object v1, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1$1;->val$loadError:Ljava/lang/Throwable;

    #@6
    # invokes: Lcom/apportable/activity/BackgroundLibraryLoader;->loadFinished(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->access$000(Lcom/apportable/activity/BackgroundLibraryLoader;Ljava/lang/Throwable;)V

    #@9
    return-void
.end method
