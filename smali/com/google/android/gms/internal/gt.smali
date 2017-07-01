.class public final Lcom/google/android/gms/internal/gt;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gt$a;,
        Lcom/google/android/gms/internal/gt$a$a;,
        Lcom/google/android/gms/internal/gt$b;
    }
.end annotation


# instance fields
.field private FA:I

.field private FB:I

.field private FC:Z

.field private FD:Lcom/google/android/gms/internal/gt$b;

.field private FE:Landroid/graphics/drawable/Drawable;

.field private FF:Landroid/graphics/drawable/Drawable;

.field private FG:Z

.field private FH:Z

.field private FI:Z

.field private FJ:I

.field private Fp:Z

.field private Fv:I

.field private Fw:J

.field private Fx:I

.field private Fy:I

.field private Fz:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gt;-><init>(Lcom/google/android/gms/internal/gt$b;)V

    #@4
    if-nez p1, :cond_a

    #@6
    invoke-static {}, Lcom/google/android/gms/internal/gt$a;->fh()Lcom/google/android/gms/internal/gt$a;

    #@9
    move-result-object p1

    #@a
    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/internal/gt;->FE:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FD:Lcom/google/android/gms/internal/gt$b;

    #@11
    iget v1, v0, Lcom/google/android/gms/internal/gt$b;->FN:I

    #@13
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@16
    move-result v2

    #@17
    or-int/2addr v1, v2

    #@18
    iput v1, v0, Lcom/google/android/gms/internal/gt$b;->FN:I

    #@1a
    if-nez p2, :cond_20

    #@1c
    invoke-static {}, Lcom/google/android/gms/internal/gt$a;->fh()Lcom/google/android/gms/internal/gt$a;

    #@1f
    move-result-object p2

    #@20
    :cond_20
    iput-object p2, p0, Lcom/google/android/gms/internal/gt;->FF:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@25
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FD:Lcom/google/android/gms/internal/gt$b;

    #@27
    iget v1, v0, Lcom/google/android/gms/internal/gt$b;->FN:I

    #@29
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@2c
    move-result v2

    #@2d
    or-int/2addr v1, v2

    #@2e
    iput v1, v0, Lcom/google/android/gms/internal/gt$b;->FN:I

    #@30
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/gt$b;)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@4
    iput v1, p0, Lcom/google/android/gms/internal/gt;->Fv:I

    #@6
    const/16 v0, 0xff

    #@8
    iput v0, p0, Lcom/google/android/gms/internal/gt;->Fz:I

    #@a
    iput v1, p0, Lcom/google/android/gms/internal/gt;->FB:I

    #@c
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gt;->Fp:Z

    #@f
    new-instance v0, Lcom/google/android/gms/internal/gt$b;

    #@11
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gt$b;-><init>(Lcom/google/android/gms/internal/gt$b;)V

    #@14
    iput-object v0, p0, Lcom/google/android/gms/internal/gt;->FD:Lcom/google/android/gms/internal/gt$b;

    #@16
    return-void
.end method


