.class public final enum Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$DialogFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageDialogFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;",
        ">;",
        "Lcom/facebook/widget/FacebookDialog$DialogFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

.field public static final enum MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

.field public static final enum PHOTOS:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    new-instance v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    #@4
    const-string v1, "MESSAGE_DIALOG"

    #@6
    const v2, 0x13350ac

    #@9
    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;-><init>(Ljava/lang/String;II)V

    #@c
    sput-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    #@e
    new-instance v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    #@10
    const-string v1, "PHOTOS"

    #@12
    const v2, 0x1335124

    #@15
    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;-><init>(Ljava/lang/String;II)V

    #@18
    sput-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->PHOTOS:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    #@1a
    const/4 v0, 0x2

    #@1b
    new-array v0, v0, [Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    #@1d
    sget-object v1, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    #@1f
    aput-object v1, v0, v3

    #@21
    sget-object v1, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->PHOTOS:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    #@23
    aput-object v1, v0, v4

    #@25
    sput-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->$VALUES:[Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    #@27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    iput p3, p0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->minVersion:I

    #@5
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->$VALUES:[Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    #@8
    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    #@2
    return-object v0
.end method

.method public getMinVersion()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->minVersion:I

    #@2
    return v0
.end method
