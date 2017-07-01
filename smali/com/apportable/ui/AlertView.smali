.class public Lcom/apportable/ui/AlertView;
.super Lcom/apportable/ui/View;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private mButtonTitles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelButton:I

.field private mCancelTitle:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field private mMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVisible:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    #@4
    const-string v0, ""

    #@6
    iput-object v0, p0, Lcom/apportable/ui/AlertView;->mTitle:Ljava/lang/String;

    #@8
    const-string v0, ""

    #@a
    iput-object v0, p0, Lcom/apportable/ui/AlertView;->mMessage:Ljava/lang/String;

    #@c
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/apportable/ui/AlertView;->mVisible:Z

    #@f
    const/4 v0, -0x1

    #@10
    iput v0, p0, Lcom/apportable/ui/AlertView;->mCancelButton:I

    #@12
    iput-object v1, p0, Lcom/apportable/ui/AlertView;->mCancelTitle:Ljava/lang/String;

    #@14
    new-instance v0, Ljava/util/HashMap;

    #@16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@19
    iput-object v0, p0, Lcom/apportable/ui/AlertView;->mButtonTitles:Ljava/util/HashMap;

    #@1b
    iput-object v1, p0, Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;

    #@1d
    invoke-direct {p0}, Lcom/apportable/ui/AlertView;->init()V

    #@20
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@4
    const-string v0, ""

    #@6
    iput-object v0, p0, Lcom/apportable/ui/AlertView;->mTitle:Ljava/lang/String;

    #@8
    const-string v0, ""

    #@a
    iput-object v0, p0, Lcom/apportable/ui/AlertView;->mMessage:Ljava/lang/String;

    #@c
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/apportable/ui/AlertView;->mVisible:Z

    #@f
    const/4 v0, -0x1

    #@10
    iput v0, p0, Lcom/apportable/ui/AlertView;->mCancelButton:I

    #@12
    iput-object v1, p0, Lcom/apportable/ui/AlertView;->mCancelTitle:Ljava/lang/String;

    #@14
    new-instance v0, Ljava/util/HashMap;

    #@16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@19
    iput-object v0, p0, Lcom/apportable/ui/AlertView;->mButtonTitles:Ljava/util/HashMap;

    #@1b
    iput-object v1, p0, Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;

    #@1d
    invoke-direct {p0}, Lcom/apportable/ui/AlertView;->init()V

    #@20
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/AlertView;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/AlertView;->mTitle:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/ui/AlertView;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/AlertView;->mMessage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Lcom/apportable/ui/AlertView;)Landroid/app/AlertDialog;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;

    #@2
    return-object v0
.end method

.method static synthetic access$202(Lcom/apportable/ui/AlertView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/AlertView;->mDialog:Landroid/app/AlertDialog;

    #@2
    return-object p1
.end method

.method static synthetic access$300(Lcom/apportable/ui/AlertView;)Ljava/util/HashMap;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/AlertView;->mButtonTitles:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic access$400(Lcom/apportable/ui/AlertView;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/AlertView;->mCancelTitle:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$500(Lcom/apportable/ui/AlertView;II)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/AlertView;->nativeOnClick(II)V

    #@3
    return-void
.end method

.method static synthetic access$600(Lcom/apportable/ui/AlertView;I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/AlertView;->nativeOnDismiss(I)V

    #@3
    return-void
.end method

.method static synthetic access$700(Lcom/apportable/ui/AlertView;I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/AlertView;->nativeOnCancel(I)V

    #@3
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/AlertView;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/AlertView;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/AlertView;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/AlertView;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/AlertView;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/AlertView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private init()V
    .registers 1

    #@0
    return-void
.end method

.method private native nativeOnCancel(I)V
.end method

.method private native nativeOnClick(II)V
.end method

.method private native nativeOnDismiss(I)V
.end method

.method private onClick(I)V
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/AlertView$3;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/AlertView$3;-><init>(Lcom/apportable/ui/AlertView;I)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method


# virtual methods
.method public addButtonWithTitle(Ljava/lang/String;I)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/ui/AlertView;->mButtonTitles:Ljava/util/HashMap;

    #@2
    new-instance v1, Ljava/lang/Integer;

    #@4
    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    #@7
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    return-void
.end method

.method public dismiss()V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/AlertView;->mVisible:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_11

    #@5
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@8
    move-result-object v0

    #@9
    new-instance v1, Lcom/apportable/ui/AlertView$2;

    #@b
    invoke-direct {v1, p0}, Lcom/apportable/ui/AlertView$2;-><init>(Lcom/apportable/ui/AlertView;)V

    #@e
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@11
    :cond_11
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/AlertView$5;

    #@2
    invoke-direct {v0, p0}, Lcom/apportable/ui/AlertView$5;-><init>(Lcom/apportable/ui/AlertView;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    iget v0, p0, Lcom/apportable/ui/AlertView;->mCancelButton:I

    #@4
    iget-object v3, p0, Lcom/apportable/ui/AlertView;->mCancelTitle:Ljava/lang/String;

    #@6
    if-eqz v3, :cond_d

    #@8
    iget v3, p0, Lcom/apportable/ui/AlertView;->mCancelButton:I

    #@a
    if-gez v3, :cond_d

    #@c
    move v0, v1

    #@d
    :cond_d
    packed-switch p2, :pswitch_data_24

    #@10
    const/4 v0, -0x1

    #@11
    :goto_11
    :pswitch_11
    invoke-direct {p0, v0}, Lcom/apportable/ui/AlertView;->onClick(I)V

    #@14
    return-void

    #@15
    :pswitch_15
    if-eqz v0, :cond_21

    #@17
    move v0, v1

    #@18
    goto :goto_11

    #@19
    :pswitch_19
    if-eqz v0, :cond_1f

    #@1b
    iget v0, p0, Lcom/apportable/ui/AlertView;->mCancelButton:I

    #@1d
    if-ne v0, v2, :cond_21

    #@1f
    :cond_1f
    const/4 v0, 0x2

    #@20
    goto :goto_11

    #@21
    :cond_21
    move v0, v2

    #@22
    goto :goto_11

    #@23
    nop

    #@24
    :pswitch_data_24
    .packed-switch -0x3
        :pswitch_19
        :pswitch_11
        :pswitch_15
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/AlertView$4;

    #@2
    invoke-direct {v0, p0}, Lcom/apportable/ui/AlertView$4;-><init>(Lcom/apportable/ui/AlertView;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public setCancelButtonIndex(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/ui/AlertView;->mCancelButton:I

    #@2
    return-void
.end method

.method public setCancelButtonTitle(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/AlertView;->mCancelTitle:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    #@0
    if-eqz p1, :cond_4

    #@2
    iput-object p1, p0, Lcom/apportable/ui/AlertView;->mMessage:Ljava/lang/String;

    #@4
    :cond_4
    return-void
.end method

.method public setStyle(I)V
    .registers 2

    #@0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    #@0
    if-eqz p1, :cond_4

    #@2
    iput-object p1, p0, Lcom/apportable/ui/AlertView;->mTitle:Ljava/lang/String;

    #@4
    :cond_4
    return-void
.end method

.method public show()V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/AlertView;->mVisible:Z

    #@2
    if-nez v0, :cond_13

    #@4
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/apportable/ui/AlertView;->mVisible:Z

    #@7
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@a
    move-result-object v0

    #@b
    new-instance v1, Lcom/apportable/ui/AlertView$1;

    #@d
    invoke-direct {v1, p0}, Lcom/apportable/ui/AlertView$1;-><init>(Lcom/apportable/ui/AlertView;)V

    #@10
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@13
    :cond_13
    return-void
.end method
