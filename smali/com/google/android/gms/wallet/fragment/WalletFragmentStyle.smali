.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field akE:Landroid/os/Bundle;

.field akF:I

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/fragment/c;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/c;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->xM:I

    #@6
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@d
    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;I)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@7
    iput p3, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akF:I

    #@9
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;ILjava/lang/String;)V
    .registers 8

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_8

    #@f
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@11
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/Dimension;->a(Landroid/util/TypedValue;)J

    #@14
    move-result-wide v2

    #@15
    invoke-virtual {v1, p3, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@18
    goto :goto_8
.end method

.method private a(Landroid/content/res/TypedArray;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_10

    #@8
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@a
    invoke-virtual {v0, p4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_11

    #@10
    :cond_10
    :goto_10
    return-void

    #@11
    :cond_11
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_10

    #@17
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@19
    const/16 v2, 0x1c

    #@1b
    if-lt v1, v2, :cond_2b

    #@1d
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@1f
    const/16 v2, 0x1f

    #@21
    if-gt v1, v2, :cond_2b

    #@23
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@25
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@27
    invoke-virtual {v1, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2a
    goto :goto_10

    #@2b
    :cond_2b
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2d
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    #@2f
    invoke-virtual {v1, p4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@32
    goto :goto_10
.end method

.method private b(Landroid/content/res/TypedArray;ILjava/lang/String;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_8

    #@f
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@11
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@13
    invoke-virtual {v1, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@16
    goto :goto_8
.end method


# virtual methods
.method public Q(Landroid/content/Context;)V
    .registers 6

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akF:I

    #@2
    if-gtz v0, :cond_59

    #@4
    sget v0, Lcom/google/android/gms/R$style;->WalletFragmentDefaultStyle:I

    #@6
    :goto_6
    sget-object v1, Lcom/google/android/gms/R$styleable;->WalletFragmentStyle:[I

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    const/4 v1, 0x1

    #@d
    const-string v2, "buyButtonWidth"

    #@f
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->a(Landroid/content/res/TypedArray;ILjava/lang/String;)V

    #@12
    const/4 v1, 0x0

    #@13
    const-string v2, "buyButtonHeight"

    #@15
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->a(Landroid/content/res/TypedArray;ILjava/lang/String;)V

    #@18
    const/4 v1, 0x2

    #@19
    const-string v2, "buyButtonText"

    #@1b
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b(Landroid/content/res/TypedArray;ILjava/lang/String;)V

    #@1e
    const/4 v1, 0x3

    #@1f
    const-string v2, "buyButtonAppearance"

    #@21
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b(Landroid/content/res/TypedArray;ILjava/lang/String;)V

    #@24
    const/4 v1, 0x4

    #@25
    const-string v2, "maskedWalletDetailsTextAppearance"

    #@27
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b(Landroid/content/res/TypedArray;ILjava/lang/String;)V

    #@2a
    const/4 v1, 0x5

    #@2b
    const-string v2, "maskedWalletDetailsHeaderTextAppearance"

    #@2d
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b(Landroid/content/res/TypedArray;ILjava/lang/String;)V

    #@30
    const/4 v1, 0x6

    #@31
    const-string v2, "maskedWalletDetailsBackgroundColor"

    #@33
    const-string v3, "maskedWalletDetailsBackgroundResource"

    #@35
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->a(Landroid/content/res/TypedArray;ILjava/lang/String;Ljava/lang/String;)V

    #@38
    const/4 v1, 0x7

    #@39
    const-string v2, "maskedWalletDetailsButtonTextAppearance"

    #@3b
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b(Landroid/content/res/TypedArray;ILjava/lang/String;)V

    #@3e
    const/16 v1, 0x8

    #@40
    const-string v2, "maskedWalletDetailsButtonBackgroundColor"

    #@42
    const-string v3, "maskedWalletDetailsButtonBackgroundResource"

    #@44
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->a(Landroid/content/res/TypedArray;ILjava/lang/String;Ljava/lang/String;)V

    #@47
    const/16 v1, 0x9

    #@49
    const-string v2, "maskedWalletDetailsLogoTextColor"

    #@4b
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b(Landroid/content/res/TypedArray;ILjava/lang/String;)V

    #@4e
    const/16 v1, 0xa

    #@50
    const-string v2, "maskedWalletDetailsLogoImageType"

    #@52
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b(Landroid/content/res/TypedArray;ILjava/lang/String;)V

    #@55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@58
    return-void

    #@59
    :cond_59
    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akF:I

    #@5b
    goto :goto_6
.end method

.method public a(Ljava/lang/String;Landroid/util/DisplayMetrics;I)I
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_12

    #@8
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@a
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@d
    move-result-wide v0

    #@e
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/wallet/fragment/Dimension;->a(JLandroid/util/DisplayMetrics;)I

    #@11
    move-result p3

    #@12
    :cond_12
    return p3
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setBuyButtonAppearance(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    const-string v1, "buyButtonAppearance"

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@7
    return-object p0
.end method

.method public setBuyButtonHeight(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    const-string v1, "buyButtonHeight"

    #@4
    invoke-static {p1}, Lcom/google/android/gms/wallet/fragment/Dimension;->dM(I)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@b
    return-object p0
.end method

.method public setBuyButtonHeight(IF)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    const-string v1, "buyButtonHeight"

    #@4
    invoke-static {p1, p2}, Lcom/google/android/gms/wallet/fragment/Dimension;->a(IF)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@b
    return-object p0
.end method

.method public setBuyButtonText(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    const-string v1, "buyButtonText"

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@7
    return-object p0
.end method

.method public setBuyButtonWidth(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    const-string v1, "buyButtonWidth"

    #@4
    invoke-static {p1}, Lcom/google/android/gms/wallet/fragment/Dimension;->dM(I)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@b
    return-object p0
.end method

.method public setBuyButtonWidth(IF)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    const-string v1, "buyButtonWidth"

    #@4
    invoke-static {p1, p2}, Lcom/google/android/gms/wallet/fragment/Dimension;->a(IF)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@b
    return-object p0
.end method

.method public setMaskedWalletDetailsBackgroundColor(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    const-string v1, "maskedWalletDetailsBackgroundResource"

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@7
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@9
    const-string v1, "maskedWalletDetailsBackgroundColor"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@e
    return-object p0
.end method

.method public setMaskedWalletDetailsBackgroundResource(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    const-string v1, "maskedWalletDetailsBackgroundColor"

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@7
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@9
    const-string v1, "maskedWalletDetailsBackgroundResource"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@e
    return-object p0
.end method

.method public setMaskedWalletDetailsButtonBackgroundColor(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    const-string v1, "maskedWalletDetailsButtonBackgroundResource"

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@7
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@9
    const-string v1, "maskedWalletDetailsButtonBackgroundColor"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@e
    return-object p0
.end method

.method public setMaskedWalletDetailsButtonBackgroundResource(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    const-string v1, "maskedWalletDetailsButtonBackgroundColor"

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@7
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@9
    const-string v1, "maskedWalletDetailsButtonBackgroundResource"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@e
    return-object p0
.end method

.method public setMaskedWalletDetailsButtonTextAppearance(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    const-string v1, "maskedWalletDetailsButtonTextAppearance"

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@7
    return-object p0
.end method

.method public setMaskedWalletDetailsHeaderTextAppearance(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    const-string v1, "maskedWalletDetailsHeaderTextAppearance"

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@7
    return-object p0
.end method

.method public setMaskedWalletDetailsLogoImageType(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    const-string v1, "maskedWalletDetailsLogoImageType"

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@7
    return-object p0
.end method

.method public setMaskedWalletDetailsLogoTextColor(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    const-string v1, "maskedWalletDetailsLogoTextColor"

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@7
    return-object p0
.end method

.method public setMaskedWalletDetailsTextAppearance(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akE:Landroid/os/Bundle;

    #@2
    const-string v1, "maskedWalletDetailsTextAppearance"

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@7
    return-object p0
.end method

.method public setStyleResourceId(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akF:I

    #@2
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/fragment/c;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
