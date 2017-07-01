.class public final Lcom/google/android/gms/internal/ep;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mState:I

.field private so:Ljava/lang/String;

.field private final sp:F

.field private sq:F

.field private sr:F

.field private ss:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@6
    iput-object p1, p0, Lcom/google/android/gms/internal/ep;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@f
    move-result-object v0

    #@10
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@12
    iput v0, p0, Lcom/google/android/gms/internal/ep;->sp:F

    #@14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ep;-><init>(Landroid/content/Context;)V

    #@3
    iput-object p2, p0, Lcom/google/android/gms/internal/ep;->so:Ljava/lang/String;

    #@5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ep;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ep;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method private a(IFF)V
    .registers 11

    #@0
    const/4 v6, 0x3

    #@1
    const/4 v5, -0x1

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    if-nez p1, :cond_10

    #@6
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@9
    iput p2, p0, Lcom/google/android/gms/internal/ep;->sq:F

    #@b
    iput p3, p0, Lcom/google/android/gms/internal/ep;->sr:F

    #@d
    iput p3, p0, Lcom/google/android/gms/internal/ep;->ss:F

    #@f
    :cond_f
    :goto_f
    return-void

    #@10
    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@12
    if-eq v0, v5, :cond_f

    #@14
    if-ne p1, v4, :cond_92

    #@16
    iget v0, p0, Lcom/google/android/gms/internal/ep;->sr:F

    #@18
    cmpl-float v0, p3, v0

    #@1a
    if-lez v0, :cond_2f

    #@1c
    iput p3, p0, Lcom/google/android/gms/internal/ep;->sr:F

    #@1e
    :cond_1e
    :goto_1e
    iget v0, p0, Lcom/google/android/gms/internal/ep;->sr:F

    #@20
    iget v1, p0, Lcom/google/android/gms/internal/ep;->ss:F

    #@22
    sub-float/2addr v0, v1

    #@23
    const/high16 v1, 0x41f00000    # 30.0f

    #@25
    iget v2, p0, Lcom/google/android/gms/internal/ep;->sp:F

    #@27
    mul-float/2addr v1, v2

    #@28
    cmpl-float v0, v0, v1

    #@2a
    if-lez v0, :cond_38

    #@2c
    iput v5, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@2e
    goto :goto_f

    #@2f
    :cond_2f
    iget v0, p0, Lcom/google/android/gms/internal/ep;->ss:F

    #@31
    cmpg-float v0, p3, v0

    #@33
    if-gez v0, :cond_1e

    #@35
    iput p3, p0, Lcom/google/android/gms/internal/ep;->ss:F

    #@37
    goto :goto_1e

    #@38
    :cond_38
    iget v0, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@3a
    if-eqz v0, :cond_40

    #@3c
    iget v0, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@3e
    if-ne v0, v4, :cond_66

    #@40
    :cond_40
    iget v0, p0, Lcom/google/android/gms/internal/ep;->sq:F

    #@42
    sub-float v0, p2, v0

    #@44
    const/high16 v1, 0x42480000    # 50.0f

    #@46
    iget v2, p0, Lcom/google/android/gms/internal/ep;->sp:F

    #@48
    mul-float/2addr v1, v2

    #@49
    cmpl-float v0, v0, v1

    #@4b
    if-ltz v0, :cond_55

    #@4d
    iput p2, p0, Lcom/google/android/gms/internal/ep;->sq:F

    #@4f
    iget v0, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@51
    add-int/lit8 v0, v0, 0x1

    #@53
    iput v0, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@55
    :cond_55
    :goto_55
    iget v0, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@57
    if-eq v0, v3, :cond_5d

    #@59
    iget v0, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@5b
    if-ne v0, v6, :cond_84

    #@5d
    :cond_5d
    iget v0, p0, Lcom/google/android/gms/internal/ep;->sq:F

    #@5f
    cmpl-float v0, p2, v0

    #@61
    if-lez v0, :cond_f

    #@63
    iput p2, p0, Lcom/google/android/gms/internal/ep;->sq:F

    #@65
    goto :goto_f

    #@66
    :cond_66
    iget v0, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@68
    if-eq v0, v3, :cond_6e

    #@6a
    iget v0, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@6c
    if-ne v0, v6, :cond_55

    #@6e
    :cond_6e
    iget v0, p0, Lcom/google/android/gms/internal/ep;->sq:F

    #@70
    sub-float v0, p2, v0

    #@72
    const/high16 v1, -0x3db80000    # -50.0f

    #@74
    iget v2, p0, Lcom/google/android/gms/internal/ep;->sp:F

    #@76
    mul-float/2addr v1, v2

    #@77
    cmpg-float v0, v0, v1

    #@79
    if-gtz v0, :cond_55

    #@7b
    iput p2, p0, Lcom/google/android/gms/internal/ep;->sq:F

    #@7d
    iget v0, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@7f
    add-int/lit8 v0, v0, 0x1

    #@81
    iput v0, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@83
    goto :goto_55

    #@84
    :cond_84
    iget v0, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@86
    if-ne v0, v4, :cond_f

    #@88
    iget v0, p0, Lcom/google/android/gms/internal/ep;->sq:F

    #@8a
    cmpg-float v0, p2, v0

    #@8c
    if-gez v0, :cond_f

    #@8e
    iput p2, p0, Lcom/google/android/gms/internal/ep;->sq:F

    #@90
    goto/16 :goto_f

    #@92
    :cond_92
    if-ne p1, v3, :cond_f

    #@94
    iget v0, p0, Lcom/google/android/gms/internal/ep;->mState:I

    #@96
    const/4 v1, 0x4

    #@97
    if-ne v0, v1, :cond_f

    #@99
    invoke-direct {p0}, Lcom/google/android/gms/internal/ep;->showDialog()V

    #@9c
    goto/16 :goto_f
