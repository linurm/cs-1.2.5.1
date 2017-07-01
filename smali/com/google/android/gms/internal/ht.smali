.class public Lcom/google/android/gms/internal/ht;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/hu;


# instance fields
.field private final GV:Lcom/google/android/gms/internal/hv;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/hu;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/hu;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/ht;->CREATOR:Lcom/google/android/gms/internal/hu;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/hv;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/ht;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/ht;->GV:Lcom/google/android/gms/internal/hv;

    #@7
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/hv;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/ht;->xM:I

    #@6
    iput-object p1, p0, Lcom/google/android/gms/internal/ht;->GV:Lcom/google/android/gms/internal/hv;

    #@8
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/hy$b;)Lcom/google/android/gms/internal/ht;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hy$b",
            "<**>;)",
            "Lcom/google/android/gms/internal/ht;"
        }
    .end annotation

    #@0
    instance-of v0, p0, Lcom/google/android/gms/internal/hv;

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Lcom/google/android/gms/internal/ht;

    #@6
    check-cast p0, Lcom/google/android/gms/internal/hv;

    #@8
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ht;-><init>(Lcom/google/android/gms/internal/hv;)V

    #@b
    return-object v0

    #@c
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string v1, "Unsupported safe parcelable field converter class."

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ht;->CREATOR:Lcom/google/android/gms/internal/hu;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method fB()Lcom/google/android/gms/internal/hv;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->GV:Lcom/google/android/gms/internal/hv;

    #@2
    return-object v0
.end method

.method public fC()Lcom/google/android/gms/internal/hy$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/hy$b",
            "<**>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->GV:Lcom/google/android/gms/internal/hv;

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->GV:Lcom/google/android/gms/internal/hv;

    #@6
    return-object v0

    #@7
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ht;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ht;->CREATOR:Lcom/google/android/gms/internal/hu;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/internal/ht;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
