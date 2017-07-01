.class Landroid/support/v4/util/ArrayMap$1;
.super Landroid/support/v4/util/MapCollections;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/util/ArrayMap;->getCollection()Landroid/support/v4/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/MapCollections",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/util/ArrayMap;


# direct methods
.method constructor <init>(Landroid/support/v4/util/ArrayMap;)V
    .registers 2

    #@0
    iput-object p1, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    #@2
    invoke-direct {p0}, Landroid/support/v4/util/MapCollections;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected colClear()V
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    #@5
    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    #@2
    iget-object v0, v0, Landroid/support/v4/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@4
    shl-int/lit8 v1, p1, 0x1

    #@6
    add-int/2addr v1, p2

    #@7
    aget-object v0, v0, v1

    #@9
    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    #@2
    return-object v0
.end method

.method protected colGetSize()I
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    #@2
    iget v0, v0, Landroid/support/v4/util/ArrayMap;->mSize:I

    #@4
    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .registers 4

    #@0
    if-nez p1, :cond_9

    #@2
    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    #@4
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->indexOfNull()I

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    #@12
    move-result v0

    #@13
    goto :goto_8
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method protected colRemoveAt(I)V
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@5
    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
