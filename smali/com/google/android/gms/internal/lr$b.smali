.class final Lcom/google/android/gms/internal/lr$b;
.super Lcom/google/android/gms/internal/lr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final FW:I

.field final synthetic akM:Lcom/google/android/gms/internal/lr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/lr;I)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/lr$b;->akM:Lcom/google/android/gms/internal/lr;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/lr$a;-><init>(Lcom/google/android/gms/internal/lr$1;)V

    #@6
    iput p2, p0, Lcom/google/android/gms/internal/lr$b;->FW:I

    #@8
    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p3, :cond_b

    #@3
    const-string v0, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    #@5
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/app/PendingIntent;

    #@b
    :cond_b
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    #@d
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    #@10
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2b

    #@16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/lr$b;->akM:Lcom/google/android/gms/internal/lr;

    #@18
    invoke-static {v0}, Lcom/google/android/gms/internal/lr;->b(Lcom/google/android/gms/internal/lr;)Landroid/app/Activity;

    #@1b
    move-result-object v0

    #@1c
    iget v2, p0, Lcom/google/android/gms/internal/lr$b;->FW:I

    #@1e
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_21
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_16 .. :try_end_21} :catch_22

    #@21
    :goto_21
    return-void

    #@22
    :catch_22
    move-exception v0

    #@23
    const-string v1, "WalletClientImpl"

    #@25
    const-string v2, "Exception starting pending intent"

    #@27
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_21

    #@2b
    :cond_2b
    new-instance v2, Landroid/content/Intent;

    #@2d
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@30
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_54

    #@36
    const/4 v0, -0x1

    #@37
    const-string v1, "com.google.android.gms.wallet.EXTRA_FULL_WALLET"

    #@39
    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@3c
    :goto_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/lr$b;->akM:Lcom/google/android/gms/internal/lr;

    #@3e
    invoke-static {v1}, Lcom/google/android/gms/internal/lr;->b(Lcom/google/android/gms/internal/lr;)Landroid/app/Activity;

    #@41
    move-result-object v1

    #@42
    iget v3, p0, Lcom/google/android/gms/internal/lr$b;->FW:I

    #@44
    const/high16 v4, 0x40000000    # 2.0f

    #@46
    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@49
    move-result-object v1

    #@4a
    if-nez v1, :cond_61

    #@4c
    const-string v0, "WalletClientImpl"

    #@4e
    const-string v1, "Null pending result returned for onFullWalletLoaded"

    #@50
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    goto :goto_21

    #@54
    :cond_54
    const/16 v0, 0x198

    #@56
    if-ne p1, v0, :cond_5f

    #@58
    const/4 v0, 0x0

    #@59
    :goto_59
    const-string v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    #@5b
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@5e
    goto :goto_3c

    #@5f
    :cond_5f
    const/4 v0, 0x1

    #@60
    goto :goto_59

    #@61
    :cond_61
    :try_start_61
    invoke-virtual {v1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_64
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_61 .. :try_end_64} :catch_65

    #@64
    goto :goto_21

    #@65
    :catch_65
    move-exception v0

    #@66
    const-string v1, "WalletClientImpl"

    #@68
    const-string v2, "Exception setting pending result"

    #@6a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d
    goto :goto_21
.end method

.method public a(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p3, :cond_b

    #@3
    const-string v0, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    #@5
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/app/PendingIntent;

    #@b
    :cond_b
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    #@d
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    #@10
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2b

    #@16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/lr$b;->akM:Lcom/google/android/gms/internal/lr;

    #@18
    invoke-static {v0}, Lcom/google/android/gms/internal/lr;->b(Lcom/google/android/gms/internal/lr;)Landroid/app/Activity;

    #@1b
    move-result-object v0

    #@1c
    iget v2, p0, Lcom/google/android/gms/internal/lr$b;->FW:I

    #@1e
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_21
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_16 .. :try_end_21} :catch_22

    #@21
    :goto_21
    return-void

    #@22
    :catch_22
    move-exception v0

    #@23
    const-string v1, "WalletClientImpl"

    #@25
    const-string v2, "Exception starting pending intent"

    #@27
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_21

    #@2b
    :cond_2b
    new-instance v2, Landroid/content/Intent;

    #@2d
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@30
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_54

    #@36
    const/4 v0, -0x1

    #@37
    const-string v1, "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"

    #@39
    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@3c
    :goto_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/lr$b;->akM:Lcom/google/android/gms/internal/lr;

    #@3e
    invoke-static {v1}, Lcom/google/android/gms/internal/lr;->b(Lcom/google/android/gms/internal/lr;)Landroid/app/Activity;

    #@41
    move-result-object v1

    #@42
    iget v3, p0, Lcom/google/android/gms/internal/lr$b;->FW:I

    #@44
    const/high16 v4, 0x40000000    # 2.0f

    #@46
    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@49
    move-result-object v1

    #@4a
    if-nez v1, :cond_61

    #@4c
    const-string v0, "WalletClientImpl"

    #@4e
    const-string v1, "Null pending result returned for onMaskedWalletLoaded"

    #@50
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    goto :goto_21

    #@54
    :cond_54
    const/16 v0, 0x198

    #@56
    if-ne p1, v0, :cond_5f

    #@58
    const/4 v0, 0x0

    #@59
    :goto_59
    const-string v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    #@5b
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@5e
    goto :goto_3c

    #@5f
    :cond_5f
    const/4 v0, 0x1

    #@60
    goto :goto_59

    #@61
    :cond_61
    :try_start_61
    invoke-virtual {v1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_64
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_61 .. :try_end_64} :catch_65

    #@64
    goto :goto_21

    #@65
    :catch_65
    move-exception v0

    #@66
    const-string v1, "WalletClientImpl"

    #@68
    const-string v2, "Exception setting pending result"

    #@6a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d
    goto :goto_21
