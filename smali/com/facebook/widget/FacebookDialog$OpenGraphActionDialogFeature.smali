.class public final enum Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$DialogFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpenGraphActionDialogFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;",
        ">;",
        "Lcom/facebook/widget/FacebookDialog$DialogFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

.field public static final enum OG_ACTION_DIALOG:Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v3, 0x0

    #@1
    new-instance v0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    #@3
    const-string v1, "OG_ACTION_DIALOG"

    #@5
    const v2, 0x1332b3a

    #@8
    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;-><init>(Ljava/lang/String;II)V

    #@b
    sput-object v0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;->OG_ACTION_DIALOG:Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    #@d
    const/4 v0, 0x1

    #@e
    new-array v0, v0, [Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    #@10
    sget-object v1, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;->OG_ACTION_DIALOG:Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    #@12
    aput-object v1, v0, v3

    #@14
    sput-object v0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;->$VALUES:[Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    #@16
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
    iput p3, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;->minVersion:I

    #@5
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;->$VALUES:[Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    #@8
    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    #@2
    return-object v0
.end method

.method public getMinVersion()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;->minVersion:I

    #@2
    return v0
.end method
