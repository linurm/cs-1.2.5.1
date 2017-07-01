.class Lcom/apportable/ui/TextView$EditText;
.super Landroid/widget/EditText;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditText"
.end annotation


# instance fields
.field private mHasFirstResponder:Z

.field private mOwner:Lcom/apportable/ui/TextView;

.field final synthetic this$0:Lcom/apportable/ui/TextView;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/TextView;Landroid/content/Context;Lcom/apportable/ui/TextView;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/apportable/ui/TextView$EditText;->this$0:Lcom/apportable/ui/TextView;

    #@2
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    #@5
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/apportable/ui/TextView$EditText;->mHasFirstResponder:Z

    #@8
    invoke-virtual {p0, p0}, Lcom/apportable/ui/TextView$EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@d
    const/16 v1, 0xb

    #@f
    if-lt v0, v1, :cond_19

    #@11
    new-instance v0, Lcom/apportable/ui/TextView$EditText$1;

    #@13
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/TextView$EditText$1;-><init>(Lcom/apportable/ui/TextView$EditText;Lcom/apportable/ui/TextView;)V

    #@16
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextView$EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    #@19
    :cond_19
    const v0, 0x12000006

    #@1c
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextView$EditText;->setImeOptions(I)V

    #@1f
    iput-object p3, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    #@21
    return-void
.end method


# virtual methods
.method public becomeFirstResponder()V
    .registers 4

    #@0
    const/4 v2, 0x1

    #@1
    iget-boolean v0, p0, Lcom/apportable/ui/TextView$EditText;->mHasFirstResponder:Z

    #@3
    if-nez v0, :cond_23

    #@5
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->requestFocus()Z

    #@8
    iput-boolean v2, p0, Lcom/apportable/ui/TextView$EditText;->mHasFirstResponder:Z

    #@a
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/app/Activity;

    #@10
    const-string v1, "input_method"

    #@12
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@18
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@1b
    iget-object v0, p0, Lcom/apportable/ui/TextView$EditText;->this$0:Lcom/apportable/ui/TextView;

    #@1d
    # invokes: Lcom/apportable/ui/TextView;->didBeginEditing()V
    invoke-static {v0}, Lcom/apportable/ui/TextView;->access$500(Lcom/apportable/ui/TextView;)V

    #@20
    invoke-virtual {p0, v2}, Lcom/apportable/ui/TextView$EditText;->setCursorVisible(Z)V

    #@23
    :cond_23
    return-void
.end method

.method public onEditorAction(I)V
    .registers 7

    #@0
    const/4 v4, 0x0

    #@1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    #@4
    const/4 v0, 0x6

    #@5
    if-ne p1, v0, :cond_3d

    #@7
    iget-object v0, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    #@9
    if-eqz v0, :cond_3d

    #@b
    iget-object v0, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    #@d
    iget-object v1, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    #@f
    iget v1, v1, Lcom/apportable/ui/TextView;->mObject:I

    #@11
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->getText()Landroid/text/Editable;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->getText()Landroid/text/Editable;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    #@20
    move-result v3

    #@21
    # invokes: Lcom/apportable/ui/TextView;->textShouldChange(ILjava/lang/String;II)Z
    invoke-static {v0, v1, v2, v4, v3}, Lcom/apportable/ui/TextView;->access$300(Lcom/apportable/ui/TextView;ILjava/lang/String;II)Z

    #@24
    iget-object v0, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    #@26
    iget-object v1, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    #@28
    iget v1, v1, Lcom/apportable/ui/TextView;->mObject:I

    #@2a
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->getText()Landroid/text/Editable;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    # invokes: Lcom/apportable/ui/TextView;->textDidChange(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/apportable/ui/TextView;->access$400(Lcom/apportable/ui/TextView;ILjava/lang/String;)V

    #@35
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@38
    move-result-object v0

    #@39
    const/4 v1, 0x1

    #@3a
    invoke-virtual {v0, v1, v4}, Lcom/apportable/activity/VerdeActivity;->onSoftKeyboardChanged(II)V

    #@3d
    :cond_3d
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    #@0
    if-nez p2, :cond_5

    #@2
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->resignFirstResponder()V

    #@5
    :cond_5
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 5

    #@0
    const/4 v0, 0x4

    #@1
    if-ne p1, v0, :cond_12

    #@3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x1

    #@8
    if-ne v0, v1, :cond_12

    #@a
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->resignFirstResponder()V

    #@d
    invoke-super {p0, p2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@10
    move-result v0

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_11
.end method

.method protected onSelectionChanged(II)V
    .registers 5

    #@0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    #@3
    iget-object v0, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    #@5
    if-eqz v0, :cond_10

    #@7
    iget-object v0, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    #@9
    iget-object v1, p0, Lcom/apportable/ui/TextView$EditText;->mOwner:Lcom/apportable/ui/TextView;

    #@b
    iget v1, v1, Lcom/apportable/ui/TextView;->mObject:I

    #@d
    # invokes: Lcom/apportable/ui/TextView;->selectionChange(III)V
    invoke-static {v0, v1, p1, p2}, Lcom/apportable/ui/TextView;->access$200(Lcom/apportable/ui/TextView;III)V

    #@10
    :cond_10
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    #@0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_11

    #@7
    iget-boolean v0, p0, Lcom/apportable/ui/TextView$EditText;->mHasFirstResponder:Z

    #@9
    if-nez v0, :cond_11

    #@b
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->requestFocus()Z

    #@e
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->becomeFirstResponder()V

    #@11
    :cond_11
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public resignFirstResponder()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    iget-boolean v0, p0, Lcom/apportable/ui/TextView$EditText;->mHasFirstResponder:Z

    #@3
    if-eqz v0, :cond_22

    #@5
    iput-boolean v2, p0, Lcom/apportable/ui/TextView$EditText;->mHasFirstResponder:Z

    #@7
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->getContext()Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/app/Activity;

    #@d
    const-string v1, "input_method"

    #@f
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@15
    invoke-virtual {p0, v2}, Lcom/apportable/ui/TextView$EditText;->setCursorVisible(Z)V

    #@18
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->getWindowToken()Landroid/os/IBinder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@1f
    invoke-virtual {p0}, Lcom/apportable/ui/TextView$EditText;->clearFocus()V

    #@22
    :cond_22
    return-void
.end method
