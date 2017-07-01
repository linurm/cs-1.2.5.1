.class public final Lcom/android/dx/util/TwoColumnOutput;
.super Ljava/lang/Object;


# instance fields
.field private final leftBuf:Ljava/lang/StringBuffer;

.field private final leftColumn:Lcom/android/dx/util/IndentingWriter;

.field private final leftWidth:I

.field private final out:Ljava/io/Writer;

.field private final rightBuf:Ljava/lang/StringBuffer;

.field private final rightColumn:Lcom/android/dx/util/IndentingWriter;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;IILjava/lang/String;)V
    .registers 6

    #@0
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@2
    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@5
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/dx/util/TwoColumnOutput;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    #@8
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;IILjava/lang/String;)V
    .registers 8

    #@0
    const/16 v2, 0x3e8

    #@2
    const/4 v0, 0x1

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    if-nez p1, :cond_10

    #@8
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string v1, "out == null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    :cond_10
    if-ge p2, v0, :cond_1a

    #@12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string v1, "leftWidth < 1"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    :cond_1a
    if-ge p3, v0, :cond_24

    #@1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string v1, "rightWidth < 1"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    :cond_24
    if-nez p4, :cond_2e

    #@26
    new-instance v0, Ljava/lang/NullPointerException;

    #@28
    const-string v1, "spacer == null"

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    :cond_2e
    new-instance v0, Ljava/io/StringWriter;

    #@30
    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    #@33
    new-instance v1, Ljava/io/StringWriter;

    #@35
    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    #@38
    iput-object p1, p0, Lcom/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    #@3a
    iput p2, p0, Lcom/android/dx/util/TwoColumnOutput;->leftWidth:I

    #@3c
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    #@3f
    move-result-object v2

    #@40
    iput-object v2, p0, Lcom/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    #@42
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    #@45
    move-result-object v2

    #@46
    iput-object v2, p0, Lcom/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    #@48
    new-instance v2, Lcom/android/dx/util/IndentingWriter;

    #@4a
    invoke-direct {v2, v0, p2}, Lcom/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;I)V

    #@4d
    iput-object v2, p0, Lcom/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/android/dx/util/IndentingWriter;

    #@4f
    new-instance v0, Lcom/android/dx/util/IndentingWriter;

    #@51
    invoke-direct {v0, v1, p3, p4}, Lcom/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    #@54
    iput-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/android/dx/util/IndentingWriter;

    #@56
    return-void
.end method

.method private static appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/16 v1, 0xa

    #@2
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_13

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    #@d
    move-result v0

    #@e
    if-eq v0, v1, :cond_13

    #@10
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    #@13
    :cond_13
    return-void
.end method

.method private flushLeft()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    #@2
    iget-object v1, p0, Lcom/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/android/dx/util/IndentingWriter;

    #@4
    invoke-static {v0, v1}, Lcom/android/dx/util/TwoColumnOutput;->appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    #@7
    :goto_7
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1a

    #@f
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/android/dx/util/IndentingWriter;

    #@11
    const/16 v1, 0xa

    #@13
    invoke-virtual {v0, v1}, Lcom/android/dx/util/IndentingWriter;->write(I)V

    #@16
    invoke-direct {p0}, Lcom/android/dx/util/TwoColumnOutput;->outputFullLines()V

    #@19
    goto :goto_7

    #@1a
    :cond_1a
    return-void
.end method

.method private flushRight()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    #@2
    iget-object v1, p0, Lcom/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/android/dx/util/IndentingWriter;

    #@4
    invoke-static {v0, v1}, Lcom/android/dx/util/TwoColumnOutput;->appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    #@7
    :goto_7
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1a

    #@f
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/android/dx/util/IndentingWriter;

    #@11
    const/16 v1, 0xa

    #@13
    invoke-virtual {v0, v1}, Lcom/android/dx/util/IndentingWriter;->write(I)V

    #@16
    invoke-direct {p0}, Lcom/android/dx/util/TwoColumnOutput;->outputFullLines()V

    #@19
    goto :goto_7

    #@1a
    :cond_1a
    return-void
.end method

