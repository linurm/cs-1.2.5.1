.class public final Lcom/google/android/gms/common/SignInButton;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final COLOR_DARK:I = 0x0

.field public static final COLOR_LIGHT:I = 0x1

.field public static final SIZE_ICON_ONLY:I = 0x2

.field public static final SIZE_STANDARD:I = 0x0

.field public static final SIZE_WIDE:I = 0x1


# instance fields
.field private Dj:I

.field private Dk:Landroid/view/View;

.field private Dl:Landroid/view/View$OnClickListener;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Dl:Landroid/view/View$OnClickListener;

    #@7
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    #@a
    return-void
.end method

.method private C(Landroid/content/Context;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Dk:Landroid/view/View;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Dk:Landroid/view/View;

    #@6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/SignInButton;->removeView(Landroid/view/View;)V

    #@9
    :cond_9
    :try_start_9
    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    #@b
    iget v1, p0, Lcom/google/android/gms/common/SignInButton;->Dj:I

    #@d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/hn;->b(Landroid/content/Context;II)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Dk:Landroid/view/View;
    :try_end_13
    .catch Lcom/google/android/gms/dynamic/g$a; {:try_start_9 .. :try_end_13} :catch_27

    #@13
    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Dk:Landroid/view/View;

    #@15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/SignInButton;->addView(Landroid/view/View;)V

    #@18
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Dk:Landroid/view/View;

    #@1a
    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->isEnabled()Z

    #@1d
    move-result v1

    #@1e
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    #@21
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Dk:Landroid/view/View;

    #@23
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@26
    return-void

    #@27
    :catch_27
    move-exception v0

    #@28
    const-string v0, "SignInButton"

    #@2a
    const-string v1, "Sign in button not found, using placeholder instead"

    #@2c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    #@31
    iget v1, p0, Lcom/google/android/gms/common/SignInButton;->Dj:I

    #@33
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/SignInButton;->a(Landroid/content/Context;II)Landroid/widget/Button;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Dk:Landroid/view/View;

    #@39
    goto :goto_13
.end method

.method private static a(Landroid/content/Context;II)Landroid/widget/Button;
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ho;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ho;-><init>(Landroid/content/Context;)V

    #@5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ho;->a(Landroid/content/res/Resources;II)V

    #@c
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Dl:Landroid/view/View$OnClickListener;

    #@2
    if-eqz v0, :cond_d

    #@4
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Dk:Landroid/view/View;

    #@6
    if-ne p1, v0, :cond_d

    #@8
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Dl:Landroid/view/View$OnClickListener;

    #@a
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    #@d
    :cond_d
    return-void
.end method

.method public setColorScheme(I)V
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    #@5
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Dk:Landroid/view/View;

    #@5
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    #@8
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/SignInButton;->Dl:Landroid/view/View$OnClickListener;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Dk:Landroid/view/View;

    #@4
    if-eqz v0, :cond_b

    #@6
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Dk:Landroid/view/View;

    #@8
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@b
    :cond_b
    return-void
.end method

.method public setSize(I)V
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->Dj:I

    #@2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    #@5
    return-void
.end method

.method public setStyle(II)V
    .registers 9

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    if-ltz p1, :cond_34

    #@4
    const/4 v0, 0x3

    #@5
    if-ge p1, v0, :cond_34

    #@7
    move v0, v1

    #@8
    :goto_8
    const-string v3, "Unknown button size %d"

    #@a
    new-array v4, v1, [Ljava/lang/Object;

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v5

    #@10
    aput-object v5, v4, v2

    #@12
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    #@15
    if-ltz p2, :cond_36

    #@17
    const/4 v0, 0x2

    #@18
    if-ge p2, v0, :cond_36

    #@1a
    move v0, v1

    #@1b
    :goto_1b
    const-string v3, "Unknown color scheme %s"

    #@1d
    new-array v1, v1, [Ljava/lang/Object;

    #@1f
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v4

    #@23
    aput-object v4, v1, v2

    #@25
    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    #@28
    iput p1, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    #@2a
    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->Dj:I

    #@2c
    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->getContext()Landroid/content/Context;

    #@2f
    move-result-object v0

    #@30
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/SignInButton;->C(Landroid/content/Context;)V

    #@33
    return-void

    #@34
    :cond_34
    move v0, v2

    #@35
    goto :goto_8

    #@36
    :cond_36
    move v0, v2

    #@37
    goto :goto_1b
.end method
