.class public Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
.super Lcom/facebook/widget/WebDialog$BuilderBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/WebDialog$BuilderBase",
        "<",
        "Lcom/facebook/widget/WebDialog$FeedDialogBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final CAPTION_PARAM:Ljava/lang/String; = "caption"

.field private static final DESCRIPTION_PARAM:Ljava/lang/String; = "description"

.field private static final FEED_DIALOG:Ljava/lang/String; = "feed"

.field private static final FROM_PARAM:Ljava/lang/String; = "from"

.field private static final LINK_PARAM:Ljava/lang/String; = "link"

.field private static final NAME_PARAM:Ljava/lang/String; = "name"

.field private static final PICTURE_PARAM:Ljava/lang/String; = "picture"

.field private static final SOURCE_PARAM:Ljava/lang/String; = "source"

.field private static final TO_PARAM:Ljava/lang/String; = "to"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const-string v0, "feed"

    #@2
    invoke-direct {p0, p1, v0}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session;)V
    .registers 5

    #@0
    const-string v0, "feed"

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V
    .registers 5

    #@0
    const-string v0, "feed"

    #@2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    #@0
    const-string v0, "feed"

    #@2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/facebook/widget/WebDialog;
    .registers 2

    #@0
    invoke-super {p0}, Lcom/facebook/widget/WebDialog$BuilderBase;->build()Lcom/facebook/widget/WebDialog;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setCaption(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "caption"

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "description"

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "from"

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-object p0
.end method

.method public setLink(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "link"

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "name"

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-object p0
.end method

.method public setPicture(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "picture"

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "source"

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "to"

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-object p0
.end method
