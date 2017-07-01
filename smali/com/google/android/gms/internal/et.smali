.class public final Lcom/google/android/gms/internal/et;
.super Ljava/lang/Object;


# static fields
.field public static final sv:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    sput-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@b
    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .registers 3

    #@0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/et;->a(Landroid/util/DisplayMetrics;I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static a(Landroid/util/DisplayMetrics;I)I
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    int-to-float v1, p1

    #@2
    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@5
    move-result v0

    #@6
    float-to-int v0, v0

    #@7
    return v0
.end method

.method public static a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/al;Ljava/lang/String;)V
    .registers 5

    #@0
    const/high16 v0, -0x1000000

    #@2
    const/4 v1, -0x1

    #@3
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/et;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/al;Ljava/lang/String;II)V

    #@6
    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/al;Ljava/lang/String;II)V
    .registers 12

    #@0
    const/16 v6, 0x11

    #@2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@c
    move-result-object v0

    #@d
    new-instance v1, Landroid/widget/TextView;

    #@f
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@12
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    #@15
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@18
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    #@1b
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    #@1e
    new-instance v2, Landroid/widget/FrameLayout;

    #@20
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@23
    invoke-virtual {v2, p3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    #@26
    const/4 v3, 0x3

    #@27
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/et;->a(Landroid/content/Context;I)I

    #@2a
    move-result v0

    #@2b
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    #@2d
    iget v4, p1, Lcom/google/android/gms/internal/al;->widthPixels:I

    #@2f
    sub-int/2addr v4, v0

    #@30
    iget v5, p1, Lcom/google/android/gms/internal/al;->heightPixels:I

    #@32
    sub-int v0, v5, v0

    #@34
    invoke-direct {v3, v4, v0, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@37
    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@3a
    iget v0, p1, Lcom/google/android/gms/internal/al;->widthPixels:I

    #@3c
    iget v1, p1, Lcom/google/android/gms/internal/al;->heightPixels:I

    #@3e
    invoke-virtual {p0, v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    #@41
    goto :goto_8
.end method

.method public static a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/al;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    #@0
    invoke-static {p3}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@3
    const/high16 v0, -0x10000

    #@5
    const/high16 v1, -0x1000000

    #@7
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/et;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/al;Ljava/lang/String;II)V

    #@a
    return-void
.end method

.method public static bV()Z
    .registers 2

    #@0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    #@2
    const-string v1, "generic"

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static bW()Z
    .registers 2

    #@0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    if-ne v0, v1, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    #@0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    const-string v1, "android_id"

    #@6
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_12

    #@c
    invoke-static {}, Lcom/google/android/gms/internal/et;->bV()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_14

    #@12
    :cond_12
    const-string v0, "emulator"

    #@14
    :cond_14
    invoke-static {v0}, Lcom/google/android/gms/internal/et;->y(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    const/4 v1, 0x2

    #@2
    if-ge v0, v1, :cond_2e

    #@4
    :try_start_4
    const-string v1, "MD5"

    #@6
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    #@11
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@13
    new-instance v3, Ljava/math/BigInteger;

    #@15
    const/4 v4, 0x1

    #@16
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@1d
    const-string v1, "%032X"

    #@1f
    const/4 v4, 0x1

    #@20
    new-array v4, v4, [Ljava/lang/Object;

    #@22
    const/4 v5, 0x0

    #@23
    aput-object v3, v4, v5

    #@25
    invoke-static {v2, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_28} :catch_2a

    #@28
    move-result-object v0

    #@29
    :goto_29
    return-object v0

    #@2a
    :catch_2a
    move-exception v1

    #@2b
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_1

    #@2e
    :cond_2e
    const/4 v0, 0x0

    #@2f
    goto :goto_29
.end method
