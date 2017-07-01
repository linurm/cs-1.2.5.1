.class public final Lcom/facebook/model/OpenGraphAction$Factory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/model/OpenGraphAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createForPost()Lcom/facebook/model/OpenGraphAction;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-class v0, Lcom/facebook/model/OpenGraphAction;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/facebook/model/OpenGraphAction$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/OpenGraphAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/facebook/model/OpenGraphAction;

    #@6
    if-eqz p1, :cond_b

    #@8
    invoke-interface {v0, p1}, Lcom/facebook/model/OpenGraphAction;->setType(Ljava/lang/String;)V

    #@b
    :cond_b
    return-object v0
.end method

.method public static createForPost(Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/model/OpenGraphAction;

    #@2
    invoke-static {v0, p0}, Lcom/facebook/model/OpenGraphAction$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
