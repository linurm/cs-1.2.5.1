.class final enum Lcom/facebook/AppEventsLogger$FlushResult;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FlushResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/AppEventsLogger$FlushResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/AppEventsLogger$FlushResult;

.field public static final enum NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

.field public static final enum SERVER_ERROR:Lcom/facebook/AppEventsLogger$FlushResult;

.field public static final enum SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

.field public static final enum UNKNOWN_ERROR:Lcom/facebook/AppEventsLogger$FlushResult;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    #@0
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushResult;

    #@6
    const-string v1, "SUCCESS"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/facebook/AppEventsLogger$FlushResult;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

    #@d
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushResult;

    #@f
    const-string v1, "SERVER_ERROR"

    #@11
    invoke-direct {v0, v1, v3}, Lcom/facebook/AppEventsLogger$FlushResult;-><init>(Ljava/lang/String;I)V

    #@14
    sput-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->SERVER_ERROR:Lcom/facebook/AppEventsLogger$FlushResult;

    #@16
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushResult;

    #@18
    const-string v1, "NO_CONNECTIVITY"

    #@1a
    invoke-direct {v0, v1, v4}, Lcom/facebook/AppEventsLogger$FlushResult;-><init>(Ljava/lang/String;I)V

    #@1d
    sput-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    #@1f
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushResult;

    #@21
    const-string v1, "UNKNOWN_ERROR"

    #@23
    invoke-direct {v0, v1, v5}, Lcom/facebook/AppEventsLogger$FlushResult;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->UNKNOWN_ERROR:Lcom/facebook/AppEventsLogger$FlushResult;

    #@28
    const/4 v0, 0x4

    #@29
    new-array v0, v0, [Lcom/facebook/AppEventsLogger$FlushResult;

    #@2b
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

    #@2d
    aput-object v1, v0, v2

    #@2f
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushResult;->SERVER_ERROR:Lcom/facebook/AppEventsLogger$FlushResult;

    #@31
    aput-object v1, v0, v3

    #@33
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    #@35
    aput-object v1, v0, v4

    #@37
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushResult;->UNKNOWN_ERROR:Lcom/facebook/AppEventsLogger$FlushResult;

    #@39
    aput-object v1, v0, v5

    #@3b
    sput-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->$VALUES:[Lcom/facebook/AppEventsLogger$FlushResult;

    #@3d
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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AppEventsLogger$FlushResult;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/AppEventsLogger$FlushResult;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/AppEventsLogger$FlushResult;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/AppEventsLogger$FlushResult;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->$VALUES:[Lcom/facebook/AppEventsLogger$FlushResult;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/AppEventsLogger$FlushResult;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/AppEventsLogger$FlushResult;

    #@8
    return-object v0
.end method
