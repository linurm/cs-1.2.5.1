.class public final Lcom/google/android/gms/common/images/a$b;
.super Lcom/google/android/gms/common/images/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private Fs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/a;-><init>(Landroid/net/Uri;I)V

    #@4
    invoke-static {p1}, Lcom/google/android/gms/internal/gx;->c(Ljava/lang/Object;)V

    #@7
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@c
    iput-object v0, p0, Lcom/google/android/gms/common/images/a$b;->Fs:Ljava/lang/ref/WeakReference;

    #@e
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/a;-><init>(Landroid/net/Uri;I)V

    #@4
    invoke-static {p1}, Lcom/google/android/gms/internal/gx;->c(Ljava/lang/Object;)V

    #@7
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@c
    iput-object v0, p0, Lcom/google/android/gms/common/images/a$b;->Fs:Ljava/lang/ref/WeakReference;

    #@e
    return-void
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 11

    #@0
    const/4 v2, 0x0

    #@1
    if-nez p4, :cond_1d

    #@3
    if-nez p5, :cond_1d

    #@5
    const/4 v0, 0x1

    #@6
    move v3, v0

    #@7
    :goto_7
    if-eqz v3, :cond_1f

    #@9
    instance-of v0, p1, Lcom/google/android/gms/internal/gv;

    #@b
    if-eqz v0, :cond_1f

    #@d
    move-object v0, p1

    #@e
    check-cast v0, Lcom/google/android/gms/internal/gv;

    #@10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->fi()I

    #@13
    move-result v0

    #@14
    iget v1, p0, Lcom/google/android/gms/common/images/a$b;->Fo:I

    #@16
    if-eqz v1, :cond_1f

    #@18
    iget v1, p0, Lcom/google/android/gms/common/images/a$b;->Fo:I

    #@1a
    if-ne v0, v1, :cond_1f

    #@1c
    :cond_1c
    :goto_1c
    return-void

    #@1d
    :cond_1d
    move v3, v2

    #@1e
    goto :goto_7

    #@1f
    :cond_1f
    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/common/images/a$b;->b(ZZ)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_54

    #@25
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/common/images/a$b;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/gt;

    #@2c
    move-result-object v0

    #@2d
    :goto_2d
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@30
    instance-of v1, p1, Lcom/google/android/gms/internal/gv;

    #@32
    if-eqz v1, :cond_46

    #@34
    check-cast p1, Lcom/google/android/gms/internal/gv;

    #@36
    if-eqz p5, :cond_50

    #@38
    iget-object v1, p0, Lcom/google/android/gms/common/images/a$b;->Fm:Lcom/google/android/gms/common/images/a$a;

    #@3a
    iget-object v1, v1, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    #@3c
    :goto_3c
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/gv;->g(Landroid/net/Uri;)V

    #@3f
    if-eqz v3, :cond_52

    #@41
    iget v1, p0, Lcom/google/android/gms/common/images/a$b;->Fo:I

    #@43
    :goto_43
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/gv;->al(I)V

    #@46
    :cond_46
    if-eqz v4, :cond_1c

    #@48
    check-cast v0, Lcom/google/android/gms/internal/gt;

    #@4a
    const/16 v1, 0xfa

    #@4c
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gt;->startTransition(I)V

    #@4f
    goto :goto_1c

    #@50
    :cond_50
    const/4 v1, 0x0

    #@51
    goto :goto_3c

    #@52
    :cond_52
    move v1, v2

    #@53
    goto :goto_43

    #@54
    :cond_54
    move-object v0, p2

    #@55
    goto :goto_2d
.end method


# virtual methods
.method protected a(Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 11

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/images/a$b;->Fs:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/widget/ImageView;

    #@8
    if-eqz v1, :cond_12

    #@a
    move-object v0, p0

    #@b
    move-object v2, p1

    #@c
    move v3, p2

    #@d
    move v4, p3

    #@e
    move v5, p4

    #@f
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/images/a$b;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V

    #@12
    :cond_12
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    instance-of v0, p1, Lcom/google/android/gms/common/images/a$b;

    #@4
    if-nez v0, :cond_8

    #@6
    move v0, v3

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    if-ne p0, p1, :cond_c

    #@a
    move v0, v2

    #@b
    goto :goto_7

    #@c
    :cond_c
    check-cast p1, Lcom/google/android/gms/common/images/a$b;

    #@e
    iget-object v0, p0, Lcom/google/android/gms/common/images/a$b;->Fs:Ljava/lang/ref/WeakReference;

    #@10
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/widget/ImageView;

    #@16
    iget-object v1, p1, Lcom/google/android/gms/common/images/a$b;->Fs:Ljava/lang/ref/WeakReference;

    #@18
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/widget/ImageView;

    #@1e
    if-eqz v1, :cond_2a

    #@20
    if-eqz v0, :cond_2a

    #@22
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2a

    #@28
    move v0, v2

    #@29
    goto :goto_7

    #@2a
    :cond_2a
    move v0, v3

    #@2b
    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method
