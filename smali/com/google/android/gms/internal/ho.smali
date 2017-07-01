.class public final Lcom/google/android/gms/internal/ho;
.super Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ho;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const v0, 0x1010048

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    return-void
.end method

.method private b(III)I
    .registers 7

    #@0
    packed-switch p1, :pswitch_data_1e

    #@3
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string v2, "Unknown color scheme: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    :pswitch_1c
    move p3, p2

    #@1d
    :pswitch_1d
    return p3

    #@1e
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method private b(Landroid/content/res/Resources;II)V
    .registers 7

    #@0
    packed-switch p2, :pswitch_data_40

    #@3
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string v2, "Unknown button size: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    :pswitch_1c
    sget v0, Lcom/google/android/gms/R$drawable;->common_signin_btn_text_dark:I

    #@1e
    sget v1, Lcom/google/android/gms/R$drawable;->common_signin_btn_text_light:I

    #@20
    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/gms/internal/ho;->b(III)I

    #@23
    move-result v0

    #@24
    :goto_24
    const/4 v1, -0x1

    #@25
    if-ne v0, v1, :cond_38

    #@27
    new-instance v0, Ljava/lang/IllegalStateException;

    #@29
    const-string v1, "Could not find background resource!"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    :pswitch_2f
    sget v0, Lcom/google/android/gms/R$drawable;->common_signin_btn_icon_dark:I

    #@31
    sget v1, Lcom/google/android/gms/R$drawable;->common_signin_btn_icon_light:I

    #@33
    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/gms/internal/ho;->b(III)I

    #@36
    move-result v0

    #@37
    goto :goto_24

    #@38
    :cond_38
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ho;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3f
    return-void

    #@40
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_2f
    .end packed-switch
.end method

.method private c(Landroid/content/res/Resources;)V
    .registers 6

    #@0
    const/high16 v3, 0x42400000    # 48.0f

    #@2
    const/high16 v2, 0x3f000000    # 0.5f

    #@4
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    #@6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ho;->setTypeface(Landroid/graphics/Typeface;)V

    #@9
    const/high16 v0, 0x41600000    # 14.0f

    #@b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ho;->setTextSize(F)V

    #@e
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@11
    move-result-object v0

    #@12
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@14
    mul-float v1, v0, v3

    #@16
    add-float/2addr v1, v2

    #@17
    float-to-int v1, v1

    #@18
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ho;->setMinHeight(I)V

    #@1b
    mul-float/2addr v0, v3

    #@1c
    add-float/2addr v0, v2

    #@1d
    float-to-int v0, v0

    #@1e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ho;->setMinWidth(I)V

    #@21
    return-void
.end method

.method private c(Landroid/content/res/Resources;II)V
    .registers 7

    #@0
    sget v0, Lcom/google/android/gms/R$color;->common_signin_btn_text_dark:I

    #@2
    sget v1, Lcom/google/android/gms/R$color;->common_signin_btn_text_light:I

    #@4
    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/gms/internal/ho;->b(III)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ho;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@f
    packed-switch p2, :pswitch_data_44

    #@12
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string v2, "Unknown button size: "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    :pswitch_2b
    sget v0, Lcom/google/android/gms/R$string;->common_signin_button_text:I

    #@2d
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ho;->setText(Ljava/lang/CharSequence;)V

    #@34
    :goto_34
    return-void

    #@35
    :pswitch_35
    sget v0, Lcom/google/android/gms/R$string;->common_signin_button_text_long:I

    #@37
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ho;->setText(Ljava/lang/CharSequence;)V

    #@3e
    goto :goto_34

    #@3f
    :pswitch_3f
    const/4 v0, 0x0

    #@40
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ho;->setText(Ljava/lang/CharSequence;)V

    #@43
    goto :goto_34

    #@44
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_35
        :pswitch_3f
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;II)V
    .registers 10

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    if-ltz p2, :cond_32

    #@4
    const/4 v0, 0x3

    #@5
    if-ge p2, v0, :cond_32

    #@7
    move v0, v1

    #@8
    :goto_8
    const-string v3, "Unknown button size %d"

    #@a
    new-array v4, v1, [Ljava/lang/Object;

    #@c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v5

    #@10
    aput-object v5, v4, v2

    #@12
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    #@15
    if-ltz p3, :cond_34

    #@17
    const/4 v0, 0x2

    #@18
    if-ge p3, v0, :cond_34

    #@1a
    move v0, v1

    #@1b
    :goto_1b
    const-string v3, "Unknown color scheme %s"

    #@1d
    new-array v1, v1, [Ljava/lang/Object;

    #@1f
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v4

    #@23
    aput-object v4, v1, v2

    #@25
    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    #@28
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ho;->c(Landroid/content/res/Resources;)V

    #@2b
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ho;->b(Landroid/content/res/Resources;II)V

    #@2e
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ho;->c(Landroid/content/res/Resources;II)V

    #@31
    return-void

    #@32
    :cond_32
    move v0, v2

    #@33
    goto :goto_8

    #@34
    :cond_34
    move v0, v2

    #@35
    goto :goto_1b
.end method
