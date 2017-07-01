.class public final Lcom/android/dx/dex/file/MixedItemSection;
.super Lcom/android/dx/dex/file/Section;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/file/MixedItemSection$SortType;
    }
.end annotation


# static fields
.field private static final TYPE_SORTER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final interns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final sort:Lcom/android/dx/dex/file/MixedItemSection$SortType;

.field private writeSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection$1;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/file/MixedItemSection$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/dex/file/MixedItemSection;->TYPE_SORTER:Ljava/util/Comparator;

    #@7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V
    .registers 7

    #@0
    const/16 v1, 0x64

    #@2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/file/Section;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    #@5
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    #@c
    new-instance v0, Ljava/util/HashMap;

    #@e
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@11
    iput-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    #@13
    iput-object p4, p0, Lcom/android/dx/dex/file/MixedItemSection;->sort:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@15
    const/4 v0, -0x1

    #@16
    iput v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    #@18
    return-void
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/file/OffsettedItem;)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfPrepared()V

    #@3
    :try_start_3
    invoke-virtual {p1}, Lcom/android/dx/dex/file/OffsettedItem;->getAlignment()I

    #@6
    move-result v0

    #@7
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->getAlignment()I

    #@a
    move-result v1

    #@b
    if-le v0, v1, :cond_1e

    #@d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string v1, "incompatible item alignment"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_15} :catch_15

    #@15
    :catch_15
    move-exception v0

    #@16
    new-instance v0, Ljava/lang/NullPointerException;

    #@18
    const-string v1, "item == null"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    :cond_1e
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    return-void
.end method

