.class public final Lcom/google/android/gms/internal/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ax;


# instance fields
.field public final backgroundColor:I

.field public final mD:I

.field public final mE:I

.field public final mF:I

.field public final mG:I

.field public final mH:I

.field public final mI:I

.field public final mJ:I

.field public final mK:Ljava/lang/String;

.field public final mL:I

.field public final mM:Ljava/lang/String;

.field public final mN:I

.field public final mO:I

.field public final mP:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ax;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ax;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/aw;->CREATOR:Lcom/google/android/gms/internal/ax;

    #@7
    return-void
.end method

.method constructor <init>(IIIIIIIIILjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .registers 16

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/aw;->versionCode:I

    #@5
    iput p2, p0, Lcom/google/android/gms/internal/aw;->mD:I

    #@7
    iput p3, p0, Lcom/google/android/gms/internal/aw;->backgroundColor:I

    #@9
    iput p4, p0, Lcom/google/android/gms/internal/aw;->mE:I

    #@b
    iput p5, p0, Lcom/google/android/gms/internal/aw;->mF:I

    #@d
    iput p6, p0, Lcom/google/android/gms/internal/aw;->mG:I

    #@f
    iput p7, p0, Lcom/google/android/gms/internal/aw;->mH:I

    #@11
    iput p8, p0, Lcom/google/android/gms/internal/aw;->mI:I

    #@13
    iput p9, p0, Lcom/google/android/gms/internal/aw;->mJ:I

    #@15
    iput-object p10, p0, Lcom/google/android/gms/internal/aw;->mK:Ljava/lang/String;

    #@17
    iput p11, p0, Lcom/google/android/gms/internal/aw;->mL:I

    #@19
    iput-object p12, p0, Lcom/google/android/gms/internal/aw;->mM:Ljava/lang/String;

    #@1b
    iput p13, p0, Lcom/google/android/gms/internal/aw;->mN:I

    #@1d
    iput p14, p0, Lcom/google/android/gms/internal/aw;->mO:I

    #@1f
    iput-object p15, p0, Lcom/google/android/gms/internal/aw;->mP:Ljava/lang/String;

    #@21
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/aw;->versionCode:I

    #@6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getAnchorTextColor()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/google/android/gms/internal/aw;->mD:I

    #@c
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBackgroundColor()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Lcom/google/android/gms/internal/aw;->backgroundColor:I

    #@12
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBackgroundGradientBottom()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lcom/google/android/gms/internal/aw;->mE:I

    #@18
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBackgroundGradientTop()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Lcom/google/android/gms/internal/aw;->mF:I

    #@1e
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBorderColor()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Lcom/google/android/gms/internal/aw;->mG:I

    #@24
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBorderThickness()I

    #@27
    move-result v0

    #@28
    iput v0, p0, Lcom/google/android/gms/internal/aw;->mH:I

    #@2a
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBorderType()I

    #@2d
    move-result v0

    #@2e
    iput v0, p0, Lcom/google/android/gms/internal/aw;->mI:I

    #@30
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getCallButtonColor()I

    #@33
    move-result v0

    #@34
    iput v0, p0, Lcom/google/android/gms/internal/aw;->mJ:I

    #@36
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getCustomChannels()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/google/android/gms/internal/aw;->mK:Ljava/lang/String;

    #@3c
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getDescriptionTextColor()I

    #@3f
    move-result v0

    #@40
    iput v0, p0, Lcom/google/android/gms/internal/aw;->mL:I

    #@42
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getFontFace()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Lcom/google/android/gms/internal/aw;->mM:Ljava/lang/String;

    #@48
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getHeaderTextColor()I

    #@4b
    move-result v0

    #@4c
    iput v0, p0, Lcom/google/android/gms/internal/aw;->mN:I

    #@4e
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getHeaderTextSize()I

    #@51
    move-result v0

    #@52
    iput v0, p0, Lcom/google/android/gms/internal/aw;->mO:I

    #@54
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getQuery()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    iput-object v0, p0, Lcom/google/android/gms/internal/aw;->mP:Ljava/lang/String;

    #@5a
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ax;->a(Lcom/google/android/gms/internal/aw;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
