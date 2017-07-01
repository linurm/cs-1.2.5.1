.class Lcom/apportable/ui/TextField$TextFieldLayer$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/TextField$TextFieldLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/TextField$TextFieldLayer;


# direct methods
.method constructor <init>(Lcom/apportable/ui/TextField$TextFieldLayer;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$2;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    # getter for: Lcom/apportable/ui/TextField;->mHideSoftInput:Z
    invoke-static {}, Lcom/apportable/ui/TextField;->access$1100()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_23

    #@7
    # setter for: Lcom/apportable/ui/TextField;->mHideSoftInput:Z
    invoke-static {v2}, Lcom/apportable/ui/TextField;->access$1102(Z)Z

    #@a
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer$2;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@c
    invoke-virtual {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getContext()Landroid/content/Context;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/app/Activity;

    #@12
    const-string v1, "input_method"

    #@14
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@1a
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$2;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@1c
    invoke-virtual {v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->getWindowToken()Landroid/os/IBinder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@23
    :cond_23
    return-void
.end method
