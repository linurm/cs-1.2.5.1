.class public Lcom/apportable/KeyHandler;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/method/KeyListener;


# instance fields
.field protected mDelegate:J

.field protected mInputType:I


# direct methods
.method public constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const v0, 0x1c001

    #@6
    iput v0, p0, Lcom/apportable/KeyHandler;->mInputType:I

    #@8
    iput-wide p1, p0, Lcom/apportable/KeyHandler;->mDelegate:J

    #@a
    return-void
.end method

.method protected static native nativeClearMetaKeyState(JLandroid/view/View;Landroid/text/Editable;I)V
.end method

.method protected static native nativeOnKeyDown(JLandroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
.end method

.method protected static native nativeOnKeyOther(JLandroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
.end method

.method protected static native nativeOnKeyUp(JLandroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
.end method


# virtual methods
.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .registers 6

    #@0
    iget-wide v0, p0, Lcom/apportable/KeyHandler;->mDelegate:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Lcom/apportable/KeyHandler;->nativeClearMetaKeyState(JLandroid/view/View;Landroid/text/Editable;I)V

    #@5
    return-void
.end method

.method public getInputType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/KeyHandler;->mInputType:I

    #@2
    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11

    #@0
    iget-wide v0, p0, Lcom/apportable/KeyHandler;->mDelegate:J

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move-object v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Lcom/apportable/KeyHandler;->nativeOnKeyDown(JLandroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .registers 6

    #@0
    iget-wide v0, p0, Lcom/apportable/KeyHandler;->mDelegate:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Lcom/apportable/KeyHandler;->nativeOnKeyOther(JLandroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11

    #@0
    iget-wide v0, p0, Lcom/apportable/KeyHandler;->mDelegate:J

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move-object v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Lcom/apportable/KeyHandler;->nativeOnKeyUp(JLandroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public setInputType(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/KeyHandler;->mInputType:I

    #@2
    return-void
.end method
