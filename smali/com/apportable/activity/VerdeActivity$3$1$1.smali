.class Lcom/apportable/activity/VerdeActivity$3$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity$3$1;->onFinished(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/apportable/activity/VerdeActivity$3$1;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity$3$1;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$3$1$1;->this$2:Lcom/apportable/activity/VerdeActivity$3$1;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$3$1$1;->this$2:Lcom/apportable/activity/VerdeActivity$3$1;

    #@2
    iget-object v0, v0, Lcom/apportable/activity/VerdeActivity$3$1;->this$1:Lcom/apportable/activity/VerdeActivity$3;

    #@4
    iget-object v0, v0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@6
    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->finish()V

    #@9
    return-void
.end method
