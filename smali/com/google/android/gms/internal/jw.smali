.class public final Lcom/google/android/gms/internal/jw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/jx;

.field public static final YP:Lcom/google/android/gms/internal/jw;

.field public static final YQ:Lcom/google/android/gms/internal/jw;

.field public static final YR:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/jw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final YS:I

.field final qX:Ljava/lang/String;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const/4 v4, 0x1

    #@1
    const-string v0, "test_type"

    #@3
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/jw;->w(Ljava/lang/String;I)Lcom/google/android/gms/internal/jw;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/google/android/gms/internal/jw;->YP:Lcom/google/android/gms/internal/jw;

    #@9
    const-string v0, "saved_offers"

    #@b
    const/4 v1, 0x4

    #@c
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jw;->w(Ljava/lang/String;I)Lcom/google/android/gms/internal/jw;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Lcom/google/android/gms/internal/jw;->YQ:Lcom/google/android/gms/internal/jw;

    #@12
    new-instance v0, Ljava/util/HashSet;

    #@14
    const/4 v1, 0x2

    #@15
    new-array v1, v1, [Lcom/google/android/gms/internal/jw;

    #@17
    const/4 v2, 0x0

    #@18
    sget-object v3, Lcom/google/android/gms/internal/jw;->YP:Lcom/google/android/gms/internal/jw;

    #@1a
    aput-object v3, v1, v2

    #@1c
    sget-object v2, Lcom/google/android/gms/internal/jw;->YQ:Lcom/google/android/gms/internal/jw;

    #@1e
    aput-object v2, v1, v4

    #@20
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@27
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@2a
    move-result-object v0

    #@2b
    sput-object v0, Lcom/google/android/gms/internal/jw;->YR:Ljava/util/Set;

    #@2d
    new-instance v0, Lcom/google/android/gms/internal/jx;

    #@2f
    invoke-direct {v0}, Lcom/google/android/gms/internal/jx;-><init>()V

    #@32
    sput-object v0, Lcom/google/android/gms/internal/jw;->CREATOR:Lcom/google/android/gms/internal/jx;

    #@34
    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p2}, Lcom/google/android/gms/internal/hm;->aE(Ljava/lang/String;)Ljava/lang/String;

    #@6
    iput p1, p0, Lcom/google/android/gms/internal/jw;->xM:I

    #@8
    iput-object p2, p0, Lcom/google/android/gms/internal/jw;->qX:Ljava/lang/String;

    #@a
    iput p3, p0, Lcom/google/android/gms/internal/jw;->YS:I

    #@c
    return-void
.end method

.method private static w(Ljava/lang/String;I)Lcom/google/android/gms/internal/jw;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/internal/jw;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/jw;-><init>(ILjava/lang/String;I)V

    #@6
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/jw;->CREATOR:Lcom/google/android/gms/internal/jx;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/jw;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/internal/jw;

    #@c
    iget-object v2, p0, Lcom/google/android/gms/internal/jw;->qX:Ljava/lang/String;

    #@e
    iget-object v3, p1, Lcom/google/android/gms/internal/jw;->qX:Ljava/lang/String;

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_5

    #@16
    iget v2, p0, Lcom/google/android/gms/internal/jw;->YS:I

    #@18
    iget v3, p1, Lcom/google/android/gms/internal/jw;->YS:I

    #@1a
    if-eq v2, v3, :cond_4

    #@1c
    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->qX:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->qX:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/jw;->CREATOR:Lcom/google/android/gms/internal/jx;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/jw;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
