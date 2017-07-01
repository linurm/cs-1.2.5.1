.class public final Lcom/google/android/gms/internal/dp;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dp$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/dp$a;)Lcom/google/android/gms/internal/em;
    .registers 4

    #@0
    iget-object v0, p1, Lcom/google/android/gms/internal/ds;->kQ:Lcom/google/android/gms/internal/ev;

    #@2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ev;->sz:Z

    #@4
    if-eqz v0, :cond_b

    #@6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/dp;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/dp$a;)Lcom/google/android/gms/internal/em;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/dp;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/dp$a;)Lcom/google/android/gms/internal/em;

    #@e
    move-result-object v0

    #@f
    goto :goto_a
.end method

.method private static b(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/dp$a;)Lcom/google/android/gms/internal/em;
    .registers 4

    #@0
    const-string v0, "Fetching ad response from local ad request service."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    new-instance v0, Lcom/google/android/gms/internal/dq$a;

    #@7
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/dq$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/dp$a;)V

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq$a;->start()V

    #@d
    return-object v0
.end method

.method private static c(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/dp$a;)Lcom/google/android/gms/internal/em;
    .registers 4

    #@0
    const-string v0, "Fetching ad response from remote ad request service."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_12

    #@b
    const-string v0, "Failed to connect to remote ad request service."

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@10
    const/4 v0, 0x0

    #@11
    :goto_11
    return-object v0

    #@12
    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/dq$b;

    #@14
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/dq$b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/dp$a;)V

    #@17
    goto :goto_11
.end method
