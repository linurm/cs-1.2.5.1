.class Lcom/apportable/net/Reachability$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/net/Reachability;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/net/Reachability;


# direct methods
.method constructor <init>(Lcom/apportable/net/Reachability;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/net/Reachability$1;->this$0:Lcom/apportable/net/Reachability;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/net/Reachability$1;->this$0:Lcom/apportable/net/Reachability;

    #@2
    iget-object v1, p0, Lcom/apportable/net/Reachability$1;->this$0:Lcom/apportable/net/Reachability;

    #@4
    # getter for: Lcom/apportable/net/Reachability;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/apportable/net/Reachability;->access$000(Lcom/apportable/net/Reachability;)Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v1, v2}, Lcom/apportable/net/Reachability;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    #@c
    iget-object v0, p0, Lcom/apportable/net/Reachability$1;->this$0:Lcom/apportable/net/Reachability;

    #@e
    # getter for: Lcom/apportable/net/Reachability;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/apportable/net/Reachability;->access$000(Lcom/apportable/net/Reachability;)Landroid/content/Context;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lcom/apportable/net/Reachability$1;->this$0:Lcom/apportable/net/Reachability;

    #@14
    new-instance v2, Landroid/content/IntentFilter;

    #@16
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    #@18
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1e
    iget-object v0, p0, Lcom/apportable/net/Reachability$1;->this$0:Lcom/apportable/net/Reachability;

    #@20
    # invokes: Lcom/apportable/net/Reachability;->didStart()V
    invoke-static {v0}, Lcom/apportable/net/Reachability;->access$100(Lcom/apportable/net/Reachability;)V

    #@23
    return-void
.end method
