.class public final Lcom/android/dx/util/Unsigned;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static compare(II)I
    .registers 8

    #@0
    const-wide v4, 0xffffffffL

    #@5
    if-ne p0, p1, :cond_9

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    int-to-long v0, p0

    #@a
    and-long/2addr v0, v4

    #@b
    int-to-long v2, p1

    #@c
    and-long/2addr v2, v4

    #@d
    cmp-long v0, v0, v2

    #@f
    if-gez v0, :cond_13

    #@11
    const/4 v0, -0x1

    #@12
    goto :goto_8

    #@13
    :cond_13
    const/4 v0, 0x1

    #@14
    goto :goto_8
.end method

.method public static compare(SS)I
    .registers 4

    #@0
    const v1, 0xffff

    #@3
    if-ne p0, p1, :cond_7

    #@5
    const/4 v0, 0x0

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    and-int v0, p0, v1

    #@9
    and-int/2addr v1, p1

    #@a
    if-ge v0, v1, :cond_e

    #@c
    const/4 v0, -0x1

    #@d
    goto :goto_6

    #@e
    :cond_e
    const/4 v0, 0x1

    #@f
    goto :goto_6
.end method
