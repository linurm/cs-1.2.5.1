.class final enum Lcom/facebook/SessionState$Category;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/SessionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/SessionState$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/SessionState$Category;

.field public static final enum CLOSED_CATEGORY:Lcom/facebook/SessionState$Category;

.field public static final enum CREATED_CATEGORY:Lcom/facebook/SessionState$Category;

.field public static final enum OPENED_CATEGORY:Lcom/facebook/SessionState$Category;


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
    new-instance v0, Lcom/facebook/SessionState$Category;

    #@5
    const-string v1, "CREATED_CATEGORY"

    #@7
    invoke-direct {v0, v1, v2}, Lcom/facebook/SessionState$Category;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Lcom/facebook/SessionState$Category;->CREATED_CATEGORY:Lcom/facebook/SessionState$Category;

    #@c
    new-instance v0, Lcom/facebook/SessionState$Category;

    #@e
    const-string v1, "OPENED_CATEGORY"

    #@10
    invoke-direct {v0, v1, v3}, Lcom/facebook/SessionState$Category;-><init>(Ljava/lang/String;I)V

    #@13
    sput-object v0, Lcom/facebook/SessionState$Category;->OPENED_CATEGORY:Lcom/facebook/SessionState$Category;

    #@15
    new-instance v0, Lcom/facebook/SessionState$Category;

    #@17
    const-string v1, "CLOSED_CATEGORY"

    #@19
    invoke-direct {v0, v1, v4}, Lcom/facebook/SessionState$Category;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v0, Lcom/facebook/SessionState$Category;->CLOSED_CATEGORY:Lcom/facebook/SessionState$Category;

    #@1e
    const/4 v0, 0x3

    #@1f
    new-array v0, v0, [Lcom/facebook/SessionState$Category;

    #@21
    sget-object v1, Lcom/facebook/SessionState$Category;->CREATED_CATEGORY:Lcom/facebook/SessionState$Category;

    #@23
    aput-object v1, v0, v2

    #@25
    sget-object v1, Lcom/facebook/SessionState$Category;->OPENED_CATEGORY:Lcom/facebook/SessionState$Category;

    #@27
    aput-object v1, v0, v3

    #@29
    sget-object v1, Lcom/facebook/SessionState$Category;->CLOSED_CATEGORY:Lcom/facebook/SessionState$Category;

    #@2b
    aput-object v1, v0, v4

    #@2d
    sput-object v0, Lcom/facebook/SessionState$Category;->$VALUES:[Lcom/facebook/SessionState$Category;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/SessionState$Category;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/SessionState$Category;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/SessionState$Category;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/SessionState$Category;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/SessionState$Category;->$VALUES:[Lcom/facebook/SessionState$Category;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/SessionState$Category;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/SessionState$Category;

    #@8
    return-object v0
.end method
