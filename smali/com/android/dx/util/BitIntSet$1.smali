.class Lcom/android/dx/util/BitIntSet$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/util/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/util/BitIntSet;->iterator()Lcom/android/dx/util/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private idx:I

.field final synthetic this$0:Lcom/android/dx/util/BitIntSet;


# direct methods
.method constructor <init>(Lcom/android/dx/util/BitIntSet;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/android/dx/util/BitIntSet$1;->this$0:Lcom/android/dx/util/BitIntSet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet$1;->this$0:Lcom/android/dx/util/BitIntSet;

    #@7
    iget-object v0, v0, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@9
    const/4 v1, 0x0

    #@a
    invoke-static {v0, v1}, Lcom/android/dx/util/Bits;->findFirst([II)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/android/dx/util/BitIntSet$1;->idx:I

    #@10
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/util/BitIntSet$1;->idx:I

    #@2
    if-ltz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public next()I
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/android/dx/util/BitIntSet$1;->hasNext()Z

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
    iget v0, p0, Lcom/android/dx/util/BitIntSet$1;->idx:I

    #@e
    iget-object v1, p0, Lcom/android/dx/util/BitIntSet$1;->this$0:Lcom/android/dx/util/BitIntSet;

    #@10
    iget-object v1, v1, Lcom/android/dx/util/BitIntSet;->bits:[I

    #@12
    iget v2, p0, Lcom/android/dx/util/BitIntSet$1;->idx:I

    #@14
    add-int/lit8 v2, v2, 0x1

    #@16
    invoke-static {v1, v2}, Lcom/android/dx/util/Bits;->findFirst([II)I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Lcom/android/dx/util/BitIntSet$1;->idx:I

    #@1c
    return v0
.end method
