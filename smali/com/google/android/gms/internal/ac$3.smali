.class Lcom/google/android/gms/internal/ac$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ac;->b(Lcom/google/android/gms/internal/ae;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lM:Lcom/google/android/gms/internal/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ac;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/ac$3;->lM:Lcom/google/android/gms/internal/ac;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ex;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ex;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ac$3;->lM:Lcom/google/android/gms/internal/ac;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ac;->a(Lcom/google/android/gms/internal/ex;Ljava/util/Map;)V

    #@5
    return-void
.end method
