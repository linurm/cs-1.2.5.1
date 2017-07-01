.class public final Lcom/android/dx/util/IndentingWriter;
.super Ljava/io/FilterWriter;


# instance fields
.field private collectingIndent:Z

.field private column:I

.field private indent:I

.field private final maxIndent:I

.field private final prefix:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;I)V
    .registers 4

    #@0
    const-string v0, ""

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    #@5
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ILjava/lang/String;)V
    .registers 6

    #@0
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "out == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    if-gez p2, :cond_17

    #@f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string v1, "width < 0"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    if-nez p3, :cond_21

    #@19
    new-instance v0, Ljava/lang/NullPointerException;

    #@1b
    const-string v1, "prefix == null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    if-eqz p2, :cond_37

    #@23
    move v0, p2

    #@24
    :goto_24
    iput v0, p0, Lcom/android/dx/util/IndentingWriter;->width:I

    #@26
    shr-int/lit8 v0, p2, 0x1

    #@28
    iput v0, p0, Lcom/android/dx/util/IndentingWriter;->maxIndent:I

    #@2a
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_31

    #@30
    const/4 p3, 0x0

    #@31
    :cond_31
    iput-object p3, p0, Lcom/android/dx/util/IndentingWriter;->prefix:Ljava/lang/String;

    #@33
    invoke-direct {p0}, Lcom/android/dx/util/IndentingWriter;->bol()V

    #@36
    return-void

    #@37
    :cond_37
    const v0, 0x7fffffff

    #@3a
    goto :goto_24
.end method

.method private bol()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    iput v1, p0, Lcom/android/dx/util/IndentingWriter;->column:I

    #@3
    iget v0, p0, Lcom/android/dx/util/IndentingWriter;->maxIndent:I

    #@5
    if-eqz v0, :cond_d

    #@7
    const/4 v0, 0x1

    #@8
    :goto_8
    iput-boolean v0, p0, Lcom/android/dx/util/IndentingWriter;->collectingIndent:Z

    #@a
    iput v1, p0, Lcom/android/dx/util/IndentingWriter;->indent:I

    #@c
    return-void

    #@d
    :cond_d
    move v0, v1

    #@e
    goto :goto_8
.end method


