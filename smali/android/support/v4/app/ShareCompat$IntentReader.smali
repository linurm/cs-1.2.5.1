.class public Landroid/support/v4/app/ShareCompat$IntentReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentReader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentReader"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallingActivity:Landroid/content/ComponentName;

.field private mCallingPackage:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    #@5
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@b
    invoke-static {p1}, Landroid/support/v4/app/ShareCompat;->getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@11
    invoke-static {p1}, Landroid/support/v4/app/ShareCompat;->getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    #@17
    return-void
.end method

.method public static from(Landroid/app/Activity;)Landroid/support/v4/app/ShareCompat$IntentReader;
    .registers 2

    #@0
    new-instance v0, Landroid/support/v4/app/ShareCompat$IntentReader;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/app/ShareCompat$IntentReader;-><init>(Landroid/app/Activity;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public getCallingActivity()Landroid/content/ComponentName;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getCallingActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    #@3
    if-nez v1, :cond_6

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    #@8
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v1

    #@c
    :try_start_c
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    #@e
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_11} :catch_13

    #@11
    move-result-object v0

    #@12
    goto :goto_5

    #@13
    :catch_13
    move-exception v1

    #@14
    const-string v2, "IntentReader"

    #@16
    const-string v3, "Could not retrieve icon for calling activity"

    #@18
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    goto :goto_5
.end method

.method public getCallingApplicationIcon()Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@3
    if-nez v1, :cond_6

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    #@8
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v1

    #@c
    :try_start_c
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_11} :catch_13

    #@11
    move-result-object v0

    #@12
    goto :goto_5

    #@13
    :catch_13
    move-exception v1

    #@14
    const-string v2, "IntentReader"

    #@16
    const-string v3, "Could not retrieve icon for calling application"

    #@18
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    goto :goto_5
.end method

.method public getCallingApplicationLabel()Ljava/lang/CharSequence;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@3
    if-nez v1, :cond_6

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    #@8
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v1

    #@c
    :try_start_c
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@e
    const/4 v3, 0x0

    #@f
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_16} :catch_18

    #@16
    move-result-object v0

    #@17
    goto :goto_5

    #@18
    :catch_18
    move-exception v1

    #@19
    const-string v2, "IntentReader"

    #@1b
    const-string v3, "Could not retrieve label for calling application"

    #@1d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    goto :goto_5
.end method

.method public getCallingPackage()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEmailBcc()[Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.BCC"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getEmailCc()[Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.CC"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getEmailTo()[Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.EMAIL"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getHtmlText()Ljava/lang/String;
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.HTML_TEXT"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    if-nez v1, :cond_24

    #@a
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->getText()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    instance-of v2, v0, Landroid/text/Spanned;

    #@10
    if-eqz v2, :cond_19

    #@12
    check-cast v0, Landroid/text/Spanned;

    #@14
    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    :goto_18
    return-object v0

    #@19
    :cond_19
    if-eqz v0, :cond_24

    #@1b
    # getter for: Landroid/support/v4/app/ShareCompat;->IMPL:Landroid/support/v4/app/ShareCompat$ShareCompatImpl;
    invoke-static {}, Landroid/support/v4/app/ShareCompat;->access$000()Landroid/support/v4/app/ShareCompat$ShareCompatImpl;

    #@1e
    move-result-object v1

    #@1f
    invoke-interface {v1, v0}, Landroid/support/v4/app/ShareCompat$ShareCompatImpl;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    goto :goto_18

    #@24
    :cond_24
    move-object v0, v1

    #@25
    goto :goto_18
.end method

.method public getStream()Landroid/net/Uri;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.STREAM"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/net/Uri;

    #@a
    return-object v0
.end method

.method public getStream(I)Landroid/net/Uri;
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_14

    #@4
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->isMultipleShare()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_14

    #@a
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@c
    const-string v1, "android.intent.extra.STREAM"

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@14
    :cond_14
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@16
    if-eqz v0, :cond_21

    #@18
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/net/Uri;

    #@20
    :goto_20
    return-object v0

    #@21
    :cond_21
    if-nez p1, :cond_2e

    #@23
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@25
    const-string v1, "android.intent.extra.STREAM"

    #@27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/net/Uri;

    #@2d
    goto :goto_20

    #@2e
    :cond_2e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@30
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string v2, "Stream items available: "

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->getStreamCount()I

    #@3e
    move-result v2

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    const-string v2, " index requested: "

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@54
    throw v0
.end method

.method public getStreamCount()I
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_14

    #@4
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->isMultipleShare()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_14

    #@a
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@c
    const-string v1, "android.intent.extra.STREAM"

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@14
    :cond_14
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@16
    if-eqz v0, :cond_1f

    #@18
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v0

    #@1e
    :goto_1e
    return v0

    #@1f
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@21
    const-string v1, "android.intent.extra.STREAM"

    #@23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2b

    #@29
    const/4 v0, 0x1

    #@2a
    goto :goto_1e

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_1e
.end method

.method public getSubject()Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.SUBJECT"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.TEXT"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isMultipleShare()Z
    .registers 3

    #@0
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    #@2
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@4
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public isShareIntent()Z
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string v1, "android.intent.action.SEND"

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_16

    #@e
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_18

    #@16
    :cond_16
    const/4 v0, 0x1

    #@17
    :goto_17
    return v0

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    goto :goto_17
.end method

.method public isSingleShare()Z
    .registers 3

    #@0
    const-string v0, "android.intent.action.SEND"

    #@2
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@4
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method
