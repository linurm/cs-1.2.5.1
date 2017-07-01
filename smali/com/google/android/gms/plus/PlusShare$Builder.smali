.class public Lcom/google/android/gms/plus/PlusShare$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private abH:Z

.field private abI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mContext:Landroid/content/Context;

    #@5
    new-instance v0, Landroid/content/Intent;

    #@7
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@a
    const-string v1, "android.intent.action.SEND"

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@12
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@14
    const/high16 v1, 0x80000

    #@16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@19
    if-eqz p1, :cond_24

    #@1b
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_24

    #@21
    const/4 v0, 0x1

    #@22
    iput-boolean v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abH:Z

    #@24
    :cond_24
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/plus/PlusClient;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/PlusShare$Builder;-><init>(Landroid/app/Activity;)V

    #@3
    if-eqz p2, :cond_35

    #@5
    const/4 v0, 0x1

    #@6
    :goto_6
    const-string v1, "PlusClient must not be null."

    #@8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@b
    invoke-virtual {p2}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    #@e
    move-result v0

    #@f
    const-string v1, "PlusClient must be connected to create an interactive post."

    #@11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@14
    invoke-virtual {p2}, Lcom/google/android/gms/plus/PlusClient;->jS()Lcom/google/android/gms/plus/internal/e;

    #@17
    move-result-object v0

    #@18
    const-string v1, "https://www.googleapis.com/auth/plus.login"

    #@1a
    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/e;->by(Ljava/lang/String;)Z

    #@1d
    move-result v0

    #@1e
    const-string v1, "Must request PLUS_LOGIN scope in PlusClient to create an interactive post."

    #@20
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@23
    invoke-virtual {p2}, Lcom/google/android/gms/plus/PlusClient;->getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;

    #@26
    move-result-object v0

    #@27
    if-eqz v0, :cond_37

    #@29
    invoke-interface {v0}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    :goto_2d
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@2f
    const-string v2, "com.google.android.apps.plus.SENDER_ID"

    #@31
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@34
    return-void

    #@35
    :cond_35
    const/4 v0, 0x0

    #@36
    goto :goto_6

    #@37
    :cond_37
    const-string v0, "0"

    #@39
    goto :goto_2d
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mContext:Landroid/content/Context;

    #@5
    new-instance v0, Landroid/content/Intent;

    #@7
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@a
    const-string v1, "android.intent.action.SEND"

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@12
    return-void
.end method