# virtual methods
.method public canConstantState()Z
    .registers 3

    #@0
    const/4 v1, 0x1

    #@1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gt;->FG:Z

    #@3
    if-nez v0, :cond_1a

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FE:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_1d

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FF:Landroid/graphics/drawable/Drawable;

    #@f
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_1d

    #@15
    move v0, v1

    #@16
    :goto_16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gt;->FH:Z

    #@18
    iput-boolean v1, p0, Lcom/google/android/gms/internal/gt;->FG:Z

    #@1a
    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gt;->FH:Z

    #@1c
    return v0

    #@1d
    :cond_1d
    const/4 v0, 0x0

    #@1e
    goto :goto_16
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    #@0
    const/4 v1, 0x1

    #@1
    const/high16 v6, 0x3f800000    # 1.0f

    #@3
    const/4 v0, 0x0

    #@4
    iget v2, p0, Lcom/google/android/gms/internal/gt;->Fv:I

    #@6
    packed-switch v2, :pswitch_data_88

    #@9
    :cond_9
    move v0, v1

    #@a
    :goto_a
    iget v1, p0, Lcom/google/android/gms/internal/gt;->FB:I

    #@c
    iget-boolean v2, p0, Lcom/google/android/gms/internal/gt;->Fp:Z

    #@e
    iget-object v3, p0, Lcom/google/android/gms/internal/gt;->FE:Landroid/graphics/drawable/Drawable;

    #@10
    iget-object v4, p0, Lcom/google/android/gms/internal/gt;->FF:Landroid/graphics/drawable/Drawable;

    #@12
    if-eqz v0, :cond_64

    #@14
    if-eqz v2, :cond_18

    #@16
    if-nez v1, :cond_1b

    #@18
    :cond_18
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@1b
    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/gt;->Fz:I

    #@1d
    if-ne v1, v0, :cond_27

    #@1f
    iget v0, p0, Lcom/google/android/gms/internal/gt;->Fz:I

    #@21
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@24
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@27
    :cond_27
    :goto_27
    return-void

    #@28
    :pswitch_28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2b
    move-result-wide v2

    #@2c
    iput-wide v2, p0, Lcom/google/android/gms/internal/gt;->Fw:J

    #@2e
    const/4 v1, 0x2

    #@2f
    iput v1, p0, Lcom/google/android/gms/internal/gt;->Fv:I

    #@31
    goto :goto_a

    #@32
    :pswitch_32
    iget-wide v2, p0, Lcom/google/android/gms/internal/gt;->Fw:J

    #@34
    const-wide/16 v4, 0x0

    #@36
    cmp-long v2, v2, v4

    #@38
    if-ltz v2, :cond_9

    #@3a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3d
    move-result-wide v2

    #@3e
    iget-wide v4, p0, Lcom/google/android/gms/internal/gt;->Fw:J

    #@40
    sub-long/2addr v2, v4

    #@41
    long-to-float v2, v2

    #@42
    iget v3, p0, Lcom/google/android/gms/internal/gt;->FA:I

    #@44
    int-to-float v3, v3

    #@45
    div-float/2addr v2, v3

    #@46
    cmpl-float v3, v2, v6

    #@48
    if-ltz v3, :cond_62

    #@4a
    :goto_4a
    if-eqz v1, :cond_4e

    #@4c
    iput v0, p0, Lcom/google/android/gms/internal/gt;->Fv:I

    #@4e
    :cond_4e
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    #@51
    move-result v0

    #@52
    iget v2, p0, Lcom/google/android/gms/internal/gt;->Fx:I

    #@54
    int-to-float v2, v2

    #@55
    iget v3, p0, Lcom/google/android/gms/internal/gt;->Fy:I

    #@57
    iget v4, p0, Lcom/google/android/gms/internal/gt;->Fx:I

    #@59
    sub-int/2addr v3, v4

    #@5a
    int-to-float v3, v3

    #@5b
    mul-float/2addr v0, v3

    #@5c
    add-float/2addr v0, v2

    #@5d
    float-to-int v0, v0

    #@5e
    iput v0, p0, Lcom/google/android/gms/internal/gt;->FB:I

    #@60
    move v0, v1

    #@61
    goto :goto_a

    #@62
    :cond_62
    move v1, v0

    #@63
    goto :goto_4a

    #@64
    :cond_64
    if-eqz v2, :cond_6c

    #@66
    iget v0, p0, Lcom/google/android/gms/internal/gt;->Fz:I

    #@68
    sub-int/2addr v0, v1

    #@69
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@6c
    :cond_6c
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@6f
    if-eqz v2, :cond_76

    #@71
    iget v0, p0, Lcom/google/android/gms/internal/gt;->Fz:I

    #@73
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@76
    :cond_76
    if-lez v1, :cond_83

    #@78
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@7b
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@7e
    iget v0, p0, Lcom/google/android/gms/internal/gt;->Fz:I

    #@80
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@83
    :cond_83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gt;->invalidateSelf()V

    #@86
    goto :goto_27

    #@87
    nop

    #@88
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_28
        :pswitch_32
    .end packed-switch
