.class Landroid/support/v4/widget/ListPopupWindowCompat$BaseListPopupWindowImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/ListPopupWindowCompat$ListPopupWindowImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ListPopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseListPopupWindowImpl"
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
.method public createDragToOpenListener(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
