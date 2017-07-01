.class public Lcom/facebook/internal/ImageRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ImageRequest$Builder;,
        Lcom/facebook/internal/ImageRequest$Callback;
    }
.end annotation


# static fields
.field private static final HEIGHT_PARAM:Ljava/lang/String; = "height"

.field private static final MIGRATION_PARAM:Ljava/lang/String; = "migration_overrides"

.field private static final MIGRATION_VALUE:Ljava/lang/String; = "{october_2012:true}"

.field private static final PROFILEPIC_URL_FORMAT:Ljava/lang/String; = "https://graph.facebook.com/%s/picture"

.field public static final UNSPECIFIED_DIMENSION:I = 0x0

.field private static final WIDTH_PARAM:Ljava/lang/String; = "width"


# instance fields
.field private allowCachedRedirects:Z

.field private callback:Lcom/facebook/internal/ImageRequest$Callback;

.field private callerTag:Ljava/lang/Object;

.field private context:Landroid/content/Context;

.field private imageUri:Ljava/net/URI;


# direct methods
.method private constructor <init>(Lcom/facebook/internal/ImageRequest$Builder;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    # getter for: Lcom/facebook/internal/ImageRequest$Builder;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/facebook/internal/ImageRequest$Builder;->access$000(Lcom/facebook/internal/ImageRequest$Builder;)Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/facebook/internal/ImageRequest;->context:Landroid/content/Context;

    #@9
    # getter for: Lcom/facebook/internal/ImageRequest$Builder;->imageUrl:Ljava/net/URI;
    invoke-static {p1}, Lcom/facebook/internal/ImageRequest$Builder;->access$100(Lcom/facebook/internal/ImageRequest$Builder;)Ljava/net/URI;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/facebook/internal/ImageRequest;->imageUri:Ljava/net/URI;

    #@f
    # getter for: Lcom/facebook/internal/ImageRequest$Builder;->callback:Lcom/facebook/internal/ImageRequest$Callback;
    invoke-static {p1}, Lcom/facebook/internal/ImageRequest$Builder;->access$200(Lcom/facebook/internal/ImageRequest$Builder;)Lcom/facebook/internal/ImageRequest$Callback;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/facebook/internal/ImageRequest;->callback:Lcom/facebook/internal/ImageRequest$Callback;

    #@15
    # getter for: Lcom/facebook/internal/ImageRequest$Builder;->allowCachedRedirects:Z
    invoke-static {p1}, Lcom/facebook/internal/ImageRequest$Builder;->access$300(Lcom/facebook/internal/ImageRequest$Builder;)Z

    #@18
    move-result v0

    #@19
    iput-boolean v0, p0, Lcom/facebook/internal/ImageRequest;->allowCachedRedirects:Z

    #@1b
    # getter for: Lcom/facebook/internal/ImageRequest$Builder;->callerTag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/facebook/internal/ImageRequest$Builder;->access$400(Lcom/facebook/internal/ImageRequest$Builder;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    if-nez v0, :cond_29

    #@21
    new-instance v0, Ljava/lang/Object;

    #@23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@26
    :goto_26
    iput-object v0, p0, Lcom/facebook/internal/ImageRequest;->callerTag:Ljava/lang/Object;

    #@28
    return-void

    #@29
    :cond_29
    # getter for: Lcom/facebook/internal/ImageRequest$Builder;->callerTag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/facebook/internal/ImageRequest$Builder;->access$400(Lcom/facebook/internal/ImageRequest$Builder;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    goto :goto_26
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/ImageRequest$Builder;Lcom/facebook/internal/ImageRequest$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/internal/ImageRequest;-><init>(Lcom/facebook/internal/ImageRequest$Builder;)V

    #@3
    return-void
.end method

.method public static getProfilePictureUrl(Ljava/lang/String;II)Ljava/net/URI;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    const/4 v5, 0x0

    #@1
    const-string v0, "userId"

    #@3
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v0

    #@a
    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v1

    #@e
    if-nez v0, :cond_1a

    #@10
    if-nez v1, :cond_1a

    #@12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string v1, "Either width or height must be greater than 0"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    :cond_1a
    new-instance v2, Landroid/net/Uri$Builder;

    #@1c
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    #@1f
    const-string v3, "https://graph.facebook.com/%s/picture"

    #@21
    const/4 v4, 0x1

    #@22
    new-array v4, v4, [Ljava/lang/Object;

    #@24
    aput-object p0, v4, v5

    #@26
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@2d
    move-result-object v2

    #@2e
    if-eqz v1, :cond_39

    #@30
    const-string v3, "height"

    #@32
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@39
    :cond_39
    if-eqz v0, :cond_44

    #@3b
    const-string v1, "width"

    #@3d
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@44
    :cond_44
    const-string v0, "migration_overrides"

    #@46
    const-string v1, "{october_2012:true}"

    #@48
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@4b
    new-instance v0, Ljava/net/URI;

    #@4d
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@54
    return-object v0
.end method


# virtual methods
.method public getCallback()Lcom/facebook/internal/ImageRequest$Callback;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/ImageRequest;->callback:Lcom/facebook/internal/ImageRequest$Callback;

    #@2
    return-object v0
.end method

.method public getCallerTag()Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/ImageRequest;->callerTag:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/ImageRequest;->context:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getImageUri()Ljava/net/URI;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/ImageRequest;->imageUri:Ljava/net/URI;

    #@2
    return-object v0
.end method

.method public isCachedRedirectAllowed()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/internal/ImageRequest;->allowCachedRedirects:Z

    #@2
    return v0
.end method
