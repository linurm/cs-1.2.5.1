.class public final enum Lcom/facebook/AccessTokenSource;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/AccessTokenSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/AccessTokenSource;

.field public static final enum CLIENT_TOKEN:Lcom/facebook/AccessTokenSource;

.field public static final enum FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;

.field public static final enum FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

.field public static final enum FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

.field public static final enum NONE:Lcom/facebook/AccessTokenSource;

.field public static final enum TEST_USER:Lcom/facebook/AccessTokenSource;

.field public static final enum WEB_VIEW:Lcom/facebook/AccessTokenSource;


# instance fields
.field private final canExtendToken:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    #@0
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    new-instance v0, Lcom/facebook/AccessTokenSource;

    #@7
    const-string v1, "NONE"

    #@9
    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    #@c
    sput-object v0, Lcom/facebook/AccessTokenSource;->NONE:Lcom/facebook/AccessTokenSource;

    #@e
    new-instance v0, Lcom/facebook/AccessTokenSource;

    #@10
    const-string v1, "FACEBOOK_APPLICATION_WEB"

    #@12
    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    #@15
    sput-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    #@17
    new-instance v0, Lcom/facebook/AccessTokenSource;

    #@19
    const-string v1, "FACEBOOK_APPLICATION_NATIVE"

    #@1b
    invoke-direct {v0, v1, v5, v3}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    #@1e
    sput-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;

    #@20
    new-instance v0, Lcom/facebook/AccessTokenSource;

    #@22
    const-string v1, "FACEBOOK_APPLICATION_SERVICE"

    #@24
    invoke-direct {v0, v1, v6, v3}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    #@27
    sput-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    #@29
    new-instance v0, Lcom/facebook/AccessTokenSource;

    #@2b
    const-string v1, "WEB_VIEW"

    #@2d
    invoke-direct {v0, v1, v7, v4}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    #@30
    sput-object v0, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    #@32
    new-instance v0, Lcom/facebook/AccessTokenSource;

    #@34
    const-string v1, "TEST_USER"

    #@36
    const/4 v2, 0x5

    #@37
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    #@3a
    sput-object v0, Lcom/facebook/AccessTokenSource;->TEST_USER:Lcom/facebook/AccessTokenSource;

    #@3c
    new-instance v0, Lcom/facebook/AccessTokenSource;

    #@3e
    const-string v1, "CLIENT_TOKEN"

    #@40
    const/4 v2, 0x6

    #@41
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    #@44
    sput-object v0, Lcom/facebook/AccessTokenSource;->CLIENT_TOKEN:Lcom/facebook/AccessTokenSource;

    #@46
    const/4 v0, 0x7

    #@47
    new-array v0, v0, [Lcom/facebook/AccessTokenSource;

    #@49
    sget-object v1, Lcom/facebook/AccessTokenSource;->NONE:Lcom/facebook/AccessTokenSource;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    #@4f
    aput-object v1, v0, v3

    #@51
    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;

    #@53
    aput-object v1, v0, v5

    #@55
    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    #@57
    aput-object v1, v0, v6

    #@59
    sget-object v1, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    #@5b
    aput-object v1, v0, v7

    #@5d
    const/4 v1, 0x5

    #@5e
    sget-object v2, Lcom/facebook/AccessTokenSource;->TEST_USER:Lcom/facebook/AccessTokenSource;

    #@60
    aput-object v2, v0, v1

    #@62
    const/4 v1, 0x6

    #@63
    sget-object v2, Lcom/facebook/AccessTokenSource;->CLIENT_TOKEN:Lcom/facebook/AccessTokenSource;

    #@65
    aput-object v2, v0, v1

    #@67
    sput-object v0, Lcom/facebook/AccessTokenSource;->$VALUES:[Lcom/facebook/AccessTokenSource;

    #@69
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    iput-boolean p3, p0, Lcom/facebook/AccessTokenSource;->canExtendToken:Z

    #@5
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AccessTokenSource;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/AccessTokenSource;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/AccessTokenSource;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/AccessTokenSource;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/AccessTokenSource;->$VALUES:[Lcom/facebook/AccessTokenSource;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/AccessTokenSource;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/AccessTokenSource;

    #@8
    return-object v0
.end method


# virtual methods
.method canExtendToken()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/AccessTokenSource;->canExtendToken:Z

    #@2
    return v0
.end method