# virtual methods
.method public addCallToAction(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 8

    #@0
    const/4 v1, 0x1

    #@1
    iget-boolean v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abH:Z

    #@3
    const-string v2, "Must include the launching activity with PlusShare.Builder constructor before setting call-to-action"

    #@5
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@8
    if-eqz p2, :cond_5d

    #@a
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_5d

    #@14
    move v0, v1

    #@15
    :goto_15
    const-string v2, "Must provide a call to action URL"

    #@17
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@1a
    new-instance v0, Landroid/os/Bundle;

    #@1c
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@1f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@22
    move-result v2

    #@23
    if-nez v2, :cond_2a

    #@25
    const-string v2, "label"

    #@27
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    :cond_2a
    const-string v2, "url"

    #@2c
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@36
    move-result v2

    #@37
    if-nez v2, :cond_47

    #@39
    invoke-static {p3}, Lcom/google/android/gms/plus/PlusShare;->bv(Ljava/lang/String;)Z

    #@3c
    move-result v2

    #@3d
    const-string v3, "The specified deep-link ID was malformed."

    #@3f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@42
    const-string v2, "deepLinkId"

    #@44
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@47
    :cond_47
    iget-object v2, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@49
    const-string v3, "com.google.android.apps.plus.CALL_TO_ACTION"

    #@4b
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@4e
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@50
    const-string v2, "com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST"

    #@52
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@55
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@57
    const-string v1, "text/plain"

    #@59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@5c
    return-object p0

    #@5d
    :cond_5d
    const/4 v0, 0x0

    #@5e
    goto :goto_15
.end method

.method public addStream(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.STREAM"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/net/Uri;

    #@a
    if-nez v0, :cond_11

    #@c
    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusShare$Builder;->setStream(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    #@f
    move-result-object p0

    #@10
    :goto_10
    return-object p0

    #@11
    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abI:Ljava/util/ArrayList;

    #@13
    if-nez v1, :cond_1c

    #@15
    new-instance v1, Ljava/util/ArrayList;

    #@17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abI:Ljava/util/ArrayList;

    #@1c
    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abI:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abI:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_10
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abI:Ljava/util/ArrayList;

    #@4
    if-eqz v1, :cond_d6

    #@6
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abI:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    if-le v1, v0, :cond_d6

    #@e
    move v1, v0

    #@f
    :goto_f
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    #@11
    iget-object v4, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@13
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v4

    #@1b
    iget-object v3, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@1d
    const-string v5, "com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST"

    #@1f
    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@22
    move-result v5

    #@23
    if-eqz v1, :cond_27

    #@25
    if-nez v5, :cond_d9

    #@27
    :cond_27
    move v3, v0

    #@28
    :goto_28
    const-string v6, "Call-to-action buttons are only available for URLs."

    #@2a
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@2d
    if-eqz v5, :cond_39

    #@2f
    iget-object v3, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@31
    const-string v6, "com.google.android.apps.plus.CONTENT_URL"

    #@33
    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_dc

    #@39
    :cond_39
    move v3, v0

    #@3a
    :goto_3a
    const-string v6, "The content URL is required for interactive posts."

    #@3c
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@3f
    if-eqz v5, :cond_55

    #@41
    iget-object v3, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@43
    const-string v5, "com.google.android.apps.plus.CONTENT_URL"

    #@45
    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@48
    move-result v3

    #@49
    if-nez v3, :cond_55

    #@4b
    iget-object v3, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@4d
    const-string v5, "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

    #@4f
    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@52
    move-result v3

    #@53
    if-eqz v3, :cond_df

    #@55
    :cond_55
    :goto_55
    const-string v3, "Must set content URL or content deep-link ID to use a call-to-action button."

    #@57
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@5a
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@5c
    const-string v3, "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

    #@5e
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_75

    #@64
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@66
    const-string v3, "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

    #@68
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v0

    #@6c
    invoke-static {v0}, Lcom/google/android/gms/plus/PlusShare;->bv(Ljava/lang/String;)Z

    #@6f
    move-result v0

    #@70
    const-string v3, "The specified deep-link ID was malformed."

    #@72
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@75
    :cond_75
    if-nez v1, :cond_9e

    #@77
    if-eqz v4, :cond_9e

    #@79
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@7b
    const-string v3, "android.intent.action.SEND"

    #@7d
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@80
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abI:Ljava/util/ArrayList;

    #@82
    if-eqz v0, :cond_e2

    #@84
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abI:Ljava/util/ArrayList;

    #@86
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@89
    move-result v0

    #@8a
    if-nez v0, :cond_e2

    #@8c
    iget-object v3, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@8e
    const-string v5, "android.intent.extra.STREAM"

    #@90
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abI:Ljava/util/ArrayList;

    #@92
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@95
    move-result-object v0

    #@96
    check-cast v0, Landroid/os/Parcelable;

    #@98
    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@9b
    :goto_9b
    const/4 v0, 0x0

    #@9c
    iput-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abI:Ljava/util/ArrayList;

    #@9e
    :cond_9e
    if-eqz v1, :cond_be

    #@a0
    if-nez v4, :cond_be

    #@a2
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@a4
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    #@a6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@a9
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abI:Ljava/util/ArrayList;

    #@ab
    if-eqz v0, :cond_ea

    #@ad
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abI:Ljava/util/ArrayList;

    #@af
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@b2
    move-result v0

    #@b3
    if-nez v0, :cond_ea

    #@b5
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@b7
    const-string v1, "android.intent.extra.STREAM"

    #@b9
    iget-object v2, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abI:Ljava/util/ArrayList;

    #@bb
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@be
    :cond_be
    :goto_be
    const-string v0, "com.google.android.gms.plus.action.SHARE_INTERNAL_GOOGLE"

    #@c0
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@c2
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@c5
    move-result-object v1

    #@c6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c9
    move-result v0

    #@ca
    if-eqz v0, :cond_f2

    #@cc
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@ce
    const-string v1, "com.google.android.gms"

    #@d0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@d3
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@d5
    :goto_d5
    return-object v0

    #@d6
    :cond_d6
    move v1, v2

    #@d7
    goto/16 :goto_f

    #@d9
    :cond_d9
    move v3, v2

    #@da
    goto/16 :goto_28

    #@dc
    :cond_dc
    move v3, v2

    #@dd
    goto/16 :goto_3a

    #@df
    :cond_df
    move v0, v2

    #@e0
    goto/16 :goto_55

    #@e2
    :cond_e2
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@e4
    const-string v2, "android.intent.extra.STREAM"

    #@e6
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    #@e9
    goto :goto_9b

    #@ea
    :cond_ea
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@ec
    const-string v1, "android.intent.extra.STREAM"

    #@ee
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    #@f1
    goto :goto_be

    #@f2
    :cond_f2
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@f4
    const-string v1, "android.intent.extra.STREAM"

    #@f6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@f9
    move-result v0

    #@fa
    if-nez v0, :cond_10d

    #@fc
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@fe
    const-string v1, "com.google.android.gms.plus.action.SHARE_GOOGLE"

    #@100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@103
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@105
    const-string v1, "com.google.android.gms"

    #@107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@10a
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@10c
    goto :goto_d5

    #@10d
    :cond_10d
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@10f
    const-string v1, "com.google.android.apps.plus"

    #@111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@114
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@116
    goto :goto_d5
.end method

.method public setContentDeepLinkId(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/google/android/gms/plus/PlusShare$Builder;->setContentDeepLinkId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public setContentDeepLinkId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 8

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abH:Z

    #@2
    const-string v1, "Must include the launching activity with PlusShare.Builder constructor before setting deep links"

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_2d

    #@d
    const/4 v0, 0x1

    #@e
    :goto_e
    const-string v1, "The deepLinkId parameter is required."

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@13
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/plus/PlusShare;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/os/Bundle;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@19
    const-string v2, "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

    #@1b
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1e
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@20
    const-string v2, "com.google.android.apps.plus.CONTENT_DEEP_LINK_METADATA"

    #@22
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@25
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@27
    const-string v1, "text/plain"

    #@29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@2c
    return-object p0

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_e
.end method

.method public setContentUrl(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_7

    #@3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_15

    #@d
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@f
    const-string v1, "com.google.android.apps.plus.CONTENT_URL"

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    #@14
    :goto_14
    return-object p0

    #@15
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@17
    const-string v2, "com.google.android.apps.plus.CONTENT_URL"

    #@19
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1c
    goto :goto_14
.end method

.method public setRecipients(Lcom/google/android/gms/plus/model/people/Person;Ljava/util/List;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/plus/model/people/Person;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person;",
            ">;)",
            "Lcom/google/android/gms/plus/PlusShare$Builder;"
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@2
    if-eqz p1, :cond_12

    #@4
    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    :goto_8
    const-string v2, "com.google.android.apps.plus.SENDER_ID"

    #@a
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@d
    invoke-virtual {p0, p2}, Lcom/google/android/gms/plus/PlusShare$Builder;->setRecipients(Ljava/util/List;)Lcom/google/android/gms/plus/PlusShare$Builder;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    :cond_12
    const-string v0, "0"

    #@14
    goto :goto_8
.end method

.method public setRecipients(Ljava/util/List;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person;",
            ">;)",
            "Lcom/google/android/gms/plus/PlusShare$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    if-eqz p1, :cond_17

    #@2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    :goto_6
    if-nez v0, :cond_19

    #@8
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@a
    const-string v1, "com.google.android.apps.plus.RECIPIENT_IDS"

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@11
    const-string v1, "com.google.android.apps.plus.RECIPIENT_DISPLAY_NAMES"

    #@13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    #@16
    :goto_16
    return-object p0

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    goto :goto_6

    #@19
    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@1e
    new-instance v2, Ljava/util/ArrayList;

    #@20
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v3

    #@27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_42

    #@2d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Lcom/google/android/gms/plus/model/people/Person;

    #@33
    invoke-interface {v0}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    invoke-interface {v0}, Lcom/google/android/gms/plus/model/people/Person;->getDisplayName()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_27

    #@42
    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@44
    const-string v3, "com.google.android.apps.plus.RECIPIENT_IDS"

    #@46
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@49
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@4b
    const-string v1, "com.google.android.apps.plus.RECIPIENT_DISPLAY_NAMES"

    #@4d
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@50
    goto :goto_16
.end method

.method public setStream(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->abI:Ljava/util/ArrayList;

    #@3
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@5
    const-string v1, "android.intent.extra.STREAM"

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@a
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.TEXT"

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@7
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@5
    return-object p0
.end method
