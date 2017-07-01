.class public Lcom/google/android/gms/plus/internal/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/internal/j;


# instance fields
.field private final abT:[Ljava/lang/String;

.field private final abU:[Ljava/lang/String;

.field private final abV:[Ljava/lang/String;

.field private final abW:Ljava/lang/String;

.field private final abX:Ljava/lang/String;

.field private final abY:Ljava/lang/String;

.field private final abZ:Ljava/lang/String;

.field private final aca:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

.field private final xM:I

.field private final yQ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/plus/internal/j;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/j;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/plus/internal/h;->CREATOR:Lcom/google/android/gms/plus/internal/j;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V
    .registers 11

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/plus/internal/h;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/plus/internal/h;->yQ:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/plus/internal/h;->abT:[Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/plus/internal/h;->abU:[Ljava/lang/String;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/plus/internal/h;->abV:[Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/plus/internal/h;->abW:Ljava/lang/String;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/plus/internal/h;->abX:Ljava/lang/String;

    #@11
    iput-object p8, p0, Lcom/google/android/gms/plus/internal/h;->abY:Ljava/lang/String;

    #@13
    iput-object p9, p0, Lcom/google/android/gms/plus/internal/h;->abZ:Ljava/lang/String;

    #@15
    iput-object p10, p0, Lcom/google/android/gms/plus/internal/h;->aca:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V
    .registers 10

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/plus/internal/h;->xM:I

    #@6
    iput-object p1, p0, Lcom/google/android/gms/plus/internal/h;->yQ:Ljava/lang/String;

    #@8
    iput-object p2, p0, Lcom/google/android/gms/plus/internal/h;->abT:[Ljava/lang/String;

    #@a
    iput-object p3, p0, Lcom/google/android/gms/plus/internal/h;->abU:[Ljava/lang/String;

    #@c
    iput-object p4, p0, Lcom/google/android/gms/plus/internal/h;->abV:[Ljava/lang/String;

    #@e
    iput-object p5, p0, Lcom/google/android/gms/plus/internal/h;->abW:Ljava/lang/String;

    #@10
    iput-object p6, p0, Lcom/google/android/gms/plus/internal/h;->abX:Ljava/lang/String;

    #@12
    iput-object p7, p0, Lcom/google/android/gms/plus/internal/h;->abY:Ljava/lang/String;

    #@14
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/h;->abZ:Ljava/lang/String;

    #@17
    iput-object p8, p0, Lcom/google/android/gms/plus/internal/h;->aca:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@19
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

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/google/android/gms/plus/internal/h;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/google/android/gms/plus/internal/h;

    #@8
    iget v1, p0, Lcom/google/android/gms/plus/internal/h;->xM:I

    #@a
    iget v2, p1, Lcom/google/android/gms/plus/internal/h;->xM:I

    #@c
    if-ne v1, v2, :cond_5

    #@e
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->yQ:Ljava/lang/String;

    #@10
    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->yQ:Ljava/lang/String;

    #@12
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_5

    #@18
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->abT:[Ljava/lang/String;

    #@1a
    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->abT:[Ljava/lang/String;

    #@1c
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_5

    #@22
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->abU:[Ljava/lang/String;

    #@24
    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->abU:[Ljava/lang/String;

    #@26
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_5

    #@2c
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->abV:[Ljava/lang/String;

    #@2e
    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->abV:[Ljava/lang/String;

    #@30
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_5

    #@36
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->abW:Ljava/lang/String;

    #@38
    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->abW:Ljava/lang/String;

    #@3a
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_5

    #@40
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->abX:Ljava/lang/String;

    #@42
    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->abX:Ljava/lang/String;

    #@44
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_5

    #@4a
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->abY:Ljava/lang/String;

    #@4c
    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->abY:Ljava/lang/String;

    #@4e
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_5

    #@54
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->abZ:Ljava/lang/String;

    #@56
    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->abZ:Ljava/lang/String;

    #@58
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_5

    #@5e
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->aca:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@60
    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->aca:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@62
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_5

    #@68
    const/4 v0, 0x1

    #@69
    goto :goto_5
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->yQ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/plus/internal/h;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/16 v0, 0xa

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    iget v2, p0, Lcom/google/android/gms/plus/internal/h;->xM:I

    #@7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v2

    #@b
    aput-object v2, v0, v1

    #@d
    const/4 v1, 0x1

    #@e
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->yQ:Ljava/lang/String;

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x2

    #@13
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->abT:[Ljava/lang/String;

    #@15
    aput-object v2, v0, v1

    #@17
    const/4 v1, 0x3

    #@18
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->abU:[Ljava/lang/String;

    #@1a
    aput-object v2, v0, v1

    #@1c
    const/4 v1, 0x4

    #@1d
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->abV:[Ljava/lang/String;

    #@1f
    aput-object v2, v0, v1

    #@21
    const/4 v1, 0x5

    #@22
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->abW:Ljava/lang/String;

    #@24
    aput-object v2, v0, v1

    #@26
    const/4 v1, 0x6

    #@27
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->abX:Ljava/lang/String;

    #@29
    aput-object v2, v0, v1

    #@2b
    const/4 v1, 0x7

    #@2c
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->abY:Ljava/lang/String;

    #@2e
    aput-object v2, v0, v1

    #@30
    const/16 v1, 0x8

    #@32
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->abZ:Ljava/lang/String;

    #@34
    aput-object v2, v0, v1

    #@36
    const/16 v1, 0x9

    #@38
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->aca:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@3a
    aput-object v2, v0, v1

    #@3c
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@3f
    move-result v0

    #@40
    return v0
.end method

.method public jZ()[Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->abT:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public ka()[Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->abU:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public kb()[Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->abV:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public kc()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->abW:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public kd()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->abX:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public ke()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->abY:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public kf()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->abZ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public kg()Lcom/google/android/gms/plus/internal/PlusCommonExtras;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->aca:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@2
    return-object v0
.end method

.method public kh()Landroid/os/Bundle;
    .registers 3

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-class v1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@e
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->aca:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->n(Landroid/os/Bundle;)V

    #@13
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "versionCode"

    #@6
    iget v2, p0, Lcom/google/android/gms/plus/internal/h;->xM:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@f
    move-result-object v0

    #@10
    const-string v1, "accountName"

    #@12
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->yQ:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "requestedScopes"

    #@1a
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->abT:[Ljava/lang/String;

    #@1c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@1f
    move-result-object v0

    #@20
    const-string v1, "visibleActivities"

    #@22
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->abU:[Ljava/lang/String;

    #@24
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@27
    move-result-object v0

    #@28
    const-string v1, "requiredFeatures"

    #@2a
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->abV:[Ljava/lang/String;

    #@2c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@2f
    move-result-object v0

    #@30
    const-string v1, "packageNameForAuth"

    #@32
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->abW:Ljava/lang/String;

    #@34
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@37
    move-result-object v0

    #@38
    const-string v1, "callingPackageName"

    #@3a
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->abX:Ljava/lang/String;

    #@3c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3f
    move-result-object v0

    #@40
    const-string v1, "applicationName"

    #@42
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->abY:Ljava/lang/String;

    #@44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@47
    move-result-object v0

    #@48
    const-string v1, "extra"

    #@4a
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->aca:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@4c
    invoke-virtual {v2}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/internal/j;->a(Lcom/google/android/gms/plus/internal/h;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
