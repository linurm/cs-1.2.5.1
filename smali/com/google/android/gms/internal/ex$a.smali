.class Lcom/google/android/gms/internal/ex$a;
.super Landroid/content/MutableContextWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private lz:Landroid/content/Context;

.field private sG:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    #@3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ex$a;->setBaseContext(Landroid/content/Context;)V

    #@6
    return-void
.end method


# virtual methods
.method public cf()Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ex$a;->sG:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method public setBaseContext(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/internal/ex$a;->lz:Landroid/content/Context;

    #@6
    instance-of v0, p1, Landroid/app/Activity;

    #@8
    if-eqz v0, :cond_14

    #@a
    check-cast p1, Landroid/app/Activity;

    #@c
    :goto_c
    iput-object p1, p0, Lcom/google/android/gms/internal/ex$a;->sG:Landroid/app/Activity;

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/ex$a;->lz:Landroid/content/Context;

    #@10
    invoke-super {p0, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    #@13
    return-void

    #@14
    :cond_14
    const/4 p1, 0x0

    #@15
    goto :goto_c
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ex$a;->sG:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/ex$a;->sG:Landroid/app/Activity;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    const/high16 v0, 0x10000000

    #@c
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@f
    iget-object v0, p0, Lcom/google/android/gms/internal/ex$a;->lz:Landroid/content/Context;

    #@11
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@14
    goto :goto_9
.end method
