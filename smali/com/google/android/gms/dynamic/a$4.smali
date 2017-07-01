.class Lcom/google/android/gms/dynamic/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/dynamic/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Mb:Lcom/google/android/gms/dynamic/a;

.field final synthetic Me:Landroid/os/Bundle;

.field final synthetic Mf:Landroid/widget/FrameLayout;

.field final synthetic Mg:Landroid/view/LayoutInflater;

.field final synthetic Mh:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/a;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/google/android/gms/dynamic/a$4;->Mb:Lcom/google/android/gms/dynamic/a;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/dynamic/a$4;->Mf:Landroid/widget/FrameLayout;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/dynamic/a$4;->Mg:Landroid/view/LayoutInflater;

    #@6
    iput-object p4, p0, Lcom/google/android/gms/dynamic/a$4;->Mh:Landroid/view/ViewGroup;

    #@8
    iput-object p5, p0, Lcom/google/android/gms/dynamic/a$4;->Me:Landroid/os/Bundle;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$4;->Mf:Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$4;->Mf:Landroid/widget/FrameLayout;

    #@7
    iget-object v1, p0, Lcom/google/android/gms/dynamic/a$4;->Mb:Lcom/google/android/gms/dynamic/a;

    #@9
    invoke-static {v1}, Lcom/google/android/gms/dynamic/a;->b(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@c
    move-result-object v1

    #@d
    iget-object v2, p0, Lcom/google/android/gms/dynamic/a$4;->Mg:Landroid/view/LayoutInflater;

    #@f
    iget-object v3, p0, Lcom/google/android/gms/dynamic/a$4;->Mh:Landroid/view/ViewGroup;

    #@11
    iget-object v4, p0, Lcom/google/android/gms/dynamic/a$4;->Me:Landroid/os/Bundle;

    #@13
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@1a
    return-void
.end method

.method public getState()I
    .registers 2

    #@0
    const/4 v0, 0x2

    #@1
    return v0
.end method
