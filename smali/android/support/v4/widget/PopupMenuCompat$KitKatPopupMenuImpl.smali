.class Landroid/support/v4/widget/PopupMenuCompat$KitKatPopupMenuImpl;
.super Landroid/support/v4/widget/PopupMenuCompat$BasePopupMenuImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupMenuCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatPopupMenuImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/widget/PopupMenuCompat$BasePopupMenuImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getDragToOpenListener(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/widget/PopupMenuCompatKitKat;->getDragToOpenListener(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
