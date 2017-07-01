.class Lcom/apportable/ui/Label;
.super Lcom/apportable/ui/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/Label$Shadow;,
        Lcom/apportable/ui/Label$TextLabel;
    }
.end annotation


# static fields
.field private static final NSLineBreakByCharWrapping:I = 0x1

.field private static final NSLineBreakByClipping:I = 0x2

.field private static final NSLineBreakByTruncatingHead:I = 0x3

.field private static final NSLineBreakByTruncatingMiddle:I = 0x5

.field private static final NSLineBreakByTruncatingTail:I = 0x4

.field private static final NSLineBreakByWordWrapping:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Label"

.field private static final UITextAlignmentCenter:I = 0x1

.field private static final UITextAlignmentLeft:I = 0x0

.field private static final UITextAlignmentRight:I = 0x2

.field private static final UITextAlignmentTopLeft:I = 0x63


# instance fields
.field private mShadowColor:I

.field private mShadowOffsetX:F

.field private mShadowOffsetY:F

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mTextView:Lcom/apportable/ui/Label$TextLabel;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4

    #@0
    new-instance v0, Landroid/graphics/RectF;

    #@2
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@5
    invoke-direct {p0, p1, p2, v0}, Lcom/apportable/ui/Label;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@8
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    iput v2, p0, Lcom/apportable/ui/Label;->mShadowColor:I

    #@7
    iput v1, p0, Lcom/apportable/ui/Label;->mShadowOffsetX:F

    #@9
    const/high16 v0, 0x3f800000    # 1.0f

    #@b
    iput v0, p0, Lcom/apportable/ui/Label;->mShadowOffsetY:F

    #@d
    iput v2, p0, Lcom/apportable/ui/Label;->mStrokeColor:I

    #@f
    iput v1, p0, Lcom/apportable/ui/Label;->mStrokeWidth:F

    #@11
    const/4 v0, 0x1

    #@12
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Label;->setWillNotDraw(Z)V

    #@15
    new-instance v0, Lcom/apportable/ui/Label$TextLabel;

    #@17
    invoke-virtual {p0}, Lcom/apportable/ui/Label;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Lcom/apportable/ui/Label$TextLabel;-><init>(Landroid/content/Context;)V

    #@1e
    iput-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@20
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@22
    const-string v1, ""

    #@24
    invoke-virtual {v0, v1}, Lcom/apportable/ui/Label$TextLabel;->setText(Ljava/lang/CharSequence;)V

    #@27
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@29
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Label;->setContentView(Landroid/view/View;)V

    #@2c
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/Label;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/Label;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Label;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/Label;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/Label;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/Label;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private getTruncateAtFromLineBreakMode(I)Landroid/text/TextUtils$TruncateAt;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    packed-switch p1, :pswitch_data_2c

    #@4
    :pswitch_4
    const-string v1, "Label"

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v3, "WARNING: NSLineBreakMode "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string v3, " not supported!"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    :goto_22
    :pswitch_22
    return-object v0

    #@23
    :pswitch_23
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    #@25
    goto :goto_22

    #@26
    :pswitch_26
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    #@28
    goto :goto_22

    #@29
    :pswitch_29
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@2b
    goto :goto_22

    #@2c
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_22
        :pswitch_4
        :pswitch_4
        :pswitch_23
        :pswitch_29
        :pswitch_26
    .end packed-switch
.end method

.method private updateShadow(IFF)V
    .registers 6

    #@0
    iput p1, p0, Lcom/apportable/ui/Label;->mShadowColor:I

    #@2
    iput p2, p0, Lcom/apportable/ui/Label;->mShadowOffsetX:F

    #@4
    iput p3, p0, Lcom/apportable/ui/Label;->mShadowOffsetY:F

    #@6
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@8
    const/high16 v1, 0x3f800000    # 1.0f

    #@a
    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/apportable/ui/Label$TextLabel;->setShadowLayer(FFFI)V

    #@d
    return-void
.end method


# virtual methods
.method public getSizeThatFits()Landroid/graphics/Rect;
    .registers 5

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@3
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@6
    move-result v1

    #@7
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@a
    move-result v2

    #@b
    invoke-virtual {v0, v1, v2}, Lcom/apportable/ui/Label$TextLabel;->measure(II)V

    #@e
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@10
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@13
    move-result v1

    #@14
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@17
    move-result v2

    #@18
    invoke-virtual {v0, v1, v2}, Lcom/apportable/ui/Label$TextLabel;->measure(II)V

    #@1b
    new-instance v0, Landroid/graphics/Rect;

    #@1d
    iget-object v1, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@1f
    invoke-virtual {v1}, Lcom/apportable/ui/Label$TextLabel;->getMeasuredWidth()I

    #@22
    move-result v1

    #@23
    iget-object v2, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@25
    invoke-virtual {v2}, Lcom/apportable/ui/Label$TextLabel;->getMeasuredHeight()I

    #@28
    move-result v2

    #@29
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    #@2c
    return-object v0
.end method

.method public setAdjustsFontSizeToFitWidth(Z)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@2
    invoke-virtual {v0, p1}, Lcom/apportable/ui/Label$TextLabel;->setAdjustsFontSizeToFitWidth(Z)V

    #@5
    return-void
.end method

