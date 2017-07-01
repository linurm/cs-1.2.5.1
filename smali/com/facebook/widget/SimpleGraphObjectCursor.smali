.class Lcom/facebook/widget/SimpleGraphObjectCursor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/widget/GraphObjectCursor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/model/GraphObject;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/widget/GraphObjectCursor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private closed:Z

.field private fromCache:Z

.field private graphObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private moreObjectsAvailable:Z

.field private pos:I


# direct methods
.method constructor <init>()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@7
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    #@9
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    #@10
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    #@12
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    #@14
    return-void
.end method

.method constructor <init>(Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@7
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    #@9
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    #@10
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    #@12
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    #@14
    iget v0, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@16
    iput v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@18
    iget-boolean v0, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    #@1a
    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    #@1c
    new-instance v0, Ljava/util/ArrayList;

    #@1e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@21
    iput-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    #@23
    iget-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    #@25
    iget-object v1, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@2a
    iget-boolean v0, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    #@2c
    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    #@2e
    return-void
.end method


# virtual methods
.method public addGraphObjects(Ljava/util/Collection;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;Z)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@5
    iget-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    #@7
    or-int/2addr v0, p2

    #@8
    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    #@a
    return-void
.end method

.method public areMoreObjectsAvailable()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    #@2
    return v0
.end method

.method public close()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    #@3
    return-void
.end method

.method public getCount()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getGraphObject()Lcom/facebook/model/GraphObject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@2
    if-gez v0, :cond_c

    #@4
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    #@6
    const-string v1, "Before first object."

    #@8
    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@e
    iget-object v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v1

    #@14
    if-lt v0, v1, :cond_1e

    #@16
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    #@18
    const-string v1, "After last object."

    #@1a
    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    :cond_1e
    iget-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    #@20
    iget v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/facebook/model/GraphObject;

    #@28
    return-object v0
.end method

.method public getPosition()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@2
    return v0
.end method

.method public isAfterLast()Z
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    iget v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@8
    if-ne v1, v0, :cond_c

    #@a
    :cond_a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method

.method public isBeforeFirst()Z
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@8
    const/4 v1, -0x1

    #@9
    if-ne v0, v1, :cond_d

    #@b
    :cond_b
    const/4 v0, 0x1

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_c
.end method

.method public isClosed()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    #@2
    return v0
.end method

.method public isFirst()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@2
    if-nez v0, :cond_c

    #@4
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method

.method public isFromCache()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    #@2
    return v0
.end method

.method public isLast()Z
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@6
    add-int/lit8 v2, v0, -0x1

    #@8
    if-ne v1, v2, :cond_e

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method public move(I)Z
    .registers 3

    #@0
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@2
    add-int/2addr v0, p1

    #@3
    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public moveToFirst()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public moveToLast()Z
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public moveToNext()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public moveToPosition(I)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    #@4
    move-result v1

    #@5
    if-lt p1, v1, :cond_a

    #@7
    iput v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    if-gez p1, :cond_10

    #@c
    const/4 v1, -0x1

    #@d
    iput v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@f
    goto :goto_9

    #@10
    :cond_10
    iput p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@12
    const/4 v0, 0x1

    #@13
    goto :goto_9
.end method

.method public moveToPrevious()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public setFromCache(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    #@2
    return-void
.end method

.method public setMoreObjectsAvailable(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    #@2
    return-void
.end method
