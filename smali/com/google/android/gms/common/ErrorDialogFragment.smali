.class public Lcom/google/android/gms/common/ErrorDialogFragment;
.super Landroid/app/DialogFragment;


# instance fields
.field private CU:Landroid/content/DialogInterface$OnCancelListener;

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #@4
    iput-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    #@6
    iput-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->CU:Landroid/content/DialogInterface$OnCancelListener;

    #@8
    return-void
.end method

.method public static newInstance(Landroid/app/Dialog;)Lcom/google/android/gms/common/ErrorDialogFragment;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/ErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    new-instance v1, Lcom/google/android/gms/common/ErrorDialogFragment;

    #@3
    invoke-direct {v1}, Lcom/google/android/gms/common/ErrorDialogFragment;-><init>()V

    #@6
    const-string v0, "Cannot display null dialog"

    #@8
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/app/Dialog;

    #@e
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    #@11
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@14
    iput-object v0, v1, Lcom/google/android/gms/common/ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    #@16
    if-eqz p1, :cond_1a

    #@18
    iput-object p1, v1, Lcom/google/android/gms/common/ErrorDialogFragment;->CU:Landroid/content/DialogInterface$OnCancelListener;

    #@1a
    :cond_1a
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->CU:Landroid/content/DialogInterface$OnCancelListener;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->CU:Landroid/content/DialogInterface$OnCancelListener;

    #@6
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    #@9
    :cond_9
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    #@2
    if-nez v0, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/ErrorDialogFragment;->setShowsDialog(Z)V

    #@8
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    #@a
    return-object v0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    #@3
    return-void
.end method
