.class Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;->attach(Lcom/facebook/widget/GraphObjectAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy$1;->this$1:Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDataNeeded()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy$1;->this$1:Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;

    #@2
    iget-object v0, v0, Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    #@4
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectPagingLoader;->isLoading()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_11

    #@a
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy$1;->this$1:Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;

    #@c
    iget-object v0, v0, Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    #@e
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectPagingLoader;->followNextLink()V

    #@11
    :cond_11
    return-void
.end method
