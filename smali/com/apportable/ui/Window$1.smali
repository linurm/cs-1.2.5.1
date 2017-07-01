.class Lcom/apportable/ui/Window$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/Window;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/Window;


# direct methods
.method constructor <init>(Lcom/apportable/ui/Window;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/Window$1;->this$0:Lcom/apportable/ui/Window;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Window$1;->this$0:Lcom/apportable/ui/Window;

    #@2
    # invokes: Lcom/apportable/ui/Window;->reapplySystemUiVisibility()V
    invoke-static {v0}, Lcom/apportable/ui/Window;->access$000(Lcom/apportable/ui/Window;)V

    #@5
    return-void
.end method
