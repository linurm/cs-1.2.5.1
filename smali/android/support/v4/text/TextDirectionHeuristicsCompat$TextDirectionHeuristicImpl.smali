.class abstract Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/text/TextDirectionHeuristicCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TextDirectionHeuristicImpl"
.end annotation


# instance fields
.field private final mAlgorithm:Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# direct methods
.method public constructor <init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    #@5
    return-void
.end method

.method private doCheck(Ljava/lang/CharSequence;II)Z
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    #@2
    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;->checkRtl(Ljava/lang/CharSequence;II)I

    #@5
    move-result v0

    #@6
    packed-switch v0, :pswitch_data_12

    #@9
    invoke-virtual {p0}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    #@c
    move-result v0

    #@d
    :goto_d
    return v0

    #@e
    :pswitch_e
    const/4 v0, 0x1

    #@f
    goto :goto_d

    #@10
    :pswitch_10
    const/4 v0, 0x0

    #@11
    goto :goto_d

    #@12
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method protected abstract defaultIsRtl()Z
.end method

.method public isRtl(Ljava/lang/CharSequence;II)Z
    .registers 5

    #@0
    if-eqz p1, :cond_d

    #@2
    if-ltz p2, :cond_d

    #@4
    if-ltz p3, :cond_d

    #@6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v0

    #@a
    sub-int/2addr v0, p3

    #@b
    if-ge v0, p2, :cond_13

    #@d
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@12
    throw v0

    #@13
    :cond_13
    iget-object v0, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    #@15
    if-nez v0, :cond_1c

    #@17
    invoke-virtual {p0}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    #@1a
    move-result v0

    #@1b
    :goto_1b
    return v0

    #@1c
    :cond_1c
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->doCheck(Ljava/lang/CharSequence;II)Z

    #@1f
    move-result v0

    #@20
    goto :goto_1b
.end method

.method public isRtl([CII)Z
    .registers 5

    #@0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(Ljava/lang/CharSequence;II)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
