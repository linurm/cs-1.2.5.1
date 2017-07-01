.class Lcom/apportable/ui/TextView;
.super Lcom/apportable/ui/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/TextView$EditText;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDisableChangeCallbacks:Z

.field private mEditable:Z

.field private mFontSize:F

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextView:Lcom/apportable/ui/TextView$EditText;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    #@3
    const-string v0, "TextView"

    #@5
    iput-object v0, p0, Lcom/apportable/ui/TextView;->TAG:Ljava/lang/String;

    #@7
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@9
    iput-object v0, p0, Lcom/apportable/ui/TextView;->mTypeface:Landroid/graphics/Typeface;

    #@b
    const/high16 v0, 0x41880000    # 17.0f

    #@d
    iput v0, p0, Lcom/apportable/ui/TextView;->mFontSize:F

    #@f
    const/high16 v0, -0x1000000

    #@11
    iput v0, p0, Lcom/apportable/ui/TextView;->mTextColor:I

    #@13
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Lcom/apportable/ui/TextView;->mEditable:Z

    #@16
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z

    #@19
    invoke-direct {p0}, Lcom/apportable/ui/TextView;->init()V

    #@1c
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@3
    const-string v0, "TextView"

    #@5
    iput-object v0, p0, Lcom/apportable/ui/TextView;->TAG:Ljava/lang/String;

    #@7
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@9
    iput-object v0, p0, Lcom/apportable/ui/TextView;->mTypeface:Landroid/graphics/Typeface;

    #@b
    const/high16 v0, 0x41880000    # 17.0f

    #@d
    iput v0, p0, Lcom/apportable/ui/TextView;->mFontSize:F

    #@f
    const/high16 v0, -0x1000000

    #@11
    iput v0, p0, Lcom/apportable/ui/TextView;->mTextColor:I

    #@13
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Lcom/apportable/ui/TextView;->mEditable:Z

    #@16
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z

    #@19
    invoke-direct {p0}, Lcom/apportable/ui/TextView;->init()V

    #@1c
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/TextView;I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextView;->actionBarWillShow(I)V

    #@3
    return-void
.end method