.method private outputFullLines()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v4, 0x0

    #@1
    :goto_1
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    #@3
    const-string v1, "\n"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    if-gez v0, :cond_c

    #@b
    :cond_b
    return-void

    #@c
    :cond_c
    iget-object v1, p0, Lcom/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    #@e
    const-string v2, "\n"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    #@13
    move-result v1

    #@14
    if-ltz v1, :cond_b

    #@16
    if-eqz v0, :cond_23

    #@18
    iget-object v2, p0, Lcom/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    #@1a
    iget-object v3, p0, Lcom/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    #@1c
    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@23
    :cond_23
    if-eqz v1, :cond_38

    #@25
    iget-object v2, p0, Lcom/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    #@27
    iget v3, p0, Lcom/android/dx/util/TwoColumnOutput;->leftWidth:I

    #@29
    sub-int/2addr v3, v0

    #@2a
    invoke-static {v2, v3}, Lcom/android/dx/util/TwoColumnOutput;->writeSpaces(Ljava/io/Writer;I)V

    #@2d
    iget-object v2, p0, Lcom/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    #@2f
    iget-object v3, p0, Lcom/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    #@31
    invoke-virtual {v3, v4, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@38
    :cond_38
    iget-object v2, p0, Lcom/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    #@3a
    const/16 v3, 0xa

    #@3c
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    #@3f
    iget-object v2, p0, Lcom/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    #@41
    add-int/lit8 v0, v0, 0x1

    #@43
    invoke-virtual {v2, v4, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@46
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    #@48
    add-int/lit8 v1, v1, 0x1

    #@4a
    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@4d
    goto :goto_1
.end method

.method public static toString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    #@0
    new-instance v0, Ljava/io/StringWriter;

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    add-int/2addr v1, v2

    #@b
    mul-int/lit8 v1, v1, 0x3

    #@d
    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    #@10
    new-instance v1, Lcom/android/dx/util/TwoColumnOutput;

    #@12
    invoke-direct {v1, v0, p1, p4, p2}, Lcom/android/dx/util/TwoColumnOutput;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    #@15
    :try_start_15
    invoke-virtual {v1}, Lcom/android/dx/util/TwoColumnOutput;->getLeft()Ljava/io/Writer;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1}, Lcom/android/dx/util/TwoColumnOutput;->getRight()Ljava/io/Writer;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_2b

    #@23
    invoke-virtual {v1}, Lcom/android/dx/util/TwoColumnOutput;->flush()V

    #@26
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    new-instance v1, Ljava/lang/RuntimeException;

    #@2e
    const-string v2, "shouldn\'t happen"

    #@30
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v1
.end method

.method private static writeSpaces(Ljava/io/Writer;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    :goto_0
    if-lez p1, :cond_a

    #@2
    const/16 v0, 0x20

    #@4
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    #@7
    add-int/lit8 p1, p1, -0x1

    #@9
    goto :goto_0

    #@a
    :cond_a
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    #@2
    iget-object v1, p0, Lcom/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/android/dx/util/IndentingWriter;

    #@4
    invoke-static {v0, v1}, Lcom/android/dx/util/TwoColumnOutput;->appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    #@7
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    #@9
    iget-object v1, p0, Lcom/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/android/dx/util/IndentingWriter;

    #@b
    invoke-static {v0, v1}, Lcom/android/dx/util/TwoColumnOutput;->appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    #@e
    invoke-direct {p0}, Lcom/android/dx/util/TwoColumnOutput;->outputFullLines()V

    #@11
    invoke-direct {p0}, Lcom/android/dx/util/TwoColumnOutput;->flushLeft()V

    #@14
    invoke-direct {p0}, Lcom/android/dx/util/TwoColumnOutput;->flushRight()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18

    #@17
    return-void

    #@18
    :catch_18
    move-exception v0

    #@19
    new-instance v1, Ljava/lang/RuntimeException;

    #@1b
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1e
    throw v1
.end method

.method public getLeft()Ljava/io/Writer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/android/dx/util/IndentingWriter;

    #@2
    return-object v0
.end method

.method public getRight()Ljava/io/Writer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/android/dx/util/IndentingWriter;

    #@2
    return-object v0
.end method
