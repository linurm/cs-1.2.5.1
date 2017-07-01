.class Lcom/google/android/gms/analytics/ai;
.super Lcom/google/android/gms/analytics/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/ai$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/k",
        "<",
        "Lcom/google/android/gms/analytics/aj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/analytics/ai$a;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/analytics/ai$a;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/analytics/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/k$a;)V

    #@8
    return-void
.end method
