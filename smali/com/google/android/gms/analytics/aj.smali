.class Lcom/google/android/gms/analytics/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/j;


# instance fields
.field xA:I

.field xB:I

.field xC:I

.field xD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field xx:Ljava/lang/String;

.field xy:D

.field xz:I


# direct methods
.method constructor <init>()V
    .registers 4

    #@0
    const/4 v2, -0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    #@6
    iput-wide v0, p0, Lcom/google/android/gms/analytics/aj;->xy:D

    #@8
    iput v2, p0, Lcom/google/android/gms/analytics/aj;->xz:I

    #@a
    iput v2, p0, Lcom/google/android/gms/analytics/aj;->xA:I

    #@c
    iput v2, p0, Lcom/google/android/gms/analytics/aj;->xB:I

    #@e
    iput v2, p0, Lcom/google/android/gms/analytics/aj;->xC:I

    #@10
    new-instance v0, Ljava/util/HashMap;

    #@12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@15
    iput-object v0, p0, Lcom/google/android/gms/analytics/aj;->xD:Ljava/util/Map;

    #@17
    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/aj;->xD:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    if-eqz v0, :cond_b

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    move-object v0, p1

    #@c
    goto :goto_a
.end method

.method public dE()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/aj;->xx:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public dF()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/aj;->xx:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public dG()Z
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/analytics/aj;->xy:D

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmpl-double v0, v0, v2

    #@6
    if-ltz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public dH()D
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/analytics/aj;->xy:D

    #@2
    return-wide v0
.end method

.method public dI()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/analytics/aj;->xz:I

    #@2
    if-ltz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public dJ()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/analytics/aj;->xA:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    goto :goto_6
.end method

.method public dK()Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    iget v1, p0, Lcom/google/android/gms/analytics/aj;->xA:I

    #@3
    if-ne v1, v0, :cond_6

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public dL()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/analytics/aj;->xB:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    goto :goto_6
.end method

.method public dM()Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    iget v1, p0, Lcom/google/android/gms/analytics/aj;->xB:I

    #@3
    if-ne v1, v0, :cond_6

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public dN()Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    iget v1, p0, Lcom/google/android/gms/analytics/aj;->xC:I

    #@3
    if-ne v1, v0, :cond_6

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public getSessionTimeout()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/analytics/aj;->xz:I

    #@2
    return v0
.end method

.method public j(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    #@0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/aj;->T(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
