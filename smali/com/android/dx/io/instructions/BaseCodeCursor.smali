.class public abstract Lcom/android/dx/io/instructions/BaseCodeCursor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/io/instructions/CodeCursor;


# instance fields
.field private final baseAddressMap:Lcom/android/dx/io/instructions/AddressMap;

.field private cursor:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/android/dx/io/instructions/AddressMap;

    #@5
    invoke-direct {v0}, Lcom/android/dx/io/instructions/AddressMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/dx/io/instructions/BaseCodeCursor;->baseAddressMap:Lcom/android/dx/io/instructions/AddressMap;

    #@a
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/android/dx/io/instructions/BaseCodeCursor;->cursor:I

    #@d
    return-void
.end method


# virtual methods
.method protected final advance(I)V
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/BaseCodeCursor;->cursor:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Lcom/android/dx/io/instructions/BaseCodeCursor;->cursor:I

    #@5
    return-void
.end method

.method public final baseAddressForCursor()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/io/instructions/BaseCodeCursor;->baseAddressMap:Lcom/android/dx/io/instructions/AddressMap;

    #@2
    iget v1, p0, Lcom/android/dx/io/instructions/BaseCodeCursor;->cursor:I

    #@4
    invoke-virtual {v0, v1}, Lcom/android/dx/io/instructions/AddressMap;->get(I)I

    #@7
    move-result v0

    #@8
    if-ltz v0, :cond_b

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    iget v0, p0, Lcom/android/dx/io/instructions/BaseCodeCursor;->cursor:I

    #@d
    goto :goto_a
.end method

.method public final cursor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/instructions/BaseCodeCursor;->cursor:I

    #@2
    return v0
.end method

.method public final setBaseAddress(II)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/io/instructions/BaseCodeCursor;->baseAddressMap:Lcom/android/dx/io/instructions/AddressMap;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/dx/io/instructions/AddressMap;->put(II)V

    #@5
    return-void
.end method
