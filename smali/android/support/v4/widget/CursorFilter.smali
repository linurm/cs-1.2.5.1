.class Landroid/support/v4/widget/CursorFilter;
.super Landroid/widget/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/CursorFilter$CursorFilterClient;
    }
.end annotation


# instance fields
.field mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/CursorFilter$CursorFilterClient;)V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    #@3
    iput-object p1, p0, Landroid/support/v4/widget/CursorFilter;->mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;

    #@5
    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/CursorFilter;->mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;

    #@2
    check-cast p1, Landroid/database/Cursor;

    #@4
    invoke-interface {v0, p1}, Landroid/support/v4/widget/CursorFilter$CursorFilterClient;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/CursorFilter;->mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;

    #@2
    invoke-interface {v0, p1}, Landroid/support/v4/widget/CursorFilter$CursorFilterClient;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Landroid/widget/Filter$FilterResults;

    #@8
    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    #@b
    if-eqz v0, :cond_16

    #@d
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    #@10
    move-result v2

    #@11
    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    #@13
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@15
    :goto_15
    return-object v1

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    #@19
    const/4 v0, 0x0

    #@1a
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@1c
    goto :goto_15
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/CursorFilter;->mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;

    #@2
    invoke-interface {v0}, Landroid/support/v4/widget/CursorFilter$CursorFilterClient;->getCursor()Landroid/database/Cursor;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@8
    if-eqz v1, :cond_17

    #@a
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@c
    if-eq v1, v0, :cond_17

    #@e
    iget-object v1, p0, Landroid/support/v4/widget/CursorFilter;->mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;

    #@10
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@12
    check-cast v0, Landroid/database/Cursor;

    #@14
    invoke-interface {v1, v0}, Landroid/support/v4/widget/CursorFilter$CursorFilterClient;->changeCursor(Landroid/database/Cursor;)V

    #@17
    :cond_17
    return-void
.end method
