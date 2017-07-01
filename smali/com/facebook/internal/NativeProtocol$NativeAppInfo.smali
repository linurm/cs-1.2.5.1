.class abstract Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NativeAppInfo"
.end annotation


# static fields
.field private static final FBI_HASH:Ljava/lang/String; = "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

.field private static final FBL_HASH:Ljava/lang/String; = "5e8f16062ea3cd2c4a0d547876baa6f38cabf625"

.field private static final FBR_HASH:Ljava/lang/String; = "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

.field private static final validAppSignatureHashes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
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
    invoke-static {}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->buildAppSignatureHashes()Ljava/util/HashSet;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validAppSignatureHashes:Ljava/util/HashSet;

    #@6
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/NativeProtocol$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;-><init>()V

    #@3
    return-void
.end method

.method private static buildAppSignatureHashes()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    const-string v1, "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

    #@7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@a
    const-string v1, "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

    #@c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@f
    const-string v1, "5e8f16062ea3cd2c4a0d547876baa6f38cabf625"

    #@11
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@14
    return-object v0
.end method


# virtual methods
.method protected abstract getPackage()Ljava/lang/String;
.end method

.method public validateSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    #@4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object v3

    #@8
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@a
    const-string v4, "generic"

    #@c
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_17

    #@12
    and-int/lit8 v2, v3, 0x2

    #@14
    if-eqz v2, :cond_17

    #@16
    :cond_16
    :goto_16
    return v0

    #@17
    :cond_17
    :try_start_17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1a
    move-result-object v2

    #@1b
    const/16 v3, 0x40

    #@1d
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_20} :catch_3c

    #@20
    move-result-object v2

    #@21
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@23
    array-length v4, v3

    #@24
    move v2, v1

    #@25
    :goto_25
    if-ge v2, v4, :cond_3f

    #@27
    aget-object v5, v3, v2

    #@29
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    #@2c
    move-result-object v5

    #@2d
    invoke-static {v5}, Lcom/facebook/internal/Utility;->sha1hash([B)Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    sget-object v6, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validAppSignatureHashes:Ljava/util/HashSet;

    #@33
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@36
    move-result v5

    #@37
    if-nez v5, :cond_16

    #@39
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_25

    #@3c
    :catch_3c
    move-exception v0

    #@3d
    move v0, v1

    #@3e
    goto :goto_16

    #@3f
    :cond_3f
    move v0, v1

    #@40
    goto :goto_16
.end method