# virtual methods
.method public write(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/16 v3, 0x20

    #@2
    const/16 v4, 0xa

    #@4
    const/4 v0, 0x0

    #@5
    iget-object v1, p0, Lcom/android/dx/util/IndentingWriter;->lock:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    :try_start_8
    iget-boolean v2, p0, Lcom/android/dx/util/IndentingWriter;->collectingIndent:Z

    #@a
    if-eqz v2, :cond_21

    #@c
    if-ne p1, v3, :cond_54

    #@e
    iget v2, p0, Lcom/android/dx/util/IndentingWriter;->indent:I

    #@10
    add-int/lit8 v2, v2, 0x1

    #@12
    iput v2, p0, Lcom/android/dx/util/IndentingWriter;->indent:I

    #@14
    iget v2, p0, Lcom/android/dx/util/IndentingWriter;->indent:I

    #@16
    iget v3, p0, Lcom/android/dx/util/IndentingWriter;->maxIndent:I

    #@18
    if-lt v2, v3, :cond_21

    #@1a
    iget v2, p0, Lcom/android/dx/util/IndentingWriter;->maxIndent:I

    #@1c
    iput v2, p0, Lcom/android/dx/util/IndentingWriter;->indent:I

    #@1e
    const/4 v2, 0x0

    #@1f
    iput-boolean v2, p0, Lcom/android/dx/util/IndentingWriter;->collectingIndent:Z

    #@21
    :cond_21
    :goto_21
    iget v2, p0, Lcom/android/dx/util/IndentingWriter;->column:I

    #@23
    iget v3, p0, Lcom/android/dx/util/IndentingWriter;->width:I

    #@25
    if-ne v2, v3, :cond_33

    #@27
    if-eq p1, v4, :cond_33

    #@29
    iget-object v2, p0, Lcom/android/dx/util/IndentingWriter;->out:Ljava/io/Writer;

    #@2b
    const/16 v3, 0xa

    #@2d
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    #@30
    const/4 v2, 0x0

    #@31
    iput v2, p0, Lcom/android/dx/util/IndentingWriter;->column:I

    #@33
    :cond_33
    iget v2, p0, Lcom/android/dx/util/IndentingWriter;->column:I

    #@35
    if-nez v2, :cond_5f

    #@37
    iget-object v2, p0, Lcom/android/dx/util/IndentingWriter;->prefix:Ljava/lang/String;

    #@39
    if-eqz v2, :cond_42

    #@3b
    iget-object v2, p0, Lcom/android/dx/util/IndentingWriter;->out:Ljava/io/Writer;

    #@3d
    iget-object v3, p0, Lcom/android/dx/util/IndentingWriter;->prefix:Ljava/lang/String;

    #@3f
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@42
    :cond_42
    iget-boolean v2, p0, Lcom/android/dx/util/IndentingWriter;->collectingIndent:Z

    #@44
    if-nez v2, :cond_5f

    #@46
    :goto_46
    iget v2, p0, Lcom/android/dx/util/IndentingWriter;->indent:I

    #@48
    if-ge v0, v2, :cond_5b

    #@4a
    iget-object v2, p0, Lcom/android/dx/util/IndentingWriter;->out:Ljava/io/Writer;

    #@4c
    const/16 v3, 0x20

    #@4e
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    #@51
    add-int/lit8 v0, v0, 0x1

    #@53
    goto :goto_46

    #@54
    :cond_54
    const/4 v2, 0x0

    #@55
    iput-boolean v2, p0, Lcom/android/dx/util/IndentingWriter;->collectingIndent:Z

    #@57
    goto :goto_21

    #@58
    :catchall_58
    move-exception v0

    #@59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_8 .. :try_end_5a} :catchall_58

    #@5a
    throw v0

    #@5b
    :cond_5b
    :try_start_5b
    iget v0, p0, Lcom/android/dx/util/IndentingWriter;->indent:I

    #@5d
    iput v0, p0, Lcom/android/dx/util/IndentingWriter;->column:I

    #@5f
    :cond_5f
    iget-object v0, p0, Lcom/android/dx/util/IndentingWriter;->out:Ljava/io/Writer;

    #@61
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    #@64
    if-ne p1, v4, :cond_6b

    #@66
    invoke-direct {p0}, Lcom/android/dx/util/IndentingWriter;->bol()V

    #@69
    :goto_69
    monitor-exit v1

    #@6a
    return-void

    #@6b
    :cond_6b
    iget v0, p0, Lcom/android/dx/util/IndentingWriter;->column:I

    #@6d
    add-int/lit8 v0, v0, 0x1

    #@6f
    iput v0, p0, Lcom/android/dx/util/IndentingWriter;->column:I
    :try_end_71
    .catchall {:try_start_5b .. :try_end_71} :catchall_58

    #@71
    goto :goto_69
.end method

.method public write(Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/android/dx/util/IndentingWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :goto_3
    if-lez p3, :cond_11

    #@5
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v0

    #@9
    invoke-virtual {p0, v0}, Lcom/android/dx/util/IndentingWriter;->write(I)V

    #@c
    add-int/lit8 p2, p2, 0x1

    #@e
    add-int/lit8 p3, p3, -0x1

    #@10
    goto :goto_3

    #@11
    :cond_11
    monitor-exit v1

    #@12
    return-void

    #@13
    :catchall_13
    move-exception v0

    #@14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    #@15
    throw v0
.end method

.method public write([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/android/dx/util/IndentingWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :goto_3
    if-lez p3, :cond_f

    #@5
    :try_start_5
    aget-char v0, p1, p2

    #@7
    invoke-virtual {p0, v0}, Lcom/android/dx/util/IndentingWriter;->write(I)V

    #@a
    add-int/lit8 p2, p2, 0x1

    #@c
    add-int/lit8 p3, p3, -0x1

    #@e
    goto :goto_3

    #@f
    :cond_f
    monitor-exit v1

    #@10
    return-void

    #@11
    :catchall_11
    move-exception v0

    #@12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    #@13
    throw v0
.end method
