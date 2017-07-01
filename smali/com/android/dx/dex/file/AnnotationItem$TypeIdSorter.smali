.class Lcom/android/dx/dex/file/AnnotationItem$TypeIdSorter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/file/AnnotationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeIdSorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/dx/dex/file/AnnotationItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dx/dex/file/AnnotationItem$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/android/dx/dex/file/AnnotationItem$TypeIdSorter;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dx/dex/file/AnnotationItem;Lcom/android/dx/dex/file/AnnotationItem;)I
    .registers 5

    #@0
    # getter for: Lcom/android/dx/dex/file/AnnotationItem;->type:Lcom/android/dx/dex/file/TypeIdItem;
    invoke-static {p1}, Lcom/android/dx/dex/file/AnnotationItem;->access$100(Lcom/android/dx/dex/file/AnnotationItem;)Lcom/android/dx/dex/file/TypeIdItem;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/dx/dex/file/TypeIdItem;->getIndex()I

    #@7
    move-result v0

    #@8
    # getter for: Lcom/android/dx/dex/file/AnnotationItem;->type:Lcom/android/dx/dex/file/TypeIdItem;
    invoke-static {p2}, Lcom/android/dx/dex/file/AnnotationItem;->access$100(Lcom/android/dx/dex/file/AnnotationItem;)Lcom/android/dx/dex/file/TypeIdItem;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Lcom/android/dx/dex/file/TypeIdItem;->getIndex()I

    #@f
    move-result v1

    #@10
    if-ge v0, v1, :cond_14

    #@12
    const/4 v0, -0x1

    #@13
    :goto_13
    return v0

    #@14
    :cond_14
    if-le v0, v1, :cond_18

    #@16
    const/4 v0, 0x1

    #@17
    goto :goto_13

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    goto :goto_13
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    #@0
    check-cast p1, Lcom/android/dx/dex/file/AnnotationItem;

    #@2
    check-cast p2, Lcom/android/dx/dex/file/AnnotationItem;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/file/AnnotationItem$TypeIdSorter;->compare(Lcom/android/dx/dex/file/AnnotationItem;Lcom/android/dx/dex/file/AnnotationItem;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
