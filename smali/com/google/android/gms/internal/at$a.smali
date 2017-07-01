.class public final Lcom/google/android/gms/internal/at$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private d:Ljava/util/Date;

.field private h:Landroid/location/Location;

.field private mk:Ljava/lang/String;

.field private ml:I

.field private mm:Z

.field private final mn:Landroid/os/Bundle;

.field private mp:Ljava/lang/String;

.field private mr:I

.field private final mt:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final mv:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    const/4 v1, -0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    new-instance v0, Ljava/util/HashSet;

    #@6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@9
    iput-object v0, p0, Lcom/google/android/gms/internal/at$a;->mt:Ljava/util/HashSet;

    #@b
    new-instance v0, Landroid/os/Bundle;

    #@d
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@10
    iput-object v0, p0, Lcom/google/android/gms/internal/at$a;->mn:Landroid/os/Bundle;

    #@12
    new-instance v0, Ljava/util/HashMap;

    #@14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@17
    iput-object v0, p0, Lcom/google/android/gms/internal/at$a;->mu:Ljava/util/HashMap;

    #@19
    new-instance v0, Ljava/util/HashSet;

    #@1b
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/google/android/gms/internal/at$a;->mv:Ljava/util/HashSet;

    #@20
    iput v1, p0, Lcom/google/android/gms/internal/at$a;->ml:I

    #@22
    const/4 v0, 0x0

    #@23
    iput-boolean v0, p0, Lcom/google/android/gms/internal/at$a;->mm:Z

    #@25
    iput v1, p0, Lcom/google/android/gms/internal/at$a;->mr:I

    #@27
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/at$a;)Ljava/util/Date;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at$a;->d:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/at$a;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at$a;->mk:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/at$a;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/at$a;->ml:I

    #@2
    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/at$a;)Ljava/util/HashSet;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at$a;->mt:Ljava/util/HashSet;

    #@2
    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/at$a;)Landroid/location/Location;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at$a;->h:Landroid/location/Location;

    #@2
    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/at$a;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/at$a;->mm:Z

    #@2
    return v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/at$a;)Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at$a;->mn:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/at$a;)Ljava/util/HashMap;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at$a;->mu:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/at$a;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at$a;->mp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/at$a;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/at$a;->mr:I

    #@2
    return v0
.end method

.method static synthetic k(Lcom/google/android/gms/internal/at$a;)Ljava/util/HashSet;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at$a;->mv:Ljava/util/HashSet;

    #@2
    return-object v0
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/at$a;->h:Landroid/location/Location;

    #@2
    return-void
.end method

.method public a(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    instance-of v0, p1, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    #@2
    if-eqz v0, :cond_10

    #@4
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@6
    check-cast p1, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    #@8
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;->getExtras()Landroid/os/Bundle;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/at$a;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/at$a;->mu:Ljava/util/HashMap;

    #@12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    goto :goto_f
.end method

.method public a(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at$a;->mn:Landroid/os/Bundle;

    #@2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@9
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/at$a;->d:Ljava/util/Date;

    #@2
    return-void
.end method

.method public b(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at$a;->mn:Landroid/os/Bundle;

    #@2
    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_16

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/at$a;->mn:Landroid/os/Bundle;

    #@c
    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    #@e
    new-instance v2, Landroid/os/Bundle;

    #@10
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@16
    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/at$a;->mn:Landroid/os/Bundle;

    #@18
    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    #@1a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@25
    return-void
.end method

.method public e(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/internal/at$a;->ml:I

    #@2
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at$a;->mt:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public g(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/at$a;->mm:Z

    #@2
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at$a;->mv:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public h(Z)V
    .registers 3

    #@0
    if-eqz p1, :cond_6

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    iput v0, p0, Lcom/google/android/gms/internal/at$a;->mr:I

    #@5
    return-void

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_3
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/at$a;->mk:Ljava/lang/String;

    #@2
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/at$a;->mp:Ljava/lang/String;

    #@2
    return-void
.end method
