.class Lcom/android/dx/util/ListIntSet$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/util/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/util/ListIntSet;->iterator()Lcom/android/dx/util/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private idx:I

.field final synthetic this$0:Lcom/android/dx/util/ListIntSet;


# direct methods
.method constructor <init>(Lcom/android/dx/util/ListIntSet;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/android/dx/util/ListIntSet$1;->this$0:Lcom/android/dx/util/ListIntSet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/dx/util/ListIntSet$1;->idx:I

    #@8
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/util/ListIntSet$1;->idx:I

    #@2
    iget-object v1, p0, Lcom/android/dx/util/ListIntSet$1;->this$0:Lcom/android/dx/util/ListIntSet;

    #@4
    iget-object v1, v1, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@6
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    #@9
    move-result v1

    #@a
    if-ge v0, v1, :cond_e

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

.method public next()I
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/android/dx/util/ListIntSet$1;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_c

    #@6
    new-instance v0, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet$1;->this$0:Lcom/android/dx/util/ListIntSet;

    #@e
    iget-object v0, v0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    #@10
    iget v1, p0, Lcom/android/dx/util/ListIntSet$1;->idx:I

    #@12
    add-int/lit8 v2, v1, 0x1

    #@14
    iput v2, p0, Lcom/android/dx/util/ListIntSet$1;->idx:I

    #@16
    invoke-virtual {v0, v1}, Lcom/android/dx/util/IntList;->get(I)I

    #@19
    move-result v0

    #@1a
    return v0
.end method
