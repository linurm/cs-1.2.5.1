.class public final Lcom/google/android/gms/internal/eu;
.super Ljava/lang/Object;


# direct methods
.method public static A(Ljava/lang/String;)V
    .registers 2

    #@0
    const/4 v0, 0x6

    #@1
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->p(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_c

    #@7
    const-string v0, "Ads"

    #@9
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    :cond_c
    return-void
.end method

.method public static B(Ljava/lang/String;)V
    .registers 2

    #@0
    const/4 v0, 0x4

    #@1
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->p(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_c

    #@7
    const-string v0, "Ads"

    #@9
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    :cond_c
    return-void
.end method

.method public static C(Ljava/lang/String;)V
    .registers 2

    #@0
    const/4 v0, 0x2

    #@1
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->p(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_c

    #@7
    const-string v0, "Ads"

    #@9
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    :cond_c
    return-void
.end method

.method public static D(Ljava/lang/String;)V
    .registers 2

    #@0
    const/4 v0, 0x5

    #@1
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->p(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_c

    #@7
    const-string v0, "Ads"

    #@9
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    :cond_c
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    #@0
    const/4 v0, 0x3

    #@1
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->p(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_c

    #@7
    const-string v0, "Ads"

    #@9
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c
    :cond_c
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    #@0
    const/4 v0, 0x6

    #@1
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->p(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_c

    #@7
    const-string v0, "Ads"

    #@9
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c
    :cond_c
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    #@0
    const/4 v0, 0x5

    #@1
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->p(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_c

    #@7
    const-string v0, "Ads"

    #@9
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c
    :cond_c
    return-void
.end method

.method public static p(I)Z
    .registers 2

    #@0
    const/4 v0, 0x5

    #@1
    if-ge p0, v0, :cond_b

    #@3
    const-string v0, "Ads"

    #@5
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_e

    #@b
    :cond_b
    const/4 v0, 0x2

    #@c
    if-ne p0, v0, :cond_10

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x1

    #@11
    goto :goto_f
.end method

.method public static z(Ljava/lang/String;)V
    .registers 2

    #@0
    const/4 v0, 0x3

    #@1
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->p(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_c

    #@7
    const-string v0, "Ads"

    #@9
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    :cond_c
    return-void
.end method
