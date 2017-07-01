.class Lcom/apportable/ui/TextView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/TextView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/TextView;


# direct methods
.method constructor <init>(Lcom/apportable/ui/TextView;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    #@2
    # getter for: Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z
    invoke-static {v0}, Lcom/apportable/ui/TextView;->access$600(Lcom/apportable/ui/TextView;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v0, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    #@b
    iget-object v1, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    #@d
    # getter for: Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;
    invoke-static {v1}, Lcom/apportable/ui/TextView;->access$800(Lcom/apportable/ui/TextView;)Lcom/apportable/ui/TextView$EditText;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Lcom/apportable/ui/TextView$EditText;->getText()Landroid/text/Editable;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    # setter for: Lcom/apportable/ui/TextView;->mText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/apportable/ui/TextView;->access$702(Lcom/apportable/ui/TextView;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    iget-object v0, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    #@1e
    iget-object v1, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    #@20
    iget v1, v1, Lcom/apportable/ui/TextView;->mObject:I

    #@22
    iget-object v2, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    #@24
    # getter for: Lcom/apportable/ui/TextView;->mText:Ljava/lang/String;
    invoke-static {v2}, Lcom/apportable/ui/TextView;->access$700(Lcom/apportable/ui/TextView;)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    # invokes: Lcom/apportable/ui/TextView;->textDidChange(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/apportable/ui/TextView;->access$400(Lcom/apportable/ui/TextView;ILjava/lang/String;)V

    #@2b
    goto :goto_8
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    #@2
    # getter for: Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z
    invoke-static {v0}, Lcom/apportable/ui/TextView;->access$600(Lcom/apportable/ui/TextView;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v0, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    #@b
    iget-object v1, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    #@d
    iget v1, v1, Lcom/apportable/ui/TextView;->mObject:I

    #@f
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    move v3, p2

    #@14
    move v4, p3

    #@15
    move v5, p4

    #@16
    # invokes: Lcom/apportable/ui/TextView;->textWillChange(ILjava/lang/String;III)V
    invoke-static/range {v0 .. v5}, Lcom/apportable/ui/TextView;->access$900(Lcom/apportable/ui/TextView;ILjava/lang/String;III)V

    #@19
    goto :goto_8
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextView$2;->this$0:Lcom/apportable/ui/TextView;

    #@2
    # getter for: Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z
    invoke-static {v0}, Lcom/apportable/ui/TextView;->access$600(Lcom/apportable/ui/TextView;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_8

    #@8
    :cond_8
    return-void
.end method
