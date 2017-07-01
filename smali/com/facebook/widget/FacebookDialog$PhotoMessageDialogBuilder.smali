.class public Lcom/facebook/widget/FacebookDialog$PhotoMessageDialogBuilder;
.super Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoMessageDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase",
        "<",
        "Lcom/facebook/widget/FacebookDialog$PhotoMessageDialogBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;-><init>(Landroid/app/Activity;)V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/facebook/widget/FacebookDialog;
    .registers 2

    #@0
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->build()Lcom/facebook/widget/FacebookDialog;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic canPresent()Z
    .registers 2

    #@0
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->canPresent()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method getDialogFeatures()Ljava/util/EnumSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    #@2
    sget-object v1, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->PHOTOS:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    #@4
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method getMaximumNumberOfPhotos()I
    .registers 2

    #@0
    sget v0, Lcom/facebook/widget/FacebookDialog$PhotoMessageDialogBuilder;->MAXIMUM_PHOTO_COUNT:I

    #@2
    return v0
.end method
