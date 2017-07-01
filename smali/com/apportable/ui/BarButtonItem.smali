.class public Lcom/apportable/ui/BarButtonItem;
.super Lcom/apportable/ui/BarItem;


# static fields
.field public static final ACTION:I = 0x9

.field public static final ADD:I = 0x4

.field public static final BOOKMARKS:I = 0xb

.field public static final CAMERA:I = 0xf

.field public static final CANCEL:I = 0x1

.field public static final COMPOSE:I = 0x7

.field public static final CUSTOM:I = -0x1

.field public static final DONE:I = 0x0

.field public static final EDIT:I = 0x2

.field public static final FASTFORWARD:I = 0x14

.field public static final FIXED_SPACE:I = 0x6

.field public static final FLEXIBLE_SPACE:I = 0x5

.field public static final ORGANIZE:I = 0xa

.field public static final PAGECURL:I = 0x17

.field public static final PAUSE:I = 0x12

.field public static final PLAY:I = 0x11

.field public static final REDO:I = 0x16

.field public static final REFRESH:I = 0xd

.field public static final REPLY:I = 0x8

.field public static final REWIND:I = 0x13

.field public static final SAVE:I = 0x3

.field public static final SEARCH:I = 0xc

.field public static final STOP:I = 0xe

.field public static final TRASH:I = 0x10

.field public static final UNDO:I = 0x15


# instance fields
.field protected mButton:Landroid/widget/Button;

.field private mStyle:I

.field private mTitle:Ljava/lang/String;

.field protected mView:Lcom/apportable/ui/View;

