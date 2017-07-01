.class public Landroid/support/v4/content/Loader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/Loader$ForceLoadContentObserver;,
        Landroid/support/v4/content/Loader$OnLoadCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@6
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    #@8
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    #@b
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@d
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/support/v4/content/Loader;->mContext:Landroid/content/Context;

    #@15
    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    #@3
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onAbandon()V

    #@6
    return-void
.end method

.method public commitContentChanged()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@3
    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    invoke-static {p1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@a
    const-string v1, "}"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@6
    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    #@9
    :cond_9
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    #@0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string v0, "mId="

    #@5
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    iget v0, p0, Landroid/support/v4/content/Loader;->mId:I

    #@a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@d
    const-string v0, " mListener="

    #@f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@14
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@17
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@19
    if-nez v0, :cond_23

    #@1b
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@1d
    if-nez v0, :cond_23

    #@1f
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@21
    if-eqz v0, :cond_44

    #@23
    :cond_23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    const-string v0, "mStarted="

    #@28
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@2d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@30
    const-string v0, " mContentChanged="

    #@32
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@37
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@3a
    const-string v0, " mProcessingChange="

    #@3c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@41
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@44
    :cond_44
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    #@46
    if-nez v0, :cond_4c

    #@48
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    #@4a
    if-eqz v0, :cond_63

    #@4c
    :cond_4c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    const-string v0, "mAbandoned="

    #@51
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    #@56
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@59
    const-string v0, " mReset="

    #@5b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    #@60
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@63
    :cond_63
    return-void
.end method

.method public forceLoad()V
    .registers 1

    #@0
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onForceLoad()V

    #@3
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getId()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/content/Loader;->mId:I

    #@2
    return v0
.end method

.method public isAbandoned()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    #@2
    return v0
.end method

.method public isReset()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    #@2
    return v0
.end method

.method public isStarted()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@2
    return v0
.end method

.method protected onAbandon()V
    .registers 1

    #@0
    return-void
.end method

.method public onContentChanged()V
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->forceLoad()V

    #@7
    :goto_7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@b
    goto :goto_7
.end method

.method protected onForceLoad()V
    .registers 1

    #@0
    return-void
.end method

.method protected onReset()V
    .registers 1

    #@0
    return-void
.end method

.method protected onStartLoading()V
    .registers 1

    #@0
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    #@0
    return-void
.end method

.method public registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "There is already a listener registered"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iput-object p2, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@e
    iput p1, p0, Landroid/support/v4/content/Loader;->mId:I

    #@10
    return-void
.end method

.method public reset()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onReset()V

    #@4
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    #@7
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@9
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    #@b
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@d
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@f
    return-void
.end method

.method public rollbackContentChanged()V
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@7
    :cond_7
    return-void
.end method

.method public final startLoading()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@4
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mReset:Z

    #@6
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    #@8
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStartLoading()V

    #@b
    return-void
.end method

.method public stopLoading()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    #@3
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStopLoading()V

    #@6
    return-void
.end method

.method public takeContentChanged()Z
    .registers 3

    #@0
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@2
    const/4 v1, 0x0

    #@3
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    #@5
    iget-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@7
    or-int/2addr v1, v0

    #@8
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    #@a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@a
    const-string v1, " id="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    iget v1, p0, Landroid/support/v4/content/Loader;->mId:I

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    const-string v1, "}"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "No listener register"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@e
    if-eq v0, p1, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "Attempting to unregister the wrong listener"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    #@1b
    return-void
.end method
