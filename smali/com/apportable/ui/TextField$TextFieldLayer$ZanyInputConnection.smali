.class Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/TextField$TextFieldLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZanyInputConnection"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/TextField$TextFieldLayer;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/TextField$TextFieldLayer;Landroid/view/inputmethod/InputConnection;Z)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@2
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    #@5
    return-void
.end method


# virtual methods
.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    #@0
    const/4 v2, 0x1

    #@1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@4
    move-result v0

    #@5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@8
    move-result v1

    #@9
    if-ne v1, v2, :cond_14

    #@b
    const/16 v1, 0x43

    #@d
    if-ne v0, v1, :cond_15

    #@f
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@11
    # invokes: Lcom/apportable/ui/TextField$TextFieldLayer;->sendBackspace()V
    invoke-static {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->access$1600(Lcom/apportable/ui/TextField$TextFieldLayer;)V

    #@14
    :cond_14
    :goto_14
    return v2

    #@15
    :cond_15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    #@18
    move-result v0

    #@19
    int-to-char v0, v0

    #@1a
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@1c
    invoke-virtual {v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->getSelectionStart()I

    #@1f
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p0, v0, v2}, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@26
    goto :goto_14
.end method
