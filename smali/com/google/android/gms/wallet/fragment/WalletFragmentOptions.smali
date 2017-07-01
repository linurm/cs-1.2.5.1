.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Hy:I

.field private akC:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

.field private akb:I

.field private mTheme:I

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/fragment/b;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/b;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->xM:I

    #@6
    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/wallet/fragment/WalletFragmentStyle;I)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->xM:I

    #@5
    iput p2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->akb:I

    #@7
    iput p3, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->mTheme:I

    #@9
    iput-object p4, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->akC:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@b
    iput p5, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->Hy:I

    #@d
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->akb:I

    #@2
    return p1
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
    .registers 8

    #@0
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    sget-object v0, Lcom/google/android/gms/R$styleable;->WalletFragmentOptions:[I

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@f
    move-result v2

    #@10
    const/4 v3, 0x2

    #@11
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@14
    move-result v3

    #@15
    const/4 v4, 0x3

    #@16
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@19
    move-result v4

    #@1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1d
    new-instance v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@1f
    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;-><init>()V

    #@22
    iput v1, v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->mTheme:I

    #@24
    iput v2, v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->akb:I

    #@26
    new-instance v1, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@28
    invoke-direct {v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;-><init>()V

    #@2b
    invoke-virtual {v1, v3}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->setStyleResourceId(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@2e
    move-result-object v1

    #@2f
    iput-object v1, v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->akC:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@31
    iget-object v1, v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->akC:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@33
    invoke-virtual {v1, p0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->Q(Landroid/content/Context;)V

    #@36
    iput v4, v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->Hy:I

    #@38
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->akC:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@2
    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->mTheme:I

    #@2
    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->Hy:I

    #@2
    return p1
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    new-instance v1, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;-><init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$1;)V

    #@e
    return-object v1
.end method


# virtual methods
.method public Q(Landroid/content/Context;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->akC:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->akC:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->Q(Landroid/content/Context;)V

    #@9
    :cond_9
    return-void
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getEnvironment()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->akb:I

    #@2
    return v0
.end method

.method public getFragmentStyle()Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->akC:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@2
    return-object v0
.end method

.method public getMode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->Hy:I

    #@2
    return v0
.end method

.method public getTheme()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->mTheme:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/fragment/b;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
