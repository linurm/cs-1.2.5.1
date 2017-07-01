.class public final enum Lcom/facebook/SessionState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/SessionState$Category;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/SessionState;

.field public static final enum CLOSED:Lcom/facebook/SessionState;

.field public static final enum CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

.field public static final enum CREATED:Lcom/facebook/SessionState;

.field public static final enum CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

.field public static final enum OPENED:Lcom/facebook/SessionState;

.field public static final enum OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

.field public static final enum OPENING:Lcom/facebook/SessionState;


# instance fields
.field private final category:Lcom/facebook/SessionState$Category;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    #@0
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    new-instance v0, Lcom/facebook/SessionState;

    #@7
    const-string v1, "CREATED"

    #@9
    sget-object v2, Lcom/facebook/SessionState$Category;->CREATED_CATEGORY:Lcom/facebook/SessionState$Category;

    #@b
    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V

    #@e
    sput-object v0, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    #@10
    new-instance v0, Lcom/facebook/SessionState;

    #@12
    const-string v1, "CREATED_TOKEN_LOADED"

    #@14
    sget-object v2, Lcom/facebook/SessionState$Category;->CREATED_CATEGORY:Lcom/facebook/SessionState$Category;

    #@16
    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V

    #@19
    sput-object v0, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    #@1b
    new-instance v0, Lcom/facebook/SessionState;

    #@1d
    const-string v1, "OPENING"

    #@1f
    sget-object v2, Lcom/facebook/SessionState$Category;->CREATED_CATEGORY:Lcom/facebook/SessionState$Category;

    #@21
    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V

    #@24
    sput-object v0, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    #@26
    new-instance v0, Lcom/facebook/SessionState;

    #@28
    const-string v1, "OPENED"

    #@2a
    sget-object v2, Lcom/facebook/SessionState$Category;->OPENED_CATEGORY:Lcom/facebook/SessionState$Category;

    #@2c
    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V

    #@2f
    sput-object v0, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    #@31
    new-instance v0, Lcom/facebook/SessionState;

    #@33
    const-string v1, "OPENED_TOKEN_UPDATED"

    #@35
    sget-object v2, Lcom/facebook/SessionState$Category;->OPENED_CATEGORY:Lcom/facebook/SessionState$Category;

    #@37
    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V

    #@3a
    sput-object v0, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    #@3c
    new-instance v0, Lcom/facebook/SessionState;

    #@3e
    const-string v1, "CLOSED_LOGIN_FAILED"

    #@40
    const/4 v2, 0x5

    #@41
    sget-object v3, Lcom/facebook/SessionState$Category;->CLOSED_CATEGORY:Lcom/facebook/SessionState$Category;

    #@43
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V

    #@46
    sput-object v0, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    #@48
    new-instance v0, Lcom/facebook/SessionState;

    #@4a
    const-string v1, "CLOSED"

    #@4c
    const/4 v2, 0x6

    #@4d
    sget-object v3, Lcom/facebook/SessionState$Category;->CLOSED_CATEGORY:Lcom/facebook/SessionState$Category;

    #@4f
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V

    #@52
    sput-object v0, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    #@54
    const/4 v0, 0x7

    #@55
    new-array v0, v0, [Lcom/facebook/SessionState;

    #@57
    sget-object v1, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    #@59
    aput-object v1, v0, v4

    #@5b
    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    #@5d
    aput-object v1, v0, v5

    #@5f
    sget-object v1, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    #@61
    aput-object v1, v0, v6

    #@63
    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    #@65
    aput-object v1, v0, v7

    #@67
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    #@69
    aput-object v1, v0, v8

    #@6b
    const/4 v1, 0x5

    #@6c
    sget-object v2, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    #@6e
    aput-object v2, v0, v1

    #@70
    const/4 v1, 0x6

    #@71
    sget-object v2, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    #@73
    aput-object v2, v0, v1

    #@75
    sput-object v0, Lcom/facebook/SessionState;->$VALUES:[Lcom/facebook/SessionState;

    #@77
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/SessionState$Category;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    iput-object p3, p0, Lcom/facebook/SessionState;->category:Lcom/facebook/SessionState$Category;

    #@5
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/SessionState;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/SessionState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/SessionState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/SessionState;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/SessionState;->$VALUES:[Lcom/facebook/SessionState;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/SessionState;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/SessionState;

    #@8
    return-object v0
.end method


# virtual methods
.method public isClosed()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/SessionState;->category:Lcom/facebook/SessionState$Category;

    #@2
    sget-object v1, Lcom/facebook/SessionState$Category;->CLOSED_CATEGORY:Lcom/facebook/SessionState$Category;

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public isOpened()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/SessionState;->category:Lcom/facebook/SessionState$Category;

    #@2
    sget-object v1, Lcom/facebook/SessionState$Category;->OPENED_CATEGORY:Lcom/facebook/SessionState$Category;

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method
