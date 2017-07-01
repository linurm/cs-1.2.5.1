.class Lcom/google/android/gms/analytics/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/j;


# instance fields
.field tC:Ljava/lang/String;

.field tD:Ljava/lang/String;

.field wj:Ljava/lang/String;

.field wk:I

.field wl:I


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    const/4 v0, -0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput v0, p0, Lcom/google/android/gms/analytics/w;->wk:I

    #@6
    iput v0, p0, Lcom/google/android/gms/analytics/w;->wl:I

    #@8
    return-void
.end method


# virtual methods
.method public cY()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->tC:Ljava/lang/String;

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

.method public cZ()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->tC:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public da()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->tD:Ljava/lang/String;

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

.method public db()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->tD:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public dc()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->wj:Ljava/lang/String;

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

.method public dd()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->wj:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public de()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/analytics/w;->wk:I

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

.method public df()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/analytics/w;->wk:I

    #@2
    return v0
.end method

.method public dg()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/analytics/w;->wl:I

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

.method public dh()Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    iget v1, p0, Lcom/google/android/gms/analytics/w;->wl:I

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
