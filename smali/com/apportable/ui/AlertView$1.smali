.class Lcom/apportable/ui/AlertView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/AlertView;->show()V
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
    iput-object p1, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    #@0
    const/4 v11, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v10, -0x1

    #@3
    const/4 v9, -0x2

    #@4
    const/4 v4, 0x0

    #@5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@7
    const/16 v1, 0xb

    #@9
    if-lt v0, v1, :cond_10e

    #@b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #@d
    iget-object v1, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@f
    invoke-virtual {v1}, Lcom/apportable/ui/AlertView;->getContext()Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    #@16
    move-object v2, v0

    #@17
    :goto_17
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@19
    # getter for: Lcom/apportable/ui/AlertView;->mTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$000(Lcom/apportable/ui/AlertView;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@20
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@22
    # getter for: Lcom/apportable/ui/AlertView;->mMessage:Ljava/lang/String;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$100(Lcom/apportable/ui/AlertView;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@29
    move-result v0

    #@2a
    if-lez v0, :cond_35

    #@2c
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@2e
    # getter for: Lcom/apportable/ui/AlertView;->mMessage:Ljava/lang/String;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$100(Lcom/apportable/ui/AlertView;)Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@35
    :cond_35
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@37
    invoke-virtual {v0}, Lcom/apportable/ui/AlertView;->getChildCount()I

    #@3a
    move-result v0

    #@3b
    if-lez v0, :cond_85

    #@3d
    new-instance v7, Landroid/widget/LinearLayout;

    #@3f
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@41
    invoke-virtual {v0}, Lcom/apportable/ui/AlertView;->getContext()Landroid/content/Context;

    #@44
    move-result-object v0

    #@45
    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@48
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@4b
    move v3, v4

    #@4c
    move v5, v4

    #@4d
    :goto_4d
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@4f
    invoke-virtual {v0}, Lcom/apportable/ui/AlertView;->getChildCount()I

    #@52
    move-result v0

    #@53
    if-ge v3, v0, :cond_82

    #@55
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@57
    invoke-virtual {v0, v3}, Lcom/apportable/ui/AlertView;->getChildAt(I)Landroid/view/View;

    #@5a
    move-result-object v0

    #@5b
    check-cast v0, Lcom/apportable/ui/View;

    #@5d
    instance-of v1, v0, Lcom/apportable/ui/TextField;

    #@5f
    if-eqz v1, :cond_132

    #@61
    check-cast v0, Lcom/apportable/ui/TextField;

    #@63
    invoke-virtual {v0}, Lcom/apportable/ui/TextField;->getLayer()Lcom/apportable/ui/TextField$TextFieldLayer;

    #@66
    move-result-object v8

    #@67
    invoke-virtual {v8}, Lcom/apportable/ui/TextField$TextFieldLayer;->getParent()Landroid/view/ViewParent;

    #@6a
    move-result-object v1

    #@6b
    check-cast v1, Landroid/view/ViewGroup;

    #@6d
    if-eqz v1, :cond_72

    #@6f
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@72
    :cond_72
    invoke-virtual {v0}, Lcom/apportable/ui/TextField;->getLayer()Lcom/apportable/ui/TextField$TextFieldLayer;

    #@75
    move-result-object v0

    #@76
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@78
    invoke-direct {v1, v10, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@7b
    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7e
    add-int/lit8 v1, v5, 0x1

    #@80
    :goto_80
    if-lt v1, v11, :cond_11c

    #@82
    :cond_82
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    #@85
    :cond_85
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@87
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@8a
    move-result-object v1

    #@8b
    # setter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/apportable/ui/AlertView;->access$202(Lcom/apportable/ui/AlertView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    #@8e
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@90
    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    #@93
    move-result-object v0

    #@94
    iget-object v1, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@96
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@99
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@9b
    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    #@9e
    move-result-object v0

    #@9f
    iget-object v1, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@a1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    #@a4
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@a6
    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    #@a9
    move-result-object v0

    #@aa
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    #@ad
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@af
    # getter for: Lcom/apportable/ui/AlertView;->mButtonTitles:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$300(Lcom/apportable/ui/AlertView;)Ljava/util/HashMap;

    #@b2
    move-result-object v0

    #@b3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@b6
    move-result-object v0

    #@b7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@ba
    move-result-object v1

    #@bb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@be
    move-result v0

    #@bf
    if-eqz v0, :cond_eb

    #@c1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c4
    move-result-object v0

    #@c5
    check-cast v0, Ljava/lang/CharSequence;

    #@c7
    iget-object v2, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@c9
    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    #@cc
    move-result-object v2

    #@cd
    iget-object v3, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@cf
    invoke-virtual {v2, v10, v0, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    #@d2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d5
    move-result v0

    #@d6
    if-eqz v0, :cond_ea

    #@d8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@db
    move-result-object v0

    #@dc
    check-cast v0, Ljava/lang/CharSequence;

    #@de
    iget-object v1, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@e0
    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    #@e3
    move-result-object v1

    #@e4
    const/4 v2, -0x3

    #@e5
    iget-object v3, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@e7
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    #@ea
    :cond_ea
    move v4, v6

    #@eb
    :cond_eb
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@ed
    # getter for: Lcom/apportable/ui/AlertView;->mCancelTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$400(Lcom/apportable/ui/AlertView;)Ljava/lang/String;

    #@f0
    move-result-object v0

    #@f1
    if-eqz v0, :cond_122

    #@f3
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@f5
    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    #@f8
    move-result-object v0

    #@f9
    iget-object v1, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@fb
    # getter for: Lcom/apportable/ui/AlertView;->mCancelTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/apportable/ui/AlertView;->access$400(Lcom/apportable/ui/AlertView;)Ljava/lang/String;

    #@fe
    move-result-object v1

    #@ff
    iget-object v2, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@101
    invoke-virtual {v0, v9, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    #@104
    :cond_104
    :goto_104
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@106
    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    #@109
    move-result-object v0

    #@10a
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    #@10d
    return-void

    #@10e
    :cond_10e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #@110
    iget-object v1, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@112
    invoke-virtual {v1}, Lcom/apportable/ui/AlertView;->getContext()Landroid/content/Context;

    #@115
    move-result-object v1

    #@116
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@119
    move-object v2, v0

    #@11a
    goto/16 :goto_17

    #@11c
    :cond_11c
    add-int/lit8 v0, v3, 0x1

    #@11e
    move v3, v0

    #@11f
    move v5, v1

    #@120
    goto/16 :goto_4d

    #@122
    :cond_122
    if-nez v4, :cond_104

    #@124
    iget-object v0, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@126
    # getter for: Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/apportable/ui/AlertView;->access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;

    #@129
    move-result-object v0

    #@12a
    const-string v1, "Ok"

    #@12c
    iget-object v2, p0, Lcom/apportable/ui/AlertView$1;->this$0:Lcom/apportable/ui/AlertView;

    #@12e
    invoke-virtual {v0, v9, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    #@131
    goto :goto_104

    #@132
    :cond_132
    move v1, v5

    #@133
    goto/16 :goto_80
.end method