.field private mWidth:F


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 11

    #@0
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/BarItem;-><init>(Landroid/content/Context;I)V

    #@6
    const-string v0, ""

    #@8
    iput-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mTitle:Ljava/lang/String;

    #@a
    const/high16 v0, -0x40000000    # -2.0f

    #@c
    iput v0, p0, Lcom/apportable/ui/BarButtonItem;->mWidth:F

    #@e
    const/4 v0, -0x1

    #@f
    iput v0, p0, Lcom/apportable/ui/BarButtonItem;->mStyle:I

    #@11
    iput p2, p0, Lcom/apportable/ui/BarButtonItem;->mObject:I

    #@13
    new-instance v0, Landroid/widget/Button;

    #@15
    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    #@18
    iput-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@1a
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@1c
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setSingleLine(Z)V

    #@1f
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@21
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@23
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@26
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@28
    const/4 v1, 0x0

    #@29
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@2c
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@2e
    new-instance v1, Landroid/content/res/ColorStateList;

    #@30
    new-array v2, v7, [[I

    #@32
    new-array v3, v6, [I

    #@34
    const v4, 0x10100a7

    #@37
    aput v4, v3, v5

    #@39
    aput-object v3, v2, v5

    #@3b
    new-array v3, v6, [I

    #@3d
    aput v5, v3, v5

    #@3f
    aput-object v3, v2, v6

    #@41
    new-array v3, v7, [I

    #@43
    fill-array-data v3, :array_66

    #@46
    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@49
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@4c
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@4e
    const/high16 v1, 0x41880000    # 17.0f

    #@50
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    #@53
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@55
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    #@57
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    #@5a
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@5c
    new-instance v1, Lcom/apportable/ui/BarButtonItem$1;

    #@5e
    invoke-direct {v1, p0}, Lcom/apportable/ui/BarButtonItem$1;-><init>(Lcom/apportable/ui/BarButtonItem;)V

    #@61
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@64
    return-void

    #@65
    nop

    #@66
    :array_66
    .array-data 4
        -0x33000001    # -1.3421772E8f
        -0x1
    .end array-data
.end method

.method private _setStyle(I)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    packed-switch p1, :pswitch_data_170

    #@4
    :goto_4
    return-void

    #@5
    :pswitch_5
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@7
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@a
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@c
    const-string v1, "Done"

    #@e
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@11
    goto :goto_4

    #@12
    :pswitch_12
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@14
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@17
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@19
    const-string v1, "Cancel"

    #@1b
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@1e
    goto :goto_4

    #@1f
    :pswitch_1f
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@21
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@24
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@26
    const-string v1, "Edit"

    #@28
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@2b
    goto :goto_4

    #@2c
    :pswitch_2c
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@2e
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@31
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@33
    const-string v1, "Save"

    #@35
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@38
    goto :goto_4

    #@39
    :pswitch_39
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@3b
    const-string v1, ""

    #@3d
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@40
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@42
    const v1, 0x1080033

    #@45
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    #@48
    goto :goto_4

    #@49
    :pswitch_49
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@4b
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@4e
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@50
    const-string v1, ""

    #@52
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@55
    goto :goto_4

    #@56
    :pswitch_56
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@58
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5b
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@5d
    const-string v1, ""

    #@5f
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@62
    goto :goto_4

    #@63
    :pswitch_63
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@65
    const-string v1, ""

    #@67
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@6a
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@6c
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@6f
    goto :goto_4

    #@70
    :pswitch_70
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@72
    const-string v1, ""

    #@74
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@77
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@79
    const v1, 0x1080050

    #@7c
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    #@7f
    goto :goto_4

    #@80
    :pswitch_80
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@82
    const-string v1, ""

    #@84
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@87
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@89
    const v1, 0x1080051

    #@8c
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    #@8f
    goto/16 :goto_4

    #@91
    :pswitch_91
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@93
    const-string v1, ""

    #@95
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@98
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@9a
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9d
    goto/16 :goto_4

    #@9f
    :pswitch_9f
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@a1
    const-string v1, ""

    #@a3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@a6
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@a8
    const v1, 0x1080045

    #@ab
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    #@ae
    goto/16 :goto_4

    #@b0
    :pswitch_b0
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@b2
    const-string v1, ""

    #@b4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@b7
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@b9
    const v1, 0x108004f

    #@bc
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    #@bf
    goto/16 :goto_4

    #@c1
    :pswitch_c1
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@c3
    const-string v1, ""

    #@c5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@c8
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@ca
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@cd
    goto/16 :goto_4

    #@cf
    :pswitch_cf
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@d1
    const-string v1, ""

    #@d3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@d6
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@d8
    const v1, 0x1080038

    #@db
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    #@de
    goto/16 :goto_4

    #@e0
    :pswitch_e0
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@e2
    const-string v1, ""

    #@e4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@e7
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@e9
    const v1, 0x1080037

    #@ec
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    #@ef
    goto/16 :goto_4

    #@f1
    :pswitch_f1
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@f3
    const-string v1, ""

    #@f5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@f8
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@fa
    const v1, 0x108003c

    #@fd
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    #@100
    goto/16 :goto_4

    #@102
    :pswitch_102
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@104
    const-string v1, ""

    #@106
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@109
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@10b
    const v1, 0x1080024

    #@10e
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    #@111
    goto/16 :goto_4

    #@113
    :pswitch_113
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@115
    const-string v1, ""

    #@117
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@11a
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@11c
    const v1, 0x1080023

    #@11f
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    #@122
    goto/16 :goto_4

    #@124
    :pswitch_124
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@126
    const-string v1, ""

    #@128
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@12b
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@12d
    const v1, 0x1080025

    #@130
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    #@133
    goto/16 :goto_4

    #@135
    :pswitch_135
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@137
    const-string v1, ""

    #@139
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@13c
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@13e
    const v1, 0x1080022

    #@141
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    #@144
    goto/16 :goto_4

    #@146
    :pswitch_146
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@148
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@14b
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@14d
    const-string v1, "Undo"

    #@14f
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@152
    goto/16 :goto_4

    #@154
    :pswitch_154
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@156
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@159
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@15b
    const-string v1, "Redo"

    #@15d
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@160
    goto/16 :goto_4

    #@162
    :pswitch_162
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@164
    const-string v1, ""

    #@166
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@169
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@16b
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@16e
    goto/16 :goto_4

    #@170
    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_5
        :pswitch_12
        :pswitch_1f
        :pswitch_2c
        :pswitch_39
        :pswitch_49
        :pswitch_56
        :pswitch_63
        :pswitch_70
        :pswitch_80
        :pswitch_91
        :pswitch_9f
        :pswitch_b0
        :pswitch_c1
        :pswitch_cf
        :pswitch_e0
        :pswitch_f1
        :pswitch_102
        :pswitch_113
        :pswitch_124
        :pswitch_135
        :pswitch_146
        :pswitch_154
        :pswitch_162
    .end packed-switch
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/BarButtonItem;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/BarButtonItem;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/BarButtonItem;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method


# virtual methods
.method protected native click(I)V
.end method

.method getLayout()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    #@0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@2
    iget v1, p0, Lcom/apportable/ui/BarButtonItem;->mWidth:F

    #@4
    float-to-int v1, v1

    #@5
    const/4 v2, -0x1

    #@6
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@9
    return-object v0
.end method

.method getView()Landroid/view/View;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mView:Lcom/apportable/ui/View;

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mView:Lcom/apportable/ui/View;

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@9
    goto :goto_6
.end method

.method public setCustomView(Lcom/apportable/ui/View;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/BarButtonItem;->mView:Lcom/apportable/ui/View;

    #@2
    return-void
.end method

.method public setStyle(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/ui/BarButtonItem;->mStyle:I

    #@2
    invoke-direct {p0, p1}, Lcom/apportable/ui/BarButtonItem;->_setStyle(I)V

    #@5
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/BarButtonItem;->mTitle:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@7
    return-void
.end method

.method public setWidth(F)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p1, v0

    #@3
    if-nez v0, :cond_13

    #@5
    const/high16 v0, -0x40000000    # -2.0f

    #@7
    iput v0, p0, Lcom/apportable/ui/BarButtonItem;->mWidth:F

    #@9
    :goto_9
    iget-object v0, p0, Lcom/apportable/ui/BarButtonItem;->mButton:Landroid/widget/Button;

    #@b
    invoke-virtual {p0}, Lcom/apportable/ui/BarButtonItem;->getLayout()Landroid/widget/LinearLayout$LayoutParams;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@12
    return-void

    #@13
    :cond_13
    iput p1, p0, Lcom/apportable/ui/BarButtonItem;->mWidth:F

    #@15
    goto :goto_9
.end method
