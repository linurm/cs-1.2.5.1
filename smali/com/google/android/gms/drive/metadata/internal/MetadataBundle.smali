.class public final Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final JS:Landroid/os/Bundle;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/h;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/internal/h;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->xM:I

    #@5
    invoke-static {p2}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/os/Bundle;

    #@b
    iput-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->JS:Landroid/os/Bundle;

    #@d
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->JS:Landroid/os/Bundle;

    #@f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@1a
    new-instance v1, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->JS:Landroid/os/Bundle;

    #@21
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@24
    move-result-object v0

    #@25
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v2

    #@29
    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_57

    #@2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Ljava/lang/String;

    #@35
    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/e;->aN(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/MetadataField;

    #@38
    move-result-object v3

    #@39
    if-nez v3, :cond_29

    #@3b
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3e
    const-string v3, "MetadataBundle"

    #@40
    new-instance v4, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string v5, "Ignored unknown metadata field in bundle: "

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    goto :goto_29

    #@57
    :cond_57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5a
    move-result-object v1

    #@5b
    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_6d

    #@61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@64
    move-result-object v0

    #@65
    check-cast v0, Ljava/lang/String;

    #@67
    iget-object v2, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->JS:Landroid/os/Bundle;

    #@69
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@6c
    goto :goto_5b

    #@6d
    :cond_6d
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;-><init>(ILandroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public static a(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;"
        }
    .end annotation

    #@0
    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->gF()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    #@7
    return-object v0
.end method

.method public static a(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    new-instance v1, Landroid/os/Bundle;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->JS:Landroid/os/Bundle;

    #@6
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@9
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;-><init>(Landroid/os/Bundle;)V

    #@c
    return-object v0
.end method

.method public static gF()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    new-instance v1, Landroid/os/Bundle;

    #@4
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@7
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;-><init>(Landroid/os/Bundle;)V

    #@a
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->JS:Landroid/os/Bundle;

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/gms/drive/metadata/MetadataField;->e(Landroid/os/Bundle;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<TT;>;TT;)V"
        }
    .end annotation

    #@0
    invoke-interface {p1}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/e;->aN(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/MetadataField;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_27

    #@a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string v2, "Unregistered field: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-interface {p1}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->JS:Landroid/os/Bundle;

    #@29
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/drive/metadata/MetadataField;->a(Ljava/lang/Object;Landroid/os/Bundle;)V

    #@2c
    return-void
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    if-ne p0, p1, :cond_6

    #@4
    move v0, v1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    instance-of v0, p1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@8
    if-nez v0, :cond_c

    #@a
    move v0, v2

    #@b
    goto :goto_5

    #@c
    :cond_c
    check-cast p1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@e
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->JS:Landroid/os/Bundle;

    #@10
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@13
    move-result-object v0

    #@14
    iget-object v3, p1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->JS:Landroid/os/Bundle;

    #@16
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@19
    move-result-object v3

    #@1a
    invoke-interface {v0, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_22

    #@20
    move v0, v2

    #@21
    goto :goto_5

    #@22
    :cond_22
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v3

    #@26
    :cond_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_46

    #@2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Ljava/lang/String;

    #@32
    iget-object v4, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->JS:Landroid/os/Bundle;

    #@34
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    iget-object v5, p1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->JS:Landroid/os/Bundle;

    #@3a
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    if-nez v0, :cond_26

    #@44
    move v0, v2

    #@45
    goto :goto_5

    #@46
    :cond_46
    move v0, v1

    #@47
    goto :goto_5
.end method

.method public gG()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<*>;>;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/HashSet;

    #@2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->JS:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_23

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/e;->aN(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/MetadataField;

    #@1e
    move-result-object v0

    #@1f
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_f

    #@23
    :cond_23
    return-object v1
.end method

.method public hashCode()I
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->JS:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    const/4 v0, 0x1

    #@b
    move v1, v0

    #@c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_27

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/lang/String;

    #@18
    iget-object v3, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->JS:Landroid/os/Bundle;

    #@1a
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@21
    move-result v0

    #@22
    mul-int/lit8 v1, v1, 0x1f

    #@24
    add-int/2addr v0, v1

    #@25
    move v1, v0

    #@26
    goto :goto_c

    #@27
    :cond_27
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "MetadataBundle [values="

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->JS:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, "]"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/h;->a(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