.end method

.method public fg()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FF:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    #@0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Lcom/google/android/gms/internal/gt;->FD:Lcom/google/android/gms/internal/gt$b;

    #@6
    iget v1, v1, Lcom/google/android/gms/internal/gt$b;->FM:I

    #@8
    or-int/2addr v0, v1

    #@9
    iget-object v1, p0, Lcom/google/android/gms/internal/gt;->FD:Lcom/google/android/gms/internal/gt$b;

    #@b
    iget v1, v1, Lcom/google/android/gms/internal/gt$b;->FN:I

    #@d
    or-int/2addr v0, v1

    #@e
    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gt;->canConstantState()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_11

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FD:Lcom/google/android/gms/internal/gt$b;

    #@8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gt;->getChangingConfigurations()I

    #@b
    move-result v1

    #@c
    iput v1, v0, Lcom/google/android/gms/internal/gt$b;->FM:I

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FD:Lcom/google/android/gms/internal/gt$b;

    #@10
    :goto_10
    return-object v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_10
.end method

.method public getIntrinsicHeight()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FE:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/google/android/gms/internal/gt;->FF:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@b
    move-result v1

    #@c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FE:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/google/android/gms/internal/gt;->FF:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@b
    move-result v1

    #@c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public getOpacity()I
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gt;->FI:Z

    #@2
    if-nez v0, :cond_19

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FE:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@9
    move-result v0

    #@a
    iget-object v1, p0, Lcom/google/android/gms/internal/gt;->FF:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@f
    move-result v1

    #@10
    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    #@13
    move-result v0

    #@14
    iput v0, p0, Lcom/google/android/gms/internal/gt;->FJ:I

    #@16
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gt;->FI:Z

    #@19
    :cond_19
    iget v0, p0, Lcom/google/android/gms/internal/gt;->FJ:I

    #@1b
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/ip;->gc()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gt;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_f

    #@c
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f
    :cond_f
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gt;->FC:Z

    #@2
    if-nez v0, :cond_25

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_25

    #@a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gt;->canConstantState()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string v1, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FE:Landroid/graphics/drawable/Drawable;

    #@1a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FF:Landroid/graphics/drawable/Drawable;

    #@1f
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@22
    const/4 v0, 0x1

    #@23
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gt;->FC:Z

    #@25
    :cond_25
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FE:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FF:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@a
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/ip;->gc()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gt;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_f

    #@c
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    #@f
    :cond_f
    return-void
.end method

.method public setAlpha(I)V
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/gt;->FB:I

    #@2
    iget v1, p0, Lcom/google/android/gms/internal/gt;->Fz:I

    #@4
    if-ne v0, v1, :cond_8

    #@6
    iput p1, p0, Lcom/google/android/gms/internal/gt;->FB:I

    #@8
    :cond_8
    iput p1, p0, Lcom/google/android/gms/internal/gt;->Fz:I

    #@a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gt;->invalidateSelf()V

    #@d
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FE:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->FF:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@a
    return-void
.end method

.method public startTransition(I)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    iput v1, p0, Lcom/google/android/gms/internal/gt;->Fx:I

    #@3
    iget v0, p0, Lcom/google/android/gms/internal/gt;->Fz:I

    #@5
    iput v0, p0, Lcom/google/android/gms/internal/gt;->Fy:I

    #@7
    iput v1, p0, Lcom/google/android/gms/internal/gt;->FB:I

    #@9
    iput p1, p0, Lcom/google/android/gms/internal/gt;->FA:I

    #@b
    const/4 v0, 0x1

    #@c
    iput v0, p0, Lcom/google/android/gms/internal/gt;->Fv:I

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gt;->invalidateSelf()V

    #@11
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/ip;->gc()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gt;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_f

    #@c
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    #@f
    :cond_f
    return-void
.end method
