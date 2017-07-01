.class Landroid/support/v4/widget/ContentLoadingProgressBar$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ContentLoadingProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V
    .registers 2

    #@0
    iput-object p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;

    #@3
    # setter for: Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z
    invoke-static {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->access$202(Landroid/support/v4/widget/ContentLoadingProgressBar;Z)Z

    #@6
    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;

    #@8
    # getter for: Landroid/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z
    invoke-static {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->access$300(Landroid/support/v4/widget/ContentLoadingProgressBar;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1c

    #@e
    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;

    #@10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@13
    move-result-wide v2

    #@14
    # setter for: Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J
    invoke-static {v0, v2, v3}, Landroid/support/v4/widget/ContentLoadingProgressBar;->access$102(Landroid/support/v4/widget/ContentLoadingProgressBar;J)J

    #@17
    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;

    #@19
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V

    #@1c
    :cond_1c
    return-void
.end method
