.class public final Lcom/android/dx/dex/file/HeaderSection;
.super Lcom/android/dx/dex/file/UniformItemSection;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/dx/dex/file/HeaderItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/DexFile;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x4

    #@2
    invoke-direct {p0, v0, p1, v1}, Lcom/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    #@5
    new-instance v0, Lcom/android/dx/dex/file/HeaderItem;

    #@7
    invoke-direct {v0}, Lcom/android/dx/dex/file/HeaderItem;-><init>()V

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/HeaderItem;->setIndex(I)V

    #@e
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/dx/dex/file/HeaderSection;->list:Ljava/util/List;

    #@14
    return-void
.end method


# virtual methods
.method public get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
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
    iget-object v0, p0, Lcom/android/dx/dex/file/HeaderSection;->list:Ljava/util/List;

    #@2
    return-object v0
.end method

.method protected orderItems()V
    .registers 1

    #@0
    return-void
.end method