.end method

.method private showDialog()V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ep;->so:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_8a

    #@8
    new-instance v0, Landroid/net/Uri$Builder;

    #@a
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@d
    iget-object v1, p0, Lcom/google/android/gms/internal/ep;->so:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@16
    move-result-object v0

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-static {v0}, Lcom/google/android/gms/internal/eo;->c(Landroid/net/Uri;)Ljava/util/Map;

    #@1f
    move-result-object v2

    #@20
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@23
    move-result-object v0

    #@24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v3

    #@28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_4e

    #@2e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/lang/String;

    #@34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    const-string v5, " = "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Ljava/lang/String;

    #@44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    const-string v4, "\n\n"

    #@4a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    goto :goto_28

    #@4e
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@59
    move-result v1

    #@5a
    if-nez v1, :cond_87

    #@5c
    :goto_5c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    #@5e
    iget-object v2, p0, Lcom/google/android/gms/internal/ep;->mContext:Landroid/content/Context;

    #@60
    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@63
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@66
    const-string v2, "Ad Information"

    #@68
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@6b
    const-string v2, "Share"

    #@6d
    new-instance v3, Lcom/google/android/gms/internal/ep$1;

    #@6f
    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ep$1;-><init>(Lcom/google/android/gms/internal/ep;Ljava/lang/String;)V

    #@72
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@75
    const-string v0, "Close"

    #@77
    new-instance v2, Lcom/google/android/gms/internal/ep$2;

    #@79
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ep$2;-><init>(Lcom/google/android/gms/internal/ep;)V

    #@7c
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@7f
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    #@86
    return-void

    #@87
    :cond_87
    const-string v0, "No debug information"

    #@89
    goto :goto_5c

    #@8a
    :cond_8a
    const-string v0, "No debug information"

    #@8c
    goto :goto_5c
.end method


# virtual methods
.method public c(Landroid/view/MotionEvent;)V
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    #@4
    move-result v2

    #@5
    move v0, v1

    #@6
    :goto_6
    if-ge v0, v2, :cond_1a

    #@8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@b
    move-result v3

    #@c
    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    #@f
    move-result v4

    #@10
    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    #@13
    move-result v5

    #@14
    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gms/internal/ep;->a(IFF)V

    #@17
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_6

    #@1a
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@1d
    move-result v0

    #@1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@21
    move-result v1

    #@22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@25
    move-result v2

    #@26
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ep;->a(IFF)V

    #@29
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/ep;->so:Ljava/lang/String;

    #@2
    return-void
.end method
