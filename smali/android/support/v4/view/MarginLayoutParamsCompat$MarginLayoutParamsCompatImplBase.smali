.class Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImplBase;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MarginLayoutParamsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarginLayoutParamsCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3

    #@0
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@2
    return v0
.end method

.method public getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3

    #@0
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@2
    return v0
.end method

.method public isMarginRelative(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public resolveLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 3

    #@0
    return-void
.end method

.method public setLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 3

    #@0
    return-void
.end method

.method public setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 3

    #@0
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@2
    return-void
.end method

.method public setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 3

    #@0
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@2
    return-void
.end method
