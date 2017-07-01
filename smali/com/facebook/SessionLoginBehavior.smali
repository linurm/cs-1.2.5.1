.class public final enum Lcom/facebook/SessionLoginBehavior;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/SessionLoginBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/SessionLoginBehavior;

.field public static final enum SSO_ONLY:Lcom/facebook/SessionLoginBehavior;

.field public static final enum SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

.field public static final enum SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;


# instance fields
.field private final allowsKatanaAuth:Z

.field private final allowsWebViewAuth:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    new-instance v0, Lcom/facebook/SessionLoginBehavior;

    #@5
    const-string v1, "SSO_WITH_FALLBACK"

    #@7
    invoke-direct {v0, v1, v3, v2, v2}, Lcom/facebook/SessionLoginBehavior;-><init>(Ljava/lang/String;IZZ)V

    #@a
    sput-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    #@c
    new-instance v0, Lcom/facebook/SessionLoginBehavior;

    #@e
    const-string v1, "SSO_ONLY"

    #@10
    invoke-direct {v0, v1, v2, v2, v3}, Lcom/facebook/SessionLoginBehavior;-><init>(Ljava/lang/String;IZZ)V

    #@13
    sput-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_ONLY:Lcom/facebook/SessionLoginBehavior;

    #@15
    new-instance v0, Lcom/facebook/SessionLoginBehavior;

    #@17
    const-string v1, "SUPPRESS_SSO"

    #@19
    invoke-direct {v0, v1, v4, v3, v2}, Lcom/facebook/SessionLoginBehavior;-><init>(Ljava/lang/String;IZZ)V

    #@1c
    sput-object v0, Lcom/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;

    #@1e
    const/4 v0, 0x3

    #@1f
    new-array v0, v0, [Lcom/facebook/SessionLoginBehavior;

    #@21
    sget-object v1, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    #@23
    aput-object v1, v0, v3

    #@25
    sget-object v1, Lcom/facebook/SessionLoginBehavior;->SSO_ONLY:Lcom/facebook/SessionLoginBehavior;

    #@27
    aput-object v1, v0, v2

    #@29
    sget-object v1, Lcom/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;

    #@2b
    aput-object v1, v0, v4

    #@2d
    sput-object v0, Lcom/facebook/SessionLoginBehavior;->$VALUES:[Lcom/facebook/SessionLoginBehavior;

    #@2f
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    iput-boolean p3, p0, Lcom/facebook/SessionLoginBehavior;->allowsKatanaAuth:Z

    #@5
    iput-boolean p4, p0, Lcom/facebook/SessionLoginBehavior;->allowsWebViewAuth:Z

    #@7
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/SessionLoginBehavior;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/SessionLoginBehavior;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/SessionLoginBehavior;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/SessionLoginBehavior;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->$VALUES:[Lcom/facebook/SessionLoginBehavior;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/SessionLoginBehavior;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/SessionLoginBehavior;

    #@8
    return-object v0
.end method


# virtual methods
.method allowsKatanaAuth()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/SessionLoginBehavior;->allowsKatanaAuth:Z

    #@2
    return v0
.end method

.method allowsWebViewAuth()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/SessionLoginBehavior;->allowsWebViewAuth:Z

    #@2
    return v0
.end method
