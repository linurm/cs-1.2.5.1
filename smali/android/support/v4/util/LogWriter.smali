.class public Landroid/support/v4/util/LogWriter;
.super Ljava/io/Writer;


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    const/16 v1, 0x80

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@c
    iput-object p1, p0, Landroid/support/v4/util/LogWriter;->mTag:Ljava/lang/String;

    #@e
    return-void
.end method

.method private flushBuilder()V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_1f

    #@8
    iget-object v0, p0, Landroid/support/v4/util/LogWriter;->mTag:Ljava/lang/String;

    #@a
    iget-object v1, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    iget-object v0, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@15
    const/4 v1, 0x0

    #@16
    iget-object v2, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@1b
    move-result v2

    #@1c
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@1f
    :cond_1f
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/util/LogWriter;->flushBuilder()V

    #@3
    return-void
.end method

.method public flush()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/util/LogWriter;->flushBuilder()V

    #@3
    return-void
.end method

.method public write([CII)V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    if-ge v0, p3, :cond_17

    #@3
    add-int v1, p2, v0

    #@5
    aget-char v1, p1, v1

    #@7
    const/16 v2, 0xa

    #@9
    if-ne v1, v2, :cond_11

    #@b
    invoke-direct {p0}, Landroid/support/v4/util/LogWriter;->flushBuilder()V

    #@e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_1

    #@11
    :cond_11
    iget-object v2, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@13
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    goto :goto_e

    #@17
    :cond_17
    return-void
.end method
