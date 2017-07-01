.class Lcom/apportable/ui/AlertView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/AlertView;->onClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/AlertView;

.field final synthetic val$buttonIndex:I


# direct methods
.method constructor <init>(Lcom/apportable/ui/AlertView;I)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/AlertView$3;->this$0:Lcom/apportable/ui/AlertView;

    #@2
    iput p2, p0, Lcom/apportable/ui/AlertView$3;->val$buttonIndex:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/ui/AlertView$3;->this$0:Lcom/apportable/ui/AlertView;

    #@2
    iget-object v1, p0, Lcom/apportable/ui/AlertView$3;->this$0:Lcom/apportable/ui/AlertView;

    #@4
    iget v1, v1, Lcom/apportable/ui/AlertView;->mObject:I

    #@6
    iget v2, p0, Lcom/apportable/ui/AlertView$3;->val$buttonIndex:I

    #@8
    # invokes: Lcom/apportable/ui/AlertView;->nativeOnClick(II)V
    invoke-static {v0, v1, v2}, Lcom/apportable/ui/AlertView;->access$500(Lcom/apportable/ui/AlertView;II)V

    #@b
    return-void
.end method
