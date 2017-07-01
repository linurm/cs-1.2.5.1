.class Lcom/apportable/ui/Switch;
.super Lcom/apportable/ui/Control;


# instance fields
.field private mChecked:Z

.field private mSwitch:Landroid/widget/CheckBox;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;I)V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/apportable/ui/Switch;->mChecked:Z

    #@6
    invoke-direct {p0}, Lcom/apportable/ui/Switch;->init()V

    #@9
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/apportable/ui/Switch;->mChecked:Z

    #@6
    new-instance v0, Landroid/widget/CheckBox;

    #@8
    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    #@b
    iput-object v0, p0, Lcom/apportable/ui/Switch;->mSwitch:Landroid/widget/CheckBox;

    #@d
    invoke-direct {p0}, Lcom/apportable/ui/Switch;->init()V

    #@10
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/Switch;)Landroid/widget/CheckBox;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Switch;->mSwitch:Landroid/widget/CheckBox;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/ui/Switch;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Switch;->mChecked:Z

    #@2
    return v0
.end method

.method static synthetic access$102(Lcom/apportable/ui/Switch;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/Switch;->mChecked:Z

    #@2
    return p1
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/Switch;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/Switch;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Switch;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/Switch;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/Switch;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/Switch;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private init()V
    .registers 3

    #@0
    new-instance v0, Landroid/widget/CheckBox;

    #@2
    invoke-virtual {p0}, Lcom/apportable/ui/Switch;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    #@9
    iput-object v0, p0, Lcom/apportable/ui/Switch;->mSwitch:Landroid/widget/CheckBox;

    #@b
    iget-object v0, p0, Lcom/apportable/ui/Switch;->mSwitch:Landroid/widget/CheckBox;

    #@d
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Switch;->setContentView(Landroid/view/View;)V

    #@10
    iget-object v0, p0, Lcom/apportable/ui/Switch;->mSwitch:Landroid/widget/CheckBox;

    #@12
    new-instance v1, Lcom/apportable/ui/Switch$1;

    #@14
    invoke-direct {v1, p0}, Lcom/apportable/ui/Switch$1;-><init>(Lcom/apportable/ui/Switch;)V

    #@17
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@1a
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Switch;->mChecked:Z

    #@2
    return v0
.end method

.method public setChecked(Z)V
    .registers 3

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/Switch;->mChecked:Z

    #@2
    iget-object v0, p0, Lcom/apportable/ui/Switch;->mSwitch:Landroid/widget/CheckBox;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    #@7
    return-void
.end method
