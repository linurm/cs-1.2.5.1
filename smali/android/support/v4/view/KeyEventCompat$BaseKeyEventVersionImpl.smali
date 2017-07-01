.class Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/KeyEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseKeyEventVersionImpl"
.end annotation


# static fields
.field private static final META_ALL_MASK:I = 0xf7

.field private static final META_MODIFIER_MASK:I = 0xf7


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .registers 10

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    and-int v2, p1, p2

    #@4
    if-eqz v2, :cond_19

    #@6
    move v2, v0

    #@7
    :goto_7
    or-int v3, p3, p4

    #@9
    and-int v4, p1, v3

    #@b
    if-eqz v4, :cond_1b

    #@d
    :goto_d
    if-eqz v2, :cond_21

    #@f
    if-eqz v0, :cond_1d

    #@11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string v1, "bad arguments"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    :cond_19
    move v2, v1

    #@1a
    goto :goto_7

    #@1b
    :cond_1b
    move v0, v1

    #@1c
    goto :goto_d

    #@1d
    :cond_1d
    xor-int/lit8 v0, v3, -0x1

    #@1f
    and-int/2addr p0, v0

    #@20
    :cond_20
    :goto_20
    return p0

    #@21
    :cond_21
    if-eqz v0, :cond_20

    #@23
    xor-int/lit8 v0, p2, -0x1

    #@25
    and-int/2addr p0, v0

    #@26
    goto :goto_20
.end method


# virtual methods
.method public dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    #@0
    invoke-virtual {p1, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public isTracking(Landroid/view/KeyEvent;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public metaStateHasModifiers(II)Z
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    #@4
    move-result v1

    #@5
    and-int/lit16 v1, v1, 0xf7

    #@7
    const/16 v2, 0x40

    #@9
    const/16 v3, 0x80

    #@b
    invoke-static {v1, p2, v0, v2, v3}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x2

    #@10
    const/16 v3, 0x10

    #@12
    const/16 v4, 0x20

    #@14
    invoke-static {v1, p2, v2, v3, v4}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    #@17
    move-result v1

    #@18
    if-ne v1, p2, :cond_1b

    #@1a
    :goto_1a
    return v0

    #@1b
    :cond_1b
    const/4 v0, 0x0

    #@1c
    goto :goto_1a
.end method

.method public metaStateHasNoModifiers(I)Z
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    #@3
    move-result v0

    #@4
    and-int/lit16 v0, v0, 0xf7

    #@6
    if-nez v0, :cond_a

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

.method public normalizeMetaState(I)I
    .registers 4

    #@0
    and-int/lit16 v0, p1, 0xc0

    #@2
    if-eqz v0, :cond_f

    #@4
    or-int/lit8 v0, p1, 0x1

    #@6
    :goto_6
    and-int/lit8 v1, v0, 0x30

    #@8
    if-eqz v1, :cond_c

    #@a
    or-int/lit8 v0, v0, 0x2

    #@c
    :cond_c
    and-int/lit16 v0, v0, 0xf7

    #@e
    return v0

    #@f
    :cond_f
    move v0, p1

    #@10
    goto :goto_6
.end method

.method public startTracking(Landroid/view/KeyEvent;)V
    .registers 2

    #@0
    return-void
.end method
