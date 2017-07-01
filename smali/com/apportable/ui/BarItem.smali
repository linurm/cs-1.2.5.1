.class public Lcom/apportable/ui/BarItem;
.super Ljava/lang/Object;


# instance fields
.field protected mObject:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/apportable/ui/BarItem;->mObject:I

    #@6
    iput p2, p0, Lcom/apportable/ui/BarItem;->mObject:I

    #@8
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/BarItem;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/BarItem;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/BarItem;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method


# virtual methods
.method getLayout()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    #@0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@2
    const/4 v1, -0x2

    #@3
    const/4 v2, -0x1

    #@4
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@7
    return-object v0
.end method

.method getView()Landroid/view/View;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
