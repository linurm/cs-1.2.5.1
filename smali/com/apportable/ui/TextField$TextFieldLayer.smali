.class public Lcom/apportable/ui/TextField$TextFieldLayer;
.super Landroid/widget/EditText;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextFieldLayer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;,
        Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;
    }
.end annotation


# instance fields
.field private mField:Lcom/apportable/ui/TextField;

.field private mFilters:[Landroid/text/InputFilter;

.field private mHasFirstResponder:Z

.field private mHideSoftInputRunnable:Ljava/lang/Runnable;

.field private mTextChanging:Z

.field final synthetic this$0:Lcom/apportable/ui/TextField;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/TextField;Landroid/content/Context;Lcom/apportable/ui/TextField;)V
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iput-object p1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    #@4
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    #@7
    iput-boolean v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z

    #@9
    iput-boolean v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mHasFirstResponder:Z

    #@b
    new-instance v0, Lcom/apportable/ui/TextField$TextFieldLayer$2;

    #@d
    invoke-direct {v0, p0}, Lcom/apportable/ui/TextField$TextFieldLayer$2;-><init>(Lcom/apportable/ui/TextField$TextFieldLayer;)V

    #@10
    iput-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mHideSoftInputRunnable:Ljava/lang/Runnable;

    #@12
    iput-object p3, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@14
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->setPadding(IIII)V

    #@17
    invoke-virtual {p0, v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->setFocusable(Z)V

    #@1a
    invoke-virtual {p0, v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->setCursorVisible(Z)V

    #@1d
    const v0, 0x80091

    #@20
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setInputType(I)V

    #@23
    new-array v0, v1, [Landroid/text/InputFilter;

    #@25
    iput-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mFilters:[Landroid/text/InputFilter;

    #@27
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mFilters:[Landroid/text/InputFilter;

    #@29
    new-instance v1, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;

    #@2b
    invoke-direct {v1, p0, p0}, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;-><init>(Lcom/apportable/ui/TextField$TextFieldLayer;Lcom/apportable/ui/TextField$TextFieldLayer;)V

    #@2e
    aput-object v1, v0, v2

    #@30
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getText()Landroid/text/Editable;

    #@33
    move-result-object v0

    #@34
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mFilters:[Landroid/text/InputFilter;

    #@36
    invoke-interface {v0, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    #@39
    invoke-virtual {p0, p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    #@3c
    invoke-virtual {p0, p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@3f
    invoke-virtual {p0, p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@42
    invoke-virtual {p0, p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@45
    const v0, 0x12000006

    #@48
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setImeOptions(I)V

    #@4b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4d
    const/16 v1, 0xb

    #@4f
    if-lt v0, v1, :cond_59

    #@51
    new-instance v0, Lcom/apportable/ui/TextField$TextFieldLayer$1;

    #@53
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/TextField$TextFieldLayer$1;-><init>(Lcom/apportable/ui/TextField$TextFieldLayer;Lcom/apportable/ui/TextField;)V

    #@56
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    #@59
    :cond_59
    iput-boolean v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z

    #@5b
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/TextField$TextFieldLayer;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z

    #@2
    return v0
.end method

.method static synthetic access$100(Lcom/apportable/ui/TextField$TextFieldLayer;)Lcom/apportable/ui/TextField;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@2
    return-object v0
.end method

.method static synthetic access$1600(Lcom/apportable/ui/TextField$TextFieldLayer;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->sendBackspace()V

    #@3
    return-void
.end method

.method private checkReturnEnd(I)Z
    .registers 6

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@4
    iget-object v3, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@6
    invoke-virtual {v3}, Lcom/apportable/ui/TextField;->object()I

    #@9
    move-result v3

    #@a
    # invokes: Lcom/apportable/ui/TextField;->shouldReturn(I)Z
    invoke-static {v0, v3}, Lcom/apportable/ui/TextField;->access$700(Lcom/apportable/ui/TextField;I)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2a

    #@10
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@12
    iget-object v3, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@14
    invoke-virtual {v3}, Lcom/apportable/ui/TextField;->object()I

    #@17
    move-result v3

    #@18
    # invokes: Lcom/apportable/ui/TextField;->shouldEndEditing(I)Z
    invoke-static {v0, v3}, Lcom/apportable/ui/TextField;->access$800(Lcom/apportable/ui/TextField;I)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2a

    #@1e
    move v0, v1

    #@1f
    :goto_1f
    if-eqz v0, :cond_29

    #@21
    iget-object v3, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    #@23
    # setter for: Lcom/apportable/ui/TextField;->mExitedOnReturn:Z
    invoke-static {v3, v1}, Lcom/apportable/ui/TextField;->access$902(Lcom/apportable/ui/TextField;Z)Z

    #@26
    invoke-virtual {p0, p0, v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->onFocusChange(Landroid/view/View;Z)V

    #@29
    :cond_29
    return v0

    #@2a
    :cond_2a
    move v0, v2

    #@2b
    goto :goto_1f
.end method

.method private sendBackspace()V
    .registers 10

    #@0
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getText()Landroid/text/Editable;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    if-lez v2, :cond_68

    #@11
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getSelectionStart()I

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_67

    #@17
    if-ne v0, v3, :cond_1b

    #@19
    add-int/lit8 v0, v2, -0x1

    #@1b
    :cond_1b
    iget-object v3, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    #@1d
    iget-object v4, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    #@1f
    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v4}, Lcom/apportable/ui/TextField;->access$1300(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    #@22
    move-result-object v4

    #@23
    iget-object v4, v4, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@25
    invoke-virtual {v4}, Lcom/apportable/ui/TextField;->object()I

    #@28
    move-result v4

    #@29
    add-int/lit8 v5, v0, -0x1

    #@2b
    const-string v6, ""

    #@2d
    # invokes: Lcom/apportable/ui/TextField;->shouldChangeCharactersInRange(IIILjava/lang/String;)Z
    invoke-static {v3, v4, v5, v8, v6}, Lcom/apportable/ui/TextField;->access$200(Lcom/apportable/ui/TextField;IIILjava/lang/String;)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_67

    #@33
    iget-object v3, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    #@35
    iget-object v4, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    #@37
    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v4}, Lcom/apportable/ui/TextField;->access$1300(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    #@3a
    move-result-object v4

    #@3b
    iget-object v4, v4, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@3d
    invoke-virtual {v4}, Lcom/apportable/ui/TextField;->object()I

    #@40
    move-result v4

    #@41
    # invokes: Lcom/apportable/ui/TextField;->textWillChange(I)V
    invoke-static {v3, v4}, Lcom/apportable/ui/TextField;->access$300(Lcom/apportable/ui/TextField;I)V

    #@44
    new-instance v3, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    add-int/lit8 v4, v0, -0x1

    #@4b
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {p0, v1, v8}, Lcom/apportable/ui/TextField$TextFieldLayer;->setText(Ljava/lang/String;Z)V

    #@62
    add-int/lit8 v0, v0, -0x1

    #@64
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setSelection(I)V

    #@67
    :cond_67
    :goto_67
    return-void

    #@68
    :cond_68
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    #@6a
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    #@6c
    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v1}, Lcom/apportable/ui/TextField;->access$1300(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    #@6f
    move-result-object v1

    #@70
    iget-object v1, v1, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@72
    invoke-virtual {v1}, Lcom/apportable/ui/TextField;->object()I

    #@75
    move-result v1

    #@76
    const-string v2, ""

    #@78
    # invokes: Lcom/apportable/ui/TextField;->shouldChangeCharactersInRange(IIILjava/lang/String;)Z
    invoke-static {v0, v1, v7, v3, v2}, Lcom/apportable/ui/TextField;->access$200(Lcom/apportable/ui/TextField;IIILjava/lang/String;)Z

    #@7b
    goto :goto_67
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z

    #@2
    if-nez v0, :cond_13

    #@4
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@6
    if-eqz v0, :cond_13

    #@8
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@a
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@c
    invoke-virtual {v1}, Lcom/apportable/ui/TextField;->object()I

    #@f
    move-result v1

    #@10
    # invokes: Lcom/apportable/ui/TextField;->textDidChange(I)V
    invoke-static {v0, v1}, Lcom/apportable/ui/TextField;->access$600(Lcom/apportable/ui/TextField;I)V

    #@13
    :cond_13
    return-void
.end method

.method public becomeFirstResponder()V
    .registers 4

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mHasFirstResponder:Z

    #@3
    if-nez v0, :cond_2a

    #@5
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->requestFocus()Z

    #@8
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mHasFirstResponder:Z

    #@b
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@d
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@f
    invoke-virtual {v1}, Lcom/apportable/ui/TextField;->object()I

    #@12
    move-result v1

    #@13
    # invokes: Lcom/apportable/ui/TextField;->didBeginEditing(I)V
    invoke-static {v0, v1}, Lcom/apportable/ui/TextField;->access$1200(Lcom/apportable/ui/TextField;I)V

    #@16
    const/4 v0, 0x1

    #@17
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setCursorVisible(Z)V

    #@1a
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    #@1c
    const/4 v1, 0x0

    #@1d
    # setter for: Lcom/apportable/ui/TextField;->mExitedOnReturn:Z
    invoke-static {v0, v1}, Lcom/apportable/ui/TextField;->access$902(Lcom/apportable/ui/TextField;Z)Z

    #@20
    # getter for: Lcom/apportable/ui/TextField;->mHideSoftInput:Z
    invoke-static {}, Lcom/apportable/ui/TextField;->access$1100()Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_2c

    #@26
    const/4 v0, 0x0

    #@27
    # setter for: Lcom/apportable/ui/TextField;->mHideSoftInput:Z
    invoke-static {v0}, Lcom/apportable/ui/TextField;->access$1102(Z)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_45

    #@2a
    :cond_2a
    :goto_2a
    monitor-exit p0

    #@2b
    return-void

    #@2c
    :cond_2c
    :try_start_2c
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getContext()Landroid/content/Context;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroid/app/Activity;

    #@32
    const-string v1, "input_method"

    #@34
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@3a
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    #@3c
    # getter for: Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;
    invoke-static {v1}, Lcom/apportable/ui/TextField;->access$1300(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;

    #@3f
    move-result-object v1

    #@40
    const/4 v2, 0x1

    #@41
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_45

    #@44
    goto :goto_2a

    #@45
    :catchall_45
    move-exception v0

    #@46
    monitor-exit p0

    #@47
    throw v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    #@0
    return-void
.end method

.method public isFirstResponder()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mHasFirstResponder:Z

    #@2
    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5

    #@0
    new-instance v0, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;

    #@2
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x1

    #@7
    invoke-direct {v0, p0, v1, v2}, Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;-><init>(Lcom/apportable/ui/TextField$TextFieldLayer;Landroid/view/inputmethod/InputConnection;Z)V

    #@a
    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x6

    #@3
    if-ne p2, v2, :cond_19

    #@5
    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@7
    invoke-virtual {v2}, Lcom/apportable/ui/TextField;->object()I

    #@a
    move-result v2

    #@b
    invoke-direct {p0, v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->checkReturnEnd(I)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_12

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0, v1}, Lcom/apportable/activity/VerdeActivity;->onSoftKeyboardChanged(II)V

    #@19
    :cond_19
    move v0, v1

    #@1a
    goto :goto_11
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    #@0
    if-eqz p2, :cond_6

    #@2
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->becomeFirstResponder()V

    #@5
    :goto_5
    return-void

    #@6
    :cond_6
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->resignFirstResponder()V

    #@9
    goto :goto_5
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    const/16 v2, 0x42

    #@4
    if-ne p2, v2, :cond_1a

    #@6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@9
    move-result v2

    #@a
    if-ne v2, v1, :cond_1a

    #@c
    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@e
    invoke-virtual {v2}, Lcom/apportable/ui/TextField;->object()I

    #@11
    move-result v2

    #@12
    invoke-direct {p0, v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->checkReturnEnd(I)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_19

    #@18
    move v0, v1

    #@19
    :cond_19
    :goto_19
    return v0

    #@1a
    :cond_1a
    const/16 v2, 0x43

    #@1c
    if-ne p2, v2, :cond_19

    #@1e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_19

    #@24
    invoke-direct {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->sendBackspace()V

    #@27
    move v0, v1

    #@28
    goto :goto_19
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x4

    #@2
    if-ne p1, v1, :cond_20

    #@4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x1

    #@9
    if-ne v1, v2, :cond_20

    #@b
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@d
    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@f
    invoke-virtual {v2}, Lcom/apportable/ui/TextField;->object()I

    #@12
    move-result v2

    #@13
    # invokes: Lcom/apportable/ui/TextField;->shouldEndEditing(I)Z
    invoke-static {v1, v2}, Lcom/apportable/ui/TextField;->access$800(Lcom/apportable/ui/TextField;I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_20

    #@19
    invoke-virtual {p0, p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->onFocusChange(Landroid/view/View;Z)V

    #@1c
    invoke-super {p0, p2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@1f
    move-result v0

    #@20
    :cond_20
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z

    #@2
    if-nez v0, :cond_17

    #@4
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@6
    if-eqz v0, :cond_17

    #@8
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    #@a
    const-string v1, "Kindle Fire"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_17

    #@12
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@14
    invoke-virtual {v0}, Lcom/apportable/ui/TextField;->setNeedsDisplay()V

    #@17
    :cond_17
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_23

    #@7
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@9
    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@b
    invoke-virtual {v2}, Lcom/apportable/ui/TextField;->object()I

    #@e
    move-result v2

    #@f
    # invokes: Lcom/apportable/ui/TextField;->shouldBeginEditing(I)Z
    invoke-static {v1, v2}, Lcom/apportable/ui/TextField;->access$1000(Lcom/apportable/ui/TextField;I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_22

    #@15
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setFocusable(Z)V

    #@18
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setFocusableInTouchMode(Z)V

    #@1b
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->requestFocus()Z

    #@1e
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@21
    move-result v0

    #@22
    :cond_22
    :goto_22
    return v0

    #@23
    :cond_23
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@26
    move-result v0

    #@27
    goto :goto_22
.end method

.method public resignFirstResponder()V
    .registers 4

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mHasFirstResponder:Z

    #@3
    if-eqz v0, :cond_39

    #@5
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mHasFirstResponder:Z

    #@8
    const/4 v0, 0x0

    #@9
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setFocusable(Z)V

    #@c
    const/4 v0, 0x0

    #@d
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setCursorVisible(Z)V

    #@10
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@12
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;

    #@14
    invoke-virtual {v1}, Lcom/apportable/ui/TextField;->object()I

    #@17
    move-result v1

    #@18
    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    #@1a
    # getter for: Lcom/apportable/ui/TextField;->mExitedOnReturn:Z
    invoke-static {v2}, Lcom/apportable/ui/TextField;->access$900(Lcom/apportable/ui/TextField;)Z

    #@1d
    move-result v2

    #@1e
    # invokes: Lcom/apportable/ui/TextField;->didEndEditing(IZ)V
    invoke-static {v0, v1, v2}, Lcom/apportable/ui/TextField;->access$1400(Lcom/apportable/ui/TextField;IZ)V

    #@21
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->clearFocus()V

    #@24
    # getter for: Lcom/apportable/ui/TextField;->mHideSoftInput:Z
    invoke-static {}, Lcom/apportable/ui/TextField;->access$1100()Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_39

    #@2a
    const/4 v0, 0x1

    #@2b
    # setter for: Lcom/apportable/ui/TextField;->mHideSoftInput:Z
    invoke-static {v0}, Lcom/apportable/ui/TextField;->access$1102(Z)Z

    #@2e
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    #@30
    # getter for: Lcom/apportable/ui/TextField;->becomeFirstResponderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/apportable/ui/TextField;->access$1500(Lcom/apportable/ui/TextField;)Landroid/os/Handler;

    #@33
    move-result-object v0

    #@34
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mHideSoftInputRunnable:Ljava/lang/Runnable;

    #@36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    #@39
    :cond_39
    monitor-exit p0

    #@3a
    return-void

    #@3b
    :catchall_3b
    move-exception v0

    #@3c
    monitor-exit p0

    #@3d
    throw v0
.end method

.method public setText(Ljava/lang/String;Z)V
    .registers 9

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getText()Landroid/text/Editable;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_28

    #@f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@12
    move-result v0

    #@13
    :cond_13
    :goto_13
    const/4 v2, 0x1

    #@14
    iput-boolean v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z

    #@16
    invoke-virtual {p0, p1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setText(Ljava/lang/CharSequence;)V

    #@19
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setSelection(I)V

    #@1c
    invoke-virtual {p0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getText()Landroid/text/Editable;

    #@1f
    move-result-object v0

    #@20
    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mFilters:[Landroid/text/InputFilter;

    #@22
    invoke-interface {v0, v2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    #@25
    iput-boolean v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z

    #@27
    return-void

    #@28
    :cond_28
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@2b
    move-result v0

    #@2c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2f
    move-result v3

    #@30
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    #@33
    move-result v3

    #@34
    move v0, v1

    #@35
    :goto_35
    if-ge v0, v3, :cond_41

    #@37
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v4

    #@3b
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@3e
    move-result v5

    #@3f
    if-eq v4, v5, :cond_4a

    #@41
    :cond_41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@44
    move-result v2

    #@45
    if-le v2, v0, :cond_13

    #@47
    add-int/lit8 v0, v0, 0x1

    #@49
    goto :goto_13

    #@4a
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    #@4c
    goto :goto_35
.end method
