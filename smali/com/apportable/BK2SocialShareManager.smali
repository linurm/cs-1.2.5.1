.class public Lcom/apportable/BK2SocialShareManager;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String;

.field public static instance:Lcom/apportable/BK2SocialShareManager;


# instance fields
.field private final REQUEST_CODE:I

.field private activity:Landroid/app/Activity;

.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private initialText:Ljava/lang/String;

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "BK2SocialShareManager"

    #@2
    sput-object v0, Lcom/apportable/BK2SocialShareManager;->TAG:Ljava/lang/String;

    #@4
    const/4 v0, 0x0

    #@5
    sput-object v0, Lcom/apportable/BK2SocialShareManager;->instance:Lcom/apportable/BK2SocialShareManager;

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const v0, 0xface

    #@7
    iput v0, p0, Lcom/apportable/BK2SocialShareManager;->REQUEST_CODE:I

    #@9
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v0, p0, Lcom/apportable/BK2SocialShareManager;->urls:Ljava/util/List;

    #@10
    new-instance v0, Ljava/util/ArrayList;

    #@12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@15
    iput-object v0, p0, Lcom/apportable/BK2SocialShareManager;->images:Ljava/util/ArrayList;

    #@17
    iput-object v1, p0, Lcom/apportable/BK2SocialShareManager;->initialText:Ljava/lang/String;

    #@19
    iput-object v1, p0, Lcom/apportable/BK2SocialShareManager;->activity:Landroid/app/Activity;

    #@1b
    sget-object v0, Lcom/apportable/BK2SocialShareManager;->instance:Lcom/apportable/BK2SocialShareManager;

    #@1d
    if-eqz v0, :cond_20

    #@1f
    :goto_1f
    return-void

    #@20
    :cond_20
    sput-object p0, Lcom/apportable/BK2SocialShareManager;->instance:Lcom/apportable/BK2SocialShareManager;

    #@22
    iput-object p1, p0, Lcom/apportable/BK2SocialShareManager;->activity:Landroid/app/Activity;

    #@24
    goto :goto_1f
.end method

