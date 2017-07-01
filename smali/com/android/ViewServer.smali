.class public Lcom/android/ViewServer;
.super Ljava/lang/Object;


# static fields
.field private static sServer:Lcom/android/ViewServer;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/ViewServer;
    .registers 2

    #@0
    sget-object v0, Lcom/android/ViewServer;->sServer:Lcom/android/ViewServer;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Lcom/android/ViewServer;

    #@6
    invoke-direct {v0}, Lcom/android/ViewServer;-><init>()V

    #@9
    sput-object v0, Lcom/android/ViewServer;->sServer:Lcom/android/ViewServer;

    #@b
    :cond_b
    sget-object v0, Lcom/android/ViewServer;->sServer:Lcom/android/ViewServer;

    #@d
    return-object v0
.end method


# virtual methods
.method public addWindow(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public addWindow(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    #@0
    return-void
.end method

.method public removeWindow(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public removeWindow(Landroid/view/View;)V
    .registers 2

    #@0
    return-void
.end method

.method public setFocusedWindow(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public setFocusedWindow(Landroid/view/View;)V
    .registers 2

    #@0
    return-void
.end method
