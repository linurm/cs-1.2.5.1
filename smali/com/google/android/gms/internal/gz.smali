.class public Lcom/google/android/gms/internal/gz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final FV:Landroid/support/v4/app/Fragment;

.field private final FW:I

.field private final mIntent:Landroid/content/Intent;

.field private final og:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/gz;->og:Landroid/app/Activity;

    #@5
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/google/android/gms/internal/gz;->FV:Landroid/support/v4/app/Fragment;

    #@8
    iput-object p2, p0, Lcom/google/android/gms/internal/gz;->mIntent:Landroid/content/Intent;

    #@a
    iput p3, p0, Lcom/google/android/gms/internal/gz;->FW:I

    #@c
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/internal/gz;->og:Landroid/app/Activity;

    #@6
    iput-object p1, p0, Lcom/google/android/gms/internal/gz;->FV:Landroid/support/v4/app/Fragment;

    #@8
    iput-object p2, p0, Lcom/google/android/gms/internal/gz;->mIntent:Landroid/content/Intent;

    #@a
    iput p3, p0, Lcom/google/android/gms/internal/gz;->FW:I

    #@c
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gz;->mIntent:Landroid/content/Intent;

    #@2
    if-eqz v0, :cond_15

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/gz;->FV:Landroid/support/v4/app/Fragment;

    #@6
    if-eqz v0, :cond_15

    #@8
    iget-object v0, p0, Lcom/google/android/gms/internal/gz;->FV:Landroid/support/v4/app/Fragment;

    #@a
    iget-object v1, p0, Lcom/google/android/gms/internal/gz;->mIntent:Landroid/content/Intent;

    #@c
    iget v2, p0, Lcom/google/android/gms/internal/gz;->FW:I

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    #@11
    :cond_11
    :goto_11
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    #@14
    :goto_14
    return-void

    #@15
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/gz;->mIntent:Landroid/content/Intent;

    #@17
    if-eqz v0, :cond_11

    #@19
    iget-object v0, p0, Lcom/google/android/gms/internal/gz;->og:Landroid/app/Activity;

    #@1b
    iget-object v1, p0, Lcom/google/android/gms/internal/gz;->mIntent:Landroid/content/Intent;

    #@1d
    iget v2, p0, Lcom/google/android/gms/internal/gz;->FW:I

    #@1f
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_22
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_22} :catch_23

    #@22
    goto :goto_11

    #@23
    :catch_23
    move-exception v0

    #@24
    const-string v0, "SettingsRedirect"

    #@26
    const-string v1, "Can\'t redirect to app settings for Google Play services"

    #@28
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    goto :goto_14
.end method
