.class Lcom/apportable/activity/VerdeActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->onRestart()V
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
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$10;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeOnRestart()V
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->access$1200()V

    #@3
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$10;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@5
    invoke-static {v0}, Lcom/apportable/Lifecycle;->onActivityRestart(Lcom/apportable/activity/VerdeActivity;)V

    #@8
    return-void
.end method
