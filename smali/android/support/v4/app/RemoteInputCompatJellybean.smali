.class Landroid/support/v4/app/RemoteInputCompatJellybean;
.super Ljava/lang/Object;


# static fields
.field public static final EXTRA_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.resultsData"

.field private static final KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String; = "allowFreeFormInput"

.field private static final KEY_CHOICES:Ljava/lang/String; = "choices"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_RESULT_KEY:Ljava/lang/String; = "resultKey"

.field public static final RESULTS_CLIP_LABEL:Ljava/lang/String; = "android.remoteinput.results"


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static addResultsToIntent([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 9

    #@0
    new-instance v2, Landroid/os/Bundle;

    #@2
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@5
    array-length v3, p0

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    :goto_8
    if-ge v1, v3, :cond_25

    #@a
    aget-object v4, p0, v1

    #@c
    invoke-virtual {v4}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    instance-of v5, v0, Ljava/lang/CharSequence;

    #@16
    if-eqz v5, :cond_21

    #@18
    invoke-virtual {v4}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    check-cast v0, Ljava/lang/CharSequence;

    #@1e
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@21
    :cond_21
    add-int/lit8 v0, v1, 0x1

    #@23
    move v1, v0

    #@24
    goto :goto_8

    #@25
    :cond_25
    new-instance v0, Landroid/content/Intent;

    #@27
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@2a
    const-string v1, "android.remoteinput.resultsData"

    #@2c
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@2f
    const-string v1, "android.remoteinput.results"

    #@31
    invoke-static {v1, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@38
    return-void
.end method

.method static fromBundle(Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .registers 8

    #@0
    const-string v0, "resultKey"

    #@2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    const-string v0, "label"

    #@8
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@b
    move-result-object v2

    #@c
    const-string v0, "choices"

    #@e
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    #@11
    move-result-object v3

    #@12
    const-string v0, "allowFreeFormInput"

    #@14
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@17
    move-result v4

    #@18
    const-string v0, "extras"

    #@1a
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@1d
    move-result-object v5

    #@1e
    move-object v0, p1

    #@1f
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method static fromBundleArray([Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    array-length v0, p0

    #@5
    invoke-interface {p1, v0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->newArray(I)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@8
    move-result-object v1

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    array-length v2, p0

    #@b
    if-ge v0, v2, :cond_18

    #@d
    aget-object v2, p0, v0

    #@f
    invoke-static {v2, p1}, Landroid/support/v4/app/RemoteInputCompatJellybean;->fromBundle(Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v1, v0

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_a

    #@18
    :cond_18
    move-object v0, v1

    #@19
    goto :goto_3
.end method

.method static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    #@4
    move-result-object v1

    #@5
    if-nez v1, :cond_8

    #@7
    :cond_7
    :goto_7
    return-object v0

    #@8
    :cond_8
    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    #@b
    move-result-object v2

    #@c
    const-string v3, "text/vnd.android.intent"

    #@e
    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_7

    #@14
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    #@17
    move-result-object v2

    #@18
    const-string v3, "android.remoteinput.results"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_7

    #@20
    const/4 v0, 0x0

    #@21
    invoke-virtual {v1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@2c
    move-result-object v0

    #@2d
    const-string v1, "android.remoteinput.resultsData"

    #@2f
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/os/Bundle;

    #@35
    goto :goto_7
.end method

.method static toBundle(Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/os/Bundle;
    .registers 4

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "resultKey"

    #@7
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    const-string v1, "label"

    #@10
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getLabel()Ljava/lang/CharSequence;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@17
    const-string v1, "choices"

    #@19
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    #@20
    const-string v1, "allowFreeFormInput"

    #@22
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getAllowFreeFormInput()Z

    #@25
    move-result v2

    #@26
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@29
    const-string v1, "extras"

    #@2b
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getExtras()Landroid/os/Bundle;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@32
    return-object v0
.end method

.method static toBundleArray([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/os/Bundle;
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    array-length v0, p0

    #@5
    new-array v1, v0, [Landroid/os/Bundle;

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    array-length v2, p0

    #@9
    if-ge v0, v2, :cond_16

    #@b
    aget-object v2, p0, v0

    #@d
    invoke-static {v2}, Landroid/support/v4/app/RemoteInputCompatJellybean;->toBundle(Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/os/Bundle;

    #@10
    move-result-object v2

    #@11
    aput-object v2, v1, v0

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_8

    #@16
    :cond_16
    move-object v0, v1

    #@17
    goto :goto_3
.end method
