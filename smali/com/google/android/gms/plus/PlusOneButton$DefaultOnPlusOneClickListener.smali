.class public Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusOneButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DefaultOnPlusOneClickListener"
.end annotation


# instance fields
.field private final abF:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

.field final synthetic abG:Lcom/google/android/gms/plus/PlusOneButton;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/PlusOneButton;Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->abG:Lcom/google/android/gms/plus/PlusOneButton;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-object p2, p0, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->abF:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    #@7
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->abG:Lcom/google/android/gms/plus/PlusOneButton;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/plus/PlusOneButton;->a(Lcom/google/android/gms/plus/PlusOneButton;)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/content/Intent;

    #@c
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->abF:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    #@e
    if-eqz v1, :cond_16

    #@10
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->abF:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    #@12
    invoke-interface {v1, v0}, Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;->onPlusOneClick(Landroid/content/Intent;)V

    #@15
    :goto_15
    return-void

    #@16
    :cond_16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->onPlusOneClick(Landroid/content/Intent;)V

    #@19
    goto :goto_15
.end method

.method public onPlusOneClick(Landroid/content/Intent;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->abG:Lcom/google/android/gms/plus/PlusOneButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    instance-of v1, v0, Landroid/app/Activity;

    #@8
    if-eqz v1, :cond_17

    #@a
    if-eqz p1, :cond_17

    #@c
    check-cast v0, Landroid/app/Activity;

    #@e
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->abG:Lcom/google/android/gms/plus/PlusOneButton;

    #@10
    invoke-static {v1}, Lcom/google/android/gms/plus/PlusOneButton;->b(Lcom/google/android/gms/plus/PlusOneButton;)I

    #@13
    move-result v1

    #@14
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@17
    :cond_17
    return-void
.end method
