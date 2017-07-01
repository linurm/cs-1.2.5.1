.class Lcom/android/dx/dex/file/Statistics$Data;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/file/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field private count:I

.field private largestSize:I

.field private final name:Ljava/lang/String;

.field private smallestSize:I

.field private totalSize:I


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/Item;Ljava/lang/String;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-virtual {p1}, Lcom/android/dx/dex/file/Item;->writeSize()I

    #@6
    move-result v0

    #@7
    iput-object p2, p0, Lcom/android/dx/dex/file/Statistics$Data;->name:Ljava/lang/String;

    #@9
    const/4 v1, 0x1

    #@a
    iput v1, p0, Lcom/android/dx/dex/file/Statistics$Data;->count:I

    #@c
    iput v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->totalSize:I

    #@e
    iput v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->largestSize:I

    #@10
    iput v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->smallestSize:I

    #@12
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/dex/file/Statistics$Data;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/file/Item;)V
    .registers 4

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/file/Item;->writeSize()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lcom/android/dx/dex/file/Statistics$Data;->count:I

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    iput v1, p0, Lcom/android/dx/dex/file/Statistics$Data;->count:I

    #@a
    iget v1, p0, Lcom/android/dx/dex/file/Statistics$Data;->totalSize:I

    #@c
    add-int/2addr v1, v0

    #@d
    iput v1, p0, Lcom/android/dx/dex/file/Statistics$Data;->totalSize:I

    #@f
    iget v1, p0, Lcom/android/dx/dex/file/Statistics$Data;->largestSize:I

    #@11
    if-le v0, v1, :cond_15

    #@13
    iput v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->largestSize:I

    #@15
    :cond_15
    iget v1, p0, Lcom/android/dx/dex/file/Statistics$Data;->smallestSize:I

    #@17
    if-ge v0, v1, :cond_1b

    #@19
    iput v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->smallestSize:I

    #@1b
    :cond_1b
    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 5

    #@0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string v2, "  "

    #@c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v2, p0, Lcom/android/dx/dex/file/Statistics$Data;->name:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string v2, ": "

    #@18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    iget v2, p0, Lcom/android/dx/dex/file/Statistics$Data;->count:I

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    const-string v2, " item"

    #@24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    iget v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->count:I

    #@2a
    const/4 v3, 0x1

    #@2b
    if-ne v0, v3, :cond_75

    #@2d
    const-string v0, ""

    #@2f
    :goto_2f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    const-string v2, "; "

    #@35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    iget v2, p0, Lcom/android/dx/dex/file/Statistics$Data;->totalSize:I

    #@3b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    const-string v2, " bytes total\n"

    #@41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    iget v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->smallestSize:I

    #@4e
    iget v2, p0, Lcom/android/dx/dex/file/Statistics$Data;->largestSize:I

    #@50
    if-ne v0, v2, :cond_78

    #@52
    new-instance v0, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string v2, "    "

    #@59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    iget v2, p0, Lcom/android/dx/dex/file/Statistics$Data;->smallestSize:I

    #@5f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    const-string v2, " bytes/item\n"

    #@65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    :goto_70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v0

    #@74
    return-object v0

    #@75
    :cond_75
    const-string v0, "s"

    #@77
    goto :goto_2f

    #@78
    :cond_78
    iget v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->totalSize:I

    #@7a
    iget v2, p0, Lcom/android/dx/dex/file/Statistics$Data;->count:I

    #@7c
    div-int/2addr v0, v2

    #@7d
    new-instance v2, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string v3, "    "

    #@84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    iget v3, p0, Lcom/android/dx/dex/file/Statistics$Data;->smallestSize:I

    #@8a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v2

    #@8e
    const-string v3, ".."

    #@90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v2

    #@94
    iget v3, p0, Lcom/android/dx/dex/file/Statistics$Data;->largestSize:I

    #@96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v2

    #@9a
    const-string v3, " bytes/item; average "

    #@9c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v0

    #@a4
    const-string v2, "\n"

    #@a6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v0

    #@aa
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v0

    #@ae
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    goto :goto_70
.end method

.method public writeAnnotation(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/Statistics$Data;->toHuman()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    #@7
    return-void
.end method
