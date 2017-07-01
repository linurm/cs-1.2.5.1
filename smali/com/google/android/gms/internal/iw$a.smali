.class public final Lcom/google/android/gms/internal/iw$a;
.super Lcom/google/android/gms/internal/ix$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final FW:I

.field private og:Landroid/app/Activity;


# direct methods
.method public constructor <init>(ILandroid/app/Activity;)V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ix$a;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/iw$a;->FW:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/iw$a;->og:Landroid/app/Activity;

    #@7
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iw$a;Landroid/app/Activity;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iw$a;->setActivity(Landroid/app/Activity;)V

    #@3
    return-void
.end method

.method private setActivity(Landroid/app/Activity;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/iw$a;->og:Landroid/app/Activity;

    #@2
    return-void
.end method


# virtual methods
.method public g(ILandroid/os/Bundle;)V
    .registers 7

    #@0
    const/high16 v3, 0x40000000    # 2.0f

    #@2
    const/4 v0, 0x1

    #@3
    if-ne p1, v0, :cond_26

    #@5
    new-instance v0, Landroid/content/Intent;

    #@7
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@a
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@d
    iget-object v1, p0, Lcom/google/android/gms/internal/iw$a;->og:Landroid/app/Activity;

    #@f
    iget v2, p0, Lcom/google/android/gms/internal/iw$a;->FW:I

    #@11
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@14
    move-result-object v0

    #@15
    if-nez v0, :cond_18

    #@17
    :cond_17
    :goto_17
    return-void

    #@18
    :cond_18
    const/4 v1, 0x1

    #@19
    :try_start_19
    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_19 .. :try_end_1c} :catch_1d

    #@1c
    goto :goto_17

    #@1d
    :catch_1d
    move-exception v0

    #@1e
    const-string v1, "AddressClientImpl"

    #@20
    const-string v2, "Exception settng pending result"

    #@22
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    goto :goto_17

    #@26
    :cond_26
    const/4 v0, 0x0

    #@27
    if-eqz p2, :cond_31

    #@29
    const-string v0, "com.google.android.gms.identity.intents.EXTRA_PENDING_INTENT"

    #@2b
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/app/PendingIntent;

    #@31
    :cond_31
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    #@33
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    #@36
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_4d

    #@3c
    :try_start_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/iw$a;->og:Landroid/app/Activity;

    #@3e
    iget v2, p0, Lcom/google/android/gms/internal/iw$a;->FW:I

    #@40
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_43
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3c .. :try_end_43} :catch_44

    #@43
    goto :goto_17

    #@44
    :catch_44
    move-exception v0

    #@45
    const-string v1, "AddressClientImpl"

    #@47
    const-string v2, "Exception starting pending intent"

    #@49
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    goto :goto_17

    #@4d
    :cond_4d
    :try_start_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/iw$a;->og:Landroid/app/Activity;

    #@4f
    iget v1, p0, Lcom/google/android/gms/internal/iw$a;->FW:I

    #@51
    new-instance v2, Landroid/content/Intent;

    #@53
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@56
    const/high16 v3, 0x40000000    # 2.0f

    #@58
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@5b
    move-result-object v0

    #@5c
    if-eqz v0, :cond_17

    #@5e
    const/4 v1, 0x1

    #@5f
    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_62
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4d .. :try_end_62} :catch_63

    #@62
    goto :goto_17

    #@63
    :catch_63
    move-exception v0

    #@64
    const-string v1, "AddressClientImpl"

    #@66
    const-string v2, "Exception setting pending result"

    #@68
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6b
    goto :goto_17
.end method
