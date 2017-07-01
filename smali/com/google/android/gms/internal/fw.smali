.class public abstract Lcom/google/android/gms/internal/fw;
.super Lcom/google/android/gms/internal/fv$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/fv$a;"
    }
.end annotation


# instance fields
.field protected yu:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/fv$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/fw;->yu:Lcom/google/android/gms/common/api/a$d;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    #@0
    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    #@0
    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/Status;Z)V
    .registers 3

    #@0
    return-void
.end method
