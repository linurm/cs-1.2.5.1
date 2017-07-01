.class Lcom/apportable/ui/AlertView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/AlertView;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/AlertView;


# direct methods
.method constructor <init>(Lcom/apportable/ui/AlertView;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/AlertView$2;->this$0:Lcom/apportable/ui/AlertView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/AlertView$2;->this$0:Lcom/apportable/ui/AlertView;

    #@2
    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    #@9
    return-void
.end method
