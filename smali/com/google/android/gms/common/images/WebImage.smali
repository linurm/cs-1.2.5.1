.class public final Lcom/google/android/gms/common/images/WebImage;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Fu:Landroid/net/Uri;

.field private final ku:I

.field private final kv:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/common/images/b;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/common/images/b;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/common/images/WebImage;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;II)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/common/images/WebImage;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/common/images/WebImage;->Fu:Landroid/net/Uri;

    #@7
    iput p3, p0, Lcom/google/android/gms/common/images/WebImage;->ku:I

    #@9
    iput p4, p0, Lcom/google/android/gms/common/images/WebImage;->kv:I

    #@b
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;II)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/images/WebImage;-><init>(ILandroid/net/Uri;II)V

    #@4
    if-nez p1, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "url cannot be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    if-ltz p2, :cond_12

    #@10
    if-gez p3, :cond_1a

    #@12
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string v1, "width and height must not be negative"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    :cond_1a
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    const/4 v3, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/images/WebImage;->c(Lorg/json/JSONObject;)Landroid/net/Uri;

    #@4
    move-result-object v0

    #@5
    const-string v1, "width"

    #@7
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    #@a
    move-result v1

    #@b
    const-string v2, "height"

    #@d
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    #@10
    move-result v2

    #@11
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;II)V

    #@14
    return-void
.end method

.method private static c(Lorg/json/JSONObject;)Landroid/net/Uri;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "url"

    #@3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_13

    #@9
    :try_start_9
    const-string v1, "url"

    #@b
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_12} :catch_14

    #@12
    move-result-object v0

    #@13
    :cond_13
    :goto_13
    return-object v0

    #@14
    :catch_14
    move-exception v1

    #@15
    goto :goto_13
.end method


# virtual methods
.method public dZ()Lorg/json/JSONObject;
    .registers 4

    #@0
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    :try_start_5
    const-string v1, "url"

    #@7
    iget-object v2, p0, Lcom/google/android/gms/common/images/WebImage;->Fu:Landroid/net/Uri;

    #@9
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@10
    const-string v1, "width"

    #@12
    iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->ku:I

    #@14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@17
    const-string v1, "height"

    #@19
    iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->kv:I

    #@1b
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1e} :catch_1f

    #@1e
    :goto_1e
    return-object v0

    #@1f
    :catch_1f
    move-exception v1

    #@20
    goto :goto_1e
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
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    if-ne p0, p1, :cond_5

    #@4
    :cond_4
    :goto_4
    return v0

    #@5
    :cond_5
    if-eqz p1, :cond_b

    #@7
    instance-of v2, p1, Lcom/google/android/gms/common/images/WebImage;

    #@9
    if-nez v2, :cond_d

    #@b
    :cond_b
    move v0, v1

    #@c
    goto :goto_4

    #@d
    :cond_d
    check-cast p1, Lcom/google/android/gms/common/images/WebImage;

    #@f
    iget-object v2, p0, Lcom/google/android/gms/common/images/WebImage;->Fu:Landroid/net/Uri;

    #@11
    iget-object v3, p1, Lcom/google/android/gms/common/images/WebImage;->Fu:Landroid/net/Uri;

    #@13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_25

    #@19
    iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->ku:I

    #@1b
    iget v3, p1, Lcom/google/android/gms/common/images/WebImage;->ku:I

    #@1d
    if-ne v2, v3, :cond_25

    #@1f
    iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->kv:I

    #@21
    iget v3, p1, Lcom/google/android/gms/common/images/WebImage;->kv:I

    #@23
    if-eq v2, v3, :cond_4

    #@25
    :cond_25
    move v0, v1

    #@26
    goto :goto_4
.end method

.method public getHeight()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->kv:I

    #@2
    return v0
.end method

.method public getUrl()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/images/WebImage;->Fu:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->xM:I

    #@2
    return v0
.end method

.method public getWidth()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->ku:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget-object v2, p0, Lcom/google/android/gms/common/images/WebImage;->Fu:Landroid/net/Uri;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->ku:I

    #@b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v2

    #@f
    aput-object v2, v0, v1

    #@11
    const/4 v1, 0x2

    #@12
    iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->kv:I

    #@14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v2

    #@18
    aput-object v2, v0, v1

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    const-string v0, "Image %dx%d %s"

    #@2
    const/4 v1, 0x3

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    iget v3, p0, Lcom/google/android/gms/common/images/WebImage;->ku:I

    #@8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v3

    #@c
    aput-object v3, v1, v2

    #@e
    const/4 v2, 0x1

    #@f
    iget v3, p0, Lcom/google/android/gms/common/images/WebImage;->kv:I

    #@11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v3

    #@15
    aput-object v3, v1, v2

    #@17
    const/4 v2, 0x2

    #@18
    iget-object v3, p0, Lcom/google/android/gms/common/images/WebImage;->Fu:Landroid/net/Uri;

    #@1a
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    aput-object v3, v1, v2

    #@20
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/images/b;->a(Lcom/google/android/gms/common/images/WebImage;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
