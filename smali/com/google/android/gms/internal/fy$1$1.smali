.class Lcom/google/android/gms/internal/fy$1$1;
.super Lcom/google/android/gms/internal/fw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fy$1;->a(Lcom/google/android/gms/internal/fu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fw",
        "<",
        "Lcom/google/android/gms/internal/ft$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic yv:Lcom/google/android/gms/internal/fy$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fy$1;Lcom/google/android/gms/common/api/a$d;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/fy$1$1;->yv:Lcom/google/android/gms/internal/fy$1;

    #@2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fw;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/fy$1$1;->yu:Lcom/google/android/gms/common/api/a$d;

    #@2
    new-instance v1, Lcom/google/android/gms/internal/fy$b;

    #@4
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/fy$b;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V

    #@7
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@a
    return-void
.end method
