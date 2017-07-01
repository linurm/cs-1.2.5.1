.class final enum Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SuppressionTimeoutBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

.field public static final enum RESET_TIMEOUT_WHEN_LOG_ATTEMPTED:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

.field public static final enum RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    new-instance v0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@4
    const-string v1, "RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL"

    #@6
    invoke-direct {v0, v1, v2}, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;-><init>(Ljava/lang/String;I)V

    #@9
    sput-object v0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@b
    new-instance v0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@d
    const-string v1, "RESET_TIMEOUT_WHEN_LOG_ATTEMPTED"

    #@f
    invoke-direct {v0, v1, v3}, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->RESET_TIMEOUT_WHEN_LOG_ATTEMPTED:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@14
    const/4 v0, 0x2

    #@15
    new-array v0, v0, [Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@17
    sget-object v1, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@19
    aput-object v1, v0, v2

    #@1b
    sget-object v1, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->RESET_TIMEOUT_WHEN_LOG_ATTEMPTED:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@1d
    aput-object v1, v0, v3

    #@1f
    sput-object v0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->$VALUES:[Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@21
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->$VALUES:[Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@8
    return-object v0
.end method
