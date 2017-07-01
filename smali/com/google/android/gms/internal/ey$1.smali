.class Lcom/google/android/gms/internal/ey$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ey;->aS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sN:Lcom/google/android/gms/internal/cf;

.field final synthetic sO:Lcom/google/android/gms/internal/ey;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ey;Lcom/google/android/gms/internal/cf;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/ey$1;->sO:Lcom/google/android/gms/internal/ey;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/ey$1;->sN:Lcom/google/android/gms/internal/cf;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ey$1;->sN:Lcom/google/android/gms/internal/cf;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->aS()V

    #@5
    return-void
.end method
