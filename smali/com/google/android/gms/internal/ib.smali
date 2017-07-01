.class public Lcom/google/android/gms/internal/ib;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ib$a;,
        Lcom/google/android/gms/internal/ib$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ic;


# instance fields
.field private final Hl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;>;>;"
        }
    .end annotation
.end field

.field private final Hm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ib$a;",
            ">;"
        }
    .end annotation
.end field

.field private final Hn:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ic;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ic;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/ib;->CREATOR:Lcom/google/android/gms/internal/ic;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ib$a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/ib;->xM:I

    #@5
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/google/android/gms/internal/ib;->Hm:Ljava/util/ArrayList;

    #@8
    invoke-static {p2}, Lcom/google/android/gms/internal/ib;->b(Ljava/util/ArrayList;)Ljava/util/HashMap;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/google/android/gms/internal/ib;->Hl:Ljava/util/HashMap;

    #@e
    invoke-static {p3}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    iput-object v0, p0, Lcom/google/android/gms/internal/ib;->Hn:Ljava/lang/String;

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ib;->fT()V

    #@19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/hy;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/ib;->xM:I

    #@6
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/internal/ib;->Hm:Ljava/util/ArrayList;

    #@9
    new-instance v0, Ljava/util/HashMap;

    #@b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@e
    iput-object v0, p0, Lcom/google/android/gms/internal/ib;->Hl:Ljava/util/HashMap;

    #@10
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/google/android/gms/internal/ib;->Hn:Ljava/lang/String;

    #@16
    return-void
.end method

.method private static b(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ib$a;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;>;>;"
        }
    .end annotation

    #@0
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v3

    #@9
    const/4 v0, 0x0

    #@a
    move v1, v0

    #@b
    :goto_b
    if-ge v1, v3, :cond_20

    #@d
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/google/android/gms/internal/ib$a;

    #@13
    iget-object v4, v0, Lcom/google/android/gms/internal/ib$a;->className:Ljava/lang/String;

    #@15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ib$a;->fX()Ljava/util/HashMap;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    add-int/lit8 v0, v1, 0x1

    #@1e
    move v1, v0

    #@1f
    goto :goto_b

    #@20
    :cond_20
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/hy;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;>;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ib;->Hl:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    return-void
.end method

.method public aJ(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ib;->Hl:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/HashMap;

    #@8
    return-object v0
.end method

.method public b(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/hy;",
            ">;)Z"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ib;->Hl:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ib;->CREATOR:Lcom/google/android/gms/internal/ic;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public fT()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ib;->Hl:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_3c

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    iget-object v1, p0, Lcom/google/android/gms/internal/ib;->Hl:Ljava/util/HashMap;

    #@18
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/util/HashMap;

    #@1e
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@21
    move-result-object v1

    #@22
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v3

    #@26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_a

    #@2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Ljava/lang/String;

    #@32
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Lcom/google/android/gms/internal/hy$a;

    #@38
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/hy$a;->a(Lcom/google/android/gms/internal/ib;)V

    #@3b
    goto :goto_26

    #@3c
    :cond_3c
    return-void
.end method

.method public fU()V
    .registers 8

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ib;->Hl:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v4

    #@a
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_4b

    #@10
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    iget-object v1, p0, Lcom/google/android/gms/internal/ib;->Hl:Ljava/util/HashMap;

    #@18
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/util/HashMap;

    #@1e
    new-instance v5, Ljava/util/HashMap;

    #@20
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@23
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@26
    move-result-object v2

    #@27
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v6

    #@2b
    :goto_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_45

    #@31
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Ljava/lang/String;

    #@37
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Lcom/google/android/gms/internal/hy$a;

    #@3d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/hy$a;->fJ()Lcom/google/android/gms/internal/hy$a;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    goto :goto_2b

    #@45
    :cond_45
    iget-object v1, p0, Lcom/google/android/gms/internal/ib;->Hl:Ljava/util/HashMap;

    #@47
    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    goto :goto_a

    #@4b
    :cond_4b
    return-void
.end method

.method fV()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ib$a;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/ib;->Hl:Ljava/util/HashMap;

    #@7
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v3

    #@f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2c

    #@15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    new-instance v4, Lcom/google/android/gms/internal/ib$a;

    #@1d
    iget-object v1, p0, Lcom/google/android/gms/internal/ib;->Hl:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/util/HashMap;

    #@25
    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/ib$a;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    #@28
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_f

    #@2c
    :cond_2c
    return-object v2
.end method

.method public fW()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ib;->Hn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ib;->xM:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    #@0
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/ib;->Hl:Ljava/util/HashMap;

    #@7
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v3

    #@f
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_57

    #@15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string v4, ":\n"

    #@21
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    iget-object v1, p0, Lcom/google/android/gms/internal/ib;->Hl:Ljava/util/HashMap;

    #@26
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Ljava/util/HashMap;

    #@2c
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@2f
    move-result-object v1

    #@30
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v4

    #@34
    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_f

    #@3a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    check-cast v1, Ljava/lang/String;

    #@40
    const-string v5, "  "

    #@42
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    const-string v6, ": "

    #@4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    goto :goto_34

    #@57
    :cond_57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ib;->CREATOR:Lcom/google/android/gms/internal/ic;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ic;->a(Lcom/google/android/gms/internal/ib;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
