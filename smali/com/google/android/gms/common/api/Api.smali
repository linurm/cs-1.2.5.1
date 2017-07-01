.class public final Lcom/google/android/gms/common/api/Api;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/Api$ApiOptions;,
        Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;,
        Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;,
        Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;,
        Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;,
        Lcom/google/android/gms/common/api/Api$a;,
        Lcom/google/android/gms/common/api/Api$b;,
        Lcom/google/android/gms/common/api/Api$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final Dm:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<*TO;>;"
        }
    .end annotation
.end field

.field private final Dn:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<*>;"
        }
    .end annotation
.end field

.field private final Do:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$b",
            "<TC;TO;>;",
            "Lcom/google/android/gms/common/api/Api$c",
            "<TC;>;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/common/api/Api;->Dm:Lcom/google/android/gms/common/api/Api$b;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/common/api/Api;->Dn:Lcom/google/android/gms/common/api/Api$c;

    #@7
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@10
    iput-object v0, p0, Lcom/google/android/gms/common/api/Api;->Do:Ljava/util/ArrayList;

    #@12
    return-void
.end method


# virtual methods
.method public eA()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->Do:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public eB()Lcom/google/android/gms/common/api/Api$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$c",
            "<*>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->Dn:Lcom/google/android/gms/common/api/Api$c;

    #@2
    return-object v0
.end method

.method public ez()Lcom/google/android/gms/common/api/Api$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$b",
            "<*TO;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->Dm:Lcom/google/android/gms/common/api/Api$b;

    #@2
    return-object v0
.end method
