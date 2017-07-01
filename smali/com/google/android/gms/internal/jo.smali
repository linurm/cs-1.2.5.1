.class public Lcom/google/android/gms/internal/jo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/jp;


# instance fields
.field private final Wl:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/jp;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/jp;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/jo;->CREATOR:Lcom/google/android/gms/internal/jp;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/jo;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/jo;->Wl:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/jo;->mTag:Ljava/lang/String;

    #@9
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/jo;->CREATOR:Lcom/google/android/gms/internal/jp;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/google/android/gms/internal/jo;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/jo;

    #@8
    iget-object v1, p0, Lcom/google/android/gms/internal/jo;->Wl:Ljava/lang/String;

    #@a
    iget-object v2, p1, Lcom/google/android/gms/internal/jo;->Wl:Ljava/lang/String;

    #@c
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_5

    #@12
    iget-object v1, p0, Lcom/google/android/gms/internal/jo;->mTag:Ljava/lang/String;

    #@14
    iget-object v2, p1, Lcom/google/android/gms/internal/jo;->mTag:Ljava/lang/String;

    #@16
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_5

    #@1c
    const/4 v0, 0x1

    #@1d
    goto :goto_5
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jo;->mTag:Ljava/lang/String;

    #@2
    return-object v0
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
    iget-object v2, p0, Lcom/google/android/gms/internal/jo;->Wl:Ljava/lang/String;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    iget-object v2, p0, Lcom/google/android/gms/internal/jo;->mTag:Ljava/lang/String;

    #@b
    aput-object v2, v0, v1

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public jj()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jo;->Wl:Ljava/lang/String;

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
    const-string v1, "mPlaceId"

    #@6
    iget-object v2, p0, Lcom/google/android/gms/internal/jo;->Wl:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@b
    move-result-object v0

    #@c
    const-string v1, "mTag"

    #@e
    iget-object v2, p0, Lcom/google/android/gms/internal/jo;->mTag:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/jo;->CREATOR:Lcom/google/android/gms/internal/jp;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jp;->a(Lcom/google/android/gms/internal/jo;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
