.class Lcom/apportable/ui/Button$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/Button;


# direct methods
.method constructor <init>(Lcom/apportable/ui/Button;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/Button$1;->this$0:Lcom/apportable/ui/Button;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Button$1;->this$0:Lcom/apportable/ui/Button;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-virtual {v0, v1}, Lcom/apportable/ui/Button;->sendEvent(I)V

    #@7
    return-void
.end method
