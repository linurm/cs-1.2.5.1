.class public final Lcom/google/android/gms/internal/kp;
.super Lcom/google/android/gms/internal/hy;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/model/moments/Moment;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/kq;

.field private static final acr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final acs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private adf:Ljava/lang/String;

.field private adn:Lcom/google/android/gms/internal/kn;

.field private ado:Lcom/google/android/gms/internal/kn;

.field private qX:Ljava/lang/String;

.field private xG:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/internal/kq;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/kq;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/kp;->CREATOR:Lcom/google/android/gms/internal/kq;

    #@7
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/gms/internal/kp;->acr:Ljava/util/HashMap;

    #@e
    sget-object v0, Lcom/google/android/gms/internal/kp;->acr:Ljava/util/HashMap;

    #@10
    const-string v1, "id"

    #@12
    const-string v2, "id"

    #@14
    const/4 v3, 0x2

    #@15
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    sget-object v0, Lcom/google/android/gms/internal/kp;->acr:Ljava/util/HashMap;

    #@1e
    const-string v1, "result"

    #@20
    const-string v2, "result"

    #@22
    const/4 v3, 0x4

    #@23
    const-class v4, Lcom/google/android/gms/internal/kn;

    #@25
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hy$a;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    sget-object v0, Lcom/google/android/gms/internal/kp;->acr:Ljava/util/HashMap;

    #@2e
    const-string v1, "startDate"

    #@30
    const-string v2, "startDate"

    #@32
    const/4 v3, 0x5

    #@33
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    sget-object v0, Lcom/google/android/gms/internal/kp;->acr:Ljava/util/HashMap;

    #@3c
    const-string v1, "target"

    #@3e
    const-string v2, "target"

    #@40
    const/4 v3, 0x6

    #@41
    const-class v4, Lcom/google/android/gms/internal/kn;

    #@43
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hy$a;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    sget-object v0, Lcom/google/android/gms/internal/kp;->acr:Ljava/util/HashMap;

    #@4c
    const-string v1, "type"

    #@4e
    const-string v2, "type"

    #@50
    const/4 v3, 0x7

    #@51
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/hy;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/kp;->xM:I

    #@6
    new-instance v0, Ljava/util/HashSet;

    #@8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/internal/kp;->acs:Ljava/util/Set;

    #@d
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/internal/kn;Ljava/lang/String;Lcom/google/android/gms/internal/kn;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/kn;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/kn;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/hy;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/kp;->acs:Ljava/util/Set;

    #@5
    iput p2, p0, Lcom/google/android/gms/internal/kp;->xM:I

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/kp;->xG:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/internal/kp;->adn:Lcom/google/android/gms/internal/kn;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/internal/kp;->adf:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/internal/kp;->ado:Lcom/google/android/gms/internal/kn;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/internal/kp;->qX:Ljava/lang/String;

    #@11
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Lcom/google/android/gms/internal/kn;Ljava/lang/String;Lcom/google/android/gms/internal/kn;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/kn;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/kn;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/hy;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/kp;->acs:Ljava/util/Set;

    #@5
    const/4 v0, 0x1

    #@6
    iput v0, p0, Lcom/google/android/gms/internal/kp;->xM:I

    #@8
    iput-object p2, p0, Lcom/google/android/gms/internal/kp;->xG:Ljava/lang/String;

    #@a
    iput-object p3, p0, Lcom/google/android/gms/internal/kp;->adn:Lcom/google/android/gms/internal/kn;

    #@c
    iput-object p4, p0, Lcom/google/android/gms/internal/kp;->adf:Ljava/lang/String;

    #@e
    iput-object p5, p0, Lcom/google/android/gms/internal/kp;->ado:Lcom/google/android/gms/internal/kn;

    #@10
    iput-object p6, p0, Lcom/google/android/gms/internal/kp;->qX:Ljava/lang/String;

    #@12
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/hy$a;)Z
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->acs:Ljava/util/Set;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->fN()I

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method protected aF(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected aG(Ljava/lang/String;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->fN()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_34

    #@7
    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string v2, "Unknown safe parcelable id="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->fN()I

    #@17
    move-result v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    :pswitch_24
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->xG:Ljava/lang/String;

    #@26
    :goto_26
    return-object v0

    #@27
    :pswitch_27
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->adn:Lcom/google/android/gms/internal/kn;

    #@29
    goto :goto_26

    #@2a
    :pswitch_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->adf:Ljava/lang/String;

    #@2c
    goto :goto_26

    #@2d
    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->ado:Lcom/google/android/gms/internal/kn;

    #@2f
    goto :goto_26

    #@30
    :pswitch_30
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->qX:Ljava/lang/String;

    #@32
    goto :goto_26

    #@33
    nop

    #@34
    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_24
        :pswitch_7
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method

.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/kp;->CREATOR:Lcom/google/android/gms/internal/kq;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    instance-of v0, p1, Lcom/google/android/gms/internal/kp;

    #@4
    if-nez v0, :cond_8

    #@6
    move v0, v1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    if-ne p0, p1, :cond_c

    #@a
    move v0, v2

    #@b
    goto :goto_7

    #@c
    :cond_c
    check-cast p1, Lcom/google/android/gms/internal/kp;

    #@e
    sget-object v0, Lcom/google/android/gms/internal/kp;->acr:Ljava/util/HashMap;

    #@10
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@13
    move-result-object v0

    #@14
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v3

    #@18
    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_4a

    #@1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/google/android/gms/internal/hy$a;

    #@24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kp;->a(Lcom/google/android/gms/internal/hy$a;)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_42

    #@2a
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kp;->a(Lcom/google/android/gms/internal/hy$a;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_40

    #@30
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kp;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kp;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_18

    #@3e
    move v0, v1

    #@3f
    goto :goto_7

    #@40
    :cond_40
    move v0, v1

    #@41
    goto :goto_7

    #@42
    :cond_42
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kp;->a(Lcom/google/android/gms/internal/hy$a;)Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_18

    #@48
    move v0, v1

    #@49
    goto :goto_7

    #@4a
    :cond_4a
    move v0, v2

    #@4b
    goto :goto_7
.end method

.method public fG()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;>;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/internal/kp;->acr:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kp;->kD()Lcom/google/android/gms/internal/kp;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->xG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResult()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->adn:Lcom/google/android/gms/internal/kn;

    #@2
    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->adf:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTarget()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->ado:Lcom/google/android/gms/internal/kn;

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->qX:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/kp;->xM:I

    #@2
    return v0
.end method

.method public hasId()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->acs:Ljava/util/Set;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public hasResult()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->acs:Ljava/util/Set;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public hasStartDate()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->acs:Ljava/util/Set;

    #@2
    const/4 v1, 0x5

    #@3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public hasTarget()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->acs:Ljava/util/Set;

    #@2
    const/4 v1, 0x6

    #@3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public hasType()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->acs:Ljava/util/Set;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public hashCode()I
    .registers 5

    #@0
    sget-object v0, Lcom/google/android/gms/internal/kp;->acr:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    const/4 v0, 0x0

    #@b
    move v1, v0

    #@c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_30

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/google/android/gms/internal/hy$a;

    #@18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kp;->a(Lcom/google/android/gms/internal/hy$a;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_2e

    #@1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy$a;->fN()I

    #@21
    move-result v3

    #@22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kp;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@29
    move-result v0

    #@2a
    add-int/2addr v1, v3

    #@2b
    add-int/2addr v0, v1

    #@2c
    :goto_2c
    move v1, v0

    #@2d
    goto :goto_c

    #@2e
    :cond_2e
    move v0, v1

    #@2f
    goto :goto_2c

    #@30
    :cond_30
    return v1
.end method

.method public isDataValid()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method kB()Lcom/google/android/gms/internal/kn;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->adn:Lcom/google/android/gms/internal/kn;

    #@2
    return-object v0
.end method

.method kC()Lcom/google/android/gms/internal/kn;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->ado:Lcom/google/android/gms/internal/kn;

    #@2
    return-object v0
.end method

.method public kD()Lcom/google/android/gms/internal/kp;
    .registers 1

    #@0
    return-object p0
.end method

.method kk()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->acs:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/kp;->CREATOR:Lcom/google/android/gms/internal/kq;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/kq;->a(Lcom/google/android/gms/internal/kp;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
