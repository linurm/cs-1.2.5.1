.class public abstract enum Lcom/google/dexmaker/Comparison;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/dexmaker/Comparison;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/dexmaker/Comparison;

.field public static final enum EQ:Lcom/google/dexmaker/Comparison;

.field public static final enum GE:Lcom/google/dexmaker/Comparison;

.field public static final enum GT:Lcom/google/dexmaker/Comparison;

.field public static final enum LE:Lcom/google/dexmaker/Comparison;

.field public static final enum LT:Lcom/google/dexmaker/Comparison;

.field public static final enum NE:Lcom/google/dexmaker/Comparison;


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
    new-instance v0, Lcom/google/dexmaker/Comparison$1;

    #@7
    const-string v1, "LT"

    #@9
    invoke-direct {v0, v1, v3}, Lcom/google/dexmaker/Comparison$1;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/google/dexmaker/Comparison;->LT:Lcom/google/dexmaker/Comparison;

    #@e
    new-instance v0, Lcom/google/dexmaker/Comparison$2;

    #@10
    const-string v1, "LE"

    #@12
    invoke-direct {v0, v1, v4}, Lcom/google/dexmaker/Comparison$2;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/google/dexmaker/Comparison;->LE:Lcom/google/dexmaker/Comparison;

    #@17
    new-instance v0, Lcom/google/dexmaker/Comparison$3;

    #@19
    const-string v1, "EQ"

    #@1b
    invoke-direct {v0, v1, v5}, Lcom/google/dexmaker/Comparison$3;-><init>(Ljava/lang/String;I)V

    #@1e
    sput-object v0, Lcom/google/dexmaker/Comparison;->EQ:Lcom/google/dexmaker/Comparison;

    #@20
    new-instance v0, Lcom/google/dexmaker/Comparison$4;

    #@22
    const-string v1, "GE"

    #@24
    invoke-direct {v0, v1, v6}, Lcom/google/dexmaker/Comparison$4;-><init>(Ljava/lang/String;I)V

    #@27
    sput-object v0, Lcom/google/dexmaker/Comparison;->GE:Lcom/google/dexmaker/Comparison;

    #@29
    new-instance v0, Lcom/google/dexmaker/Comparison$5;

    #@2b
    const-string v1, "GT"

    #@2d
    invoke-direct {v0, v1, v7}, Lcom/google/dexmaker/Comparison$5;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v0, Lcom/google/dexmaker/Comparison;->GT:Lcom/google/dexmaker/Comparison;

    #@32
    new-instance v0, Lcom/google/dexmaker/Comparison$6;

    #@34
    const-string v1, "NE"

    #@36
    const/4 v2, 0x5

    #@37
    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/Comparison$6;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v0, Lcom/google/dexmaker/Comparison;->NE:Lcom/google/dexmaker/Comparison;

    #@3c
    const/4 v0, 0x6

    #@3d
    new-array v0, v0, [Lcom/google/dexmaker/Comparison;

    #@3f
    sget-object v1, Lcom/google/dexmaker/Comparison;->LT:Lcom/google/dexmaker/Comparison;

    #@41
    aput-object v1, v0, v3

    #@43
    sget-object v1, Lcom/google/dexmaker/Comparison;->LE:Lcom/google/dexmaker/Comparison;

    #@45
    aput-object v1, v0, v4

    #@47
    sget-object v1, Lcom/google/dexmaker/Comparison;->EQ:Lcom/google/dexmaker/Comparison;

    #@49
    aput-object v1, v0, v5

    #@4b
    sget-object v1, Lcom/google/dexmaker/Comparison;->GE:Lcom/google/dexmaker/Comparison;

    #@4d
    aput-object v1, v0, v6

    #@4f
    sget-object v1, Lcom/google/dexmaker/Comparison;->GT:Lcom/google/dexmaker/Comparison;

    #@51
    aput-object v1, v0, v7

    #@53
    const/4 v1, 0x5

    #@54
    sget-object v2, Lcom/google/dexmaker/Comparison;->NE:Lcom/google/dexmaker/Comparison;

    #@56
    aput-object v2, v0, v1

    #@58
    sput-object v0, Lcom/google/dexmaker/Comparison;->$VALUES:[Lcom/google/dexmaker/Comparison;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/dexmaker/Comparison$1;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/dexmaker/Comparison;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/dexmaker/Comparison;
    .registers 2

    #@0
    const-class v0, Lcom/google/dexmaker/Comparison;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/dexmaker/Comparison;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/google/dexmaker/Comparison;
    .registers 1

    #@0
    sget-object v0, Lcom/google/dexmaker/Comparison;->$VALUES:[Lcom/google/dexmaker/Comparison;

    #@2
    invoke-virtual {v0}, [Lcom/google/dexmaker/Comparison;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/google/dexmaker/Comparison;

    #@8
    return-object v0
.end method


# virtual methods
.method abstract rop(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/code/Rop;
.end method
