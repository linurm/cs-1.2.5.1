.class public final Lcom/google/android/gms/cast/ApplicationMetadata;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/ApplicationMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mName:Ljava/lang/String;

.field private final xM:I

.field zP:Ljava/lang/String;

.field zQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field

.field zR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zS:Ljava/lang/String;

.field zT:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/cast/a;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/cast/a;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/cast/ApplicationMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->xM:I

    #@6
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zQ:Ljava/util/List;

    #@d
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zR:Ljava/util/List;

    #@14
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zP:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->mName:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zQ:Ljava/util/List;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zR:Ljava/util/List;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zS:Ljava/lang/String;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zT:Landroid/net/Uri;

    #@11
    return-void
.end method


# virtual methods
.method public areNamespacesSupported(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zR:Ljava/util/List;

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zR:Ljava/util/List;

    #@6
    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method public dX()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zT:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-ne p1, p0, :cond_6

    #@4
    :cond_4
    move v0, v1

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/cast/ApplicationMetadata;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/cast/ApplicationMetadata;

    #@c
    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zP:Ljava/lang/String;

    #@e
    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->zP:Ljava/lang/String;

    #@10
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_5

    #@16
    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zQ:Ljava/util/List;

    #@18
    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->zQ:Ljava/util/List;

    #@1a
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_5

    #@20
    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->mName:Ljava/lang/String;

    #@22
    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->mName:Ljava/lang/String;

    #@24
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_5

    #@2a
    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zR:Ljava/util/List;

    #@2c
    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->zR:Ljava/util/List;

    #@2e
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_5

    #@34
    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zS:Ljava/lang/String;

    #@36
    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->zS:Ljava/lang/String;

    #@38
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_5

    #@3e
    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zT:Landroid/net/Uri;

    #@40
    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->zT:Landroid/net/Uri;

    #@42
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@45
    move-result v2

    #@46
    if-nez v2, :cond_4

    #@48
    goto :goto_5
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zP:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zQ:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSenderAppIdentifier()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zS:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->xM:I

    #@6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zP:Ljava/lang/String;

    #@f
    aput-object v2, v0, v1

    #@11
    const/4 v1, 0x2

    #@12
    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->mName:Ljava/lang/String;

    #@14
    aput-object v2, v0, v1

    #@16
    const/4 v1, 0x3

    #@17
    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zQ:Ljava/util/List;

    #@19
    aput-object v2, v0, v1

    #@1b
    const/4 v1, 0x4

    #@1c
    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zR:Ljava/util/List;

    #@1e
    aput-object v2, v0, v1

    #@20
    const/4 v1, 0x5

    #@21
    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zS:Ljava/lang/String;

    #@23
    aput-object v2, v0, v1

    #@25
    const/4 v1, 0x6

    #@26
    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zT:Landroid/net/Uri;

    #@28
    aput-object v2, v0, v1

    #@2a
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@2d
    move-result v0

    #@2e
    return v0
.end method

.method public isNamespaceSupported(Ljava/lang/String;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zR:Ljava/util/List;

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zR:Ljava/util/List;

    #@6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/a;->a(Lcom/google/android/gms/cast/ApplicationMetadata;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
