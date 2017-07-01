.class Lcom/apportable/ui/AlertView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/AlertView;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/AlertView;


# direct methods
.method constructor <init>(Lcom/apportable/ui/AlertView;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/AlertView$4;->this$0:Lcom/apportable/ui/AlertView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/AlertView$4;->this$0:Lcom/apportable/ui/AlertView;

    #@2
    iget-object v1, p0, Lcom/apportable/ui/AlertView$4;->this$0:Lcom/apportable/ui/AlertView;

    #@4
    iget v1, v1, Lcom/apportable/ui/AlertView;->mObject:I

    #@6
    # invokes: Lcom/apportable/ui/AlertView;->nativeOnDismiss(I)V
    invoke-static {v0, v1}, Lcom/apportable/ui/AlertView;->access$600(Lcom/apportable/ui/AlertView;I)V

    #@9
    return-void
.end method
