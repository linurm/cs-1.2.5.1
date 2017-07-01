.class public abstract Lcom/google/android/gms/common/images/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/a$a;,
        Lcom/google/android/gms/common/images/a$b;,
        Lcom/google/android/gms/common/images/a$c;
    }
.end annotation


# instance fields
.field final Fm:Lcom/google/android/gms/common/images/a$a;

.field protected Fn:I

.field protected Fo:I

.field private Fp:Z

.field private Fq:Z

.field protected Fr:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput v1, p0, Lcom/google/android/gms/common/images/a;->Fn:I

    #@6
    iput v1, p0, Lcom/google/android/gms/common/images/a;->Fo:I

    #@8
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/google/android/gms/common/images/a;->Fp:Z

    #@b
    iput-boolean v1, p0, Lcom/google/android/gms/common/images/a;->Fq:Z

    #@d
    new-instance v0, Lcom/google/android/gms/common/images/a$a;

    #@f
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/images/a$a;-><init>(Landroid/net/Uri;)V

    #@12
    iput-object v0, p0, Lcom/google/android/gms/common/images/a;->Fm:Lcom/google/android/gms/common/images/a$a;

    #@14
    iput p2, p0, Lcom/google/android/gms/common/images/a;->Fo:I

    #@16
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/android/gms/internal/gw;I)Landroid/graphics/drawable/Drawable;
    .registers 8

    #@0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    iget v0, p0, Lcom/google/android/gms/common/images/a;->Fr:I

    #@6
    if-lez v0, :cond_29

    #@8
    new-instance v2, Lcom/google/android/gms/internal/gw$a;

    #@a
    iget v0, p0, Lcom/google/android/gms/common/images/a;->Fr:I

    #@c
    invoke-direct {v2, p3, v0}, Lcom/google/android/gms/internal/gw$a;-><init>(II)V

    #@f
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/gw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/graphics/drawable/Drawable;

    #@15
    if-nez v0, :cond_28

    #@17
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1a
    move-result-object v0

    #@1b
    iget v3, p0, Lcom/google/android/gms/common/images/a;->Fr:I

    #@1d
    and-int/lit8 v3, v3, 0x1

    #@1f
    if-eqz v3, :cond_25

    #@21
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@24
    move-result-object v0

    #@25
    :cond_25
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/internal/gw;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    :cond_28
    :goto_28
    return-object v0

    #@29
    :cond_29
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@2c
    move-result-object v0

    #@2d
    goto :goto_28
.end method


# virtual methods
.method protected a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gu;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/gt;
    .registers 4

    #@0
    if-eqz p1, :cond_12

    #@2
    instance-of v0, p1, Lcom/google/android/gms/internal/gt;

    #@4
    if-eqz v0, :cond_c

    #@6
    check-cast p1, Lcom/google/android/gms/internal/gt;

    #@8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gt;->fg()Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object p1

    #@c
    :cond_c
    :goto_c
    new-instance v0, Lcom/google/android/gms/internal/gt;

    #@e
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/gt;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@11
    return-object v0

    #@12
    :cond_12
    const/4 p1, 0x0

    #@13
    goto :goto_c
.end method

.method a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .registers 7

    #@0
    invoke-static {p2}, Lcom/google/android/gms/internal/gx;->c(Ljava/lang/Object;)V

    #@3
    iget v0, p0, Lcom/google/android/gms/common/images/a;->Fr:I

    #@5
    and-int/lit8 v0, v0, 0x1

    #@7
    if-eqz v0, :cond_d

    #@9
    invoke-static {p2}, Lcom/google/android/gms/internal/gu;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    #@c
    move-result-object p2

    #@d
    :cond_d
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    #@f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@16
    const/4 v1, 0x0

    #@17
    const/4 v2, 0x1

    #@18
    invoke-virtual {p0, v0, p3, v1, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    #@1b
    return-void
.end method

.method a(Landroid/content/Context;Lcom/google/android/gms/internal/gw;)V
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    iget v1, p0, Lcom/google/android/gms/common/images/a;->Fn:I

    #@4
    if-eqz v1, :cond_c

    #@6
    iget v0, p0, Lcom/google/android/gms/common/images/a;->Fn:I

    #@8
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/gw;I)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v0

    #@c
    :cond_c
    const/4 v1, 0x1

    #@d
    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    #@10
    return-void
.end method

.method a(Landroid/content/Context;Lcom/google/android/gms/internal/gw;Z)V
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    iget v1, p0, Lcom/google/android/gms/common/images/a;->Fo:I

    #@4
    if-eqz v1, :cond_c

    #@6
    iget v0, p0, Lcom/google/android/gms/common/images/a;->Fo:I

    #@8
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/gw;I)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v0

    #@c
    :cond_c
    invoke-virtual {p0, v0, p3, v2, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    #@f
    return-void
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method public aj(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/common/images/a;->Fo:I

    #@2
    return-void
.end method

.method protected b(ZZ)Z
    .registers 4

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/common/images/a;->Fp:Z

    #@2
    if-eqz v0, :cond_e

    #@4
    if-nez p2, :cond_e

    #@6
    if-eqz p1, :cond_c

    #@8
    iget-boolean v0, p0, Lcom/google/android/gms/common/images/a;->Fq:Z

    #@a
    if-eqz v0, :cond_e

    #@c
    :cond_c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method
