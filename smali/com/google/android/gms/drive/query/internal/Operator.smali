.class public Lcom/google/android/gms/drive/query/internal/Operator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/query/internal/Operator;",
            ">;"
        }
    .end annotation
.end field

.field public static final La:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final Lb:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final Lc:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final Ld:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final Le:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final Lf:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final Lg:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final Lh:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final Li:Lcom/google/android/gms/drive/query/internal/Operator;


# instance fields
.field final mTag:Ljava/lang/String;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/k;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/k;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    #@9
    const-string v1, "="

    #@b
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    #@e
    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->La:Lcom/google/android/gms/drive/query/internal/Operator;

    #@10
    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    #@12
    const-string v1, "<"

    #@14
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    #@17
    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Lb:Lcom/google/android/gms/drive/query/internal/Operator;

    #@19
    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    #@1b
    const-string v1, "<="

    #@1d
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    #@20
    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Lc:Lcom/google/android/gms/drive/query/internal/Operator;

    #@22
    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    #@24
    const-string v1, ">"

    #@26
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    #@29
    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Ld:Lcom/google/android/gms/drive/query/internal/Operator;

    #@2b
    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    #@2d
    const-string v1, ">="

    #@2f
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    #@32
    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Le:Lcom/google/android/gms/drive/query/internal/Operator;

    #@34
    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    #@36
    const-string v1, "and"

    #@38
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    #@3b
    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Lf:Lcom/google/android/gms/drive/query/internal/Operator;

    #@3d
    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    #@3f
    const-string v1, "or"

    #@41
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    #@44
    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Lg:Lcom/google/android/gms/drive/query/internal/Operator;

    #@46
    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    #@48
    const-string v1, "not"

    #@4a
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    #@4d
    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Lh:Lcom/google/android/gms/drive/query/internal/Operator;

    #@4f
    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    #@51
    const-string v1, "contains"

    #@53
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    #@56
    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Li:Lcom/google/android/gms/drive/query/internal/Operator;

    #@58
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/query/internal/Operator;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    #@7
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(ILjava/lang/String;)V

    #@4
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
    if-eqz p1, :cond_5

    #@8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v3

    #@10
    if-ne v2, v3, :cond_5

    #@12
    check-cast p1, Lcom/google/android/gms/drive/query/internal/Operator;

    #@14
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    #@16
    if-nez v2, :cond_1d

    #@18
    iget-object v2, p1, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    #@1a
    if-eqz v2, :cond_4

    #@1c
    goto :goto_5

    #@1d
    :cond_1d
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    #@1f
    iget-object v3, p1, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-nez v2, :cond_4

    #@27
    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    #@2
    if-nez v0, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    add-int/lit8 v0, v0, 0x1f

    #@7
    return v0

    #@8
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@d
    move-result v0

    #@e
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/k;->a(Lcom/google/android/gms/drive/query/internal/Operator;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
