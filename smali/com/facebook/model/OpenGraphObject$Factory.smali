.class public final Lcom/facebook/model/OpenGraphObject$Factory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/model/OpenGraphObject;
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

.method public static createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/OpenGraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v3, v2

    #@4
    move-object v4, v2

    #@5
    move-object v5, v2

    #@6
    invoke-static/range {v0 .. v5}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/OpenGraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    const/4 v3, 0x1

    #@1
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lcom/facebook/model/OpenGraphObject;

    #@7
    if-eqz p1, :cond_c

    #@9
    invoke-interface {v0, p1}, Lcom/facebook/model/OpenGraphObject;->setType(Ljava/lang/String;)V

    #@c
    :cond_c
    if-eqz p2, :cond_11

    #@e
    invoke-interface {v0, p2}, Lcom/facebook/model/OpenGraphObject;->setTitle(Ljava/lang/String;)V

    #@11
    :cond_11
    if-eqz p3, :cond_1f

    #@13
    new-array v1, v3, [Ljava/lang/String;

    #@15
    const/4 v2, 0x0

    #@16
    aput-object p3, v1, v2

    #@18
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1b
    move-result-object v1

    #@1c
    invoke-interface {v0, v1}, Lcom/facebook/model/OpenGraphObject;->setImageUrls(Ljava/util/List;)V

    #@1f
    :cond_1f
    if-eqz p4, :cond_24

    #@21
    invoke-interface {v0, p4}, Lcom/facebook/model/OpenGraphObject;->setUrl(Ljava/lang/String;)V

    #@24
    :cond_24
    if-eqz p5, :cond_29

    #@26
    invoke-interface {v0, p5}, Lcom/facebook/model/OpenGraphObject;->setDescription(Ljava/lang/String;)V

    #@29
    :cond_29
    invoke-interface {v0, v3}, Lcom/facebook/model/OpenGraphObject;->setCreateObject(Z)V

    #@2c
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    #@2f
    move-result-object v1

    #@30
    invoke-interface {v0, v1}, Lcom/facebook/model/OpenGraphObject;->setData(Lcom/facebook/model/GraphObject;)V

    #@33
    return-object v0
.end method

.method public static createForPost(Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/model/OpenGraphObject;

    #@2
    invoke-static {v0, p0}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
