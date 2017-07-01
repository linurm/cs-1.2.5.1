.class public Lcom/google/android/gms/plus/model/moments/Moment$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/moments/Moment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final acs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private adf:Ljava/lang/String;

.field private adn:Lcom/google/android/gms/internal/kn;

.field private ado:Lcom/google/android/gms/internal/kn;

.field private qX:Ljava/lang/String;

.field private xG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->acs:Ljava/util/Set;

    #@a
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/plus/model/moments/Moment;
    .registers 8

    #@0
    new-instance v0, Lcom/google/android/gms/internal/kp;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->acs:Ljava/util/Set;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->xG:Ljava/lang/String;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->adn:Lcom/google/android/gms/internal/kn;

    #@8
    iget-object v4, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->adf:Ljava/lang/String;

    #@a
    iget-object v5, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->ado:Lcom/google/android/gms/internal/kn;

    #@c
    iget-object v6, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->qX:Ljava/lang/String;

    #@e
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/kp;-><init>(Ljava/util/Set;Ljava/lang/String;Lcom/google/android/gms/internal/kn;Ljava/lang/String;Lcom/google/android/gms/internal/kn;Ljava/lang/String;)V

    #@11
    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/Moment$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->xG:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->acs:Ljava/util/Set;

    #@4
    const/4 v1, 0x2

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c
    return-object p0
.end method

.method public setResult(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/Moment$Builder;
    .registers 4

    #@0
    check-cast p1, Lcom/google/android/gms/internal/kn;

    #@2
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->adn:Lcom/google/android/gms/internal/kn;

    #@4
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->acs:Ljava/util/Set;

    #@6
    const/4 v1, 0x4

    #@7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e
    return-object p0
.end method

.method public setStartDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/Moment$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->adf:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->acs:Ljava/util/Set;

    #@4
    const/4 v1, 0x5

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c
    return-object p0
.end method

.method public setTarget(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/Moment$Builder;
    .registers 4

    #@0
    check-cast p1, Lcom/google/android/gms/internal/kn;

    #@2
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->ado:Lcom/google/android/gms/internal/kn;

    #@4
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->acs:Ljava/util/Set;

    #@6
    const/4 v1, 0x6

    #@7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/Moment$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->qX:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->acs:Ljava/util/Set;

    #@4
    const/4 v1, 0x7

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c
    return-object p0
.end method
