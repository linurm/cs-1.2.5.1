.class final enum Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/ssa/back/LivenessAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NextFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

.field public static final enum DONE:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

.field public static final enum LIVE_IN_AT_STATEMENT:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

.field public static final enum LIVE_OUT_AT_BLOCK:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

.field public static final enum LIVE_OUT_AT_STATEMENT:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;


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
    new-instance v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@6
    const-string v1, "LIVE_IN_AT_STATEMENT"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_IN_AT_STATEMENT:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@d
    new-instance v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@f
    const-string v1, "LIVE_OUT_AT_STATEMENT"

    #@11
    invoke-direct {v0, v1, v3}, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;-><init>(Ljava/lang/String;I)V

    #@14
    sput-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_STATEMENT:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@16
    new-instance v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@18
    const-string v1, "LIVE_OUT_AT_BLOCK"

    #@1a
    invoke-direct {v0, v1, v4}, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;-><init>(Ljava/lang/String;I)V

    #@1d
    sput-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_BLOCK:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@1f
    new-instance v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@21
    const-string v1, "DONE"

    #@23
    invoke-direct {v0, v1, v5}, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->DONE:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@28
    const/4 v0, 0x4

    #@29
    new-array v0, v0, [Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@2b
    sget-object v1, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_IN_AT_STATEMENT:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@2d
    aput-object v1, v0, v2

    #@2f
    sget-object v1, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_STATEMENT:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@31
    aput-object v1, v0, v3

    #@33
    sget-object v1, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_BLOCK:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@35
    aput-object v1, v0, v4

    #@37
    sget-object v1, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->DONE:Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@39
    aput-object v1, v0, v5

    #@3b
    sput-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->$VALUES:[Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;
    .registers 2

    #@0
    const-class v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;
    .registers 1

    #@0
    sget-object v0, Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->$VALUES:[Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@2
    invoke-virtual {v0}, [Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    #@8
    return-object v0
.end method
