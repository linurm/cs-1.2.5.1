.class public Lcom/google/android/gms/drive/query/SortOrder$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/query/SortOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final KK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;",
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
    iput-object v0, p0, Lcom/google/android/gms/drive/query/SortOrder$Builder;->KK:Ljava/util/List;

    #@a
    return-void
.end method


# virtual methods
.method public addSortAscending(Lcom/google/android/gms/drive/metadata/SortableMetadataField;)Lcom/google/android/gms/drive/query/SortOrder$Builder;
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/query/SortOrder$Builder;->KK:Ljava/util/List;

    #@2
    new-instance v1, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;

    #@4
    invoke-interface {p1}, Lcom/google/android/gms/drive/metadata/SortableMetadataField;->getName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x1

    #@9
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;-><init>(Ljava/lang/String;Z)V

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f
    return-object p0
.end method

.method public addSortDescending(Lcom/google/android/gms/drive/metadata/SortableMetadataField;)Lcom/google/android/gms/drive/query/SortOrder$Builder;
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/query/SortOrder$Builder;->KK:Ljava/util/List;

    #@2
    new-instance v1, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;

    #@4
    invoke-interface {p1}, Lcom/google/android/gms/drive/metadata/SortableMetadataField;->getName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x0

    #@9
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;-><init>(Ljava/lang/String;Z)V

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f
    return-object p0
.end method

.method public build()Lcom/google/android/gms/drive/query/SortOrder;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/SortOrder;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/drive/query/SortOrder$Builder;->KK:Ljava/util/List;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/query/SortOrder;-><init>(Ljava/util/List;Lcom/google/android/gms/drive/query/SortOrder$1;)V

    #@8
    return-object v0
.end method
