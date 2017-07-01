.class public final Lcom/google/android/gms/ads/search/SearchAdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    }
.end annotation


# static fields
.field public static final BORDER_TYPE_DASHED:I = 0x1

.field public static final BORDER_TYPE_DOTTED:I = 0x2

.field public static final BORDER_TYPE_NONE:I = 0x0

.field public static final BORDER_TYPE_SOLID:I = 0x3

.field public static final CALL_BUTTON_COLOR_DARK:I = 0x2

.field public static final CALL_BUTTON_COLOR_LIGHT:I = 0x0

.field public static final CALL_BUTTON_COLOR_MEDIUM:I = 0x1

.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3


# instance fields
.field private final ks:Lcom/google/android/gms/internal/at;

.field private final tc:I

.field private final td:I

.field private final te:I

.field private final tf:I

.field private final tg:I

.field private final th:I

.field private final ti:I

.field private final tj:I

.field private final tk:Ljava/lang/String;

.field private final tl:I

.field private final tm:Ljava/lang/String;

.field private final tn:I

.field private final to:I

.field private final tp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/at;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    #@2
    sput-object v0, Lcom/google/android/gms/ads/search/SearchAdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    #@4
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->a(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tc:I

    #@9
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->b(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->td:I

    #@f
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->c(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->te:I

    #@15
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->d(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tf:I

    #@1b
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->e(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tg:I

    #@21
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->f(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    #@24
    move-result v0

    #@25
    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->th:I

    #@27
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->g(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->ti:I

    #@2d
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->h(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    #@30
    move-result v0

    #@31
    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tj:I

    #@33
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->i(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tk:Ljava/lang/String;

    #@39
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->j(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tl:I

    #@3f
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->k(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tm:Ljava/lang/String;

    #@45
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->l(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    #@48
    move-result v0

    #@49
    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tn:I

    #@4b
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->m(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    #@4e
    move-result v0

    #@4f
    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->to:I

    #@51
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->n(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tp:Ljava/lang/String;

    #@57
    new-instance v0, Lcom/google/android/gms/internal/at;

    #@59
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->o(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/internal/at$a;

    #@5c
    move-result-object v1

    #@5d
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/at;-><init>(Lcom/google/android/gms/internal/at$a;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    #@60
    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@62
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;Lcom/google/android/gms/ads/search/SearchAdRequest$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V

    #@3
    return-void
.end method


# virtual methods
.method T()Lcom/google/android/gms/internal/at;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    return-object v0
.end method

.method public getAnchorTextColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tc:I

    #@2
    return v0
.end method

.method public getBackgroundColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->td:I

    #@2
    return v0
.end method

.method public getBackgroundGradientBottom()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->te:I

    #@2
    return v0
.end method

.method public getBackgroundGradientTop()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tf:I

    #@2
    return v0
.end method

.method public getBorderColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tg:I

    #@2
    return v0
.end method

.method public getBorderThickness()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->th:I

    #@2
    return v0
.end method

.method public getBorderType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->ti:I

    #@2
    return v0
.end method

.method public getCallButtonColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tj:I

    #@2
    return v0
.end method

.method public getCustomChannels()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tk:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at;->getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDescriptionTextColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tl:I

    #@2
    return v0
.end method

.method public getFontFace()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHeaderTextColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tn:I

    #@2
    return v0
.end method

.method public getHeaderTextSize()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->to:I

    #@2
    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/at;->getLocation()Landroid/location/Location;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at;->isTestDevice(Landroid/content/Context;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
