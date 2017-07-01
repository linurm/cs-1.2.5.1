.class public Lcom/google/android/gms/internal/cz;
.super Ljava/lang/Object;


# instance fields
.field private final mz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/cz;->mz:Ljava/lang/String;

    #@5
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILandroid/content/Intent;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_5

    #@3
    if-nez p3, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    invoke-static {p3}, Lcom/google/android/gms/internal/cy;->d(Landroid/content/Intent;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-static {p3}, Lcom/google/android/gms/internal/cy;->e(Landroid/content/Intent;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    if-eqz v1, :cond_5

    #@10
    if-eqz v2, :cond_5

    #@12
    invoke-static {v1}, Lcom/google/android/gms/internal/cy;->p(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_22

    #@1c
    const-string v1, "Developer payload not match."

    #@1e
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@21
    goto :goto_5

    #@22
    :cond_22
    iget-object v3, p0, Lcom/google/android/gms/internal/cz;->mz:Ljava/lang/String;

    #@24
    if-eqz v3, :cond_34

    #@26
    iget-object v3, p0, Lcom/google/android/gms/internal/cz;->mz:Ljava/lang/String;

    #@28
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@2b
    move-result v1

    #@2c
    if-nez v1, :cond_34

    #@2e
    const-string v1, "Fail to verify signature."

    #@30
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@33
    goto :goto_5

    #@34
    :cond_34
    const/4 v0, 0x1

    #@35
    goto :goto_5
.end method

.method public bm()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/eo;->bT()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
