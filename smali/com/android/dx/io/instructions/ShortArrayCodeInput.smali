.class public final Lcom/android/dx/io/instructions/ShortArrayCodeInput;
.super Lcom/android/dx/io/instructions/BaseCodeCursor;

# interfaces
.implements Lcom/android/dx/io/instructions/CodeInput;


# instance fields
.field private final array:[S


# direct methods
.method public constructor <init>([S)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/android/dx/io/instructions/BaseCodeCursor;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "array == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iput-object p1, p0, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->array:[S

    #@f
    return-void
.end method


# virtual methods
.method public hasMore()Z
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->cursor()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->array:[S

    #@6
    array-length v1, v1

    #@7
    if-ge v0, v1, :cond_b

    #@9
    const/4 v0, 0x1

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_a
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->array:[S

    #@2
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->cursor()I

    #@5
    move-result v1

    #@6
    aget-short v0, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {p0, v1}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->advance(I)V
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_11

    #@c
    const v1, 0xffff

    #@f
    and-int/2addr v0, v1

    #@10
    return v0

    #@11
    :catch_11
    move-exception v0

    #@12
    new-instance v0, Ljava/io/EOFException;

    #@14
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    #@17
    throw v0
.end method

.method public readInt()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->read()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->read()I

    #@7
    move-result v1

    #@8
    shl-int/lit8 v1, v1, 0x10

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method public readLong()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->read()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->read()I

    #@8
    move-result v2

    #@9
    int-to-long v2, v2

    #@a
    const/16 v4, 0x10

    #@c
    shl-long/2addr v2, v4

    #@d
    or-long/2addr v0, v2

    #@e
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->read()I

    #@11
    move-result v2

    #@12
    int-to-long v2, v2

    #@13
    const/16 v4, 0x20

    #@15
    shl-long/2addr v2, v4

    #@16
    or-long/2addr v0, v2

    #@17
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->read()I

    #@1a
    move-result v2

    #@1b
    int-to-long v2, v2

    #@1c
    const/16 v4, 0x30

    #@1e
    shl-long/2addr v2, v4

    #@1f
    or-long/2addr v0, v2

    #@20
    return-wide v0
.end method
