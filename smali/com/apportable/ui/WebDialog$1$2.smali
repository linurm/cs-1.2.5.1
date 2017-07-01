.class Lcom/apportable/ui/WebDialog$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebDialog$1;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebDialog$1;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebDialog$1$2;->this$1:Lcom/apportable/ui/WebDialog$1;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    #@0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_14

    #@7
    :cond_7
    :goto_7
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_7

    #@f
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    #@12
    goto :goto_7

    #@13
    nop

    #@14
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
