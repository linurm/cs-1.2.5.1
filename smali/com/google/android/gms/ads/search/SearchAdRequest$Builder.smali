.class public final Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/search/SearchAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final kt:Lcom/google/android/gms/internal/at$a;

.field private tc:I

.field private td:I

.field private te:I

.field private tf:I

.field private tg:I

.field private th:I

.field private ti:I

.field private tj:I

.field private tk:Ljava/lang/String;

.field private tl:I

.field private tm:Ljava/lang/String;

.field private tn:I

.field private to:I

.field private tp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/internal/at$a;

    #@5
    invoke-direct {v0}, Lcom/google/android/gms/internal/at$a;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@a
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->ti:I

    #@d
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tc:I

    #@2
    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->td:I

    #@2
    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->te:I

    #@2
    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tf:I

    #@2
    return v0
.end method

.method static synthetic e(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tg:I

    #@2
    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->th:I

    #@2
    return v0
.end method

.method static synthetic g(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->ti:I

    #@2
    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tj:I

    #@2
    return v0
.end method

.method static synthetic i(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tk:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tl:I

    #@2
    return v0
.end method

.method static synthetic k(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic l(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tn:I

    #@2
    return v0
.end method

.method static synthetic m(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->to:I

    #@2
    return v0
.end method

.method static synthetic n(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic o(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/internal/at$a;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    return-object v0
.end method


# virtual methods
.method public addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/at$a;->b(Ljava/lang/Class;Landroid/os/Bundle;)V

    #@5
    return-object p0
.end method

.method public addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at$a;->a(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    #@5
    return-object p0
.end method

.method public addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/at$a;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    #@5
    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at$a;->h(Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public build()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/ads/search/SearchAdRequest;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;Lcom/google/android/gms/ads/search/SearchAdRequest$1;)V

    #@6
    return-object v0
.end method

.method public setAnchorTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tc:I

    #@2
    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->td:I

    #@3
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->te:I

    #@9
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tf:I

    #@f
    return-object p0
.end method

.method public setBackgroundGradient(II)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    #@4
    move-result v0

    #@5
    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->td:I

    #@7
    iput p2, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->te:I

    #@9
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tf:I

    #@b
    return-object p0
.end method

.method public setBorderColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tg:I

    #@2
    return-object p0
.end method

.method public setBorderThickness(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->th:I

    #@2
    return-object p0
.end method

.method public setBorderType(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->ti:I

    #@2
    return-object p0
.end method

.method public setCallButtonColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tj:I

    #@2
    return-object p0
.end method

.method public setCustomChannels(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tk:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public setDescriptionTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tl:I

    #@2
    return-object p0
.end method

.method public setFontFace(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tm:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public setHeaderTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tn:I

    #@2
    return-object p0
.end method

.method public setHeaderTextSize(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->to:I

    #@2
    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at$a;->a(Landroid/location/Location;)V

    #@5
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tp:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at$a;->h(Z)V

    #@5
    return-object p0
.end method