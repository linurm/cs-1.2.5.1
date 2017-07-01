.class Lcom/apportable/ui/WebDialog$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebDialog$1;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebDialog$1;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebDialog$1$3;->this$1:Lcom/apportable/ui/WebDialog$1;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1$3;->this$1:Lcom/apportable/ui/WebDialog$1;

    #@2
    iget-object v0, v0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@4
    # invokes: Lcom/apportable/ui/WebDialog;->_dismiss()V
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$000(Lcom/apportable/ui/WebDialog;)V

    #@7
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1$3;->this$1:Lcom/apportable/ui/WebDialog$1;

    #@9
    iget-object v0, v0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@b
    # invokes: Lcom/apportable/ui/WebDialog;->onClose()V
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$100(Lcom/apportable/ui/WebDialog;)V

    #@e
    return-void
.end method
