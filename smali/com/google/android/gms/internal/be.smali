.class public Lcom/google/android/gms/internal/be;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bc;


# instance fields
.field private final nc:Lcom/google/android/gms/internal/bf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bf;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/be;->nc:Lcom/google/android/gms/internal/bf;

    #@5
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ex;Ljava/util/Map;)V
    .registers 5
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
    const-string v0, "1"

    #@2
    const-string v1, "transparentBackground"

    #@4
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    iget-object v1, p0, Lcom/google/android/gms/internal/be;->nc:Lcom/google/android/gms/internal/bf;

    #@e
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/bf;->b(Z)V

    #@11
    return-void
.end method
