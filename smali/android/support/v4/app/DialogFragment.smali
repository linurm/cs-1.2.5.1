.class public Landroid/support/v4/app/DialogFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/DialogFragment$DialogStyle;
    }
.end annotation


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    #@5
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@7
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    #@9
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    #@b
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@d
    const/4 v0, -0x1

    #@e
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@10
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    #@4
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    #@4
    return-void
.end method

.method dismissInternal(Z)V
    .registers 5

    #@0
    const/4 v2, 0x1

    #@1
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    #@3
    if-eqz v0, :cond_6

    #@5
    :goto_5
    return-void

    #@6
    :cond_6
    iput-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    #@8
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    #@b
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@d
    if-eqz v0, :cond_17

    #@f
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@11
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    #@14
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@17
    :cond_17
    iput-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    #@19
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@1b
    if-ltz v0, :cond_2a

    #@1d
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    #@20
    move-result-object v0

    #@21
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@23
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    #@26
    const/4 v0, -0x1

    #@27
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@29
    goto :goto_5

    #@2a
    :cond_2a
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    #@35
    if-eqz p1, :cond_3b

    #@37
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    #@3a
    goto :goto_5

    #@3b
    :cond_3b
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    #@3e
    goto :goto_5
.end method

.method public getDialog()Landroid/app/Dialog;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@2
    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@2
    if-nez v0, :cond_9

    #@4
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@7
    move-result-object v0

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@f
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@11
    packed-switch v0, :pswitch_data_44

    #@14
    :goto_14
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@16
    if-eqz v0, :cond_39

    #@18
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@1a
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v0

    #@1e
    const-string v1, "layout_inflater"

    #@20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/view/LayoutInflater;

    #@26
    goto :goto_8

    #@27
    :pswitch_27
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@29
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@2c
    move-result-object v0

    #@2d
    const/16 v1, 0x18

    #@2f
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    #@32
    :pswitch_32
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@34
    const/4 v1, 0x1

    #@35
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    #@38
    goto :goto_14

    #@39
    :cond_39
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@3b
    const-string v1, "layout_inflater"

    #@3d
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Landroid/view/LayoutInflater;

    #@43
    goto :goto_8

    #@44
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_32
        :pswitch_32
        :pswitch_27
    .end packed-switch
.end method

.method public getShowsDialog()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@2
    return v0
.end method

.method public getTheme()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    #@2
    return v0
.end method

.method public isCancelable()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    #@2
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@3
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@5
    if-nez v0, :cond_8

    #@7
    :cond_7
    :goto_7
    return-void

    #@8
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getView()Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_21

    #@e
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@11
    move-result-object v1

    #@12
    if-eqz v1, :cond_1c

    #@14
    new-instance v0, Ljava/lang/IllegalStateException;

    #@16
    const-string v1, "DialogFragment can not be attached to a container view"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    :cond_1c
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@1e
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    #@21
    :cond_21
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@23
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    #@2a
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@2c
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    #@2e
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    #@31
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@33
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    #@36
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@38
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@3b
    if-eqz p1, :cond_7

    #@3d
    const-string v0, "android:savedDialogState"

    #@3f
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@42
    move-result-object v0

    #@43
    if-eqz v0, :cond_7

    #@45
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@47
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@4a
    goto :goto_7
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    #@3
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    #@5
    if-nez v0, :cond_a

    #@7
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    #@a
    :cond_a
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    #@0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@5
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mContainerId:I

    #@7
    if-nez v0, :cond_3a

    #@9
    move v0, v1

    #@a
    :goto_a
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@c
    if-eqz p1, :cond_39

    #@e
    const-string v0, "android:style"

    #@10
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@16
    const-string v0, "android:theme"

    #@18
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    #@1e
    const-string v0, "android:cancelable"

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@23
    move-result v0

    #@24
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    #@26
    const-string v0, "android:showsDialog"

    #@28
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@2d
    move-result v0

    #@2e
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@30
    const-string v0, "android:backStackId"

    #@32
    const/4 v1, -0x1

    #@33
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@39
    :cond_39
    return-void

    #@3a
    :cond_3a
    move v0, v2

    #@3b
    goto :goto_a
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    #@0
    new-instance v0, Landroid/app/Dialog;

    #@2
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getTheme()I

    #@9
    move-result v2

    #@a
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@d
    return-object v0
.end method

.method public onDestroyView()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v0, :cond_12

    #@7
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    #@a
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@c
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    #@f
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@12
    :cond_12
    return-void
.end method

.method public onDetach()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    #@3
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    #@5
    if-nez v0, :cond_e

    #@7
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    #@9
    if-nez v0, :cond_e

    #@b
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    #@e
    :cond_e
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    #@2
    if-nez v0, :cond_8

    #@4
    const/4 v0, 0x1

    #@5
    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    #@8
    :cond_8
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v0, :cond_14

    #@7
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@9
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_14

    #@f
    const-string v1, "android:savedDialogState"

    #@11
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@14
    :cond_14
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@16
    if-eqz v0, :cond_1f

    #@18
    const-string v0, "android:style"

    #@1a
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@1c
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1f
    :cond_1f
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    #@21
    if-eqz v0, :cond_2a

    #@23
    const-string v0, "android:theme"

    #@25
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    #@27
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2a
    :cond_2a
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    #@2c
    if-nez v0, :cond_35

    #@2e
    const-string v0, "android:cancelable"

    #@30
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    #@32
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@35
    :cond_35
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@37
    if-nez v0, :cond_40

    #@39
    const-string v0, "android:showsDialog"

    #@3b
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@3d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@40
    :cond_40
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@42
    const/4 v1, -0x1

    #@43
    if-eq v0, v1, :cond_4c

    #@45
    const-string v0, "android:backStackId"

    #@47
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@49
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@4c
    :cond_4c
    return-void
.end method

.method public onStart()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v0, :cond_f

    #@7
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    #@a
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@c
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    #@f
    :cond_f
    return-void
.end method

.method public onStop()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@9
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    #@c
    :cond_c
    return-void
.end method

.method public setCancelable(Z)V
    .registers 3

    #@0
    iput-boolean p1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    #@2
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@4
    if-eqz v0, :cond_b

    #@6
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@8
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    #@b
    :cond_b
    return-void
.end method

.method public setShowsDialog(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    #@2
    return-void
.end method

.method public setStyle(II)V
    .registers 5

    #@0
    iput p1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@2
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@4
    const/4 v1, 0x2

    #@5
    if-eq v0, v1, :cond_c

    #@7
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    #@9
    const/4 v1, 0x3

    #@a
    if-ne v0, v1, :cond_11

    #@c
    :cond_c
    const v0, 0x1030059

    #@f
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    #@11
    :cond_11
    if-eqz p2, :cond_15

    #@13
    iput p2, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    #@15
    :cond_15
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    #@6
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    #@9
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    #@b
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@11
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    #@13
    return v0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    #@6
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    #@d
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    #@10
    return-void
.end method
