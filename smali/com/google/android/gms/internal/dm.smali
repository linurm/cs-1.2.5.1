.class public final Lcom/google/android/gms/internal/dm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dm$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ds$a;Lcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/ex;Lcom/google/android/gms/internal/bt;Lcom/google/android/gms/internal/dm$a;)Lcom/google/android/gms/internal/em;
    .registers 13

    #@0
    new-instance v0, Lcom/google/android/gms/internal/dn;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    move-object v6, p5

    #@8
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/dn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds$a;Lcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/ex;Lcom/google/android/gms/internal/bt;Lcom/google/android/gms/internal/dm$a;)V

    #@b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dn;->start()V

    #@e
    return-object v0
.end method
