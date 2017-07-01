.class public abstract Lcom/google/android/gms/cast/Cast$a;
.super Lcom/google/android/gms/common/api/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/Cast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/a$b",
        "<TR;",
        "Lcom/google/android/gms/internal/gh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$b;-><init>(Lcom/google/android/gms/common/api/Api$c;)V

    #@5
    return-void
.end method


# virtual methods
.method public N(I)V
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$a;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$a;->b(Lcom/google/android/gms/common/api/Result;)V

    #@c
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    #@6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$a;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$a;->b(Lcom/google/android/gms/common/api/Result;)V

    #@d
    return-void
.end method