.method public setFont(Landroid/graphics/Typeface;F)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1, p2}, Lcom/apportable/ui/Label$TextLabel;->setTextSize(IF)V

    #@6
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@8
    invoke-virtual {v0, p1}, Lcom/apportable/ui/Label$TextLabel;->setTypeface(Landroid/graphics/Typeface;)V

    #@b
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@d
    invoke-virtual {v0}, Lcom/apportable/ui/Label$TextLabel;->refitTextIfNeeded()V

    #@10
    return-void
.end method

.method public setLineBreakMode(I)V
    .registers 4

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/Label;->getTruncateAtFromLineBreakMode(I)Landroid/text/TextUtils$TruncateAt;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@6
    invoke-virtual {v1, v0}, Lcom/apportable/ui/Label$TextLabel;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@9
    return-void
.end method

.method public setLineSpacing(FF)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/apportable/ui/Label$TextLabel;->setLineSpacing(FF)V

    #@5
    return-void
.end method

.method public setMinimumFontSize(F)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@2
    invoke-virtual {v0, p1}, Lcom/apportable/ui/Label$TextLabel;->setMinimumFontSize(F)V

    #@5
    return-void
.end method

.method public setNumberOfLines(I)V
    .registers 3

    #@0
    if-nez p1, :cond_5

    #@2
    const p1, 0x7fffffff

    #@5
    :cond_5
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@7
    invoke-virtual {v0, p1}, Lcom/apportable/ui/Label$TextLabel;->setNumberOfLines(I)V

    #@a
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@c
    invoke-virtual {v0, p1}, Lcom/apportable/ui/Label$TextLabel;->setMaxLines(I)V

    #@f
    return-void
.end method

.method public setShadowColor(I)V
    .registers 4

    #@0
    iget v0, p0, Lcom/apportable/ui/Label;->mShadowOffsetX:F

    #@2
    iget v1, p0, Lcom/apportable/ui/Label;->mShadowOffsetY:F

    #@4
    invoke-direct {p0, p1, v0, v1}, Lcom/apportable/ui/Label;->updateShadow(IFF)V

    #@7
    return-void
.end method

.method public setShadowOffset(FF)V
    .registers 4

    #@0
    iget v0, p0, Lcom/apportable/ui/Label;->mShadowColor:I

    #@2
    invoke-direct {p0, v0, p1, p2}, Lcom/apportable/ui/Label;->updateShadow(IFF)V

    #@5
    return-void
.end method

.method public setStrokeColor(I)V
    .registers 5

    #@0
    iget v0, p0, Lcom/apportable/ui/Label;->mStrokeColor:I

    #@2
    if-eq v0, p1, :cond_f

    #@4
    iput p1, p0, Lcom/apportable/ui/Label;->mStrokeColor:I

    #@6
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@8
    iget v1, p0, Lcom/apportable/ui/Label;->mStrokeWidth:F

    #@a
    iget v2, p0, Lcom/apportable/ui/Label;->mStrokeColor:I

    #@c
    invoke-virtual {v0, v1, v2}, Lcom/apportable/ui/Label$TextLabel;->setStroke(FI)V

    #@f
    :cond_f
    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 5

    #@0
    iget v0, p0, Lcom/apportable/ui/Label;->mStrokeWidth:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_11

    #@6
    iput p1, p0, Lcom/apportable/ui/Label;->mStrokeWidth:F

    #@8
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@a
    iget v1, p0, Lcom/apportable/ui/Label;->mStrokeWidth:F

    #@c
    iget v2, p0, Lcom/apportable/ui/Label;->mStrokeColor:I

    #@e
    invoke-virtual {v0, v1, v2}, Lcom/apportable/ui/Label$TextLabel;->setStroke(FI)V

    #@11
    :cond_11
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@2
    invoke-virtual {v0, p1}, Lcom/apportable/ui/Label$TextLabel;->setText(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setTextAlignment(I)V
    .registers 4

    #@0
    sparse-switch p1, :sswitch_data_24

    #@3
    :goto_3
    return-void

    #@4
    :sswitch_4
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@6
    const/16 v1, 0x13

    #@8
    invoke-virtual {v0, v1}, Lcom/apportable/ui/Label$TextLabel;->setGravity(I)V

    #@b
    goto :goto_3

    #@c
    :sswitch_c
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@e
    const/16 v1, 0x11

    #@10
    invoke-virtual {v0, v1}, Lcom/apportable/ui/Label$TextLabel;->setGravity(I)V

    #@13
    goto :goto_3

    #@14
    :sswitch_14
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@16
    const/16 v1, 0x15

    #@18
    invoke-virtual {v0, v1}, Lcom/apportable/ui/Label$TextLabel;->setGravity(I)V

    #@1b
    goto :goto_3

    #@1c
    :sswitch_1c
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@1e
    const/16 v1, 0x33

    #@20
    invoke-virtual {v0, v1}, Lcom/apportable/ui/Label$TextLabel;->setGravity(I)V

    #@23
    goto :goto_3

    #@24
    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_c
        0x2 -> :sswitch_14
        0x63 -> :sswitch_1c
    .end sparse-switch
.end method

.method public setTextColor(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    #@2
    invoke-virtual {v0, p1}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    #@5
    return-void
.end method
