.class final Lcom/google/android/gms/internal/fy$e;
.super Lcom/google/android/gms/internal/fw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fw",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fw;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@3
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/fy$e;->yu:Lcom/google/android/gms/common/api/a$d;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@5
    return-void
.end method
