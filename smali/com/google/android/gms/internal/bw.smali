.class public final Lcom/google/android/gms/internal/bw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# instance fields
.field private final d:Ljava/util/Date;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z

.field private final ml:I

.field private final nR:I


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/bw;->d:Ljava/util/Date;

    #@5
    iput p2, p0, Lcom/google/android/gms/internal/bw;->ml:I

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/bw;->f:Ljava/util/Set;

    #@9
    iput-boolean p4, p0, Lcom/google/android/gms/internal/bw;->g:Z

    #@b
    iput p5, p0, Lcom/google/android/gms/internal/bw;->nR:I

    #@d
    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->d:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getGender()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/bw;->ml:I

    #@2
    return v0
.end method

.method public getKeywords()Ljava/util/Set;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->f:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public isTesting()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bw;->g:Z

    #@2
    return v0
.end method

.method public taggedForChildDirectedTreatment()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/bw;->nR:I

    #@2
    return v0
.end method
