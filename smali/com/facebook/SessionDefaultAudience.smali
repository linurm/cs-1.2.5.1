.class public final enum Lcom/facebook/SessionDefaultAudience;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/SessionDefaultAudience;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/SessionDefaultAudience;

.field public static final enum EVERYONE:Lcom/facebook/SessionDefaultAudience;

.field public static final enum FRIENDS:Lcom/facebook/SessionDefaultAudience;

.field public static final enum NONE:Lcom/facebook/SessionDefaultAudience;

.field public static final enum ONLY_ME:Lcom/facebook/SessionDefaultAudience;


# instance fields
.field private final nativeProtocolAudience:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    #@0
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    new-instance v0, Lcom/facebook/SessionDefaultAudience;

    #@6
    const-string v1, "NONE"

    #@8
    const/4 v2, 0x0

    #@9
    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/SessionDefaultAudience;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@c
    sput-object v0, Lcom/facebook/SessionDefaultAudience;->NONE:Lcom/facebook/SessionDefaultAudience;

    #@e
    new-instance v0, Lcom/facebook/SessionDefaultAudience;

    #@10
    const-string v1, "ONLY_ME"

    #@12
    const-string v2, "SELF"

    #@14
    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/SessionDefaultAudience;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@17
    sput-object v0, Lcom/facebook/SessionDefaultAudience;->ONLY_ME:Lcom/facebook/SessionDefaultAudience;

    #@19
    new-instance v0, Lcom/facebook/SessionDefaultAudience;

    #@1b
    const-string v1, "FRIENDS"

    #@1d
    const-string v2, "ALL_FRIENDS"

    #@1f
    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/SessionDefaultAudience;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@22
    sput-object v0, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    #@24
    new-instance v0, Lcom/facebook/SessionDefaultAudience;

    #@26
    const-string v1, "EVERYONE"

    #@28
    const-string v2, "EVERYONE"

    #@2a
    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/SessionDefaultAudience;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@2d
    sput-object v0, Lcom/facebook/SessionDefaultAudience;->EVERYONE:Lcom/facebook/SessionDefaultAudience;

    #@2f
    const/4 v0, 0x4

    #@30
    new-array v0, v0, [Lcom/facebook/SessionDefaultAudience;

    #@32
    sget-object v1, Lcom/facebook/SessionDefaultAudience;->NONE:Lcom/facebook/SessionDefaultAudience;

    #@34
    aput-object v1, v0, v3

    #@36
    sget-object v1, Lcom/facebook/SessionDefaultAudience;->ONLY_ME:Lcom/facebook/SessionDefaultAudience;

    #@38
    aput-object v1, v0, v4

    #@3a
    sget-object v1, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    #@3c
    aput-object v1, v0, v5

    #@3e
    sget-object v1, Lcom/facebook/SessionDefaultAudience;->EVERYONE:Lcom/facebook/SessionDefaultAudience;

    #@40
    aput-object v1, v0, v6

    #@42
    sput-object v0, Lcom/facebook/SessionDefaultAudience;->$VALUES:[Lcom/facebook/SessionDefaultAudience;

    #@44
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    iput-object p3, p0, Lcom/facebook/SessionDefaultAudience;->nativeProtocolAudience:Ljava/lang/String;

    #@5
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/SessionDefaultAudience;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/SessionDefaultAudience;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/SessionDefaultAudience;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/SessionDefaultAudience;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/SessionDefaultAudience;->$VALUES:[Lcom/facebook/SessionDefaultAudience;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/SessionDefaultAudience;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/SessionDefaultAudience;

    #@8
    return-object v0
.end method


# virtual methods
.method getNativeProtocolAudience()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/SessionDefaultAudience;->nativeProtocolAudience:Ljava/lang/String;

    #@2
    return-object v0
.end method
