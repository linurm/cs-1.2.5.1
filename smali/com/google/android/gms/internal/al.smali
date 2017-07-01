.class public final Lcom/google/android/gms/internal/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/am;


# instance fields
.field public final height:I

.field public final heightPixels:I

.field public final me:Ljava/lang/String;

.field public final mf:Z

.field public final mg:[Lcom/google/android/gms/internal/al;

.field public final versionCode:I

.field public final width:I

.field public final widthPixels:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/am;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/am;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/al;->CREATOR:Lcom/google/android/gms/internal/am;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 10

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x2

    #@2
    const-string v2, "interstitial_mb"

    #@4
    const/4 v5, 0x1

    #@5
    const/4 v8, 0x0

    #@6
    move-object v0, p0

    #@7
    move v4, v3

    #@8
    move v6, v3

    #@9
    move v7, v3

    #@a
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/al;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/al;)V

    #@d
    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/al;)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/al;->versionCode:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/al;->me:Ljava/lang/String;

    #@7
    iput p3, p0, Lcom/google/android/gms/internal/al;->height:I

    #@9
    iput p4, p0, Lcom/google/android/gms/internal/al;->heightPixels:I

    #@b
    iput-boolean p5, p0, Lcom/google/android/gms/internal/al;->mf:Z

    #@d
    iput p6, p0, Lcom/google/android/gms/internal/al;->width:I

    #@f
    iput p7, p0, Lcom/google/android/gms/internal/al;->widthPixels:I

    #@11
    iput-object p8, p0, Lcom/google/android/gms/internal/al;->mg:[Lcom/google/android/gms/internal/al;

    #@13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Lcom/google/android/gms/ads/AdSize;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p2, v0, v1

    #@6
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/al;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    #@9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V
    .registers 11

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    aget-object v6, p2, v2

    #@7
    const/4 v0, 0x2

    #@8
    iput v0, p0, Lcom/google/android/gms/internal/al;->versionCode:I

    #@a
    iput-boolean v2, p0, Lcom/google/android/gms/internal/al;->mf:Z

    #@c
    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Lcom/google/android/gms/internal/al;->width:I

    #@12
    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lcom/google/android/gms/internal/al;->height:I

    #@18
    iget v0, p0, Lcom/google/android/gms/internal/al;->width:I

    #@1a
    const/4 v3, -0x1

    #@1b
    if-ne v0, v3, :cond_84

    #@1d
    move v0, v1

    #@1e
    :goto_1e
    iget v3, p0, Lcom/google/android/gms/internal/al;->height:I

    #@20
    const/4 v4, -0x2

    #@21
    if-ne v3, v4, :cond_86

    #@23
    move v3, v1

    #@24
    :goto_24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@2b
    move-result-object v7

    #@2c
    if-eqz v0, :cond_88

    #@2e
    invoke-static {v7}, Lcom/google/android/gms/internal/al;->a(Landroid/util/DisplayMetrics;)I

    #@31
    move-result v4

    #@32
    iput v4, p0, Lcom/google/android/gms/internal/al;->widthPixels:I

    #@34
    iget v4, p0, Lcom/google/android/gms/internal/al;->widthPixels:I

    #@36
    int-to-float v4, v4

    #@37
    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    #@39
    div-float/2addr v4, v5

    #@3a
    float-to-int v4, v4

    #@3b
    move v5, v4

    #@3c
    :goto_3c
    if-eqz v3, :cond_94

    #@3e
    invoke-static {v7}, Lcom/google/android/gms/internal/al;->c(Landroid/util/DisplayMetrics;)I

    #@41
    move-result v4

    #@42
    :goto_42
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/et;->a(Landroid/util/DisplayMetrics;I)I

    #@45
    move-result v7

    #@46
    iput v7, p0, Lcom/google/android/gms/internal/al;->heightPixels:I

    #@48
    if-nez v0, :cond_4c

    #@4a
    if-eqz v3, :cond_97

    #@4c
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    const-string v3, "x"

    #@57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    const-string v3, "_as"

    #@61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    iput-object v0, p0, Lcom/google/android/gms/internal/al;->me:Ljava/lang/String;

    #@6b
    :goto_6b
    array-length v0, p2

    #@6c
    if-le v0, v1, :cond_9e

    #@6e
    array-length v0, p2

    #@6f
    new-array v0, v0, [Lcom/google/android/gms/internal/al;

    #@71
    iput-object v0, p0, Lcom/google/android/gms/internal/al;->mg:[Lcom/google/android/gms/internal/al;

    #@73
    :goto_73
    array-length v0, p2

    #@74
    if-ge v2, v0, :cond_a1

    #@76
    iget-object v0, p0, Lcom/google/android/gms/internal/al;->mg:[Lcom/google/android/gms/internal/al;

    #@78
    new-instance v1, Lcom/google/android/gms/internal/al;

    #@7a
    aget-object v3, p2, v2

    #@7c
    invoke-direct {v1, p1, v3}, Lcom/google/android/gms/internal/al;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    #@7f
    aput-object v1, v0, v2

    #@81
    add-int/lit8 v2, v2, 0x1

    #@83
    goto :goto_73

    #@84
    :cond_84
    move v0, v2

    #@85
    goto :goto_1e

    #@86
    :cond_86
    move v3, v2

    #@87
    goto :goto_24

    #@88
    :cond_88
    iget v4, p0, Lcom/google/android/gms/internal/al;->width:I

    #@8a
    iget v5, p0, Lcom/google/android/gms/internal/al;->width:I

    #@8c
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/et;->a(Landroid/util/DisplayMetrics;I)I

    #@8f
    move-result v5

    #@90
    iput v5, p0, Lcom/google/android/gms/internal/al;->widthPixels:I

    #@92
    move v5, v4

    #@93
    goto :goto_3c

    #@94
    :cond_94
    iget v4, p0, Lcom/google/android/gms/internal/al;->height:I

    #@96
    goto :goto_42

    #@97
    :cond_97
    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    #@9a
    move-result-object v0

    #@9b
    iput-object v0, p0, Lcom/google/android/gms/internal/al;->me:Ljava/lang/String;

    #@9d
    goto :goto_6b

    #@9e
    :cond_9e
    const/4 v0, 0x0

    #@9f
    iput-object v0, p0, Lcom/google/android/gms/internal/al;->mg:[Lcom/google/android/gms/internal/al;

    #@a1
    :cond_a1
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/al;[Lcom/google/android/gms/internal/al;)V
    .registers 12

    #@0
    const/4 v1, 0x2

    #@1
    iget-object v2, p1, Lcom/google/android/gms/internal/al;->me:Ljava/lang/String;

    #@3
    iget v3, p1, Lcom/google/android/gms/internal/al;->height:I

    #@5
    iget v4, p1, Lcom/google/android/gms/internal/al;->heightPixels:I

    #@7
    iget-boolean v5, p1, Lcom/google/android/gms/internal/al;->mf:Z

    #@9
    iget v6, p1, Lcom/google/android/gms/internal/al;->width:I

    #@b
    iget v7, p1, Lcom/google/android/gms/internal/al;->widthPixels:I

    #@d
    move-object v0, p0

    #@e
    move-object v8, p2

    #@f
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/al;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/al;)V

    #@12
    return-void
.end method

.method public static a(Landroid/util/DisplayMetrics;)I
    .registers 2

    #@0
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@2
    return v0
.end method

.method public static b(Landroid/util/DisplayMetrics;)I
    .registers 3

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/al;->c(Landroid/util/DisplayMetrics;)I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    #@7
    mul-float/2addr v0, v1

    #@8
    float-to-int v0, v0

    #@9
    return v0
.end method

.method private static c(Landroid/util/DisplayMetrics;)I
    .registers 3

    #@0
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@2
    int-to-float v0, v0

    #@3
    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    #@5
    div-float/2addr v0, v1

    #@6
    float-to-int v0, v0

    #@7
    const/16 v1, 0x190

    #@9
    if-gt v0, v1, :cond_e

    #@b
    const/16 v0, 0x20

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/16 v1, 0x2d0

    #@10
    if-gt v0, v1, :cond_15

    #@12
    const/16 v0, 0x32

    #@14
    goto :goto_d

    #@15
    :cond_15
    const/16 v0, 0x5a

    #@17
    goto :goto_d
.end method


# virtual methods
.method public aG()Lcom/google/android/gms/ads/AdSize;
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/al;->width:I

    #@2
    iget v1, p0, Lcom/google/android/gms/internal/al;->height:I

    #@4
    iget-object v2, p0, Lcom/google/android/gms/internal/al;->me:Ljava/lang/String;

    #@6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/a;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/am;->a(Lcom/google/android/gms/internal/al;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
