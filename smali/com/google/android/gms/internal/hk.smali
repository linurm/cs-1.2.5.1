.class public final Lcom/google/android/gms/internal/hk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hk$a;
    }
.end annotation


# direct methods
.method public static e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/internal/hk$a;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/hk$a;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/hk$1;)V

    #@6
    return-object v0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-eq p0, p1, :cond_a

    #@2
    if-eqz p0, :cond_c

    #@4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    :cond_a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method

.method public static varargs hashCode([Ljava/lang/Object;)I
    .registers 2

    #@0
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method
