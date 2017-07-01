.class public Lcom/facebook/LegacyHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static extendTokenCompleted(Lcom/facebook/Session;Landroid/os/Bundle;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/Session;->extendTokenCompleted(Landroid/os/Bundle;)V

    #@3
    return-void
.end method
