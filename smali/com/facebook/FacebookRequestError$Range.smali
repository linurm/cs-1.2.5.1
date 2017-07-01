.class Lcom/facebook/FacebookRequestError$Range;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Range"
.end annotation


# instance fields
.field private final end:I

.field private final start:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/facebook/FacebookRequestError$Range;->start:I

    #@5
    iput p2, p0, Lcom/facebook/FacebookRequestError$Range;->end:I

    #@7
    return-void
.end method

.method synthetic constructor <init>(IILcom/facebook/FacebookRequestError$1;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/facebook/FacebookRequestError$Range;-><init>(II)V

    #@3
    return-void
.end method


# virtual methods
.method contains(I)Z
    .registers 3

    #@0
    iget v0, p0, Lcom/facebook/FacebookRequestError$Range;->start:I

    #@2
    if-gt v0, p1, :cond_a

    #@4
    iget v0, p0, Lcom/facebook/FacebookRequestError$Range;->end:I

    #@6
    if-gt p1, v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method
