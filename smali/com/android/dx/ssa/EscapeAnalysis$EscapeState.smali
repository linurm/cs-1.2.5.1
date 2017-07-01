.class public final enum Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/ssa/EscapeAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EscapeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

.field public static final enum GLOBAL:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

.field public static final enum INTER:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

.field public static final enum METHOD:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

.field public static final enum NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

.field public static final enum TOP:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    #@0
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    new-instance v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@7
    const-string v1, "TOP"

    #@9
    invoke-direct {v0, v1, v2}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->TOP:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@e
    new-instance v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@10
    const-string v1, "NONE"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@17
    new-instance v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@19
    const-string v1, "METHOD"

    #@1b
    invoke-direct {v0, v1, v4}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;-><init>(Ljava/lang/String;I)V

    #@1e
    sput-object v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->METHOD:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@20
    new-instance v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@22
    const-string v1, "INTER"

    #@24
    invoke-direct {v0, v1, v5}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;-><init>(Ljava/lang/String;I)V

    #@27
    sput-object v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->INTER:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@29
    new-instance v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@2b
    const-string v1, "GLOBAL"

    #@2d
    invoke-direct {v0, v1, v6}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@32
    const/4 v0, 0x5

    #@33
    new-array v0, v0, [Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@35
    sget-object v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->TOP:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@37
    aput-object v1, v0, v2

    #@39
    sget-object v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@3b
    aput-object v1, v0, v3

    #@3d
    sget-object v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->METHOD:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@3f
    aput-object v1, v0, v4

    #@41
    sget-object v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->INTER:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@43
    aput-object v1, v0, v5

    #@45
    sget-object v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@47
    aput-object v1, v0, v6

    #@49
    sput-object v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->$VALUES:[Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@4b
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;
    .registers 2

    #@0
    const-class v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;
    .registers 1

    #@0
    sget-object v0, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->$VALUES:[Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@2
    invoke-virtual {v0}, [Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    #@8
    return-object v0
.end method
