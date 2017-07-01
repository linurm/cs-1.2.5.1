.class public abstract enum Lcom/google/dexmaker/BinaryOp;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/dexmaker/BinaryOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/dexmaker/BinaryOp;

.field public static final enum ADD:Lcom/google/dexmaker/BinaryOp;

.field public static final enum AND:Lcom/google/dexmaker/BinaryOp;

.field public static final enum DIVIDE:Lcom/google/dexmaker/BinaryOp;

.field public static final enum MULTIPLY:Lcom/google/dexmaker/BinaryOp;

.field public static final enum OR:Lcom/google/dexmaker/BinaryOp;

.field public static final enum REMAINDER:Lcom/google/dexmaker/BinaryOp;

.field public static final enum SHIFT_LEFT:Lcom/google/dexmaker/BinaryOp;

.field public static final enum SHIFT_RIGHT:Lcom/google/dexmaker/BinaryOp;

.field public static final enum SUBTRACT:Lcom/google/dexmaker/BinaryOp;

.field public static final enum UNSIGNED_SHIFT_RIGHT:Lcom/google/dexmaker/BinaryOp;

.field public static final enum XOR:Lcom/google/dexmaker/BinaryOp;


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
    new-instance v0, Lcom/google/dexmaker/BinaryOp$1;

    #@7
    const-string v1, "ADD"

    #@9
    invoke-direct {v0, v1, v3}, Lcom/google/dexmaker/BinaryOp$1;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/google/dexmaker/BinaryOp;->ADD:Lcom/google/dexmaker/BinaryOp;

    #@e
    new-instance v0, Lcom/google/dexmaker/BinaryOp$2;

    #@10
    const-string v1, "SUBTRACT"

    #@12
    invoke-direct {v0, v1, v4}, Lcom/google/dexmaker/BinaryOp$2;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/google/dexmaker/BinaryOp;->SUBTRACT:Lcom/google/dexmaker/BinaryOp;

    #@17
    new-instance v0, Lcom/google/dexmaker/BinaryOp$3;

    #@19
    const-string v1, "MULTIPLY"

    #@1b
    invoke-direct {v0, v1, v5}, Lcom/google/dexmaker/BinaryOp$3;-><init>(Ljava/lang/String;I)V

    #@1e
    sput-object v0, Lcom/google/dexmaker/BinaryOp;->MULTIPLY:Lcom/google/dexmaker/BinaryOp;

    #@20
    new-instance v0, Lcom/google/dexmaker/BinaryOp$4;

    #@22
    const-string v1, "DIVIDE"

    #@24
    invoke-direct {v0, v1, v6}, Lcom/google/dexmaker/BinaryOp$4;-><init>(Ljava/lang/String;I)V

    #@27
    sput-object v0, Lcom/google/dexmaker/BinaryOp;->DIVIDE:Lcom/google/dexmaker/BinaryOp;

    #@29
    new-instance v0, Lcom/google/dexmaker/BinaryOp$5;

    #@2b
    const-string v1, "REMAINDER"

    #@2d
    invoke-direct {v0, v1, v7}, Lcom/google/dexmaker/BinaryOp$5;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v0, Lcom/google/dexmaker/BinaryOp;->REMAINDER:Lcom/google/dexmaker/BinaryOp;

    #@32
    new-instance v0, Lcom/google/dexmaker/BinaryOp$6;

    #@34
    const-string v1, "AND"

    #@36
    const/4 v2, 0x5

    #@37
    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/BinaryOp$6;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v0, Lcom/google/dexmaker/BinaryOp;->AND:Lcom/google/dexmaker/BinaryOp;

    #@3c
    new-instance v0, Lcom/google/dexmaker/BinaryOp$7;

    #@3e
    const-string v1, "OR"

    #@40
    const/4 v2, 0x6

    #@41
    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/BinaryOp$7;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v0, Lcom/google/dexmaker/BinaryOp;->OR:Lcom/google/dexmaker/BinaryOp;

    #@46
    new-instance v0, Lcom/google/dexmaker/BinaryOp$8;

    #@48
    const-string v1, "XOR"

    #@4a
    const/4 v2, 0x7

    #@4b
    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/BinaryOp$8;-><init>(Ljava/lang/String;I)V

    #@4e
    sput-object v0, Lcom/google/dexmaker/BinaryOp;->XOR:Lcom/google/dexmaker/BinaryOp;

    #@50
    new-instance v0, Lcom/google/dexmaker/BinaryOp$9;

    #@52
    const-string v1, "SHIFT_LEFT"

    #@54
    const/16 v2, 0x8

    #@56
    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/BinaryOp$9;-><init>(Ljava/lang/String;I)V

    #@59
    sput-object v0, Lcom/google/dexmaker/BinaryOp;->SHIFT_LEFT:Lcom/google/dexmaker/BinaryOp;

    #@5b
    new-instance v0, Lcom/google/dexmaker/BinaryOp$10;

    #@5d
    const-string v1, "SHIFT_RIGHT"

    #@5f
    const/16 v2, 0x9

    #@61
    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/BinaryOp$10;-><init>(Ljava/lang/String;I)V

    #@64
    sput-object v0, Lcom/google/dexmaker/BinaryOp;->SHIFT_RIGHT:Lcom/google/dexmaker/BinaryOp;

    #@66
    new-instance v0, Lcom/google/dexmaker/BinaryOp$11;

    #@68
    const-string v1, "UNSIGNED_SHIFT_RIGHT"

    #@6a
    const/16 v2, 0xa

    #@6c
    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/BinaryOp$11;-><init>(Ljava/lang/String;I)V

    #@6f
    sput-object v0, Lcom/google/dexmaker/BinaryOp;->UNSIGNED_SHIFT_RIGHT:Lcom/google/dexmaker/BinaryOp;

    #@71
    const/16 v0, 0xb

    #@73
    new-array v0, v0, [Lcom/google/dexmaker/BinaryOp;

    #@75
    sget-object v1, Lcom/google/dexmaker/BinaryOp;->ADD:Lcom/google/dexmaker/BinaryOp;

    #@77
    aput-object v1, v0, v3

    #@79
    sget-object v1, Lcom/google/dexmaker/BinaryOp;->SUBTRACT:Lcom/google/dexmaker/BinaryOp;

    #@7b
    aput-object v1, v0, v4

    #@7d
    sget-object v1, Lcom/google/dexmaker/BinaryOp;->MULTIPLY:Lcom/google/dexmaker/BinaryOp;

    #@7f
    aput-object v1, v0, v5

    #@81
    sget-object v1, Lcom/google/dexmaker/BinaryOp;->DIVIDE:Lcom/google/dexmaker/BinaryOp;

    #@83
    aput-object v1, v0, v6

    #@85
    sget-object v1, Lcom/google/dexmaker/BinaryOp;->REMAINDER:Lcom/google/dexmaker/BinaryOp;

    #@87
    aput-object v1, v0, v7

    #@89
    const/4 v1, 0x5

    #@8a
    sget-object v2, Lcom/google/dexmaker/BinaryOp;->AND:Lcom/google/dexmaker/BinaryOp;

    #@8c
    aput-object v2, v0, v1

    #@8e
    const/4 v1, 0x6

    #@8f
    sget-object v2, Lcom/google/dexmaker/BinaryOp;->OR:Lcom/google/dexmaker/BinaryOp;

    #@91
    aput-object v2, v0, v1

    #@93
    const/4 v1, 0x7

    #@94
    sget-object v2, Lcom/google/dexmaker/BinaryOp;->XOR:Lcom/google/dexmaker/BinaryOp;

    #@96
    aput-object v2, v0, v1

    #@98
    const/16 v1, 0x8

    #@9a
    sget-object v2, Lcom/google/dexmaker/BinaryOp;->SHIFT_LEFT:Lcom/google/dexmaker/BinaryOp;

    #@9c
    aput-object v2, v0, v1

    #@9e
    const/16 v1, 0x9

    #@a0
    sget-object v2, Lcom/google/dexmaker/BinaryOp;->SHIFT_RIGHT:Lcom/google/dexmaker/BinaryOp;

    #@a2
    aput-object v2, v0, v1

    #@a4
    const/16 v1, 0xa

    #@a6
    sget-object v2, Lcom/google/dexmaker/BinaryOp;->UNSIGNED_SHIFT_RIGHT:Lcom/google/dexmaker/BinaryOp;

    #@a8
    aput-object v2, v0, v1

    #@aa
    sput-object v0, Lcom/google/dexmaker/BinaryOp;->$VALUES:[Lcom/google/dexmaker/BinaryOp;

    #@ac
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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/dexmaker/BinaryOp$1;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/dexmaker/BinaryOp;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/dexmaker/BinaryOp;
    .registers 2

    #@0
    const-class v0, Lcom/google/dexmaker/BinaryOp;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/dexmaker/BinaryOp;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/google/dexmaker/BinaryOp;
    .registers 1

    #@0
    sget-object v0, Lcom/google/dexmaker/BinaryOp;->$VALUES:[Lcom/google/dexmaker/BinaryOp;

    #@2
    invoke-virtual {v0}, [Lcom/google/dexmaker/BinaryOp;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/google/dexmaker/BinaryOp;

    #@8
    return-object v0
.end method


# virtual methods
.method abstract rop(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/code/Rop;
.end method
