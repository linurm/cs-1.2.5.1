.class public final Lcom/google/android/gms/internal/gw$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final FS:I

.field public final FT:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/gw$a;->FS:I

    #@5
    iput p2, p0, Lcom/google/android/gms/internal/gw$a;->FT:I

    #@7
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/internal/gw$a;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_17

    #@9
    check-cast p1, Lcom/google/android/gms/internal/gw$a;

    #@b
    iget v2, p1, Lcom/google/android/gms/internal/gw$a;->FS:I

    #@d
    iget v3, p0, Lcom/google/android/gms/internal/gw$a;->FS:I

    #@f
    if-ne v2, v3, :cond_6

    #@11
    iget v2, p1, Lcom/google/android/gms/internal/gw$a;->FT:I

    #@13
    iget v3, p0, Lcom/google/android/gms/internal/gw$a;->FT:I

    #@15
    if-ne v2, v3, :cond_6

    #@17
    :cond_17
    move v0, v1

    #@18
    goto :goto_6
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
    iget v2, p0, Lcom/google/android/gms/internal/gw$a;->FS:I

    #@6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    iget v2, p0, Lcom/google/android/gms/internal/gw$a;->FT:I

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
