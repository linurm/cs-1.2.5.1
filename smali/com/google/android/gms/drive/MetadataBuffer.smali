.class public final Lcom/google/android/gms/drive/MetadataBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/MetadataBuffer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/drive/Metadata;",
        ">;"
    }
.end annotation


# static fields
.field private static final HR:[Ljava/lang/String;


# instance fields
.field private final HS:Ljava/lang/String;

.field private HT:Lcom/google/android/gms/drive/MetadataBuffer$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/e;->gE()Ljava/util/Collection;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_21

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/drive/metadata/MetadataField;

    #@19
    invoke-interface {v0}, Lcom/google/android/gms/drive/metadata/MetadataField;->gC()Ljava/util/Collection;

    #@1c
    move-result-object v0

    #@1d
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@20
    goto :goto_d

    #@21
    :cond_21
    const/4 v0, 0x0

    #@22
    new-array v0, v0, [Ljava/lang/String;

    #@24
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, [Ljava/lang/String;

    #@2a
    sput-object v0, Lcom/google/android/gms/drive/MetadataBuffer;->HR:[Ljava/lang/String;

    #@2c
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .registers 5

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3
    iput-object p2, p0, Lcom/google/android/gms/drive/MetadataBuffer;->HS:Ljava/lang/String;

    #@5
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->eU()Landroid/os/Bundle;

    #@8
    move-result-object v0

    #@9
    const-class v1, Lcom/google/android/gms/drive/MetadataBuffer;

    #@b
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@12
    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/drive/Metadata;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer;->HT:Lcom/google/android/gms/drive/MetadataBuffer$a;

    #@2
    if-eqz v0, :cond_a

    #@4
    invoke-static {v0}, Lcom/google/android/gms/drive/MetadataBuffer$a;->a(Lcom/google/android/gms/drive/MetadataBuffer$a;)I

    #@7
    move-result v1

    #@8
    if-eq v1, p1, :cond_13

    #@a
    :cond_a
    new-instance v0, Lcom/google/android/gms/drive/MetadataBuffer$a;

    #@c
    iget-object v1, p0, Lcom/google/android/gms/drive/MetadataBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@e
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/drive/MetadataBuffer$a;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@11
    iput-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer;->HT:Lcom/google/android/gms/drive/MetadataBuffer$a;

    #@13
    :cond_13
    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/MetadataBuffer;->get(I)Lcom/google/android/gms/drive/Metadata;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer;->HS:Ljava/lang/String;

    #@2
    return-object v0
.end method
