.class public final Lcom/android/dx/util/Uint;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/util/Uint;",
        ">;"
    }
.end annotation


# instance fields
.field public final intValue:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/android/dx/util/Uint;->intValue:I

    #@5
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/util/Uint;)I
    .registers 4

    #@0
    iget v0, p0, Lcom/android/dx/util/Uint;->intValue:I

    #@2
    iget v1, p1, Lcom/android/dx/util/Uint;->intValue:I

    #@4
    invoke-static {v0, v1}, Lcom/android/dx/util/Unsigned;->compare(II)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/util/Uint;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/util/Uint;->compareTo(Lcom/android/dx/util/Uint;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
