.class abstract Lcom/google/android/gms/internal/kl$a;
.super Lcom/google/android/gms/plus/Plus$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/plus/Plus$a",
        "<",
        "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/plus/Plus$a;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/kl$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/kl$a;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public an(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/Moments$LoadMomentsResult;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/internal/kl$a$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/kl$a$1;-><init>(Lcom/google/android/gms/internal/kl$a;Lcom/google/android/gms/common/api/Status;)V

    #@5
    return-object v0
.end method

.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kl$a;->an(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/Moments$LoadMomentsResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
