.class Lcom/facebook/widget/PlacePickerFragment$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/PlacePickerFragment;->createSearchTextTimer()Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/PlacePickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PlacePickerFragment;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment$2;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    #@2
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment$2;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    #@2
    # invokes: Lcom/facebook/widget/PlacePickerFragment;->onSearchTextTimerTriggered()V
    invoke-static {v0}, Lcom/facebook/widget/PlacePickerFragment;->access$200(Lcom/facebook/widget/PlacePickerFragment;)V

    #@5
    return-void
.end method
