.class Lcom/apportable/ui/Window$WindowDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/Window$WindowDialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/Window$WindowDialog;

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/apportable/ui/Window$WindowDialog;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/Window$WindowDialog$1;->this$1:Lcom/apportable/ui/Window$WindowDialog;

    #@2
    iput-object p2, p0, Lcom/apportable/ui/Window$WindowDialog$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Window$WindowDialog$1;->this$1:Lcom/apportable/ui/Window$WindowDialog;

    #@2
    iget-object v1, p0, Lcom/apportable/ui/Window$WindowDialog$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    #@4
    # invokes: Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    invoke-static {v0, v1}, Lcom/apportable/ui/Window$WindowDialog;->access$201(Lcom/apportable/ui/Window$WindowDialog;Landroid/view/WindowManager$LayoutParams;)V

    #@7
    return-void
.end method
