.class public Lcom/google/android/gms/drive/query/Query$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/query/Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private KF:Ljava/lang/String;

.field private KG:Lcom/google/android/gms/drive/query/SortOrder;

.field private final KH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/query/Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/drive/query/Query$Builder;->KH:Ljava/util/List;

    #@a
    return-void
.end method


# virtual methods
.method public addFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Query$Builder;
    .registers 3

    #@0
    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    #@2
    if-nez v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/drive/query/Query$Builder;->KH:Ljava/util/List;

    #@6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9
    :cond_9
    return-object p0
.end method

.method public build()Lcom/google/android/gms/drive/query/Query;
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/Query;

    #@2
    new-instance v1, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@4
    sget-object v2, Lcom/google/android/gms/drive/query/internal/Operator;->Lf:Lcom/google/android/gms/drive/query/internal/Operator;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/drive/query/Query$Builder;->KH:Ljava/util/List;

    #@8
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/lang/Iterable;)V

    #@b
    iget-object v2, p0, Lcom/google/android/gms/drive/query/Query$Builder;->KF:Ljava/lang/String;

    #@d
    iget-object v3, p0, Lcom/google/android/gms/drive/query/Query$Builder;->KG:Lcom/google/android/gms/drive/query/SortOrder;

    #@f
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/drive/query/Query;-><init>(Lcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;Lcom/google/android/gms/drive/query/SortOrder;)V

    #@12
    return-object v0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/android/gms/drive/query/Query$Builder;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/drive/query/Query$Builder;->KF:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public setSortOrder(Lcom/google/android/gms/drive/query/SortOrder;)Lcom/google/android/gms/drive/query/Query$Builder;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/drive/query/Query$Builder;->KG:Lcom/google/android/gms/drive/query/SortOrder;

    #@2
    return-object p0
.end method
