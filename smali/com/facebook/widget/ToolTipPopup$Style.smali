.class public final enum Lcom/facebook/widget/ToolTipPopup$Style;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/ToolTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/widget/ToolTipPopup$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/widget/ToolTipPopup$Style;

.field public static final enum BLACK:Lcom/facebook/widget/ToolTipPopup$Style;

.field public static final enum BLUE:Lcom/facebook/widget/ToolTipPopup$Style;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    new-instance v0, Lcom/facebook/widget/ToolTipPopup$Style;

    #@4
    const-string v1, "BLUE"

    #@6
    invoke-direct {v0, v1, v2}, Lcom/facebook/widget/ToolTipPopup$Style;-><init>(Ljava/lang/String;I)V

    #@9
    sput-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/widget/ToolTipPopup$Style;

    #@b
    new-instance v0, Lcom/facebook/widget/ToolTipPopup$Style;

    #@d
    const-string v1, "BLACK"

    #@f
    invoke-direct {v0, v1, v3}, Lcom/facebook/widget/ToolTipPopup$Style;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->BLACK:Lcom/facebook/widget/ToolTipPopup$Style;

    #@14
    const/4 v0, 0x2

    #@15
    new-array v0, v0, [Lcom/facebook/widget/ToolTipPopup$Style;

    #@17
    sget-object v1, Lcom/facebook/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/widget/ToolTipPopup$Style;

    #@19
    aput-object v1, v0, v2

    #@1b
    sget-object v1, Lcom/facebook/widget/ToolTipPopup$Style;->BLACK:Lcom/facebook/widget/ToolTipPopup$Style;

    #@1d
    aput-object v1, v0, v3

    #@1f
    sput-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->$VALUES:[Lcom/facebook/widget/ToolTipPopup$Style;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/ToolTipPopup$Style;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/widget/ToolTipPopup$Style;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/widget/ToolTipPopup$Style;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/widget/ToolTipPopup$Style;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->$VALUES:[Lcom/facebook/widget/ToolTipPopup$Style;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/widget/ToolTipPopup$Style;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/widget/ToolTipPopup$Style;

    #@8
    return-object v0
.end method
