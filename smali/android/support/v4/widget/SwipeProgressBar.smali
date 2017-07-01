.class final Landroid/support/v4/widget/SwipeProgressBar;
.super Ljava/lang/Object;


# static fields
.field private static final ANIMATION_DURATION_MS:I = 0x7d0

.field private static final COLOR1:I = -0x4d000000

.field private static final COLOR2:I = -0x80000000

.field private static final COLOR3:I = 0x4d000000

.field private static final COLOR4:I = 0x1a000000

.field private static final FINISH_ANIMATION_DURATION_MS:I = 0x3e8

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private final mClipRect:Landroid/graphics/RectF;

.field private mColor1:I

.field private mColor2:I

.field private mColor3:I

.field private mColor4:I

.field private mFinishTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mParent:Landroid/view/View;

.field private mRunning:Z

.field private mStartTime:J

.field private mTriggerPercentage:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    invoke-static {}, Landroid/support/v4/widget/BakedBezierInterpolator;->getInstance()Landroid/support/v4/widget/BakedBezierInterpolator;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Landroid/graphics/Paint;

    #@5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@8
    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    #@a
    new-instance v0, Landroid/graphics/RectF;

    #@c
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@f
    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    #@11
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@18
    iput-object p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    #@1a
    const/high16 v0, -0x4d000000

    #@1c
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    #@1e
    const/high16 v0, -0x80000000

    #@20
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    #@22
    const/high16 v0, 0x4d000000    # 1.34217728E8f

    #@24
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    #@26
    const/high16 v0, 0x1a000000

    #@28
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    #@2a
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFIF)V
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    #@3
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    #@6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@9
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    #@c
    sget-object v0, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@e
    invoke-interface {v0, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@11
    move-result v0

    #@12
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    #@15
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    #@17
    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@1a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@1d
    return-void
.end method

.method private drawTrigger(Landroid/graphics/Canvas;II)V
    .registers 8

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    #@2
    iget v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    #@4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@7
    int-to-float v0, p2

    #@8
    int-to-float v1, p3

    #@9
    int-to-float v2, p2

    #@a
    iget v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    #@c
    mul-float/2addr v2, v3

    #@d
    iget-object v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    #@f
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@12
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .registers 22

    #@0
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@7
    move-result v3

    #@8
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@c
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@f
    move-result v4

    #@10
    div-int/lit8 v10, v3, 0x2

    #@12
    div-int/lit8 v11, v4, 0x2

    #@14
    const/4 v2, 0x0

    #@15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@18
    move-result v8

    #@19
    move-object/from16 v0, p0

    #@1b
    iget-object v5, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@1d
    move-object/from16 v0, p1

    #@1f
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@22
    move-object/from16 v0, p0

    #@24
    iget-boolean v5, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    #@26
    if-nez v5, :cond_32

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-wide v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    #@2c
    const-wide/16 v12, 0x0

    #@2e
    cmp-long v5, v6, v12

    #@30
    if-lez v5, :cond_1df

    #@32
    :cond_32
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@35
    move-result-wide v6

    #@36
    move-object/from16 v0, p0

    #@38
    iget-wide v12, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-wide v14, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    #@3e
    sub-long v14, v6, v14

    #@40
    const-wide/16 v16, 0x7d0

    #@42
    div-long v14, v14, v16

    #@44
    sub-long v12, v6, v12

    #@46
    const-wide/16 v16, 0x7d0

    #@48
    rem-long v12, v12, v16

    #@4a
    long-to-float v5, v12

    #@4b
    const/high16 v9, 0x41a00000    # 20.0f

    #@4d
    div-float v12, v5, v9

    #@4f
    move-object/from16 v0, p0

    #@51
    iget-boolean v5, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    #@53
    if-nez v5, :cond_1fd

    #@55
    move-object/from16 v0, p0

    #@57
    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    #@59
    move-wide/from16 v16, v0

    #@5b
    sub-long v16, v6, v16

    #@5d
    const-wide/16 v18, 0x3e8

    #@5f
    cmp-long v2, v16, v18

    #@61
    if-ltz v2, :cond_6a

    #@63
    const-wide/16 v2, 0x0

    #@65
    move-object/from16 v0, p0

    #@67
    iput-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    #@69
    :goto_69
    return-void

    #@6a
    :cond_6a
    move-object/from16 v0, p0

    #@6c
    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    #@6e
    move-wide/from16 v16, v0

    #@70
    sub-long v6, v6, v16

    #@72
    const-wide/16 v16, 0x3e8

    #@74
    rem-long v6, v6, v16

    #@76
    long-to-float v2, v6

    #@77
    const/high16 v5, 0x41200000    # 10.0f

    #@79
    div-float/2addr v2, v5

    #@7a
    const/high16 v5, 0x42c80000    # 100.0f

    #@7c
    div-float/2addr v2, v5

    #@7d
    div-int/lit8 v3, v3, 0x2

    #@7f
    int-to-float v3, v3

    #@80
    sget-object v5, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@82
    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@85
    move-result v2

    #@86
    mul-float/2addr v2, v3

    #@87
    move-object/from16 v0, p0

    #@89
    iget-object v3, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    #@8b
    int-to-float v5, v10

    #@8c
    sub-float/2addr v5, v2

    #@8d
    const/4 v6, 0x0

    #@8e
    int-to-float v7, v10

    #@8f
    add-float/2addr v2, v7

    #@90
    int-to-float v4, v4

    #@91
    invoke-virtual {v3, v5, v6, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    #@94
    move-object/from16 v0, p0

    #@96
    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    #@98
    const/4 v3, 0x0

    #@99
    const/4 v4, 0x0

    #@9a
    move-object/from16 v0, p1

    #@9c
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    #@9f
    const/4 v2, 0x1

    #@a0
    move v9, v2

    #@a1
    :goto_a1
    const-wide/16 v2, 0x0

    #@a3
    cmp-long v2, v14, v2

    #@a5
    if-nez v2, :cond_190

    #@a7
    move-object/from16 v0, p0

    #@a9
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    #@ab
    move-object/from16 v0, p1

    #@ad
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    #@b0
    :goto_b0
    const/4 v2, 0x0

    #@b1
    cmpl-float v2, v12, v2

    #@b3
    if-ltz v2, :cond_d2

    #@b5
    const/high16 v2, 0x41c80000    # 25.0f

    #@b7
    cmpg-float v2, v12, v2

    #@b9
    if-gtz v2, :cond_d2

    #@bb
    const/high16 v2, 0x41c80000    # 25.0f

    #@bd
    add-float/2addr v2, v12

    #@be
    const/high16 v3, 0x40000000    # 2.0f

    #@c0
    mul-float/2addr v2, v3

    #@c1
    const/high16 v3, 0x42c80000    # 100.0f

    #@c3
    div-float v7, v2, v3

    #@c5
    int-to-float v4, v10

    #@c6
    int-to-float v5, v11

    #@c7
    move-object/from16 v0, p0

    #@c9
    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    #@cb
    move-object/from16 v2, p0

    #@cd
    move-object/from16 v3, p1

    #@cf
    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    #@d2
    :cond_d2
    const/4 v2, 0x0

    #@d3
    cmpl-float v2, v12, v2

    #@d5
    if-ltz v2, :cond_f1

    #@d7
    const/high16 v2, 0x42480000    # 50.0f

    #@d9
    cmpg-float v2, v12, v2

    #@db
    if-gtz v2, :cond_f1

    #@dd
    const/high16 v2, 0x40000000    # 2.0f

    #@df
    mul-float/2addr v2, v12

    #@e0
    const/high16 v3, 0x42c80000    # 100.0f

    #@e2
    div-float v7, v2, v3

    #@e4
    int-to-float v4, v10

    #@e5
    int-to-float v5, v11

    #@e6
    move-object/from16 v0, p0

    #@e8
    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    #@ea
    move-object/from16 v2, p0

    #@ec
    move-object/from16 v3, p1

    #@ee
    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    #@f1
    :cond_f1
    const/high16 v2, 0x41c80000    # 25.0f

    #@f3
    cmpl-float v2, v12, v2

    #@f5
    if-ltz v2, :cond_115

    #@f7
    const/high16 v2, 0x42960000    # 75.0f

    #@f9
    cmpg-float v2, v12, v2

    #@fb
    if-gtz v2, :cond_115

    #@fd
    const/high16 v2, 0x41c80000    # 25.0f

    #@ff
    sub-float v2, v12, v2

    #@101
    const/high16 v3, 0x40000000    # 2.0f

    #@103
    mul-float/2addr v2, v3

    #@104
    const/high16 v3, 0x42c80000    # 100.0f

    #@106
    div-float v7, v2, v3

    #@108
    int-to-float v4, v10

    #@109
    int-to-float v5, v11

    #@10a
    move-object/from16 v0, p0

    #@10c
    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    #@10e
    move-object/from16 v2, p0

    #@110
    move-object/from16 v3, p1

    #@112
    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    #@115
    :cond_115
    const/high16 v2, 0x42480000    # 50.0f

    #@117
    cmpl-float v2, v12, v2

    #@119
    if-ltz v2, :cond_139

    #@11b
    const/high16 v2, 0x42c80000    # 100.0f

    #@11d
    cmpg-float v2, v12, v2

    #@11f
    if-gtz v2, :cond_139

    #@121
    const/high16 v2, 0x42480000    # 50.0f

    #@123
    sub-float v2, v12, v2

    #@125
    const/high16 v3, 0x40000000    # 2.0f

    #@127
    mul-float/2addr v2, v3

    #@128
    const/high16 v3, 0x42c80000    # 100.0f

    #@12a
    div-float v7, v2, v3

    #@12c
    int-to-float v4, v10

    #@12d
    int-to-float v5, v11

    #@12e
    move-object/from16 v0, p0

    #@130
    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    #@132
    move-object/from16 v2, p0

    #@134
    move-object/from16 v3, p1

    #@136
    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    #@139
    :cond_139
    const/high16 v2, 0x42960000    # 75.0f

    #@13b
    cmpl-float v2, v12, v2

    #@13d
    if-ltz v2, :cond_15d

    #@13f
    const/high16 v2, 0x42c80000    # 100.0f

    #@141
    cmpg-float v2, v12, v2

    #@143
    if-gtz v2, :cond_15d

    #@145
    const/high16 v2, 0x42960000    # 75.0f

    #@147
    sub-float v2, v12, v2

    #@149
    const/high16 v3, 0x40000000    # 2.0f

    #@14b
    mul-float/2addr v2, v3

    #@14c
    const/high16 v3, 0x42c80000    # 100.0f

    #@14e
    div-float v7, v2, v3

    #@150
    int-to-float v4, v10

    #@151
    int-to-float v5, v11

    #@152
    move-object/from16 v0, p0

    #@154
    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    #@156
    move-object/from16 v2, p0

    #@158
    move-object/from16 v3, p1

    #@15a
    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    #@15d
    :cond_15d
    move-object/from16 v0, p0

    #@15f
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    #@161
    const/4 v3, 0x0

    #@162
    cmpl-float v2, v2, v3

    #@164
    if-lez v2, :cond_1fb

    #@166
    if-eqz v9, :cond_1fb

    #@168
    move-object/from16 v0, p1

    #@16a
    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@16d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@170
    move-result v2

    #@171
    move-object/from16 v0, p0

    #@173
    iget-object v3, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@175
    move-object/from16 v0, p1

    #@177
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@17a
    move-object/from16 v0, p0

    #@17c
    move-object/from16 v1, p1

    #@17e
    invoke-direct {v0, v1, v10, v11}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    #@181
    :goto_181
    move-object/from16 v0, p0

    #@183
    iget-object v3, v0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    #@185
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@188
    move v8, v2

    #@189
    :cond_189
    :goto_189
    move-object/from16 v0, p1

    #@18b
    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@18e
    goto/16 :goto_69

    #@190
    :cond_190
    const/4 v2, 0x0

    #@191
    cmpl-float v2, v12, v2

    #@193
    if-ltz v2, :cond_1a6

    #@195
    const/high16 v2, 0x41c80000    # 25.0f

    #@197
    cmpg-float v2, v12, v2

    #@199
    if-gez v2, :cond_1a6

    #@19b
    move-object/from16 v0, p0

    #@19d
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    #@19f
    move-object/from16 v0, p1

    #@1a1
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    #@1a4
    goto/16 :goto_b0

    #@1a6
    :cond_1a6
    const/high16 v2, 0x41c80000    # 25.0f

    #@1a8
    cmpl-float v2, v12, v2

    #@1aa
    if-ltz v2, :cond_1bd

    #@1ac
    const/high16 v2, 0x42480000    # 50.0f

    #@1ae
    cmpg-float v2, v12, v2

    #@1b0
    if-gez v2, :cond_1bd

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    #@1b6
    move-object/from16 v0, p1

    #@1b8
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    #@1bb
    goto/16 :goto_b0

    #@1bd
    :cond_1bd
    const/high16 v2, 0x42480000    # 50.0f

    #@1bf
    cmpl-float v2, v12, v2

    #@1c1
    if-ltz v2, :cond_1d4

    #@1c3
    const/high16 v2, 0x42960000    # 75.0f

    #@1c5
    cmpg-float v2, v12, v2

    #@1c7
    if-gez v2, :cond_1d4

    #@1c9
    move-object/from16 v0, p0

    #@1cb
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    #@1cd
    move-object/from16 v0, p1

    #@1cf
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    #@1d2
    goto/16 :goto_b0

    #@1d4
    :cond_1d4
    move-object/from16 v0, p0

    #@1d6
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    #@1d8
    move-object/from16 v0, p1

    #@1da
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    #@1dd
    goto/16 :goto_b0

    #@1df
    :cond_1df
    move-object/from16 v0, p0

    #@1e1
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    #@1e3
    const/4 v3, 0x0

    #@1e4
    cmpl-float v2, v2, v3

    #@1e6
    if-lez v2, :cond_189

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    #@1ec
    float-to-double v2, v2

    #@1ed
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@1ef
    cmpg-double v2, v2, v4

    #@1f1
    if-gtz v2, :cond_189

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    move-object/from16 v1, p1

    #@1f7
    invoke-direct {v0, v1, v10, v11}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    #@1fa
    goto :goto_189

    #@1fb
    :cond_1fb
    move v2, v8

    #@1fc
    goto :goto_181

    #@1fd
    :cond_1fd
    move v9, v2

    #@1fe
    goto/16 :goto_a1
.end method

.method isRunning()Z
    .registers 5

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    #@2
    if-nez v0, :cond_c

    #@4
    iget-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long v0, v0, v2

    #@a
    if-lez v0, :cond_e

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

.method setBounds(IIII)V
    .registers 6

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@2
    iput p1, v0, Landroid/graphics/Rect;->left:I

    #@4
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@6
    iput p2, v0, Landroid/graphics/Rect;->top:I

    #@8
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@a
    iput p3, v0, Landroid/graphics/Rect;->right:I

    #@c
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@e
    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    #@10
    return-void
.end method

.method setColorScheme(IIII)V
    .registers 5

    #@0
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    #@2
    iput p2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    #@4
    iput p3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    #@6
    iput p4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    #@8
    return-void
.end method

.method setTriggerPercentage(F)V
    .registers 4

    #@0
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    #@2
    const-wide/16 v0, 0x0

    #@4
    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    #@6
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    #@8
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@b
    return-void
.end method

.method start()V
    .registers 3

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    #@2
    if-nez v0, :cond_15

    #@4
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    #@7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    #@d
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    #@10
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    #@12
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    #@15
    :cond_15
    return-void
.end method

.method stop()V
    .registers 3

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    #@2
    if-eqz v0, :cond_15

    #@4
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    #@7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    #@d
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    #@10
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    #@12
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    #@15
    :cond_15
    return-void
.end method