.end method

.method public a(IZLandroid/os/Bundle;)V
    .registers 8

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    const-string v1, "com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED"

    #@7
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@a
    iget-object v1, p0, Lcom/google/android/gms/internal/lr$b;->akM:Lcom/google/android/gms/internal/lr;

    #@c
    invoke-static {v1}, Lcom/google/android/gms/internal/lr;->b(Lcom/google/android/gms/internal/lr;)Landroid/app/Activity;

    #@f
    move-result-object v1

    #@10
    iget v2, p0, Lcom/google/android/gms/internal/lr$b;->FW:I

    #@12
    const/high16 v3, 0x40000000    # 2.0f

    #@14
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@17
    move-result-object v0

    #@18
    if-nez v0, :cond_22

    #@1a
    const-string v0, "WalletClientImpl"

    #@1c
    const-string v1, "Null pending result returned for onPreAuthorizationDetermined"

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    :goto_21
    return-void

    #@22
    :cond_22
    const/4 v1, -0x1

    #@23
    :try_start_23
    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_26
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_23 .. :try_end_26} :catch_27

    #@26
    goto :goto_21

    #@27
    :catch_27
    move-exception v0

    #@28
    const-string v1, "WalletClientImpl"

    #@2a
    const-string v2, "Exception setting pending result"

    #@2c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    goto :goto_21
.end method

.method public i(ILandroid/os/Bundle;)V
    .registers 7

    #@0
    const-string v0, "Bundle should not be null"

    #@2
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    #@7
    const-string v0, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    #@9
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/app/PendingIntent;

    #@f
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    #@12
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2d

    #@18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/internal/lr$b;->akM:Lcom/google/android/gms/internal/lr;

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/internal/lr;->b(Lcom/google/android/gms/internal/lr;)Landroid/app/Activity;

    #@1d
    move-result-object v0

    #@1e
    iget v2, p0, Lcom/google/android/gms/internal/lr$b;->FW:I

    #@20
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_23
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_18 .. :try_end_23} :catch_24

    #@23
    :goto_23
    return-void

    #@24
    :catch_24
    move-exception v0

    #@25
    const-string v1, "WalletClientImpl"

    #@27
    const-string v2, "Exception starting pending intent"

    #@29
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    goto :goto_23

    #@2d
    :cond_2d
    const-string v0, "WalletClientImpl"

    #@2f
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string v3, "Create Wallet Objects confirmation UI will not be shown connection result: "

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    new-instance v0, Landroid/content/Intent;

    #@47
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@4a
    const-string v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    #@4c
    const/16 v2, 0x19d

    #@4e
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@51
    iget-object v1, p0, Lcom/google/android/gms/internal/lr$b;->akM:Lcom/google/android/gms/internal/lr;

    #@53
    invoke-static {v1}, Lcom/google/android/gms/internal/lr;->b(Lcom/google/android/gms/internal/lr;)Landroid/app/Activity;

    #@56
    move-result-object v1

    #@57
    iget v2, p0, Lcom/google/android/gms/internal/lr$b;->FW:I

    #@59
    const/high16 v3, 0x40000000    # 2.0f

    #@5b
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@5e
    move-result-object v0

    #@5f
    if-nez v0, :cond_69

    #@61
    const-string v0, "WalletClientImpl"

    #@63
    const-string v1, "Null pending result returned for onWalletObjectsCreated"

    #@65
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    goto :goto_23

    #@69
    :cond_69
    const/4 v1, 0x1

    #@6a
    :try_start_6a
    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_6d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_6a .. :try_end_6d} :catch_6e

    #@6d
    goto :goto_23

    #@6e
    :catch_6e
    move-exception v0

    #@6f
    const-string v1, "WalletClientImpl"

    #@71
    const-string v2, "Exception setting pending result"

    #@73
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@76
    goto :goto_23
.end method
