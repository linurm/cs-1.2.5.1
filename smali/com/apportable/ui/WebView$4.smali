.class Lcom/apportable/ui/WebView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView;->loadData([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/WebView;

.field final synthetic val$baseURL:Ljava/lang/String;

.field final synthetic val$data:[B

.field final synthetic val$encodingName:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$4;->this$0:Lcom/apportable/ui/WebView;

    #@2
    iput-object p2, p0, Lcom/apportable/ui/WebView$4;->val$baseURL:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lcom/apportable/ui/WebView$4;->val$data:[B

    #@6
    iput-object p4, p0, Lcom/apportable/ui/WebView$4;->val$mimeType:Ljava/lang/String;

    #@8
    iput-object p5, p0, Lcom/apportable/ui/WebView$4;->val$encodingName:Ljava/lang/String;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/apportable/ui/WebView$4$1;

    #@6
    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$4$1;-><init>(Lcom/apportable/ui/WebView$4;)V

    #@9
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@c
    return-void
.end method
