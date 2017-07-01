.class Landroid/support/v13/app/FragmentTabHost$DummyTabFactory;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyTabFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost$DummyTabFactory;->mContext:Landroid/content/Context;

    #@5
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    new-instance v0, Landroid/view/View;

    #@3
    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost$DummyTabFactory;->mContext:Landroid/content/Context;

    #@5
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@8
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    #@b
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    #@e
    return-object v0
.end method
