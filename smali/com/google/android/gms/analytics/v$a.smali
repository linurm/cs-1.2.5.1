.class Lcom/google/android/gms/analytics/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/v;
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
        "Lcom/google/android/gms/analytics/w;",
        ">;"
    }
.end annotation


# instance fields
.field private final wi:Lcom/google/android/gms/analytics/w;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/analytics/w;

    #@5
    invoke-direct {v0}, Lcom/google/android/gms/analytics/w;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/analytics/v$a;->wi:Lcom/google/android/gms/analytics/w;

    #@a
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .registers 5

    #@0
    const-string v0, "ga_dispatchPeriod"

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    iget-object v0, p0, Lcom/google/android/gms/analytics/v$a;->wi:Lcom/google/android/gms/analytics/w;

    #@a
    iput p2, v0, Lcom/google/android/gms/analytics/w;->wk:I

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
    .registers 3

    #@0
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .registers 5

    #@0
    const-string v0, "ga_dryRun"

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_12

    #@8
    iget-object v1, p0, Lcom/google/android/gms/analytics/v$a;->wi:Lcom/google/android/gms/analytics/w;

    #@a
    if-eqz p2, :cond_10

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    iput v0, v1, Lcom/google/android/gms/analytics/w;->wl:I

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_d

    #@12
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v1, "bool configuration name not recognized:  "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@28
    goto :goto_f
.end method

.method public synthetic cB()Lcom/google/android/gms/analytics/j;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/v$a;->cX()Lcom/google/android/gms/analytics/w;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public cX()Lcom/google/android/gms/analytics/w;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/v$a;->wi:Lcom/google/android/gms/analytics/w;

    #@2
    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    const-string v0, "ga_appName"

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    iget-object v0, p0, Lcom/google/android/gms/analytics/v$a;->wi:Lcom/google/android/gms/analytics/w;

    #@a
    iput-object p2, v0, Lcom/google/android/gms/analytics/w;->tC:Ljava/lang/String;

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    const-string v0, "ga_appVersion"

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1a

    #@15
    iget-object v0, p0, Lcom/google/android/gms/analytics/v$a;->wi:Lcom/google/android/gms/analytics/w;

    #@17
    iput-object p2, v0, Lcom/google/android/gms/analytics/w;->tD:Ljava/lang/String;

    #@19
    goto :goto_c

    #@1a
    :cond_1a
    const-string v0, "ga_logLevel"

    #@1c
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_27

    #@22
    iget-object v0, p0, Lcom/google/android/gms/analytics/v$a;->wi:Lcom/google/android/gms/analytics/w;

    #@24
    iput-object p2, v0, Lcom/google/android/gms/analytics/w;->wj:Ljava/lang/String;

    #@26
    goto :goto_c

    #@27
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string v1, "string configuration name not recognized:  "

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@3d
    goto :goto_c
.end method
