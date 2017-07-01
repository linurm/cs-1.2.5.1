.class final enum Lcom/facebook/AppEventsLogger$FlushReason;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FlushReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/AppEventsLogger$FlushReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/AppEventsLogger$FlushReason;

.field public static final enum EAGER_FLUSHING_EVENT:Lcom/facebook/AppEventsLogger$FlushReason;

.field public static final enum EVENT_THRESHOLD:Lcom/facebook/AppEventsLogger$FlushReason;

.field public static final enum EXPLICIT:Lcom/facebook/AppEventsLogger$FlushReason;

.field public static final enum PERSISTED_EVENTS:Lcom/facebook/AppEventsLogger$FlushReason;

.field public static final enum SESSION_CHANGE:Lcom/facebook/AppEventsLogger$FlushReason;

.field public static final enum TIMER:Lcom/facebook/AppEventsLogger$FlushReason;


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
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;

    #@7
    const-string v1, "EXPLICIT"

    #@9
    invoke-direct {v0, v1, v3}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->EXPLICIT:Lcom/facebook/AppEventsLogger$FlushReason;

    #@e
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;

    #@10
    const-string v1, "TIMER"

    #@12
    invoke-direct {v0, v1, v4}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->TIMER:Lcom/facebook/AppEventsLogger$FlushReason;

    #@17
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;

    #@19
    const-string v1, "SESSION_CHANGE"

    #@1b
    invoke-direct {v0, v1, v5}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V

    #@1e
    sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->SESSION_CHANGE:Lcom/facebook/AppEventsLogger$FlushReason;

    #@20
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;

    #@22
    const-string v1, "PERSISTED_EVENTS"

    #@24
    invoke-direct {v0, v1, v6}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V

    #@27
    sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->PERSISTED_EVENTS:Lcom/facebook/AppEventsLogger$FlushReason;

    #@29
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;

    #@2b
    const-string v1, "EVENT_THRESHOLD"

    #@2d
    invoke-direct {v0, v1, v7}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->EVENT_THRESHOLD:Lcom/facebook/AppEventsLogger$FlushReason;

    #@32
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;

    #@34
    const-string v1, "EAGER_FLUSHING_EVENT"

    #@36
    const/4 v2, 0x5

    #@37
    invoke-direct {v0, v1, v2}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->EAGER_FLUSHING_EVENT:Lcom/facebook/AppEventsLogger$FlushReason;

    #@3c
    const/4 v0, 0x6

    #@3d
    new-array v0, v0, [Lcom/facebook/AppEventsLogger$FlushReason;

    #@3f
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->EXPLICIT:Lcom/facebook/AppEventsLogger$FlushReason;

    #@41
    aput-object v1, v0, v3

    #@43
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->TIMER:Lcom/facebook/AppEventsLogger$FlushReason;

    #@45
    aput-object v1, v0, v4

    #@47
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->SESSION_CHANGE:Lcom/facebook/AppEventsLogger$FlushReason;

    #@49
    aput-object v1, v0, v5

    #@4b
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->PERSISTED_EVENTS:Lcom/facebook/AppEventsLogger$FlushReason;

    #@4d
    aput-object v1, v0, v6

    #@4f
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->EVENT_THRESHOLD:Lcom/facebook/AppEventsLogger$FlushReason;

    #@51
    aput-object v1, v0, v7

    #@53
    const/4 v1, 0x5

    #@54
    sget-object v2, Lcom/facebook/AppEventsLogger$FlushReason;->EAGER_FLUSHING_EVENT:Lcom/facebook/AppEventsLogger$FlushReason;

    #@56
    aput-object v2, v0, v1

    #@58
    sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->$VALUES:[Lcom/facebook/AppEventsLogger$FlushReason;

    #@5a
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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AppEventsLogger$FlushReason;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/AppEventsLogger$FlushReason;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/AppEventsLogger$FlushReason;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/AppEventsLogger$FlushReason;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->$VALUES:[Lcom/facebook/AppEventsLogger$FlushReason;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/AppEventsLogger$FlushReason;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/AppEventsLogger$FlushReason;

    #@8
    return-object v0
.end method
