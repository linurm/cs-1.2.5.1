.class public final Lcom/android/dx/dex/file/AnnotationSetRefItem;
.super Lcom/android/dx/dex/file/OffsettedItem;


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final WRITE_SIZE:I = 0x4


# instance fields
.field private annotations:Lcom/android/dx/dex/file/AnnotationSetItem;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/AnnotationSetItem;)V
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0, v0}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    #@4
    if-nez p1, :cond_e

    #@6
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string v1, "annotations == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    iput-object p1, p0, Lcom/android/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    #@10
    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .registers 4

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getWordData()Lcom/android/dx/dex/file/MixedItemSection;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/MixedItemSection;->intern(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/dx/dex/file/AnnotationSetItem;

    #@c
    iput-object v0, p0, Lcom/android/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    #@e
    return-void
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .registers 2

    #@0
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@2
    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/dex/file/AnnotationSetItem;->toHuman()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/dex/file/AnnotationSetItem;->getAbsoluteOffset()I

    #@5
    move-result v0

    #@6
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_27

    #@c
    const/4 v1, 0x4

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string v3, "  annotations_off: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-interface {p2, v1, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@27
    :cond_27
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@2a
    return-void
.end method
