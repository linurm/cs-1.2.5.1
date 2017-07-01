.class public abstract enum Lcom/google/dexmaker/UnaryOp;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/dexmaker/UnaryOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/dexmaker/UnaryOp;

.field public static final enum NEGATE:Lcom/google/dexmaker/UnaryOp;

.field public static final enum NOT:Lcom/google/dexmaker/UnaryOp;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    new-instance v0, Lcom/google/dexmaker/UnaryOp$1;

    #@4
    const-string v1, "NOT"

    #@6
    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/UnaryOp$1;-><init>(Ljava/lang/String;I)V

    #@9
    sput-object v0, Lcom/google/dexmaker/UnaryOp;->NOT:Lcom/google/dexmaker/UnaryOp;

    #@b
    new-instance v0, Lcom/google/dexmaker/UnaryOp$2;

    #@d
    const-string v1, "NEGATE"

    #@f
    invoke-direct {v0, v1, v3}, Lcom/google/dexmaker/UnaryOp$2;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v0, Lcom/google/dexmaker/UnaryOp;->NEGATE:Lcom/google/dexmaker/UnaryOp;

    #@14
    const/4 v0, 0x2

    #@15
    new-array v0, v0, [Lcom/google/dexmaker/UnaryOp;

    #@17
    sget-object v1, Lcom/google/dexmaker/UnaryOp;->NOT:Lcom/google/dexmaker/UnaryOp;

    #@19
    aput-object v1, v0, v2

    #@1b
    sget-object v1, Lcom/google/dexmaker/UnaryOp;->NEGATE:Lcom/google/dexmaker/UnaryOp;

    #@1d
    aput-object v1, v0, v3

    #@1f
    sput-object v0, Lcom/google/dexmaker/UnaryOp;->$VALUES:[Lcom/google/dexmaker/UnaryOp;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/dexmaker/UnaryOp$1;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/dexmaker/UnaryOp;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/dexmaker/UnaryOp;
    .registers 2

    #@0
    const-class v0, Lcom/google/dexmaker/UnaryOp;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/dexmaker/UnaryOp;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/google/dexmaker/UnaryOp;
    .registers 1

    #@0
    sget-object v0, Lcom/google/dexmaker/UnaryOp;->$VALUES:[Lcom/google/dexmaker/UnaryOp;

    #@2
    invoke-virtual {v0}, [Lcom/google/dexmaker/UnaryOp;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/google/dexmaker/UnaryOp;

    #@8
    return-object v0
.end method


# virtual methods
.method abstract rop(Lcom/google/dexmaker/TypeId;)Lcom/android/dx/rop/code/Rop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)",
            "Lcom/android/dx/rop/code/Rop;"
        }
    .end annotation
.end method
