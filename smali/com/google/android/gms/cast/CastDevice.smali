.class public Lcom/google/android/gms/cast/CastDevice;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/CastDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Ah:Ljava/lang/String;

.field Ai:Ljava/lang/String;

.field private Aj:Ljava/net/Inet4Address;

.field private Ak:Ljava/lang/String;

.field private Al:Ljava/lang/String;

.field private Am:Ljava/lang/String;

.field private An:I

.field private Ao:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field

.field private Ap:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/cast/b;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/cast/b;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/cast/CastDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 11

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x2

    #@2
    const/4 v7, -0x1

    #@3
    new-instance v8, Ljava/util/ArrayList;

    #@5
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@8
    const/4 v9, 0x0

    #@9
    move-object v0, p0

    #@a
    move-object v3, v2

    #@b
    move-object v4, v2

    #@c
    move-object v5, v2

    #@d
    move-object v6, v2

    #@e
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/cast/CastDevice;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)V

    #@11
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;I)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/cast/CastDevice;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/cast/CastDevice;->Ah:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/cast/CastDevice;->Ai:Ljava/lang/String;

    #@9
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Ai:Ljava/lang/String;

    #@b
    if-eqz v0, :cond_1b

    #@d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Ai:Ljava/lang/String;

    #@f
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@12
    move-result-object v0

    #@13
    instance-of v1, v0, Ljava/net/Inet4Address;

    #@15
    if-eqz v1, :cond_1b

    #@17
    check-cast v0, Ljava/net/Inet4Address;

    #@19
    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Aj:Ljava/net/Inet4Address;
    :try_end_1b
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_1b} :catch_28

    #@1b
    :cond_1b
    :goto_1b
    iput-object p4, p0, Lcom/google/android/gms/cast/CastDevice;->Ak:Ljava/lang/String;

    #@1d
    iput-object p5, p0, Lcom/google/android/gms/cast/CastDevice;->Al:Ljava/lang/String;

    #@1f
    iput-object p6, p0, Lcom/google/android/gms/cast/CastDevice;->Am:Ljava/lang/String;

    #@21
    iput p7, p0, Lcom/google/android/gms/cast/CastDevice;->An:I

    #@23
    iput-object p8, p0, Lcom/google/android/gms/cast/CastDevice;->Ao:Ljava/util/List;

    #@25
    iput p9, p0, Lcom/google/android/gms/cast/CastDevice;->Ap:I

    #@27
    return-void

    #@28
    :catch_28
    move-exception v0

    #@29
    const/4 v0, 0x0

    #@2a
    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Aj:Ljava/net/Inet4Address;

    #@2c
    goto :goto_1b
.end method

.method public static getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    const-class v0, Lcom/google/android/gms/cast/CastDevice;

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@d
    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_DEVICE"

    #@f
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/google/android/gms/cast/CastDevice;

    #@15
    goto :goto_3
.end method


# virtual methods
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
    instance-of v2, p1, Lcom/google/android/gms/cast/CastDevice;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/cast/CastDevice;

    #@c
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    if-nez v2, :cond_19

    #@12
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    if-eqz v2, :cond_4

    #@18
    goto :goto_5

    #@19
    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->Ah:Ljava/lang/String;

    #@1b
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->Ah:Ljava/lang/String;

    #@1d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_5

    #@23
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->Aj:Ljava/net/Inet4Address;

    #@25
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->Aj:Ljava/net/Inet4Address;

    #@27
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_5

    #@2d
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->Al:Ljava/lang/String;

    #@2f
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->Al:Ljava/lang/String;

    #@31
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_5

    #@37
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->Ak:Ljava/lang/String;

    #@39
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->Ak:Ljava/lang/String;

    #@3b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_5

    #@41
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->Am:Ljava/lang/String;

    #@43
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->Am:Ljava/lang/String;

    #@45
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_5

    #@4b
    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->An:I

    #@4d
    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->An:I

    #@4f
    if-ne v2, v3, :cond_5

    #@51
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->Ao:Ljava/util/List;

    #@53
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->Ao:Ljava/util/List;

    #@55
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_5

    #@5b
    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->Ap:I

    #@5d
    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->Ap:I

    #@5f
    if-eq v2, v3, :cond_4

    #@61
    goto :goto_5
.end method

