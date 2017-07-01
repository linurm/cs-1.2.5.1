.class final Lcom/google/android/gms/internal/cf$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final index:I

.field public final ot:Landroid/view/ViewGroup$LayoutParams;

.field public final ou:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ex;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cf$a;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/internal/cf$c;->ot:Landroid/view/ViewGroup$LayoutParams;

    #@9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->getParent()Landroid/view/ViewParent;

    #@c
    move-result-object v0

    #@d
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@f
    if-eqz v1, :cond_27

    #@11
    check-cast v0, Landroid/view/ViewGroup;

    #@13
    iput-object v0, p0, Lcom/google/android/gms/internal/cf$c;->ou:Landroid/view/ViewGroup;

    #@15
    iget-object v0, p0, Lcom/google/android/gms/internal/cf$c;->ou:Landroid/view/ViewGroup;

    #@17
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Lcom/google/android/gms/internal/cf$c;->index:I

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/internal/cf$c;->ou:Landroid/view/ViewGroup;

    #@1f
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@22
    const/4 v0, 0x1

    #@23
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ex;->q(Z)V

    #@26
    return-void

    #@27
    :cond_27
    new-instance v0, Lcom/google/android/gms/internal/cf$a;

    #@29
    const-string v1, "Could not get the parent of the WebView for an overlay."

    #@2b
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cf$a;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0
.end method
