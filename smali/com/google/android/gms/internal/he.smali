.class public Lcom/google/android/gms/internal/he;
.super Ljava/lang/Object;


# static fields
.field private static final GG:Landroid/net/Uri;

.field private static final GH:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-string v0, "http://plus.google.com/"

    #@2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/internal/he;->GG:Landroid/net/Uri;

    #@8
    sget-object v0, Lcom/google/android/gms/internal/he;->GG:Landroid/net/Uri;

    #@a
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@d
    move-result-object v0

    #@e
    const-string v1, "circles"

    #@10
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@13
    move-result-object v0

    #@14
    const-string v1, "find"

    #@16
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/google/android/gms/internal/he;->GH:Landroid/net/Uri;

    #@20
    return-void
.end method

.method public static aB(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    #@0
    const-string v0, "package"

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    new-instance v1, Landroid/content/Intent;

    #@9
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    #@b
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@11
    return-object v1
.end method

.method private static aC(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    #@0
    const-string v0, "market://details"

    #@2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@9
    move-result-object v0

    #@a
    const-string v1, "id"

    #@c
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static aD(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.action.VIEW"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    invoke-static {p0}, Lcom/google/android/gms/internal/he;->aC(Ljava/lang/String;)Landroid/net/Uri;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@e
    const-string v1, "com.android.vending"

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@13
    const/high16 v1, 0x80000

    #@15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@18
    return-object v0
.end method

.method public static fA()Landroid/content/Intent;
    .registers 2

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.settings.DATE_SETTINGS"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    return-object v0
.end method
