.class public final Lcom/google/android/gms/internal/jq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/jr;

.field static final Wm:J


# instance fields
.field private final Vl:J

.field private final Wn:Lcom/google/android/gms/internal/jm;

.field private final mPriority:I

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/internal/jr;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/jr;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/jq;->CREATOR:Lcom/google/android/gms/internal/jr;

    #@7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    #@9
    const-wide/16 v2, 0x1

    #@b
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@e
    move-result-wide v0

    #@f
    sput-wide v0, Lcom/google/android/gms/internal/jq;->Wm:J

    #@11
    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/jm;JI)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/jq;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/jq;->Wn:Lcom/google/android/gms/internal/jm;

    #@7
    iput-wide p3, p0, Lcom/google/android/gms/internal/jq;->Vl:J

    #@9
    iput p5, p0, Lcom/google/android/gms/internal/jq;->mPriority:I

    #@b
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/jq;->CREATOR:Lcom/google/android/gms/internal/jr;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

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
    instance-of v2, p1, Lcom/google/android/gms/internal/jq;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/internal/jq;

    #@c
    iget-object v2, p0, Lcom/google/android/gms/internal/jq;->Wn:Lcom/google/android/gms/internal/jm;

    #@e
    iget-object v3, p1, Lcom/google/android/gms/internal/jq;->Wn:Lcom/google/android/gms/internal/jm;

    #@10
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_5

    #@16
    iget-wide v2, p0, Lcom/google/android/gms/internal/jq;->Vl:J

    #@18
    iget-wide v4, p1, Lcom/google/android/gms/internal/jq;->Vl:J

    #@1a
    cmp-long v2, v2, v4

    #@1c
    if-nez v2, :cond_5

    #@1e
    iget v2, p0, Lcom/google/android/gms/internal/jq;->mPriority:I

    #@20
    iget v3, p1, Lcom/google/android/gms/internal/jq;->mPriority:I

    #@22
    if-eq v2, v3, :cond_4

    #@24
    goto :goto_5
.end method

.method public getInterval()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/internal/jq;->Vl:J

    #@2
    return-wide v0
.end method

.method public getPriority()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/jq;->mPriority:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 5

    #@0
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget-object v2, p0, Lcom/google/android/gms/internal/jq;->Wn:Lcom/google/android/gms/internal/jm;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    iget-wide v2, p0, Lcom/google/android/gms/internal/jq;->Vl:J

    #@b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@e
    move-result-object v2

    #@f
    aput-object v2, v0, v1

    #@11
    const/4 v1, 0x2

    #@12
    iget v2, p0, Lcom/google/android/gms/internal/jq;->mPriority:I

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

.method public jf()Lcom/google/android/gms/internal/jm;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jq;->Wn:Lcom/google/android/gms/internal/jm;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "filter"

    #@6
    iget-object v2, p0, Lcom/google/android/gms/internal/jq;->Wn:Lcom/google/android/gms/internal/jm;

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@b
    move-result-object v0

    #@c
    const-string v1, "interval"

    #@e
    iget-wide v2, p0, Lcom/google/android/gms/internal/jq;->Vl:J

    #@10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "priority"

    #@1a
    iget v2, p0, Lcom/google/android/gms/internal/jq;->mPriority:I

    #@1c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v2

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
    sget-object v0, Lcom/google/android/gms/internal/jq;->CREATOR:Lcom/google/android/gms/internal/jr;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jr;->a(Lcom/google/android/gms/internal/jq;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