.method public get(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    #@3
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    #@b
    if-eqz v0, :cond_e

    #@d
    return-object v0

    #@e
    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    #@10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0
.end method

.method public getAbsoluteItemOffset(Lcom/android/dx/dex/file/Item;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/dex/file/OffsettedItem;

    #@2
    invoke-virtual {p1}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public intern(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfPrepared()V

    #@3
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    #@b
    if-eqz v0, :cond_e

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/MixedItemSection;->add(Lcom/android/dx/dex/file/OffsettedItem;)V

    #@11
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    #@13
    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-object v0, p1

    #@17
    goto :goto_d
.end method

.method public items()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/dx/dex/file/Item;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public placeItems()V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    #@4
    sget-object v1, Lcom/android/dx/dex/file/MixedItemSection$2;->$SwitchMap$com$android$dx$dex$file$MixedItemSection$SortType:[I

    #@6
    iget-object v2, p0, Lcom/android/dx/dex/file/MixedItemSection;->sort:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@8
    invoke-virtual {v2}, Lcom/android/dx/dex/file/MixedItemSection$SortType;->ordinal()I

    #@b
    move-result v2

    #@c
    aget v1, v1, v2

    #@e
    packed-switch v1, :pswitch_data_76

    #@11
    :goto_11
    iget-object v1, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v3

    #@17
    move v1, v0

    #@18
    move v2, v0

    #@19
    :goto_19
    if-ge v2, v3, :cond_73

    #@1b
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    #@23
    :try_start_23
    invoke-virtual {v0, p0, v1}, Lcom/android/dx/dex/file/OffsettedItem;->place(Lcom/android/dx/dex/file/Section;I)I

    #@26
    move-result v4

    #@27
    if-ge v4, v1, :cond_69

    #@29
    new-instance v1, Ljava/lang/RuntimeException;

    #@2b
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string v3, "bogus place() result for "

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@41
    throw v1
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_42} :catch_42

    #@42
    :catch_42
    move-exception v1

    #@43
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string v3, "...while placing "

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    invoke-static {v1, v0}, Lcom/android/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;

    #@59
    move-result-object v0

    #@5a
    throw v0

    #@5b
    :pswitch_5b
    iget-object v1, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    #@5d
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@60
    goto :goto_11

    #@61
    :pswitch_61
    iget-object v1, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    #@63
    sget-object v2, Lcom/android/dx/dex/file/MixedItemSection;->TYPE_SORTER:Ljava/util/Comparator;

    #@65
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@68
    goto :goto_11

    #@69
    :cond_69
    :try_start_69
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->writeSize()I
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_6c} :catch_42

    #@6c
    move-result v0

    #@6d
    add-int/2addr v0, v4

    #@6e
    add-int/lit8 v1, v2, 0x1

    #@70
    move v2, v1

    #@71
    move v1, v0

    #@72
    goto :goto_19

    #@73
    :cond_73
    iput v1, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    #@75
    return-void

    #@76
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_61
    .end packed-switch
.end method

.method protected prepare0()V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->getFile()Lcom/android/dx/dex/file/DexFile;

    #@3
    move-result-object v2

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    iget-object v1, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v3

    #@b
    if-lt v0, v3, :cond_20

    #@d
    return-void

    #@e
    :goto_e
    if-ge v1, v3, :cond_1e

    #@10
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    #@18
    invoke-virtual {v0, v2}, Lcom/android/dx/dex/file/OffsettedItem;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_e

    #@1e
    :cond_1e
    move v0, v1

    #@1f
    goto :goto_5

    #@20
    :cond_20
    move v1, v0

    #@21
    goto :goto_e
.end method

.method public size()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public writeHeaderPart(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 9

    #@0
    const/4 v6, 0x4

    #@1
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    #@4
    iget v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    #@6
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_11

    #@9
    new-instance v0, Ljava/lang/RuntimeException;

    #@b
    const-string v1, "write size not yet set"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_11
    iget v2, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    #@13
    if-nez v2, :cond_81

    #@15
    const/4 v0, 0x0

    #@16
    :goto_16
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->getName()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    if-nez v1, :cond_1e

    #@1c
    const-string v1, "<unnamed>"

    #@1e
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@21
    move-result v3

    #@22
    rsub-int/lit8 v3, v3, 0xf

    #@24
    new-array v3, v3, [C

    #@26
    const/16 v4, 0x20

    #@28
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    #@2b
    new-instance v4, Ljava/lang/String;

    #@2d
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    #@30
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_7a

    #@36
    new-instance v3, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    const-string v5, "_size:"

    #@41
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-static {v2}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-interface {p1, v6, v3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@58
    new-instance v3, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    const-string v3, "_off: "

    #@63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    invoke-interface {p1, v6, v1}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@7a
    :cond_7a
    invoke-interface {p1, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@7d
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@80
    return-void

    #@81
    :cond_81
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->getFileOffset()I

    #@84
    move-result v0

    #@85
    goto :goto_16
.end method

.method public writeIndexAnnotation(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/file/ItemType;Ljava/lang/String;)V
    .registers 9

    #@0
    const/4 v4, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    #@4
    new-instance v1, Ljava/util/TreeMap;

    #@6
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    #@9
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_29

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    #@1b
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->itemType()Lcom/android/dx/dex/file/ItemType;

    #@1e
    move-result-object v3

    #@1f
    if-ne v3, p2, :cond_f

    #@21
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->toHuman()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    goto :goto_f

    #@29
    :cond_29
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_30

    #@2f
    :cond_2f
    return-void

    #@30
    :cond_30
    invoke-interface {p1, v4, p3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@33
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    #@36
    move-result-object v0

    #@37
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v2

    #@3b
    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_2f

    #@41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Ljava/util/Map$Entry;

    #@47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4a
    move-result-object v1

    #@4b
    check-cast v1, Ljava/lang/String;

    #@4d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@50
    move-result-object v0

    #@51
    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    #@53
    new-instance v3, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->offsetString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    const/16 v3, 0x20

    #@62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    const/16 v1, 0xa

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v0

    #@74
    invoke-interface {p1, v4, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@77
    goto :goto_3b
.end method

.method public writeSize()I
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    #@3
    iget v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    #@5
    return v0
.end method

.method protected writeTo0(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 11

    #@0
    const/4 v3, 0x0

    #@1
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@4
    move-result v5

    #@5
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->getFile()Lcom/android/dx/dex/file/DexFile;

    #@8
    move-result-object v6

    #@9
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v7

    #@f
    const/4 v0, 0x1

    #@10
    move v1, v0

    #@11
    move v2, v3

    #@12
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_45

    #@18
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    #@1e
    if-eqz v5, :cond_23

    #@20
    if-eqz v1, :cond_3f

    #@22
    move v1, v3

    #@23
    :cond_23
    :goto_23
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->getAlignment()I

    #@26
    move-result v4

    #@27
    add-int/lit8 v4, v4, -0x1

    #@29
    xor-int/lit8 v8, v4, -0x1

    #@2b
    add-int/2addr v4, v2

    #@2c
    and-int/2addr v4, v8

    #@2d
    if-eq v2, v4, :cond_35

    #@2f
    sub-int v2, v4, v2

    #@31
    invoke-interface {p1, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeZeroes(I)V

    #@34
    move v2, v4

    #@35
    :cond_35
    invoke-virtual {v0, v6, p1}, Lcom/android/dx/dex/file/OffsettedItem;->writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V

    #@38
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->writeSize()I

    #@3b
    move-result v0

    #@3c
    add-int/2addr v0, v2

    #@3d
    move v2, v0

    #@3e
    goto :goto_12

    #@3f
    :cond_3f
    const-string v4, "\n"

    #@41
    invoke-interface {p1, v3, v4}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@44
    goto :goto_23

    #@45
    :cond_45
    iget v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    #@47
    if-eq v2, v0, :cond_51

    #@49
    new-instance v0, Ljava/lang/RuntimeException;

    #@4b
    const-string v1, "output size mismatch"

    #@4d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0

    #@51
    :cond_51
    return-void
.end method
