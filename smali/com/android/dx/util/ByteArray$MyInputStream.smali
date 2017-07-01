.class public Lcom/android/dx/util/ByteArray$MyInputStream;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/util/ByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyInputStream"
.end annotation


# instance fields
.field private cursor:I

.field private mark:I

.field final synthetic this$0:Lcom/android/dx/util/ByteArray;


# direct methods
.method public constructor <init>(Lcom/android/dx/util/ByteArray;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    iput-object p1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    #@3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@6
    iput v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    #@8
    iput v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->mark:I

    #@a
    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    #@2
    # getter for: Lcom/android/dx/util/ByteArray;->size:I
    invoke-static {v0}, Lcom/android/dx/util/ByteArray;->access$000(Lcom/android/dx/util/ByteArray;)I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public mark(I)V
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    #@2
    iput v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->mark:I

    #@4
    return-void
.end method

.method public markSupported()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    #@2
    iget-object v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    #@4
    # getter for: Lcom/android/dx/util/ByteArray;->size:I
    invoke-static {v1}, Lcom/android/dx/util/ByteArray;->access$000(Lcom/android/dx/util/ByteArray;)I

    #@7
    move-result v1

    #@8
    if-lt v0, v1, :cond_c

    #@a
    const/4 v0, -0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    #@e
    iget v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    #@10
    # invokes: Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I
    invoke-static {v0, v1}, Lcom/android/dx/util/ByteArray;->access$100(Lcom/android/dx/util/ByteArray;I)I

    #@13
    move-result v0

    #@14
    iget v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    iput v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    #@1a
    goto :goto_b
.end method

.method public read([BII)I
    .registers 7

    #@0
    add-int v0, p2, p3

    #@2
    array-length v1, p1

    #@3
    if-le v0, v1, :cond_8

    #@5
    array-length v0, p1

    #@6
    sub-int p3, v0, p2

    #@8
    :cond_8
    iget-object v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    #@a
    # getter for: Lcom/android/dx/util/ByteArray;->size:I
    invoke-static {v0}, Lcom/android/dx/util/ByteArray;->access$000(Lcom/android/dx/util/ByteArray;)I

    #@d
    move-result v0

    #@e
    iget v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    #@10
    sub-int/2addr v0, v1

    #@11
    if-le p3, v0, :cond_14

    #@13
    move p3, v0

    #@14
    :cond_14
    iget-object v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    #@16
    # getter for: Lcom/android/dx/util/ByteArray;->bytes:[B
    invoke-static {v0}, Lcom/android/dx/util/ByteArray;->access$200(Lcom/android/dx/util/ByteArray;)[B

    #@19
    move-result-object v0

    #@1a
    iget v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    #@1c
    iget-object v2, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    #@1e
    # getter for: Lcom/android/dx/util/ByteArray;->start:I
    invoke-static {v2}, Lcom/android/dx/util/ByteArray;->access$300(Lcom/android/dx/util/ByteArray;)I

    #@21
    move-result v2

    #@22
    add-int/2addr v1, v2

    #@23
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@26
    iget v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    #@28
    add-int/2addr v0, p3

    #@29
    iput v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    #@2b
    return p3
.end method

.method public reset()V
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->mark:I

    #@2
    iput v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    #@4
    return-void
.end method
