.class public final Lcom/google/android/gms/internal/jm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/jn;


# instance fields
.field final Wc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/js;",
            ">;"
        }
    .end annotation
.end field

.field private final Wd:Ljava/lang/String;

.field private final We:Z

.field final Wf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/jw;",
            ">;"
        }
    .end annotation
.end field

.field private final Wg:Ljava/lang/String;

.field final Wh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Wi:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/js;",
            ">;"
        }
    .end annotation
.end field

.field private final Wj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/jw;",
            ">;"
        }
    .end annotation
.end field

.field private final Wk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/jn;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/jn;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/jm;->CREATOR:Lcom/google/android/gms/internal/jn;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/js;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/jw;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/jm;->xM:I

    #@5
    if-nez p2, :cond_44

    #@7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    :goto_b
    iput-object v0, p0, Lcom/google/android/gms/internal/jm;->Wc:Ljava/util/List;

    #@d
    if-nez p3, :cond_11

    #@f
    const-string p3, ""

    #@11
    :cond_11
    iput-object p3, p0, Lcom/google/android/gms/internal/jm;->Wd:Ljava/lang/String;

    #@13
    iput-boolean p4, p0, Lcom/google/android/gms/internal/jm;->We:Z

    #@15
    if-nez p5, :cond_49

    #@17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@1a
    move-result-object v0

    #@1b
    :goto_1b
    iput-object v0, p0, Lcom/google/android/gms/internal/jm;->Wf:Ljava/util/List;

    #@1d
    if-nez p6, :cond_21

    #@1f
    const-string p6, ""

    #@21
    :cond_21
    iput-object p6, p0, Lcom/google/android/gms/internal/jm;->Wg:Ljava/lang/String;

    #@23
    if-nez p7, :cond_4e

    #@25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@28
    move-result-object v0

    #@29
    :goto_29
    iput-object v0, p0, Lcom/google/android/gms/internal/jm;->Wh:Ljava/util/List;

    #@2b
    iget-object v0, p0, Lcom/google/android/gms/internal/jm;->Wc:Ljava/util/List;

    #@2d
    invoke-static {v0}, Lcom/google/android/gms/internal/jm;->c(Ljava/util/List;)Ljava/util/Set;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/google/android/gms/internal/jm;->Wi:Ljava/util/Set;

    #@33
    iget-object v0, p0, Lcom/google/android/gms/internal/jm;->Wf:Ljava/util/List;

    #@35
    invoke-static {v0}, Lcom/google/android/gms/internal/jm;->c(Ljava/util/List;)Ljava/util/Set;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/google/android/gms/internal/jm;->Wj:Ljava/util/Set;

    #@3b
    iget-object v0, p0, Lcom/google/android/gms/internal/jm;->Wh:Ljava/util/List;

    #@3d
    invoke-static {v0}, Lcom/google/android/gms/internal/jm;->c(Ljava/util/List;)Ljava/util/Set;

    #@40
    move-result-object v0

    #@41
    iput-object v0, p0, Lcom/google/android/gms/internal/jm;->Wk:Ljava/util/Set;

    #@43
    return-void

    #@44
    :cond_44
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@47
    move-result-object v0

    #@48
    goto :goto_b

    #@49
    :cond_49
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@4c
    move-result-object v0

    #@4d
    goto :goto_1b

    #@4e
    :cond_4e
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@51
    move-result-object v0

    #@52
    goto :goto_29
.end method

.method private static c(Ljava/util/List;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    #@0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    new-instance v0, Ljava/util/HashSet;

    #@d
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@13
    move-result-object v0

    #@14
    goto :goto_a
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/jm;->CREATOR:Lcom/google/android/gms/internal/jn;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-ne p0, p1, :cond_6

    #@4
    :cond_4
    move v0, v1

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/jm;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/internal/jm;

    #@c
    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->Wi:Ljava/util/Set;

    #@e
    iget-object v3, p1, Lcom/google/android/gms/internal/jm;->Wi:Ljava/util/Set;

    #@10
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_5

    #@16
    iget-boolean v2, p0, Lcom/google/android/gms/internal/jm;->We:Z

    #@18
    iget-boolean v3, p1, Lcom/google/android/gms/internal/jm;->We:Z

    #@1a
    if-ne v2, v3, :cond_5

    #@1c
    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->Wg:Ljava/lang/String;

    #@1e
    iget-object v3, p1, Lcom/google/android/gms/internal/jm;->Wg:Ljava/lang/String;

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_5

    #@26
    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->Wj:Ljava/util/Set;

    #@28
    iget-object v3, p1, Lcom/google/android/gms/internal/jm;->Wj:Ljava/util/Set;

    #@2a
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_5

    #@30
    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->Wk:Ljava/util/Set;

    #@32
    iget-object v3, p1, Lcom/google/android/gms/internal/jm;->Wk:Ljava/util/Set;

    #@34
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v2

    #@38
    if-nez v2, :cond_4

    #@3a
    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->Wi:Ljava/util/Set;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    iget-boolean v2, p0, Lcom/google/android/gms/internal/jm;->We:Z

    #@b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e
    move-result-object v2

    #@f
    aput-object v2, v0, v1

    #@11
    const/4 v1, 0x2

    #@12
    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->Wj:Ljava/util/Set;

    #@14
    aput-object v2, v0, v1

    #@16
    const/4 v1, 0x3

    #@17
    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->Wg:Ljava/lang/String;

    #@19
    aput-object v2, v0, v1

    #@1b
    const/4 v1, 0x4

    #@1c
    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->Wk:Ljava/util/Set;

    #@1e
    aput-object v2, v0, v1

    #@20
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@23
    move-result v0

    #@24
    return v0
.end method

.method public jg()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jm;->Wd:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public jh()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/jm;->We:Z

    #@2
    return v0
.end method

.method public ji()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jm;->Wg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "types"

    #@6
    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->Wi:Ljava/util/Set;

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@b
    move-result-object v0

    #@c
    const-string v1, "placeIds"

    #@e
    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->Wk:Ljava/util/Set;

    #@10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@13
    move-result-object v0

    #@14
    const-string v1, "requireOpenNow"

    #@16
    iget-boolean v2, p0, Lcom/google/android/gms/internal/jm;->We:Z

    #@18
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@1f
    move-result-object v0

    #@20
    const-string v1, "userAccountName"

    #@22
    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->Wg:Ljava/lang/String;

    #@24
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@27
    move-result-object v0

    #@28
    const-string v1, "requestedUserDataTypes"

    #@2a
    iget-object v2, p0, Lcom/google/android/gms/internal/jm;->Wj:Ljava/util/Set;

    #@2c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/jm;->CREATOR:Lcom/google/android/gms/internal/jn;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jn;->a(Lcom/google/android/gms/internal/jm;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
