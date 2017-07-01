.class Lcom/apportable/ui/Slider;
.super Lcom/apportable/ui/Control;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static RANGE:I


# instance fields
.field private mBackgroundImage:Landroid/graphics/drawable/Drawable;

.field private mContinuous:Z

.field private mProgress:I

.field private mProgressImage:Landroid/graphics/drawable/Drawable;

.field private mSlider:Landroid/widget/SeekBar;

.field private mThumbImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/16 v0, 0x2710

    #@2
    sput v0, Lcom/apportable/ui/Slider;->RANGE:I

    #@4
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;I)V

    #@4
    iput-object v0, p0, Lcom/apportable/ui/Slider;->mProgressImage:Landroid/graphics/drawable/Drawable;

    #@6
    iput-object v0, p0, Lcom/apportable/ui/Slider;->mThumbImage:Landroid/graphics/drawable/Drawable;

    #@8
    iput-object v0, p0, Lcom/apportable/ui/Slider;->mBackgroundImage:Landroid/graphics/drawable/Drawable;

    #@a
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/apportable/ui/Slider;->mContinuous:Z

    #@d
    invoke-direct {p0}, Lcom/apportable/ui/Slider;->init()V

    #@10
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@4
    iput-object v0, p0, Lcom/apportable/ui/Slider;->mProgressImage:Landroid/graphics/drawable/Drawable;

    #@6
    iput-object v0, p0, Lcom/apportable/ui/Slider;->mThumbImage:Landroid/graphics/drawable/Drawable;

    #@8
    iput-object v0, p0, Lcom/apportable/ui/Slider;->mBackgroundImage:Landroid/graphics/drawable/Drawable;

    #@a
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/apportable/ui/Slider;->mContinuous:Z

    #@d
    invoke-direct {p0}, Lcom/apportable/ui/Slider;->init()V

    #@10
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/Slider;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/Slider;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Slider;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/Slider;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/Slider;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/Slider;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private init()V
    .registers 3

    #@0
    new-instance v0, Landroid/widget/SeekBar;

    #@2
    invoke-virtual {p0}, Lcom/apportable/ui/Slider;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    #@9
    iput-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    #@b
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    #@d
    sget v1, Lcom/apportable/ui/Slider;->RANGE:I

    #@f
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    #@12
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    #@14
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    #@17
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    #@19
    sget v1, Lcom/apportable/ui/Slider;->RANGE:I

    #@1b
    div-int/lit8 v1, v1, 0x2

    #@1d
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    #@20
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    #@22
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setContentView(Landroid/view/View;)V

    #@25
    const/4 v0, 0x0

    #@26
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setClipChildren(Z)V

    #@29
    return-void
.end method


