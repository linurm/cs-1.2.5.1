.class public final Lcom/google/android/gms/ads/search/SearchAdView;
.super Landroid/view/ViewGroup;


# instance fields
.field private final kx:Lcom/google/android/gms/internal/au;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    #@3
    new-instance v0, Lcom/google/android/gms/internal/au;

    #@5
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/au;-><init>(Landroid/view/ViewGroup;)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kx:Lcom/google/android/gms/internal/au;

    #@a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    new-instance v0, Lcom/google/android/gms/internal/au;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/au;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    #@9
    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kx:Lcom/google/android/gms/internal/au;

    #@b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    #@0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    new-instance v0, Lcom/google/android/gms/internal/au;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/au;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    #@9
    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kx:Lcom/google/android/gms/internal/au;

    #@b
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kx:Lcom/google/android/gms/internal/au;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->destroy()V

    #@5
    return-void
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kx:Lcom/google/android/gms/internal/au;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kx:Lcom/google/android/gms/internal/au;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kx:Lcom/google/android/gms/internal/au;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getAdUnitId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kx:Lcom/google/android/gms/internal/au;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->T()Lcom/google/android/gms/internal/at;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/internal/at;)V

    #@9
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/search/SearchAdView;->getChildAt(I)Landroid/view/View;

    #@4
    move-result-object v0

    #@5
    if-eqz v0, :cond_26

    #@7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@a
    move-result v1

    #@b
    const/16 v2, 0x8

    #@d
    if-eq v1, v2, :cond_26

    #@f
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@12
    move-result v1

    #@13
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@16
    move-result v2

    #@17
    sub-int v3, p4, p2

    #@19
    sub-int/2addr v3, v1

    #@1a
    div-int/lit8 v3, v3, 0x2

    #@1c
    sub-int v4, p5, p3

    #@1e
    sub-int/2addr v4, v2

    #@1f
    div-int/lit8 v4, v4, 0x2

    #@21
    add-int/2addr v1, v3

    #@22
    add-int/2addr v2, v4

    #@23
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    #@26
    :cond_26
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/search/SearchAdView;->getChildAt(I)Landroid/view/View;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    #@8
    move-result-object v2

    #@9
    if-eqz v1, :cond_3a

    #@b
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@e
    move-result v3

    #@f
    const/16 v4, 0x8

    #@11
    if-eq v3, v4, :cond_3a

    #@13
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/ads/search/SearchAdView;->measureChild(Landroid/view/View;II)V

    #@16
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    #@19
    move-result v0

    #@1a
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    #@1d
    move-result v1

    #@1e
    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->getSuggestedMinimumWidth()I

    #@21
    move-result v2

    #@22
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@25
    move-result v0

    #@26
    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->getSuggestedMinimumHeight()I

    #@29
    move-result v2

    #@2a
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result v1

    #@2e
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    #@31
    move-result v0

    #@32
    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    #@35
    move-result v1

    #@36
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/search/SearchAdView;->setMeasuredDimension(II)V

    #@39
    return-void

    #@3a
    :cond_3a
    if-eqz v2, :cond_49

    #@3c
    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->getContext()Landroid/content/Context;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    #@43
    move-result v0

    #@44
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    #@47
    move-result v1

    #@48
    goto :goto_1e

    #@49
    :cond_49
    move v1, v0

    #@4a
    goto :goto_1e
.end method

.method public pause()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kx:Lcom/google/android/gms/internal/au;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->pause()V

    #@5
    return-void
.end method

.method public resume()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kx:Lcom/google/android/gms/internal/au;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->resume()V

    #@5
    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kx:Lcom/google/android/gms/internal/au;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    #@5
    return-void
.end method

.method public setAdSize(Lcom/google/android/gms/ads/AdSize;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kx:Lcom/google/android/gms/internal/au;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object p1, v1, v2

    #@8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/au;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    #@b
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kx:Lcom/google/android/gms/internal/au;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->setAdUnitId(Ljava/lang/String;)V

    #@5
    return-void
.end method
