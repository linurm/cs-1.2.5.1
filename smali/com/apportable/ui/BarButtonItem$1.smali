.class Lcom/apportable/ui/BarButtonItem$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/BarButtonItem;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/BarButtonItem;


# direct methods
.method constructor <init>(Lcom/apportable/ui/BarButtonItem;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/BarButtonItem$1;->this$0:Lcom/apportable/ui/BarButtonItem;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem$1;->this$0:Lcom/apportable/ui/BarButtonItem;

    #@2
    iget-object v1, p0, Lcom/apportable/ui/BarButtonItem$1;->this$0:Lcom/apportable/ui/BarButtonItem;

    #@4
    iget v1, v1, Lcom/apportable/ui/BarButtonItem;->mObject:I

    #@6
    invoke-virtual {v0, v1}, Lcom/apportable/ui/BarButtonItem;->click(I)V

    #@9
    return-void
.end method
