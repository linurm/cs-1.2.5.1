.class Lcom/apportable/ui/TextField;
.super Lcom/apportable/ui/Control;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/TextField$TextFieldLayer;,
        Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;,
        Lcom/apportable/ui/TextField$TextFieldLayer$ZanyInputConnection;
    }
.end annotation


# static fields
.field private static final LOGGING:Z = false

.field private static final TAG:Ljava/lang/String; = "TextField"

.field private static final UITextFieldViewModeAlways:I = 0x3

.field private static final UITextFieldViewModeNever:I = 0x0

.field private static final UITextFieldViewModeUnlessEditing:I = 0x2

.field private static final UITextFieldViewModeWhileEditing:I = 0x1

.field private static mHideSoftInput:Z


# instance fields
.field private becomeFirstResponderHandler:Landroid/os/Handler;

.field private becomeFirstResponderRunnable:Ljava/lang/Runnable;

.field private layout:Landroid/widget/LinearLayout;

.field private mExitedOnReturn:Z

.field private mFontSize:F

.field private mKeyboardType:I

.field private mLeftView:Lcom/apportable/ui/View;

.field private mLeftViewMode:I

.field private mRightView:Lcom/apportable/ui/View;

.field private mRightViewMode:I

.field private mSecureTextEntry:Z

.field private mTextColor:I

.field private mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lcom/apportable/ui/TextField;->mHideSoftInput:Z

    #@3
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;I)V

    #@4
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@6
    iput-object v0, p0, Lcom/apportable/ui/TextField;->mTypeface:Landroid/graphics/Typeface;

    #@8
    const/high16 v0, -0x1000000

    #@a
    iput v0, p0, Lcom/apportable/ui/TextField;->mTextColor:I

    #@c
    iput-boolean v1, p0, Lcom/apportable/ui/TextField;->mExitedOnReturn:Z

    #@e
    iput-boolean v1, p0, Lcom/apportable/ui/TextField;->mSecureTextEntry:Z

    #@10
    invoke-static {}, Lcom/apportable/ui/TextField;->getDefaultInputType()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Lcom/apportable/ui/TextField;->mKeyboardType:I

    #@16
    new-instance v0, Landroid/os/Handler;

    #@18
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderHandler:Landroid/os/Handler;

    #@1d
    new-instance v0, Lcom/apportable/ui/TextField$1;

    #@1f
    invoke-direct {v0, p0}, Lcom/apportable/ui/TextField$1;-><init>(Lcom/apportable/ui/TextField;)V

    #@22
    iput-object v0, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderRunnable:Ljava/lang/Runnable;

    #@24
    invoke-direct {p0}, Lcom/apportable/ui/TextField;->init()V

    #@27
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@4
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@6
    iput-object v0, p0, Lcom/apportable/ui/TextField;->mTypeface:Landroid/graphics/Typeface;

    #@8
    const/high16 v0, -0x1000000

    #@a
    iput v0, p0, Lcom/apportable/ui/TextField;->mTextColor:I

    #@c
    iput-boolean v1, p0, Lcom/apportable/ui/TextField;->mExitedOnReturn:Z

    #@e
    iput-boolean v1, p0, Lcom/apportable/ui/TextField;->mSecureTextEntry:Z

    #@10
    invoke-static {}, Lcom/apportable/ui/TextField;->getDefaultInputType()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Lcom/apportable/ui/TextField;->mKeyboardType:I

    #@16
    new-instance v0, Landroid/os/Handler;

    #@18
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderHandler:Landroid/os/Handler;

    #@1d
    new-instance v0, Lcom/apportable/ui/TextField$1;

    #@1f
    invoke-direct {v0, p0}, Lcom/apportable/ui/TextField$1;-><init>(Lcom/apportable/ui/TextField;)V

    #@22
    iput-object v0, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderRunnable:Ljava/lang/Runnable;

    #@24
    invoke-direct {p0}, Lcom/apportable/ui/TextField;->init()V

    #@27
    return-void
.end method

