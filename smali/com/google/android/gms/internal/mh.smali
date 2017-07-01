.class public final Lcom/google/android/gms/internal/mh;
.super Ljava/lang/Object;


# static fields
.field public static final and:[I

.field public static final ane:[J

.field public static final anf:[F

.field public static final ang:[D

.field public static final anh:[Z

.field public static final ani:[Ljava/lang/String;

.field public static final anj:[[B

.field public static final ank:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v1, 0x0

    #@1
    new-array v0, v1, [I

    #@3
    sput-object v0, Lcom/google/android/gms/internal/mh;->and:[I

    #@5
    new-array v0, v1, [J

    #@7
    sput-object v0, Lcom/google/android/gms/internal/mh;->ane:[J

    #@9
    new-array v0, v1, [F

    #@b
    sput-object v0, Lcom/google/android/gms/internal/mh;->anf:[F

    #@d
    new-array v0, v1, [D

    #@f
    sput-object v0, Lcom/google/android/gms/internal/mh;->ang:[D

    #@11
    new-array v0, v1, [Z

    #@13
    sput-object v0, Lcom/google/android/gms/internal/mh;->anh:[Z

    #@15
    new-array v0, v1, [Ljava/lang/String;

    #@17
    sput-object v0, Lcom/google/android/gms/internal/mh;->ani:[Ljava/lang/String;

    #@19
    new-array v0, v1, [[B

    #@1b
    sput-object v0, Lcom/google/android/gms/internal/mh;->anj:[[B

    #@1d
    new-array v0, v1, [B

    #@1f
    sput-object v0, Lcom/google/android/gms/internal/mh;->ank:[B

    #@21
    return-void
.end method

.method public static final b(Lcom/google/android/gms/internal/ly;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->getPosition()I

    #@4
    move-result v1

    #@5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ly;->ev(I)Z

    #@8
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nN()I

    #@b
    move-result v2

    #@c
    if-lez v2, :cond_14

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->nB()I

    #@11
    move-result v2

    #@12
    if-eq v2, p1, :cond_18

    #@14
    :cond_14
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ly;->ez(I)V

    #@17
    return v0

    #@18
    :cond_18
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ly;->ev(I)Z

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_8
.end method

.method static eN(I)I
    .registers 2

    #@0
    and-int/lit8 v0, p0, 0x7

    #@2
    return v0
.end method

.method public static eO(I)I
    .registers 2

    #@0
    ushr-int/lit8 v0, p0, 0x3

    #@2
    return v0
.end method

.method static u(II)I
    .registers 3

    #@0
    shl-int/lit8 v0, p0, 0x3

    #@2
    or-int/2addr v0, p1

    #@3
    return v0
.end method
