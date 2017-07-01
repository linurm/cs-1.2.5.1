.class Landroid/support/v4/view/KeyEventCompatHoneycomb;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static metaStateHasModifiers(II)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .registers 2

    #@0
    invoke-static {p0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static normalizeMetaState(I)I
    .registers 2

    #@0
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method
