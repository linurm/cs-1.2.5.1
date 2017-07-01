.class Lcom/google/android/gms/analytics/ai$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/analytics/k$a",
        "<",
        "Lcom/google/android/gms/analytics/aj;",
        ">;"
    }
.end annotation


# instance fields
.field private final xw:Lcom/google/android/gms/analytics/aj;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/analytics/aj;

    #@5
    invoke-direct {v0}, Lcom/google/android/gms/analytics/aj;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/analytics/ai$a;->xw:Lcom/google/android/gms/analytics/aj;

    #@a
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .registers 5

    #@0
    const-string v0, "ga_sessionTimeout"

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    iget-object v0, p0, Lcom/google/android/gms/analytics/ai$a;->xw:Lcom/google/android/gms/analytics/aj;

    #@a
    iput p2, v0, Lcom/google/android/gms/analytics/aj;->xz:I

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string v1, "int configuration name not recognized:  "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@23
    goto :goto_c
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ai$a;->xw:Lcom/google/android/gms/analytics/aj;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/analytics/aj;->xD:Ljava/util/Map;

    #@4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .registers 6

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    const-string v2, "ga_autoActivityTracking"

    #@4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_12

    #@a
    iget-object v2, p0, Lcom/google/android/gms/analytics/ai$a;->xw:Lcom/google/android/gms/analytics/aj;

    #@c
    if-eqz p2, :cond_f

    #@e
    move v0, v1

    #@f
    :cond_f
    iput v0, v2, Lcom/google/android/gms/analytics/aj;->xA:I

    #@11
    :goto_11
    return-void

    #@12
    :cond_12
    const-string v2, "ga_anonymizeIp"

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_23

    #@1a
    iget-object v2, p0, Lcom/google/android/gms/analytics/ai$a;->xw:Lcom/google/android/gms/analytics/aj;

    #@1c
    if-eqz p2, :cond_21

    #@1e
    :goto_1e
    iput v1, v2, Lcom/google/android/gms/analytics/aj;->xB:I

    #@20
    goto :goto_11

    #@21
    :cond_21
    move v1, v0

    #@22
    goto :goto_1e

    #@23
    :cond_23
    const-string v2, "ga_reportUncaughtExceptions"

    #@25
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_34

    #@2b
    iget-object v2, p0, Lcom/google/android/gms/analytics/ai$a;->xw:Lcom/google/android/gms/analytics/aj;

    #@2d
    if-eqz p2, :cond_32

    #@2f
    :goto_2f
    iput v1, v2, Lcom/google/android/gms/analytics/aj;->xC:I

    #@31
    goto :goto_11

    #@32
    :cond_32
    move v1, v0

    #@33
    goto :goto_2f

    #@34
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string v1, "bool configuration name not recognized:  "

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@4a
    goto :goto_11
.end method

.method public synthetic cB()Lcom/google/android/gms/analytics/j;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ai$a;->dD()Lcom/google/android/gms/analytics/aj;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    #@0
    const-string v0, "ga_trackingId"

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    iget-object v0, p0, Lcom/google/android/gms/analytics/ai$a;->xw:Lcom/google/android/gms/analytics/aj;

    #@a
    iput-object p2, v0, Lcom/google/android/gms/analytics/aj;->xx:Ljava/lang/String;

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    const-string v0, "ga_sampleFrequency"

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_36

    #@15
    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/analytics/ai$a;->xw:Lcom/google/android/gms/analytics/aj;

    #@17
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@1a
    move-result-wide v2

    #@1b
    iput-wide v2, v0, Lcom/google/android/gms/analytics/aj;->xy:D
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1d} :catch_1e

    #@1d
    goto :goto_c

    #@1e
    :catch_1e
    move-exception v0

    #@1f
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string v1, "Error parsing ga_sampleFrequency value: "

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@35
    goto :goto_c

    #@36
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string v1, "string configuration name not recognized:  "

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@4c
    goto :goto_c
.end method

.method public dD()Lcom/google/android/gms/analytics/aj;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ai$a;->xw:Lcom/google/android/gms/analytics/aj;

    #@2
    return-object v0
.end method
