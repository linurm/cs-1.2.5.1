.class Lcom/google/android/gms/plus/PlusOneDummyView$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/PlusOneDummyView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusOneDummyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneDummyView$b;->mContext:Landroid/content/Context;

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/PlusOneDummyView$b;-><init>(Landroid/content/Context;)V

    #@3
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 6

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneDummyView$b;->mContext:Landroid/content/Context;

    #@2
    const-string v1, "com.google.android.gms"

    #@4
    const/4 v2, 0x4

    #@5
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_28

    #@c
    move-result-object v1

    #@d
    packed-switch p1, :pswitch_data_2c

    #@10
    const-string v0, "ic_plusone_standard"

    #@12
    :goto_12
    :try_start_12
    const-string v2, "drawable"

    #@14
    const-string v3, "com.google.android.gms"

    #@16
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@19
    move-result v0

    #@1a
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_1d} :catch_28

    #@1d
    move-result-object v0

    #@1e
    :goto_1e
    return-object v0

    #@1f
    :pswitch_1f
    const-string v0, "ic_plusone_small"

    #@21
    goto :goto_12

    #@22
    :pswitch_22
    const-string v0, "ic_plusone_medium"

    #@24
    goto :goto_12

    #@25
    :pswitch_25
    const-string v0, "ic_plusone_tall"

    #@27
    goto :goto_12

    #@28
    :catch_28
    move-exception v0

    #@29
    const/4 v0, 0x0

    #@2a
    goto :goto_1e

    #@2b
    nop

    #@2c
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public isValid()Z
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneDummyView$b;->mContext:Landroid/content/Context;

    #@2
    const-string v1, "com.google.android.gms"

    #@4
    const/4 v2, 0x4

    #@5
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :catch_e
    move-exception v0

    #@f
    const/4 v0, 0x0

    #@10
    goto :goto_d
.end method
