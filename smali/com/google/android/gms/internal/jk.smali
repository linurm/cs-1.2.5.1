.class public final Lcom/google/android/gms/internal/jk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/jl;


# instance fields
.field private final Va:I

.field private final Wa:I

.field private final Wb:Lcom/google/android/gms/internal/jm;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/jl;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/jl;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/jk;->CREATOR:Lcom/google/android/gms/internal/jl;

    #@7
    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/internal/jm;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/jk;->xM:I

    #@5
    iput p2, p0, Lcom/google/android/gms/internal/jk;->Va:I

    #@7
    iput p3, p0, Lcom/google/android/gms/internal/jk;->Wa:I

    #@9
    iput-object p4, p0, Lcom/google/android/gms/internal/jk;->Wb:Lcom/google/android/gms/internal/jm;

    #@b
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/jk;->CREATOR:Lcom/google/android/gms/internal/jl;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-ne p0, p1, :cond_6

    #@4
    :cond_4
    move v0, v1

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/jk;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/internal/jk;

    #@c
    iget v2, p0, Lcom/google/android/gms/internal/jk;->Va:I

    #@e
    iget v3, p1, Lcom/google/android/gms/internal/jk;->Va:I

    #@10
    if-ne v2, v3, :cond_5

    #@12
    iget v2, p0, Lcom/google/android/gms/internal/jk;->Wa:I

    #@14
    iget v3, p1, Lcom/google/android/gms/internal/jk;->Wa:I

    #@16
    if-ne v2, v3, :cond_5

    #@18
    iget-object v2, p0, Lcom/google/android/gms/internal/jk;->Wb:Lcom/google/android/gms/internal/jm;

    #@1a
    iget-object v3, p1, Lcom/google/android/gms/internal/jk;->Wb:Lcom/google/android/gms/internal/jm;

    #@1c
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/jm;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_4

    #@22
    goto :goto_5
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/jk;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget v2, p0, Lcom/google/android/gms/internal/jk;->Va:I

    #@6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    iget v2, p0, Lcom/google/android/gms/internal/jk;->Wa:I

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v0, v1

    #@15
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public jc()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/jk;->Va:I

    #@2
    return v0
.end method

.method public je()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/jk;->Wa:I

    #@2
    return v0
.end method

.method public jf()Lcom/google/android/gms/internal/jm;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Wb:Lcom/google/android/gms/internal/jm;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "transitionTypes"

    #@6
    iget v2, p0, Lcom/google/android/gms/internal/jk;->Va:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@f
    move-result-object v0

    #@10
    const-string v1, "loiteringTimeMillis"

    #@12
    iget v2, p0, Lcom/google/android/gms/internal/jk;->Wa:I

    #@14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@1b
    move-result-object v0

    #@1c
    const-string v1, "placeFilter"

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/internal/jk;->Wb:Lcom/google/android/gms/internal/jm;

    #@20
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/jk;->CREATOR:Lcom/google/android/gms/internal/jl;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jl;->a(Lcom/google/android/gms/internal/jk;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
