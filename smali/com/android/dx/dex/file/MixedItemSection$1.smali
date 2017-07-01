.class final Lcom/android/dx/dex/file/MixedItemSection$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/file/MixedItemSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/dx/dex/file/OffsettedItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dx/dex/file/OffsettedItem;Lcom/android/dx/dex/file/OffsettedItem;)I
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/file/OffsettedItem;->itemType()Lcom/android/dx/dex/file/ItemType;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Lcom/android/dx/dex/file/OffsettedItem;->itemType()Lcom/android/dx/dex/file/ItemType;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/ItemType;->compareTo(Ljava/lang/Enum;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    #@0
    check-cast p1, Lcom/android/dx/dex/file/OffsettedItem;

    #@2
    check-cast p2, Lcom/android/dx/dex/file/OffsettedItem;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/file/MixedItemSection$1;->compare(Lcom/android/dx/dex/file/OffsettedItem;Lcom/android/dx/dex/file/OffsettedItem;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