# virtual methods
.method public adjustThumbSize(II)V
    .registers 8

    #@0
    const/4 v4, 0x0

    #@1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    #@3
    invoke-virtual {p0}, Lcom/apportable/ui/Slider;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v2

    #@7
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    #@9
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    #@13
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@16
    move-result-object v0

    #@17
    const/4 v3, 0x1

    #@18
    invoke-static {v0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@1b
    move-result-object v0

    #@1c
    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@1f
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@22
    move-result v0

    #@23
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@26
    move-result v2

    #@27
    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2a
    invoke-virtual {p0, v1}, Lcom/apportable/ui/Slider;->setThumbImage(Landroid/graphics/drawable/Drawable;)V

    #@2d
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    #@2f
    div-int/lit8 v1, p1, 0x2

    #@31
    div-int/lit8 v2, p1, 0x2

    #@33
    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/SeekBar;->setPadding(IIII)V

    #@36
    return-void
.end method

.method public getValue()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/Slider;->mProgress:I

    #@2
    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6

    #@0
    iput p2, p0, Lcom/apportable/ui/Slider;->mProgress:I

    #@2
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mProgressImage:Landroid/graphics/drawable/Drawable;

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mProgressImage:Landroid/graphics/drawable/Drawable;

    #@8
    iget v1, p0, Lcom/apportable/ui/Slider;->mProgress:I

    #@a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@d
    :cond_d
    iget-boolean v0, p0, Lcom/apportable/ui/Slider;->mContinuous:Z

    #@f
    if-eqz v0, :cond_16

    #@11
    const/16 v0, 0x1000

    #@13
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->sendEvent(I)V

    #@16
    :cond_16
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->sendEvent(I)V

    #@4
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    #@0
    const/16 v0, 0x40

    #@2
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->sendEvent(I)V

    #@5
    iget-boolean v0, p0, Lcom/apportable/ui/Slider;->mContinuous:Z

    #@7
    if-nez v0, :cond_e

    #@9
    const/16 v0, 0x1000

    #@b
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->sendEvent(I)V

    #@e
    :cond_e
    return-void
.end method

.method public setBackgroundImage(Landroid/graphics/Bitmap;)V
    .registers 3

    #@0
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setBackgroundImage(Landroid/graphics/drawable/Drawable;)V

    #@7
    return-void
.end method

.method protected setBackgroundImage(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/Slider;->mBackgroundImage:Landroid/graphics/drawable/Drawable;

    #@2
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@7
    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .registers 5

    #@0
    :try_start_0
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->Drawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setBackgroundImage(Landroid/graphics/drawable/Drawable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    #@7
    :goto_7
    return-void

    #@8
    :catch_8
    move-exception v0

    #@9
    const-string v0, "Slider"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v2, "Could not load image from "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_7
.end method

.method public setClipsToBounds(Z)V
    .registers 2

    #@0
    return-void
.end method

.method public setContinuous(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/Slider;->mContinuous:Z

    #@2
    return-void
.end method

.method public setProgressImage(Landroid/graphics/Bitmap;)V
    .registers 6

    #@0
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v1

    #@4
    if-eqz v1, :cond_12

    #@6
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    #@8
    const/16 v2, 0x77

    #@a
    const/4 v3, 0x1

    #@b
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    #@e
    :goto_e
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setProgressImage(Landroid/graphics/drawable/Drawable;)V

    #@11
    return-void

    #@12
    :cond_12
    move-object v0, v1

    #@13
    goto :goto_e
.end method

.method protected setProgressImage(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/Slider;->mProgressImage:Landroid/graphics/drawable/Drawable;

    #@2
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    #@7
    return-void
.end method

.method public setProgressImage(Ljava/lang/String;)V
    .registers 6

    #@0
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    #@2
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->Drawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x77

    #@8
    const/4 v3, 0x1

    #@9
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    #@c
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setProgressImage(Landroid/graphics/drawable/Drawable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    #@f
    :goto_f
    return-void

    #@10
    :catch_10
    move-exception v0

    #@11
    const-string v0, "Slider"

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string v2, "Could not load image from "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    goto :goto_f
.end method

.method public setThumbImage(Landroid/graphics/Bitmap;)V
    .registers 3

    #@0
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setThumbImage(Landroid/graphics/drawable/Drawable;)V

    #@7
    return-void
.end method

.method protected setThumbImage(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/Slider;->mThumbImage:Landroid/graphics/drawable/Drawable;

    #@2
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    #@7
    return-void
.end method

.method public setThumbImage(Ljava/lang/String;)V
    .registers 5

    #@0
    :try_start_0
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->Drawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setThumbImage(Landroid/graphics/drawable/Drawable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    #@7
    :goto_7
    return-void

    #@8
    :catch_8
    move-exception v0

    #@9
    const-string v0, "Slider"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v2, "Could not load image from "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_7
.end method

.method public setValue(I)V
    .registers 3

    #@0
    iput p1, p0, Lcom/apportable/ui/Slider;->mProgress:I

    #@2
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mProgressImage:Landroid/graphics/drawable/Drawable;

    #@4
    if-eqz v0, :cond_b

    #@6
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mProgressImage:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@b
    :cond_b
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    #@d
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    #@10
    return-void
.end method