.method public getCapabilities()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->Ap:I

    #@2
    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Ah:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Am:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Ak:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIcon(II)Lcom/google/android/gms/common/images/WebImage;
    .registers 12

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Ao:Ljava/util/List;

    #@4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    :cond_a
    :goto_a
    return-object v2

    #@b
    :cond_b
    if-lez p1, :cond_f

    #@d
    if-gtz p2, :cond_19

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Ao:Ljava/util/List;

    #@11
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    #@17
    move-object v2, v0

    #@18
    goto :goto_a

    #@19
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Ao:Ljava/util/List;

    #@1b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    move-object v1, v2

    #@20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_60

    #@26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    #@2c
    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->getWidth()I

    #@2f
    move-result v4

    #@30
    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->getHeight()I

    #@33
    move-result v5

    #@34
    if-lt v4, p1, :cond_4a

    #@36
    if-lt v5, p2, :cond_4a

    #@38
    if-eqz v1, :cond_46

    #@3a
    invoke-virtual {v1}, Lcom/google/android/gms/common/images/WebImage;->getWidth()I

    #@3d
    move-result v6

    #@3e
    if-le v6, v4, :cond_70

    #@40
    invoke-virtual {v1}, Lcom/google/android/gms/common/images/WebImage;->getHeight()I

    #@43
    move-result v4

    #@44
    if-le v4, v5, :cond_70

    #@46
    :cond_46
    move-object v1, v2

    #@47
    :goto_47
    move-object v2, v1

    #@48
    move-object v1, v0

    #@49
    goto :goto_20

    #@4a
    :cond_4a
    if-ge v4, p1, :cond_70

    #@4c
    if-ge v5, p2, :cond_70

    #@4e
    if-eqz v2, :cond_5c

    #@50
    invoke-virtual {v2}, Lcom/google/android/gms/common/images/WebImage;->getWidth()I

    #@53
    move-result v6

    #@54
    if-ge v6, v4, :cond_70

    #@56
    invoke-virtual {v2}, Lcom/google/android/gms/common/images/WebImage;->getHeight()I

    #@59
    move-result v4

    #@5a
    if-ge v4, v5, :cond_70

    #@5c
    :cond_5c
    move-object v8, v1

    #@5d
    move-object v1, v0

    #@5e
    move-object v0, v8

    #@5f
    goto :goto_47

    #@60
    :cond_60
    if-eqz v1, :cond_64

    #@62
    move-object v2, v1

    #@63
    goto :goto_a

    #@64
    :cond_64
    if-nez v2, :cond_a

    #@66
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Ao:Ljava/util/List;

    #@68
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6b
    move-result-object v0

    #@6c
    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    #@6e
    move-object v2, v0

    #@6f
    goto :goto_a

    #@70
    :cond_70
    move-object v0, v1

    #@71
    move-object v1, v2

    #@72
    goto :goto_47
.end method

.method public getIcons()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Ao:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIpAddress()Ljava/net/Inet4Address;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Aj:Ljava/net/Inet4Address;

    #@2
    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Al:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getServicePort()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->An:I

    #@2
    return v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->xM:I

    #@2
    return v0
.end method

.method public hasIcons()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Ao:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Ah:Ljava/lang/String;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->Ah:Ljava/lang/String;

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v0

    #@c
    goto :goto_5
.end method

.method public isSameDevice(Lcom/google/android/gms/cast/CastDevice;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    :cond_3
    :goto_3
    return v0

    #@4
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    if-nez v1, :cond_12

    #@a
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    if-nez v1, :cond_3

    #@10
    const/4 v0, 0x1

    #@11
    goto :goto_3

    #@12
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    goto :goto_3
.end method

.method public putInBundle(Landroid/os/Bundle;)V
    .registers 3

    #@0
    if-nez p1, :cond_3

    #@2
    :goto_2
    return-void

    #@3
    :cond_3
    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_DEVICE"

    #@5
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@8
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    const-string v0, "\"%s\" (%s)"

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->Ak:Ljava/lang/String;

    #@8
    aput-object v3, v1, v2

    #@a
    const/4 v2, 0x1

    #@b
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->Ah:Ljava/lang/String;

    #@d
    aput-object v3, v1, v2

    #@f
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/b;->a(Lcom/google/android/gms/cast/CastDevice;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