.method private findExistingPackageName([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    const-string v1, "text/plain"

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@a
    iget-object v1, p0, Lcom/apportable/BK2SocialShareManager;->activity:Landroid/app/Activity;

    #@c
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v1

    #@10
    const/high16 v2, 0x10000

    #@12
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@15
    move-result-object v2

    #@16
    const/4 v0, 0x0

    #@17
    move v1, v0

    #@18
    :goto_18
    array-length v0, p1

    #@19
    if-ge v1, v0, :cond_3e

    #@1b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_3a

    #@25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@2b
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2d
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2f
    if-eqz v0, :cond_1f

    #@31
    aget-object v4, p1, v1

    #@33
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_1f

    #@39
    :goto_39
    return-object v0

    #@3a
    :cond_3a
    add-int/lit8 v0, v1, 0x1

    #@3c
    move v1, v0

    #@3d
    goto :goto_18

    #@3e
    :cond_3e
    const/4 v0, 0x0

    #@3f
    goto :goto_39
.end method

.method public static getInstance()Lcom/apportable/BK2SocialShareManager;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/BK2SocialShareManager;->instance:Lcom/apportable/BK2SocialShareManager;

    #@2
    return-object v0
.end method

.method private saveAndReturnShareData([BLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "mounted"

    #@3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_e

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Lcom/apportable/app/VerdeApplication;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string v2, "-screenshot.png"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    new-instance v3, Ljava/io/File;

    #@33
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    const-string v4, "/"

    #@3e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@49
    new-instance v1, Ljava/io/FileOutputStream;

    #@4b
    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@4e
    const/4 v2, 0x0

    #@4f
    array-length v4, p1

    #@50
    invoke-virtual {v1, p1, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    #@53
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_56} :catch_5b

    #@56
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@59
    move-result-object v0

    #@5a
    goto :goto_d

    #@5b
    :catch_5b
    move-exception v1

    #@5c
    sget-object v2, Lcom/apportable/BK2SocialShareManager;->TAG:Ljava/lang/String;

    #@5e
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    goto :goto_d
.end method

.method private sendShare(Ljava/lang/String;)V
    .registers 8

    #@0
    const/4 v5, 0x1

    #@1
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->images:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    if-le v0, v5, :cond_4e

    #@9
    new-instance v0, Landroid/content/Intent;

    #@b
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    #@d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    move-object v1, v0

    #@11
    :goto_11
    if-eqz p1, :cond_16

    #@13
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@16
    :cond_16
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->images:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v0

    #@1c
    if-ge v0, v5, :cond_57

    #@1e
    const-string v0, "text/plain"

    #@20
    :goto_20
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@23
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->initialText:Ljava/lang/String;

    #@25
    if-eqz v0, :cond_5a

    #@27
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->initialText:Ljava/lang/String;

    #@29
    :goto_29
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2e
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->urls:Ljava/util/List;

    #@30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v3

    #@34
    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_5d

    #@3a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Ljava/lang/String;

    #@40
    const-string v4, " "

    #@42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    goto :goto_34

    #@4e
    :cond_4e
    new-instance v0, Landroid/content/Intent;

    #@50
    const-string v1, "android.intent.action.SEND"

    #@52
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@55
    move-object v1, v0

    #@56
    goto :goto_11

    #@57
    :cond_57
    const-string v0, "image/png"

    #@59
    goto :goto_20

    #@5a
    :cond_5a
    const-string v0, ""

    #@5c
    goto :goto_29

    #@5d
    :cond_5d
    const-string v0, "android.intent.extra.TEXT"

    #@5f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@66
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->images:Ljava/util/ArrayList;

    #@68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6b
    move-result v0

    #@6c
    if-ne v0, v5, :cond_94

    #@6e
    const-string v2, "android.intent.extra.STREAM"

    #@70
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->images:Ljava/util/ArrayList;

    #@72
    const/4 v3, 0x0

    #@73
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@76
    move-result-object v0

    #@77
    check-cast v0, Landroid/os/Parcelable;

    #@79
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@7c
    :cond_7c
    :goto_7c
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->activity:Landroid/app/Activity;

    #@7e
    const-string v2, "Share"

    #@80
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@83
    move-result-object v1

    #@84
    const v2, 0xface

    #@87
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@8a
    const/4 v0, 0x0

    #@8b
    iput-object v0, p0, Lcom/apportable/BK2SocialShareManager;->initialText:Ljava/lang/String;

    #@8d
    invoke-virtual {p0}, Lcom/apportable/BK2SocialShareManager;->removeAllImages()V

    #@90
    invoke-virtual {p0}, Lcom/apportable/BK2SocialShareManager;->removeAllURLs()V

    #@93
    return-void

    #@94
    :cond_94
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->images:Ljava/util/ArrayList;

    #@96
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@99
    move-result v0

    #@9a
    if-le v0, v5, :cond_7c

    #@9c
    const-string v0, "android.intent.extra.STREAM"

    #@9e
    iget-object v2, p0, Lcom/apportable/BK2SocialShareManager;->images:Ljava/util/ArrayList;

    #@a0
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@a3
    goto :goto_7c
.end method


# virtual methods
.method public addImage([BLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/BK2SocialShareManager;->saveAndReturnShareData([BLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    iget-object v1, p0, Lcom/apportable/BK2SocialShareManager;->images:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b
    :cond_b
    return-void
.end method

.method public addInitialText(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/BK2SocialShareManager;->initialText:Ljava/lang/String;

    #@2
    return-void
.end method

.method public addURL(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->urls:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public canSendFacebook()Z
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/apportable/BK2SocialShareManager;->findFacebookPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/apportable/BK2SocialShareManager;->TAG:Ljava/lang/String;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v3, "canSendFacebook:"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    const/4 v0, 0x1

    #@1d
    return v0
.end method

.method public canSendTweet()Z
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/apportable/BK2SocialShareManager;->findTwitterPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/apportable/BK2SocialShareManager;->TAG:Ljava/lang/String;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v3, "canSendTweet:"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    const/4 v0, 0x1

    #@1d
    return v0
.end method

.method public findFacebookPackageName()Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    const-string v2, "com.facebook.katana"

    #@6
    aput-object v2, v0, v1

    #@8
    invoke-direct {p0, v0}, Lcom/apportable/BK2SocialShareManager;->findExistingPackageName([Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public findTwitterPackageName()Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    const-string v2, "com.twitter.android"

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    const-string v2, "com.twidroid"

    #@b
    aput-object v2, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    const-string v2, "com.handmark.tweetcaster"

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x3

    #@13
    const-string v2, "com.thedeck.android"

    #@15
    aput-object v2, v0, v1

    #@17
    invoke-direct {p0, v0}, Lcom/apportable/BK2SocialShareManager;->findExistingPackageName([Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public removeAllImages()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->images:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    return-void
.end method

.method public removeAllURLs()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->urls:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    return-void
.end method

.method public sendShareWithFacebook()V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/apportable/BK2SocialShareManager;->findFacebookPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_3f

    #@6
    const-string v0, "http://www.facebook.com/sharer/sharer.php"

    #@8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/apportable/BK2SocialShareManager;->urls:Ljava/util/List;

    #@e
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@11
    move-result v1

    #@12
    if-lez v1, :cond_2f

    #@14
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@17
    move-result-object v0

    #@18
    const-string v1, "u"

    #@1a
    iget-object v2, p0, Lcom/apportable/BK2SocialShareManager;->urls:Ljava/util/List;

    #@1c
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    const/4 v3, 0x0

    #@21
    aget-object v2, v2, v3

    #@23
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@2e
    move-result-object v0

    #@2f
    :cond_2f
    new-instance v1, Landroid/content/Intent;

    #@31
    const-string v2, "android.intent.action.VIEW"

    #@33
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@36
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->activity:Landroid/app/Activity;

    #@38
    const v2, 0xface

    #@3b
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@3e
    :goto_3e
    return-void

    #@3f
    :cond_3f
    invoke-direct {p0, v0}, Lcom/apportable/BK2SocialShareManager;->sendShare(Ljava/lang/String;)V

    #@42
    goto :goto_3e
.end method

.method public sendShareWithSocialNetworks()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/apportable/BK2SocialShareManager;->sendShare(Ljava/lang/String;)V

    #@4
    return-void
.end method

.method public sendShareWithTwitter()V
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/apportable/BK2SocialShareManager;->findTwitterPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_5c

    #@6
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->initialText:Ljava/lang/String;

    #@8
    if-eqz v0, :cond_31

    #@a
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->initialText:Ljava/lang/String;

    #@c
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11
    iget-object v0, p0, Lcom/apportable/BK2SocialShareManager;->urls:Ljava/util/List;

    #@13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_34

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/String;

    #@23
    const-string v3, " "

    #@25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    goto :goto_17

    #@31
    :cond_31
    const-string v0, ""

    #@33
    goto :goto_c

    #@34
    :cond_34
    new-instance v0, Landroid/content/Intent;

    #@36
    const-string v2, "android.intent.action.VIEW"

    #@38
    const-string v3, "http://twitter.com/intent/tweet"

    #@3a
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@41
    move-result-object v3

    #@42
    const-string v4, "text"

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@53
    iget-object v1, p0, Lcom/apportable/BK2SocialShareManager;->activity:Landroid/app/Activity;

    #@55
    const v2, 0xface

    #@58
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@5b
    :goto_5b
    return-void

    #@5c
    :cond_5c
    invoke-direct {p0, v0}, Lcom/apportable/BK2SocialShareManager;->sendShare(Ljava/lang/String;)V

    #@5f
    goto :goto_5b
.end method