.method static synthetic access$100(Lcom/apportable/ui/TextView;I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextView;->actionBarWillHide(I)V

    #@3
    return-void
.end method

.method static synthetic access$200(Lcom/apportable/ui/TextView;III)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/TextView;->selectionChange(III)V

    #@3
    return-void
.end method

.method static synthetic access$300(Lcom/apportable/ui/TextView;ILjava/lang/String;II)Z
    .registers 6

    #@0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apportable/ui/TextView;->textShouldChange(ILjava/lang/String;II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$400(Lcom/apportable/ui/TextView;ILjava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/TextView;->textDidChange(ILjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic access$500(Lcom/apportable/ui/TextView;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/TextView;->didBeginEditing()V

    #@3
    return-void
.end method

.method static synthetic access$600(Lcom/apportable/ui/TextView;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z

    #@2
    return v0
.end method

.method static synthetic access$700(Lcom/apportable/ui/TextView;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mText:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$702(Lcom/apportable/ui/TextView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/TextView;->mText:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic access$800(Lcom/apportable/ui/TextView;)Lcom/apportable/ui/TextView$EditText;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@2
    return-object v0
.end method

.method static synthetic access$900(Lcom/apportable/ui/TextView;ILjava/lang/String;III)V
    .registers 6

    #@0
    invoke-direct/range {p0 .. p5}, Lcom/apportable/ui/TextView;->textWillChange(ILjava/lang/String;III)V

    #@3
    return-void
.end method

.method private native actionBarWillHide(I)V
.end method

.method private native actionBarWillShow(I)V
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/TextView;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/TextView;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/TextView;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/TextView;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/TextView;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/TextView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private native didBeginEditing()V
.end method

.method private init()V
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/TextView$1;

    #@2
    invoke-virtual {p0}, Lcom/apportable/ui/TextView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1, p0}, Lcom/apportable/ui/TextView$1;-><init>(Lcom/apportable/ui/TextView;Landroid/content/Context;Lcom/apportable/ui/TextView;)V

    #@9
    iput-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@b
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@d
    const/16 v1, 0x33

    #@f
    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextView$EditText;->setGravity(I)V

    #@12
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@14
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextView;->setContentView(Landroid/view/View;)V

    #@17
    return-void
.end method

.method private native selectionChange(III)V
.end method

.method private native textDidChange(ILjava/lang/String;)V
.end method

.method private native textShouldChange(ILjava/lang/String;II)Z
.end method

.method private native textWillChange(ILjava/lang/String;III)V
.end method


# virtual methods
.method public _setBackgroundColor(I)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Lcom/apportable/ui/View;->_setBackgroundColor(I)V

    #@3
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@5
    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setBackgroundColor(I)V

    #@8
    return-void
.end method

.method public becomeFirstResponder()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@6
    invoke-virtual {v0}, Lcom/apportable/ui/TextView$EditText;->becomeFirstResponder()V

    #@9
    :cond_9
    return-void
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@2
    invoke-virtual {v0}, Lcom/apportable/ui/TextView$EditText;->getText()Landroid/text/Editable;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getTextColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/TextView;->mTextColor:I

    #@2
    return v0
.end method

.method public isEditable()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/TextView;->mEditable:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@2
    new-instance v1, Lcom/apportable/ui/TextView$2;

    #@4
    invoke-direct {v1, p0}, Lcom/apportable/ui/TextView$2;-><init>(Lcom/apportable/ui/TextView;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextView$EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@a
    new-instance v0, Lcom/apportable/ui/TextView$3;

    #@c
    invoke-direct {v0, p0}, Lcom/apportable/ui/TextView$3;-><init>(Lcom/apportable/ui/TextView;)V

    #@f
    iget-object v1, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@11
    const/4 v2, 0x1

    #@12
    new-array v2, v2, [Landroid/text/InputFilter;

    #@14
    const/4 v3, 0x0

    #@15
    aput-object v0, v2, v3

    #@17
    invoke-virtual {v1, v2}, Lcom/apportable/ui/TextView$EditText;->setFilters([Landroid/text/InputFilter;)V

    #@1a
    return-void
.end method

.method public resignFirstResponder()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@6
    invoke-virtual {v0}, Lcom/apportable/ui/TextView$EditText;->resignFirstResponder()V

    #@9
    :cond_9
    return-void
.end method

.method public setEditable(Z)V
    .registers 4

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/TextView;->mEditable:Z

    #@2
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@4
    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setClickable(Z)V

    #@7
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@9
    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setLongClickable(Z)V

    #@c
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@e
    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setFocusable(Z)V

    #@11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@13
    const/16 v1, 0xb

    #@15
    if-lt v0, v1, :cond_22

    #@17
    const/4 v0, 0x1

    #@18
    iput-boolean v0, p0, Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z

    #@1a
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@1c
    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setTextIsSelectable(Z)V

    #@1f
    const/4 v0, 0x0

    #@20
    iput-boolean v0, p0, Lcom/apportable/ui/TextView;->mDisableChangeCallbacks:Z

    #@22
    :cond_22
    return-void
.end method

.method public setFont(Landroid/graphics/Typeface;F)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/apportable/ui/TextView;->mTypeface:Landroid/graphics/Typeface;

    #@2
    iput p2, p0, Lcom/apportable/ui/TextView;->mFontSize:F

    #@4
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1, p2}, Lcom/apportable/ui/TextView$EditText;->setTextSize(IF)V

    #@a
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@c
    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setTypeface(Landroid/graphics/Typeface;)V

    #@f
    return-void
.end method

.method protected setMaxLines(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@2
    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setMaxLines(I)V

    #@5
    return-void
.end method

.method public setSelection(II)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/apportable/ui/TextView$EditText;->setSelection(II)V

    #@5
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/TextView;->mText:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@4
    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setText(Ljava/lang/CharSequence;)V

    #@7
    return-void
.end method

.method public setTextColor(I)V
    .registers 3

    #@0
    iput p1, p0, Lcom/apportable/ui/TextView;->mTextColor:I

    #@2
    iget-object v0, p0, Lcom/apportable/ui/TextView;->mTextView:Lcom/apportable/ui/TextView$EditText;

    #@4
    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextView$EditText;->setTextColor(I)V

    #@7
    return-void
.end method
