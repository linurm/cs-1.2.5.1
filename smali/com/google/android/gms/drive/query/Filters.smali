.class public Lcom/google/android/gms/drive/query/Filters;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static varargs and(Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Filter;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@2
    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->Lf:Lcom/google/android/gms/drive/query/internal/Operator;

    #@4
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)V

    #@7
    return-object v0
.end method

.method public static and(Ljava/lang/Iterable;)Lcom/google/android/gms/drive/query/Filter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/drive/query/Filter;",
            ">;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@2
    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->Lf:Lcom/google/android/gms/drive/query/internal/Operator;

    #@4
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/lang/Iterable;)V

    #@7
    return-object v0
.end method

.method public static contains(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/String;)Lcom/google/android/gms/drive/query/Filter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    #@2
    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->Li:Lcom/google/android/gms/drive/query/internal/Operator;

    #@4
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V

    #@7
    return-object v0
.end method

.method public static eq(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/Filter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    #@2
    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->La:Lcom/google/android/gms/drive/query/internal/Operator;

    #@4
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V

    #@7
    return-object v0
.end method

.method public static greaterThan(Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    #@2
    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->Ld:Lcom/google/android/gms/drive/query/internal/Operator;

    #@4
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V

    #@7
    return-object v0
.end method

.method public static greaterThanEquals(Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    #@2
    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->Le:Lcom/google/android/gms/drive/query/internal/Operator;

    #@4
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V

    #@7
    return-object v0
.end method

.method public static in(Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/Filter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/InFilter;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/drive/query/internal/InFilter;-><init>(Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static lessThan(Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    #@2
    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->Lb:Lcom/google/android/gms/drive/query/internal/Operator;

    #@4
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V

    #@7
    return-object v0
.end method

.method public static lessThanEquals(Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    #@2
    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->Lc:Lcom/google/android/gms/drive/query/internal/Operator;

    #@4
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V

    #@7
    return-object v0
.end method

.method public static not(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Filter;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/NotFilter;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/query/internal/NotFilter;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    #@5
    return-object v0
.end method

.method public static varargs or(Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Filter;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@2
    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->Lg:Lcom/google/android/gms/drive/query/internal/Operator;

    #@4
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)V

    #@7
    return-object v0
.end method

.method public static or(Ljava/lang/Iterable;)Lcom/google/android/gms/drive/query/Filter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/drive/query/Filter;",
            ">;)",
            "Lcom/google/android/gms/drive/query/Filter;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@2
    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->Lg:Lcom/google/android/gms/drive/query/internal/Operator;

    #@4
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/lang/Iterable;)V

    #@7
    return-object v0
.end method

.method public static sharedWithMe()Lcom/google/android/gms/drive/query/Filter;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    #@2
    sget-object v1, Lcom/google/android/gms/drive/query/SearchableField;->KI:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;-><init>(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;)V

    #@7
    return-object v0
.end method
