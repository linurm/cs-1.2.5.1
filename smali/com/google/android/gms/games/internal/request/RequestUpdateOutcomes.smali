.class public final Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;
    }
.end annotation


# static fields
.field private static final Sn:[Ljava/lang/String;


# instance fields
.field private final CT:I

.field private final So:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    const-string v2, "requestId"

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    const-string v2, "outcome"

    #@b
    aput-object v2, v0, v1

    #@d
    sput-object v0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->Sn:[Ljava/lang/String;

    #@f
    return-void
.end method

.method private constructor <init>(ILjava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->CT:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->So:Ljava/util/HashMap;

    #@7
    return-void
.end method

.method synthetic constructor <init>(ILjava/util/HashMap;Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$1;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;-><init>(ILjava/util/HashMap;)V

    #@3
    return-void
.end method

.method public static U(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;
    .registers 7

    #@0
    new-instance v1, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;

    #@2
    invoke-direct {v1}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    #@8
    move-result v0

    #@9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->cw(I)Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;

    #@c
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    #@f
    move-result v2

    #@10
    const/4 v0, 0x0

    #@11
    :goto_11
    if-ge v0, v2, :cond_29

    #@13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataHolder;->ae(I)I

    #@16
    move-result v3

    #@17
    const-string v4, "requestId"

    #@19
    invoke-virtual {p0, v4, v0, v3}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    const-string v5, "outcome"

    #@1f
    invoke-virtual {p0, v5, v0, v3}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)I

    #@22
    move-result v3

    #@23
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->v(Ljava/lang/String;I)Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_11

    #@29
    :cond_29
    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->iy()Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method


# virtual methods
.method public getRequestIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->So:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRequestOutcome(Ljava/lang/String;)I
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->So:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v2, "Request "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string v2, " was not part of the update operation!"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@22
    iget-object v0, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->So:Ljava/util/HashMap;

    #@24
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/lang/Integer;

    #@2a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2d
    move-result v0

    #@2e
    return v0
.end method
