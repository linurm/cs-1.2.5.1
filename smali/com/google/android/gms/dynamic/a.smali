.class public abstract Lcom/google/android/gms/dynamic/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamic/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/dynamic/LifecycleDelegate;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private LY:Landroid/os/Bundle;

.field private LZ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/dynamic/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final Ma:Lcom/google/android/gms/dynamic/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/f",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/dynamic/a$1;

    #@5
    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/a$1;-><init>(Lcom/google/android/gms/dynamic/a;)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/dynamic/a;->Ma:Lcom/google/android/gms/dynamic/f;

    #@a
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/dynamic/a;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/dynamic/a;->LY:Landroid/os/Bundle;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/LifecycleDelegate;)Lcom/google/android/gms/dynamic/LifecycleDelegate;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/dynamic/a;)Ljava/util/LinkedList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LZ:Ljava/util/LinkedList;

    #@2
    return-object v0
.end method

.method private a(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/a$a;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@6
    invoke-interface {p2, v0}, Lcom/google/android/gms/dynamic/a$a;->b(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LZ:Ljava/util/LinkedList;

    #@c
    if-nez v0, :cond_15

    #@e
    new-instance v0, Ljava/util/LinkedList;

    #@10
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@13
    iput-object v0, p0, Lcom/google/android/gms/dynamic/a;->LZ:Ljava/util/LinkedList;

    #@15
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LZ:Ljava/util/LinkedList;

    #@17
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@1a
    if-eqz p1, :cond_28

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LY:Landroid/os/Bundle;

    #@1e
    if-nez v0, :cond_2e

    #@20
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/os/Bundle;

    #@26
    iput-object v0, p0, Lcom/google/android/gms/dynamic/a;->LY:Landroid/os/Bundle;

    #@28
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->Ma:Lcom/google/android/gms/dynamic/f;

    #@2a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/a;->a(Lcom/google/android/gms/dynamic/f;)V

    #@2d
    goto :goto_9

    #@2e
    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LY:Landroid/os/Bundle;

    #@30
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@33
    goto :goto_28
.end method

.method static synthetic b(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/LifecycleDelegate;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@2
    return-object v0
.end method

.method public static b(Landroid/widget/FrameLayout;)V
    .registers 9

    #@0
    const/4 v7, -0x2

    #@1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    #@8
    move-result v1

    #@9
    invoke-static {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->d(Landroid/content/Context;I)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-static {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->e(Landroid/content/Context;I)Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    new-instance v4, Landroid/widget/LinearLayout;

    #@13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    #@16
    move-result-object v5

    #@17
    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@1a
    const/4 v5, 0x1

    #@1b
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@1e
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    #@20
    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@23
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@26
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@29
    new-instance v5, Landroid/widget/TextView;

    #@2b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    #@2e
    move-result-object v6

    #@2f
    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@32
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    #@34
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@37
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@3a
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3d
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@40
    if-eqz v3, :cond_5d

    #@42
    new-instance v2, Landroid/widget/Button;

    #@44
    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    #@47
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    #@49
    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@4c
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@4f
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@52
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@55
    new-instance v3, Lcom/google/android/gms/dynamic/a$5;

    #@57
    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/dynamic/a$5;-><init>(Landroid/content/Context;I)V

    #@5a
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@5d
    :cond_5d
    return-void
.end method

.method private ca(I)V
    .registers 3

    #@0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LZ:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1c

    #@8
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LZ:Ljava/util/LinkedList;

    #@a
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/google/android/gms/dynamic/a$a;

    #@10
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/a$a;->getState()I

    #@13
    move-result v0

    #@14
    if-lt v0, p1, :cond_1c

    #@16
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LZ:Ljava/util/LinkedList;

    #@18
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    #@1b
    goto :goto_0

    #@1c
    :cond_1c
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/FrameLayout;)V
    .registers 2

    #@0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/a;->b(Landroid/widget/FrameLayout;)V

    #@3
    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/dynamic/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/f",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public gH()Lcom/google/android/gms/dynamic/LifecycleDelegate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@2
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/dynamic/a$3;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/dynamic/a$3;-><init>(Lcom/google/android/gms/dynamic/a;Landroid/os/Bundle;)V

    #@5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/dynamic/a;->a(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/a$a;)V

    #@8
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    #@0
    new-instance v2, Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@9
    new-instance v0, Lcom/google/android/gms/dynamic/a$4;

    #@b
    move-object v1, p0

    #@c
    move-object v3, p1

    #@d
    move-object v4, p2

    #@e
    move-object v5, p3

    #@f
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/dynamic/a$4;-><init>(Lcom/google/android/gms/dynamic/a;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    #@12
    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/dynamic/a;->a(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/a$a;)V

    #@15
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@17
    if-nez v0, :cond_1c

    #@19
    invoke-virtual {p0, v2}, Lcom/google/android/gms/dynamic/a;->a(Landroid/widget/FrameLayout;)V

    #@1c
    :cond_1c
    return-object v2
.end method

.method public onDestroy()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onDestroy()V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    const/4 v0, 0x1

    #@b
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/a;->ca(I)V

    #@e
    goto :goto_9
.end method

.method public onDestroyView()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onDestroyView()V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    const/4 v0, 0x2

    #@b
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/a;->ca(I)V

    #@e
    goto :goto_9
.end method

.method public onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/dynamic/a$2;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/dynamic/a$2;-><init>(Lcom/google/android/gms/dynamic/a;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    #@5
    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/dynamic/a;->a(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/a$a;)V

    #@8
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onLowMemory()V

    #@9
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onPause()V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    const/4 v0, 0x5

    #@b
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/a;->ca(I)V

    #@e
    goto :goto_9
.end method

.method public onResume()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    new-instance v1, Lcom/google/android/gms/dynamic/a$7;

    #@3
    invoke-direct {v1, p0}, Lcom/google/android/gms/dynamic/a$7;-><init>(Lcom/google/android/gms/dynamic/a;)V

    #@6
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/dynamic/a;->a(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/a$a;)V

    #@9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@6
    invoke-interface {v0, p1}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@9
    :cond_9
    :goto_9
    return-void

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LY:Landroid/os/Bundle;

    #@c
    if-eqz v0, :cond_9

    #@e
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LY:Landroid/os/Bundle;

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@13
    goto :goto_9
.end method

.method public onStart()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    new-instance v1, Lcom/google/android/gms/dynamic/a$6;

    #@3
    invoke-direct {v1, p0}, Lcom/google/android/gms/dynamic/a$6;-><init>(Lcom/google/android/gms/dynamic/a;)V

    #@6
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/dynamic/a;->a(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/a$a;)V

    #@9
    return-void
.end method

.method public onStop()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->LX:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onStop()V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    const/4 v0, 0x4

    #@b
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/a;->ca(I)V

    #@e
    goto :goto_9
.end method
