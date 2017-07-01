.class public final Lcom/google/android/gms/internal/ck;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final oR:Landroid/widget/ImageButton;

.field private final og:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@4
    iput-object p1, p0, Lcom/google/android/gms/internal/ck;->og:Landroid/app/Activity;

    #@6
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@9
    new-instance v0, Landroid/widget/ImageButton;

    #@b
    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    #@e
    iput-object v0, p0, Lcom/google/android/gms/internal/ck;->oR:Landroid/widget/ImageButton;

    #@10
    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->oR:Landroid/widget/ImageButton;

    #@12
    const v1, 0x1080017

    #@15
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    #@18
    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->oR:Landroid/widget/ImageButton;

    #@1a
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->oR:Landroid/widget/ImageButton;

    #@1f
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@22
    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->oR:Landroid/widget/ImageButton;

    #@24
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    #@27
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/et;->a(Landroid/content/Context;I)I

    #@2a
    move-result v0

    #@2b
    iget-object v1, p0, Lcom/google/android/gms/internal/ck;->oR:Landroid/widget/ImageButton;

    #@2d
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    #@2f
    const/16 v3, 0x11

    #@31
    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@34
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ck;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@37
    return-void
.end method


# virtual methods
.method public j(Z)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ck;->oR:Landroid/widget/ImageButton;

    #@2
    if-eqz p1, :cond_9

    #@4
    const/4 v0, 0x4

    #@5
    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    #@8
    return-void

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    goto :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->og:Landroid/app/Activity;

    #@2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    #@5
    return-void
.end method
