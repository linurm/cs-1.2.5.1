.class Lcom/apportable/ui/WebDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/WebDialog;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebDialog;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    #@0
    const/16 v10, 0x64

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v8, -0x1

    #@4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    #@6
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@8
    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@f
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@11
    # getter for: Lcom/apportable/ui/WebDialog;->mTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$300(Lcom/apportable/ui/WebDialog;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@18
    new-instance v2, Lcom/apportable/ui/WebDialog$ApportableWebView;

    #@1a
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@1c
    iget-object v3, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@1e
    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v3}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    #@21
    move-result-object v3

    #@22
    invoke-direct {v2, v0, v3}, Lcom/apportable/ui/WebDialog$ApportableWebView;-><init>(Lcom/apportable/ui/WebDialog;Landroid/content/Context;)V

    #@25
    invoke-virtual {v2}, Lcom/apportable/ui/WebDialog$ApportableWebView;->getSettings()Landroid/webkit/WebSettings;

    #@28
    move-result-object v0

    #@29
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    #@2b
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    #@2e
    invoke-virtual {v2}, Lcom/apportable/ui/WebDialog$ApportableWebView;->getSettings()Landroid/webkit/WebSettings;

    #@31
    move-result-object v0

    #@32
    const/4 v3, 0x2

    #@33
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    #@36
    invoke-virtual {v2}, Lcom/apportable/ui/WebDialog$ApportableWebView;->getSettings()Landroid/webkit/WebSettings;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    #@3d
    invoke-virtual {v2}, Lcom/apportable/ui/WebDialog$ApportableWebView;->requestFocusFromTouch()Z

    #@40
    new-instance v0, Lcom/apportable/ui/WebDialog$1$1;

    #@42
    invoke-direct {v0, p0}, Lcom/apportable/ui/WebDialog$1$1;-><init>(Lcom/apportable/ui/WebDialog$1;)V

    #@45
    invoke-virtual {v2, v0}, Lcom/apportable/ui/WebDialog$ApportableWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    #@48
    new-instance v0, Lcom/apportable/ui/WebDialog$1$2;

    #@4a
    invoke-direct {v0, p0}, Lcom/apportable/ui/WebDialog$1$2;-><init>(Lcom/apportable/ui/WebDialog$1;)V

    #@4d
    invoke-virtual {v2, v0}, Lcom/apportable/ui/WebDialog$ApportableWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@50
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@52
    # getter for: Lcom/apportable/ui/WebDialog;->mURL:Ljava/lang/String;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$700(Lcom/apportable/ui/WebDialog;)Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v2, v0}, Lcom/apportable/ui/WebDialog$ApportableWebView;->loadUrl(Ljava/lang/String;)V

    #@59
    new-instance v3, Landroid/widget/RelativeLayout;

    #@5b
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@5d
    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    #@60
    move-result-object v0

    #@61
    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    #@64
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@66
    new-instance v4, Landroid/widget/ProgressBar;

    #@68
    iget-object v5, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@6a
    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v5}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    #@6d
    move-result-object v5

    #@6e
    const/4 v6, 0x0

    #@6f
    const v7, 0x1010079

    #@72
    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@75
    # setter for: Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0, v4}, Lcom/apportable/ui/WebDialog;->access$602(Lcom/apportable/ui/WebDialog;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    #@78
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@7a
    # getter for: Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$600(Lcom/apportable/ui/WebDialog;)Landroid/widget/ProgressBar;

    #@7d
    move-result-object v0

    #@7e
    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    #@81
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@83
    # getter for: Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$600(Lcom/apportable/ui/WebDialog;)Landroid/widget/ProgressBar;

    #@86
    move-result-object v0

    #@87
    const/4 v4, 0x0

    #@88
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@8b
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #@8d
    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #@90
    const/16 v4, 0xd

    #@92
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    #@95
    iget-object v4, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@97
    # getter for: Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/apportable/ui/WebDialog;->access$600(Lcom/apportable/ui/WebDialog;)Landroid/widget/ProgressBar;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@9e
    new-instance v4, Landroid/widget/LinearLayout;

    #@a0
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@a2
    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    #@a5
    move-result-object v0

    #@a6
    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@a9
    new-instance v5, Landroid/widget/EditText;

    #@ab
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@ad
    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    #@b0
    move-result-object v0

    #@b1
    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    #@b4
    const/16 v0, 0x8

    #@b6
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setVisibility(I)V

    #@b9
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@bb
    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    #@be
    move-result-object v0

    #@bf
    const-string v6, "window"

    #@c1
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c4
    move-result-object v0

    #@c5
    check-cast v0, Landroid/view/WindowManager;

    #@c7
    new-instance v6, Landroid/util/DisplayMetrics;

    #@c9
    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    #@cc
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@cf
    move-result-object v0

    #@d0
    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@d3
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@d6
    invoke-virtual {v4, v3, v8, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    #@d9
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    #@db
    add-int/lit8 v0, v0, -0x32

    #@dd
    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    #@df
    add-int/lit8 v3, v3, -0x32

    #@e1
    invoke-virtual {v4, v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    #@e4
    const/4 v0, -0x2

    #@e5
    invoke-virtual {v4, v5, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    #@e8
    new-instance v0, Landroid/widget/ScrollView;

    #@ea
    iget-object v2, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@ec
    # getter for: Lcom/apportable/ui/WebDialog;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/apportable/ui/WebDialog;->access$200(Lcom/apportable/ui/WebDialog;)Landroid/content/Context;

    #@ef
    move-result-object v2

    #@f0
    invoke-direct {v0, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    #@f3
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    #@f5
    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@f8
    invoke-virtual {v0, v4, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@fb
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    #@fe
    const-string v0, "Close"

    #@100
    new-instance v2, Lcom/apportable/ui/WebDialog$1$3;

    #@102
    invoke-direct {v2, p0}, Lcom/apportable/ui/WebDialog$1$3;-><init>(Lcom/apportable/ui/WebDialog$1;)V

    #@105
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@108
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@10a
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    #@10d
    move-result-object v1

    #@10e
    # setter for: Lcom/apportable/ui/WebDialog;->mAlert:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/apportable/ui/WebDialog;->access$802(Lcom/apportable/ui/WebDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    #@111
    return-void
.end method
