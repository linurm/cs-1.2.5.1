.class public final enum Lcom/facebook/HttpMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/HttpMethod;

.field public static final enum DELETE:Lcom/facebook/HttpMethod;

.field public static final enum GET:Lcom/facebook/HttpMethod;

.field public static final enum POST:Lcom/facebook/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    new-instance v0, Lcom/facebook/HttpMethod;

    #@5
    const-string v1, "GET"

    #@7
    invoke-direct {v0, v1, v2}, Lcom/facebook/HttpMethod;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    #@c
    new-instance v0, Lcom/facebook/HttpMethod;

    #@e
    const-string v1, "POST"

    #@10
    invoke-direct {v0, v1, v3}, Lcom/facebook/HttpMethod;-><init>(Ljava/lang/String;I)V

    #@13
    sput-object v0, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    #@15
    new-instance v0, Lcom/facebook/HttpMethod;

    #@17
    const-string v1, "DELETE"

    #@19
    invoke-direct {v0, v1, v4}, Lcom/facebook/HttpMethod;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v0, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    #@1e
    const/4 v0, 0x3

    #@1f
    new-array v0, v0, [Lcom/facebook/HttpMethod;

    #@21
    sget-object v1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    #@23
    aput-object v1, v0, v2

    #@25
    sget-object v1, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    #@27
    aput-object v1, v0, v3

    #@29
    sget-object v1, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    #@2b
    aput-object v1, v0, v4

    #@2d
    sput-object v0, Lcom/facebook/HttpMethod;->$VALUES:[Lcom/facebook/HttpMethod;

    #@2f
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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/HttpMethod;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/HttpMethod;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/HttpMethod;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/HttpMethod;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/HttpMethod;->$VALUES:[Lcom/facebook/HttpMethod;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/HttpMethod;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/HttpMethod;

    #@8
    return-object v0
.end method
