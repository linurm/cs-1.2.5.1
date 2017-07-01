.class public Lcom/google/android/gms/plus/internal/PlusCommonExtras;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/internal/f;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private abQ:Ljava/lang/String;

.field private abR:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "PlusCommonExtras"

    #@2
    sput-object v0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->TAG:Ljava/lang/String;

    #@4
    new-instance v0, Lcom/google/android/gms/plus/internal/f;

    #@6
    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/f;-><init>()V

    #@9
    sput-object v0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->CREATOR:Lcom/google/android/gms/plus/internal/f;

    #@b
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->xM:I

    #@6
    const-string v0, ""

    #@8
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->abQ:Ljava/lang/String;

    #@a
    const-string v0, ""

    #@c
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->abR:Ljava/lang/String;

    #@e
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->abQ:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->abR:Ljava/lang/String;

    #@9
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
    instance-of v1, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@8
    iget v1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->xM:I

    #@a
    iget v2, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->xM:I

    #@c
    if-ne v1, v2, :cond_5

    #@e
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->abQ:Ljava/lang/String;

    #@10
    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->abQ:Ljava/lang/String;

    #@12
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_5

    #@18
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->abR:Ljava/lang/String;

    #@1a
    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->abR:Ljava/lang/String;

    #@1c
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_5

    #@22
    const/4 v0, 0x1

    #@23
    goto :goto_5
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->xM:I

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
    iget v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->xM:I

    #@6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->abQ:Ljava/lang/String;

    #@f
    aput-object v2, v0, v1

    #@11
    const/4 v1, 0x2

    #@12
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->abR:Ljava/lang/String;

    #@14
    aput-object v2, v0, v1

    #@16
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public jX()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->abQ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public jY()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->abR:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public n(Landroid/os/Bundle;)V
    .registers 4

    #@0
    const-string v0, "android.gms.plus.internal.PlusCommonExtras.extraPlusCommon"

    #@2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@9
    return-void
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
    iget v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->xM:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@f
    move-result-object v0

    #@10
    const-string v1, "Gpsrc"

    #@12
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->abQ:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "ClientCallingPackage"

    #@1a
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->abR:Ljava/lang/String;

    #@1c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/internal/f;->a(Lcom/google/android/gms/plus/internal/PlusCommonExtras;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