.method static synthetic access$1000(Lcom/apportable/ui/TextField;I)Z
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->shouldBeginEditing(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    #@0
    sget-boolean v0, Lcom/apportable/ui/TextField;->mHideSoftInput:Z

    #@2
    return v0
.end method

.method static synthetic access$1102(Z)Z
    .registers 1

    #@0
    sput-boolean p0, Lcom/apportable/ui/TextField;->mHideSoftInput:Z

    #@2
    return p0
.end method

.method static synthetic access$1200(Lcom/apportable/ui/TextField;I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->didBeginEditing(I)V

    #@3
    return-void
.end method

.method static synthetic access$1300(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@2
    return-object v0
.end method

.method static synthetic access$1400(Lcom/apportable/ui/TextField;IZ)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/TextField;->didEndEditing(IZ)V

    #@3
    return-void
.end method

.method static synthetic access$1500(Lcom/apportable/ui/TextField;)Landroid/os/Handler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Lcom/apportable/ui/TextField;IIILjava/lang/String;)Z
    .registers 6

    #@0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apportable/ui/TextField;->shouldChangeCharactersInRange(IIILjava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$300(Lcom/apportable/ui/TextField;I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->textWillChange(I)V

    #@3
    return-void
.end method

.method static synthetic access$400(Lcom/apportable/ui/TextField;I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->actionBarWillShow(I)V

    #@3
    return-void
.end method

.method static synthetic access$500(Lcom/apportable/ui/TextField;I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->actionBarWillHide(I)V

    #@3
    return-void
.end method

.method static synthetic access$600(Lcom/apportable/ui/TextField;I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->textDidChange(I)V

    #@3
    return-void
.end method

.method static synthetic access$700(Lcom/apportable/ui/TextField;I)Z
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->shouldReturn(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$800(Lcom/apportable/ui/TextField;I)Z
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->shouldEndEditing(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$900(Lcom/apportable/ui/TextField;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/TextField;->mExitedOnReturn:Z

    #@2
    return v0
.end method

.method static synthetic access$902(Lcom/apportable/ui/TextField;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/TextField;->mExitedOnReturn:Z

    #@2
    return p1
.end method

.method private native actionBarWillHide(I)V
.end method

.method private native actionBarWillShow(I)V
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/TextField;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/TextField;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/TextField;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/TextField;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/TextField;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/TextField;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private native didBeginEditing(I)V
.end method

.method private native didEndEditing(IZ)V
.end method

.method public static getDefaultInputType()I
    .registers 1

    #@0
    const v0, 0x80091

    #@3
    return v0
.end method

.method private init()V
    .registers 5

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    new-instance v0, Lcom/apportable/ui/TextField$TextFieldLayer;

    #@4
    invoke-virtual {p0}, Lcom/apportable/ui/TextField;->getContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, p0, v1, p0}, Lcom/apportable/ui/TextField$TextFieldLayer;-><init>(Lcom/apportable/ui/TextField;Landroid/content/Context;Lcom/apportable/ui/TextField;)V

    #@b
    iput-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@d
    new-instance v0, Landroid/widget/LinearLayout;

    #@f
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@16
    iput-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    #@18
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@1a
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@1d
    iget-object v1, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    #@1f
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@22
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    #@24
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@27
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    #@29
    const/16 v1, 0x10

    #@2b
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    #@2e
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    #@30
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    #@33
    invoke-direct {p0}, Lcom/apportable/ui/TextField;->resetView()V

    #@36
    invoke-virtual {p0}, Lcom/apportable/ui/TextField;->requestFocus()Z

    #@39
    return-void
.end method

.method private resetView()V
    .registers 5

    #@0
    const/4 v3, 0x3

    #@1
    const/4 v2, -0x1

    #@2
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    #@4
    iget-object v1, p0, Lcom/apportable/ui/TextField;->mLeftView:Lcom/apportable/ui/View;

    #@6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    #@9
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    #@b
    iget-object v1, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@d
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    #@10
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    #@12
    iget-object v1, p0, Lcom/apportable/ui/TextField;->mRightView:Lcom/apportable/ui/View;

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    #@17
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mLeftView:Lcom/apportable/ui/View;

    #@19
    if-eqz v0, :cond_26

    #@1b
    iget v0, p0, Lcom/apportable/ui/TextField;->mLeftViewMode:I

    #@1d
    if-ne v0, v3, :cond_26

    #@1f
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    #@21
    iget-object v1, p0, Lcom/apportable/ui/TextField;->mLeftView:Lcom/apportable/ui/View;

    #@23
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@26
    :cond_26
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@28
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@2b
    const/high16 v1, 0x3f800000    # 1.0f

    #@2d
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@2f
    iget-object v1, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    #@31
    iget-object v2, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@33
    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@36
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mRightView:Lcom/apportable/ui/View;

    #@38
    if-eqz v0, :cond_45

    #@3a
    iget v0, p0, Lcom/apportable/ui/TextField;->mRightViewMode:I

    #@3c
    if-ne v0, v3, :cond_45

    #@3e
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    #@40
    iget-object v1, p0, Lcom/apportable/ui/TextField;->mRightView:Lcom/apportable/ui/View;

    #@42
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@45
    :cond_45
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    #@47
    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField;->setContentView(Landroid/view/View;)V

    #@4a
    return-void
.end method

.method private native shouldBeginEditing(I)Z
.end method

.method private native shouldChangeCharactersInRange(IIILjava/lang/String;)Z
.end method

.method private native shouldClear(I)Z
.end method

.method private native shouldEndEditing(I)Z
.end method

.method private native shouldReturn(I)Z
.end method

.method private native textDidChange(I)V
.end method

.method private native textWillChange(I)V
.end method


# virtual methods
.method public _setBackgroundColor(I)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Lcom/apportable/ui/Control;->_setBackgroundColor(I)V

    #@3
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    return-void
.end method

.method public becomeFirstResponder()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@2
    invoke-virtual {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->isFirstResponder()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v0, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderHandler:Landroid/os/Handler;

    #@b
    iget-object v1, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderRunnable:Ljava/lang/Runnable;

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@10
    iget-object v0, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderHandler:Landroid/os/Handler;

    #@12
    iget-object v1, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderRunnable:Ljava/lang/Runnable;

    #@14
    const-wide/16 v2, 0x64

    #@16
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@19
    goto :goto_8
.end method

.method public getFont()Landroid/graphics/Typeface;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTypeface:Landroid/graphics/Typeface;

    #@2
    return-object v0
.end method

.method public getLayer()Lcom/apportable/ui/TextField$TextFieldLayer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@2
    return-object v0
.end method

.method public getSelectionLength()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@2
    invoke-virtual {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getSelectionEnd()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@8
    invoke-virtual {v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->getSelectionStart()I

    #@b
    move-result v1

    #@c
    sub-int/2addr v0, v1

    #@d
    return v0
.end method

.method public getSelectionStart()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@2
    invoke-virtual {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getSelectionStart()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@2
    invoke-virtual {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getText()Landroid/text/Editable;

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
    iget v0, p0, Lcom/apportable/ui/TextField;->mTextColor:I

    #@2
    return v0
.end method

.method public resignFirstResponder()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@9
    invoke-virtual {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->resignFirstResponder()V

    #@c
    return-void
.end method

.method public setAutocorrectionType(I)V
    .registers 2

    #@0
    return-void
.end method

.method public setFont(Landroid/graphics/Typeface;F)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/apportable/ui/TextField;->mTypeface:Landroid/graphics/Typeface;

    #@2
    iput p2, p0, Lcom/apportable/ui/TextField;->mFontSize:F

    #@4
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1, p2}, Lcom/apportable/ui/TextField$TextFieldLayer;->setTextSize(IF)V

    #@a
    iget-boolean v0, p0, Lcom/apportable/ui/TextField;->mSecureTextEntry:Z

    #@c
    if-nez v0, :cond_15

    #@e
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@10
    iget-object v1, p0, Lcom/apportable/ui/TextField;->mTypeface:Landroid/graphics/Typeface;

    #@12
    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setTypeface(Landroid/graphics/Typeface;)V

    #@15
    :cond_15
    return-void
.end method

.method public setKeyboardType(I)V
    .registers 4

    #@0
    iput p1, p0, Lcom/apportable/ui/TextField;->mKeyboardType:I

    #@2
    iget-boolean v0, p0, Lcom/apportable/ui/TextField;->mSecureTextEntry:Z

    #@4
    if-nez v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@8
    iget v1, p0, Lcom/apportable/ui/TextField;->mKeyboardType:I

    #@a
    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setInputType(I)V

    #@d
    :cond_d
    return-void
.end method

.method public setLeftView(Lcom/apportable/ui/View;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/TextField;->mLeftView:Lcom/apportable/ui/View;

    #@2
    invoke-direct {p0}, Lcom/apportable/ui/TextField;->resetView()V

    #@5
    return-void
.end method

.method public setLeftViewMode(I)V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    if-eq p1, v0, :cond_6

    #@3
    const/4 v0, 0x1

    #@4
    if-ne p1, v0, :cond_e

    #@6
    :cond_6
    const-string v0, "TextField"

    #@8
    const-string v1, "Not supported style for left view mode"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    iput p1, p0, Lcom/apportable/ui/TextField;->mLeftViewMode:I

    #@10
    invoke-direct {p0}, Lcom/apportable/ui/TextField;->resetView()V

    #@13
    goto :goto_d
.end method

.method public setPlaceholder(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@2
    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setHint(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setRightView(Lcom/apportable/ui/View;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/TextField;->mRightView:Lcom/apportable/ui/View;

    #@2
    invoke-direct {p0}, Lcom/apportable/ui/TextField;->resetView()V

    #@5
    return-void
.end method

.method public setRightViewMode(I)V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    if-eq p1, v0, :cond_6

    #@3
    const/4 v0, 0x1

    #@4
    if-ne p1, v0, :cond_e

    #@6
    :cond_6
    const-string v0, "TextField"

    #@8
    const-string v1, "Not supported style for right view mode"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    iput p1, p0, Lcom/apportable/ui/TextField;->mRightViewMode:I

    #@10
    invoke-direct {p0}, Lcom/apportable/ui/TextField;->resetView()V

    #@13
    goto :goto_d
.end method

.method public setSecureTextEntry(Z)V
    .registers 4

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/TextField;->mSecureTextEntry:Z

    #@2
    iget-boolean v0, p0, Lcom/apportable/ui/TextField;->mSecureTextEntry:Z

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@8
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@a
    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setTypeface(Landroid/graphics/Typeface;)V

    #@d
    :cond_d
    iget-object v1, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@f
    if-eqz p1, :cond_17

    #@11
    const/16 v0, 0x81

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setInputType(I)V

    #@16
    return-void

    #@17
    :cond_17
    const v0, 0x80091

    #@1a
    goto :goto_13
.end method

.method public setSecureTextEntryDefaultInputType(Z)V
    .registers 4

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/TextField;->mSecureTextEntry:Z

    #@2
    iget-object v1, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@4
    if-eqz p1, :cond_e

    #@6
    invoke-static {}, Lcom/apportable/ui/TextField;->getDefaultInputType()I

    #@9
    move-result v0

    #@a
    :goto_a
    invoke-virtual {v1, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setRawInputType(I)V

    #@d
    return-void

    #@e
    :cond_e
    iget v0, p0, Lcom/apportable/ui/TextField;->mKeyboardType:I

    #@10
    goto :goto_a
.end method

.method public setSelection(II)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@2
    add-int v1, p1, p2

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setSelection(II)V

    #@7
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 4

    #@0
    if-nez p1, :cond_4

    #@2
    const-string p1, ""

    #@4
    :cond_4
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, p1, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setText(Ljava/lang/String;Z)V

    #@a
    return-void
.end method

.method public setTextAlignment(I)V
    .registers 4

    #@0
    const/4 v1, 0x1

    #@1
    if-nez p1, :cond_a

    #@3
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@5
    const/4 v1, 0x3

    #@6
    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setGravity(I)V

    #@9
    :cond_9
    :goto_9
    return-void

    #@a
    :cond_a
    if-ne p1, v1, :cond_12

    #@c
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@e
    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setGravity(I)V

    #@11
    goto :goto_9

    #@12
    :cond_12
    const/4 v0, 0x2

    #@13
    if-ne p1, v0, :cond_9

    #@15
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@17
    const/4 v1, 0x5

    #@18
    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setGravity(I)V

    #@1b
    goto :goto_9
.end method

.method public setTextColor(I)V
    .registers 3

    #@0
    iput p1, p0, Lcom/apportable/ui/TextField;->mTextColor:I

    #@2
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@4
    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setTextColor(I)V

    #@7
    return-void
.end method
