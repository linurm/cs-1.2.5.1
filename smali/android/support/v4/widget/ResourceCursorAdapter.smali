.class public abstract Landroid/support/v4/widget/ResourceCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;


# instance fields
.field private mDropDownLayout:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-direct {p0, p1, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    #@3
    iput p2, p0, Landroid/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    #@5
    iput p2, p0, Landroid/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    #@7
    const-string v0, "layout_inflater"

    #@9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/view/LayoutInflater;

    #@f
    iput-object v0, p0, Landroid/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .registers 6

    #@0
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    #@3
    iput p2, p0, Landroid/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    #@5
    iput p2, p0, Landroid/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    #@7
    const-string v0, "layout_inflater"

    #@9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/view/LayoutInflater;

    #@f
    iput-object v0, p0, Landroid/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .registers 6

    #@0
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    #@3
    iput p2, p0, Landroid/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    #@5
    iput p2, p0, Landroid/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    #@7
    const-string v0, "layout_inflater"

    #@9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/view/LayoutInflater;

    #@f
    iput-object v0, p0, Landroid/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@11
    return-void
.end method


# virtual methods
.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@2
    iget v1, p0, Landroid/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@2
    iget v1, p0, Landroid/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public setDropDownViewResource(I)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    #@2
    return-void
.end method

.method public setViewResource(I)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    #@2
    return-void
.end method
