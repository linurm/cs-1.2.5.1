.class public Lbolts/AppLink$Target;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/AppLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Target"
.end annotation


# instance fields
.field private final appName:Ljava/lang/String;

.field private final className:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lbolts/AppLink$Target;->packageName:Ljava/lang/String;

    #@5
    iput-object p2, p0, Lbolts/AppLink$Target;->className:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lbolts/AppLink$Target;->url:Landroid/net/Uri;

    #@9
    iput-object p4, p0, Lbolts/AppLink$Target;->appName:Ljava/lang/String;

    #@b
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lbolts/AppLink$Target;->appName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lbolts/AppLink$Target;->className:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lbolts/AppLink$Target;->packageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lbolts/AppLink$Target;->url:Landroid/net/Uri;

    #@2
    return-object v0
.end method
