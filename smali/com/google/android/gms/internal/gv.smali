.class public final Lcom/google/android/gms/internal/gv;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gv$a;
    }
.end annotation


# instance fields
.field private FO:Landroid/net/Uri;

.field private FP:I

.field private FQ:I

.field private FR:Lcom/google/android/gms/internal/gv$a;


# virtual methods
.method public al(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/internal/gv;->FP:I

    #@2
    return-void
.end method

.method public fi()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/gv;->FP:I

    #@2
    return v0
.end method

.method public g(Landroid/net/Uri;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/gv;->FO:Landroid/net/Uri;

    #@2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gv;->FR:Lcom/google/android/gms/internal/gv$a;

    #@2
    if-eqz v0, :cond_15

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/gv;->FR:Lcom/google/android/gms/internal/gv$a;

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gv;->getWidth()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gv;->getHeight()I

    #@d
    move-result v2

    #@e
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/gv$a;->d(II)Landroid/graphics/Path;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    #@15
    :cond_15
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    #@18
    iget v0, p0, Lcom/google/android/gms/internal/gv;->FQ:I

    #@1a
    if-eqz v0, :cond_21

    #@1c
    iget v0, p0, Lcom/google/android/gms/internal/gv;->FQ:I

    #@1e
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    #@21
    :cond_21
    return-void
.end method
