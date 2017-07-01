.class public final Lcom/google/android/gms/plus/PlusOneButton;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;,
        Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;
    }
.end annotation


# static fields
.field public static final ANNOTATION_BUBBLE:I = 0x1

.field public static final ANNOTATION_INLINE:I = 0x2

.field public static final ANNOTATION_NONE:I = 0x0

.field public static final DEFAULT_ACTIVITY_REQUEST_CODE:I = -0x1

.field public static final SIZE_MEDIUM:I = 0x1

.field public static final SIZE_SMALL:I = 0x0

.field public static final SIZE_STANDARD:I = 0x3

.field public static final SIZE_TALL:I = 0x2


# instance fields
.field private abB:Landroid/view/View;

.field private abC:I

.field private abD:I

.field private abE:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

.field private mSize:I

.field private qY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/plus/PlusOneButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    invoke-static {p1, p2}, Lcom/google/android/gms/plus/PlusOneButton;->getSize(Landroid/content/Context;Landroid/util/AttributeSet;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->mSize:I

    #@9
    invoke-static {p1, p2}, Lcom/google/android/gms/plus/PlusOneButton;->getAnnotation(Landroid/content/Context;Landroid/util/AttributeSet;)I

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->abC:I

    #@f
    const/4 v0, -0x1

    #@10
    iput v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->abD:I

    #@12
    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    #@15
    move-result-object v0

    #@16
    invoke-direct {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton;->C(Landroid/content/Context;)V

    #@19
    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->isInEditMode()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_1f

    #@1f
    :cond_1f
    return-void
.end method

.method private C(Landroid/content/Context;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->abB:Landroid/view/View;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->abB:Landroid/view/View;

    #@6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton;->removeView(Landroid/view/View;)V

    #@9
    :cond_9
    iget v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->mSize:I

    #@b
    iget v1, p0, Lcom/google/android/gms/plus/PlusOneButton;->abC:I

    #@d
    iget-object v2, p0, Lcom/google/android/gms/plus/PlusOneButton;->qY:Ljava/lang/String;

    #@f
    iget v3, p0, Lcom/google/android/gms/plus/PlusOneButton;->abD:I

    #@11
    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/gms/plus/internal/g;->a(Landroid/content/Context;IILjava/lang/String;I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->abB:Landroid/view/View;

    #@17
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->abE:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    #@19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton;->setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->abB:Landroid/view/View;

    #@1e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton;->addView(Landroid/view/View;)V

    #@21
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/plus/PlusOneButton;)Landroid/view/View;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->abB:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/plus/PlusOneButton;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->abD:I

    #@2
    return v0
.end method

.method protected static getAnnotation(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .registers 9

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const-string v0, "http://schemas.android.com/apk/lib/com.google.android.gms.plus"

    #@4
    const-string v1, "annotation"

    #@6
    const-string v6, "PlusOneButton"

    #@8
    move-object v2, p0

    #@9
    move-object v3, p1

    #@a
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/hp;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZLjava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    const-string v1, "INLINE"

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_18

    #@16
    const/4 v4, 0x2

    #@17
    :cond_17
    :goto_17
    return v4

    #@18
    :cond_18
    const-string v1, "NONE"

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_17

    #@20
    move v4, v5

    #@21
    goto :goto_17
.end method

.method protected static getSize(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .registers 9

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const-string v0, "http://schemas.android.com/apk/lib/com.google.android.gms.plus"

    #@4
    const-string v1, "size"

    #@6
    const-string v6, "PlusOneButton"

    #@8
    move-object v2, p0

    #@9
    move-object v3, p1

    #@a
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/hp;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZLjava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    const-string v1, "SMALL"

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_18

    #@16
    move v4, v5

    #@17
    :cond_17
    :goto_17
    return v4

    #@18
    :cond_18
    const-string v1, "MEDIUM"

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_17

    #@20
    const-string v1, "TALL"

    #@22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2a

    #@28
    const/4 v4, 0x2

    #@29
    goto :goto_17

    #@2a
    :cond_2a
    const/4 v4, 0x3

    #@2b
    goto :goto_17
.end method


# virtual methods
.method public initialize(Ljava/lang/String;I)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Landroid/app/Activity;

    #@6
    const-string v1, "To use this method, the PlusOneButton must be placed in an Activity. Use initialize(String, OnPlusOneClickListener)."

    #@8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@b
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->qY:Ljava/lang/String;

    #@d
    iput p2, p0, Lcom/google/android/gms/plus/PlusOneButton;->abD:I

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    #@12
    move-result-object v0

    #@13
    invoke-direct {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton;->C(Landroid/content/Context;)V

    #@16
    return-void
.end method

.method public initialize(Ljava/lang/String;Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->qY:Ljava/lang/String;

    #@2
    const/4 v0, 0x0

    #@3
    iput v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->abD:I

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    invoke-direct {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton;->C(Landroid/content/Context;)V

    #@c
    invoke-virtual {p0, p2}, Lcom/google/android/gms/plus/PlusOneButton;->setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V

    #@f
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->abB:Landroid/view/View;

    #@3
    sub-int v1, p4, p2

    #@5
    sub-int v2, p5, p3

    #@7
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    #@a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->abB:Landroid/view/View;

    #@2
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/plus/PlusOneButton;->measureChild(Landroid/view/View;II)V

    #@5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@8
    move-result v1

    #@9
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/plus/PlusOneButton;->setMeasuredDimension(II)V

    #@10
    return-void
.end method

.method public setAnnotation(I)V
    .registers 3

    #@0
    iput p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->abC:I

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton;->C(Landroid/content/Context;)V

    #@9
    return-void
.end method

.method public setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->abE:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->abB:Landroid/view/View;

    #@4
    new-instance v1, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;

    #@6
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;-><init>(Lcom/google/android/gms/plus/PlusOneButton;Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@c
    return-void
.end method

.method public setSize(I)V
    .registers 3

    #@0
    iput p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->mSize:I

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton;->C(Landroid/content/Context;)V

    #@9
    return-void
.end method
