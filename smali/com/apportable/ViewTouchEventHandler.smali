.class public Lcom/apportable/ViewTouchEventHandler;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected context:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/apportable/ViewTouchEventHandler;->context:J

    #@5
    return-void
.end method

.method protected static native nativeOnClick(JLandroid/view/View;)V
.end method

.method protected static native nativeOnTouch(JLandroid/view/View;Landroid/view/MotionEvent;)Z
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    #@0
    iget-wide v0, p0, Lcom/apportable/ViewTouchEventHandler;->context:J

    #@2
    invoke-static {v0, v1, p1}, Lcom/apportable/ViewTouchEventHandler;->nativeOnClick(JLandroid/view/View;)V

    #@5
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/apportable/ViewTouchEventHandler;->context:J

    #@2
    invoke-static {v0, v1, p1, p2}, Lcom/apportable/ViewTouchEventHandler;->nativeOnTouch(JLandroid/view/View;Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
