.class public final Lcom/google/android/gms/dynamic/h;
.super Lcom/google/android/gms/dynamic/c$a;


# instance fields
.field private FV:Landroid/support/v4/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/dynamic/c$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@5
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;)Lcom/google/android/gms/dynamic/h;
    .registers 2

    #@0
    if-eqz p0, :cond_8

    #@2
    new-instance v0, Lcom/google/android/gms/dynamic/h;

    #@4
    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/h;-><init>(Landroid/support/v4/app/Fragment;)V

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method


# virtual methods
.method public c(Lcom/google/android/gms/dynamic/d;)V
    .registers 4

    #@0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/View;

    #@6
    iget-object v1, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@8
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    #@b
    return-void
.end method

.method public d(Lcom/google/android/gms/dynamic/d;)V
    .registers 4

    #@0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/View;

    #@6
    iget-object v1, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@8
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    #@b
    return-void
.end method

.method public gI()Lcom/google/android/gms/dynamic/d;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public gJ()Lcom/google/android/gms/dynamic/c;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/google/android/gms/dynamic/h;->a(Landroid/support/v4/app/Fragment;)Lcom/google/android/gms/dynamic/h;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public gK()Lcom/google/android/gms/dynamic/d;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public gL()Lcom/google/android/gms/dynamic/c;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/google/android/gms/dynamic/h;->a(Landroid/support/v4/app/Fragment;)Lcom/google/android/gms/dynamic/h;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getId()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRetainInstance()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getRetainInstance()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTargetRequestCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTargetRequestCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getUserVisibleHint()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getUserVisibleHint()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getView()Lcom/google/android/gms/dynamic/d;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public isAdded()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isDetached()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isDetached()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isHidden()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isInLayout()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isInLayout()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isRemoving()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isRemoving()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isResumed()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isVisible()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setHasOptionsMenu(Z)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setHasOptionsMenu(Z)V

    #@5
    return-void
.end method

.method public setMenuVisibility(Z)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    #@5
    return-void
.end method

.method public setRetainInstance(Z)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    #@5
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    #@5
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    #@5
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->FV:Landroid/support/v4/app/Fragment;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    #@5
    return-void
.end method
