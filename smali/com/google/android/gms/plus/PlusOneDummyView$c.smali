.class Lcom/google/android/gms/plus/PlusOneDummyView$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/PlusOneDummyView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusOneDummyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneDummyView$c;->mContext:Landroid/content/Context;

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/PlusOneDummyView$c;-><init>(Landroid/content/Context;)V

    #@3
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 6

    #@0
    packed-switch p1, :pswitch_data_2c

    #@3
    const-string v0, "ic_plusone_standard_off_client"

    #@5
    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusOneDummyView$c;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v1

    #@b
    const-string v2, "drawable"

    #@d
    iget-object v3, p0, Lcom/google/android/gms/plus/PlusOneDummyView$c;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@16
    move-result v0

    #@17
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusOneDummyView$c;->mContext:Landroid/content/Context;

    #@19
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    :pswitch_22
    const-string v0, "ic_plusone_small_off_client"

    #@24
    goto :goto_5

    #@25
    :pswitch_25
    const-string v0, "ic_plusone_medium_off_client"

    #@27
    goto :goto_5

    #@28
    :pswitch_28
    const-string v0, "ic_plusone_tall_off_client"

    #@2a
    goto :goto_5

    #@2b
    nop

    #@2c
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_22
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method public isValid()Z
    .registers 8

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneDummyView$c;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    const-string v1, "ic_plusone_small_off_client"

    #@8
    const-string v2, "drawable"

    #@a
    iget-object v3, p0, Lcom/google/android/gms/plus/PlusOneDummyView$c;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@13
    move-result v0

    #@14
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusOneDummyView$c;->mContext:Landroid/content/Context;

    #@16
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@19
    move-result-object v1

    #@1a
    const-string v2, "ic_plusone_medium_off_client"

    #@1c
    const-string v3, "drawable"

    #@1e
    iget-object v4, p0, Lcom/google/android/gms/plus/PlusOneDummyView$c;->mContext:Landroid/content/Context;

    #@20
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@27
    move-result v1

    #@28
    iget-object v2, p0, Lcom/google/android/gms/plus/PlusOneDummyView$c;->mContext:Landroid/content/Context;

    #@2a
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2d
    move-result-object v2

    #@2e
    const-string v3, "ic_plusone_tall_off_client"

    #@30
    const-string v4, "drawable"

    #@32
    iget-object v5, p0, Lcom/google/android/gms/plus/PlusOneDummyView$c;->mContext:Landroid/content/Context;

    #@34
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    move-result v2

    #@3c
    iget-object v3, p0, Lcom/google/android/gms/plus/PlusOneDummyView$c;->mContext:Landroid/content/Context;

    #@3e
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@41
    move-result-object v3

    #@42
    const-string v4, "ic_plusone_standard_off_client"

    #@44
    const-string v5, "drawable"

    #@46
    iget-object v6, p0, Lcom/google/android/gms/plus/PlusOneDummyView$c;->mContext:Landroid/content/Context;

    #@48
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    move-result v3

    #@50
    if-eqz v0, :cond_5a

    #@52
    if-eqz v1, :cond_5a

    #@54
    if-eqz v2, :cond_5a

    #@56
    if-eqz v3, :cond_5a

    #@58
    const/4 v0, 0x1

    #@59
    :goto_59
    return v0

    #@5a
    :cond_5a
    const/4 v0, 0x0

    #@5b
    goto :goto_59
.end method
