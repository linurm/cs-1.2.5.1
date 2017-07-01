.class Lcom/apportable/account/Manager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/account/Manager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/account/Manager;


# direct methods
.method constructor <init>(Lcom/apportable/account/Manager;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/account/Manager$1;->this$0:Lcom/apportable/account/Manager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/account/Manager$1;->this$0:Lcom/apportable/account/Manager;

    #@2
    new-instance v1, Landroid/os/Handler;

    #@4
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@7
    # setter for: Lcom/apportable/account/Manager;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/apportable/account/Manager;->access$002(Lcom/apportable/account/Manager;Landroid/os/Handler;)Landroid/os/Handler;

    #@a
    return-void
.end method
