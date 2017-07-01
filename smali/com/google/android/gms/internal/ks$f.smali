.class public final Lcom/google/android/gms/internal/ks$f;
.super Lcom/google/android/gms/internal/hy;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/model/people/Person$Organizations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/la;

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
.field private AT:I

.field private HY:Ljava/lang/String;

.field private Mp:Ljava/lang/String;

.field private acP:Ljava/lang/String;

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

.field private adU:Ljava/lang/String;

.field private adV:Ljava/lang/String;

.field private adW:Z

.field private adf:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    #@0
    const/4 v7, 0x0

    #@1
    new-instance v0, Lcom/google/android/gms/internal/la;

    #@3
    invoke-direct {v0}, Lcom/google/android/gms/internal/la;-><init>()V

    #@6
    sput-object v0, Lcom/google/android/gms/internal/ks$f;->CREATOR:Lcom/google/android/gms/internal/la;

    #@8
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    sput-object v0, Lcom/google/android/gms/internal/ks$f;->acr:Ljava/util/HashMap;

    #@f
    sget-object v0, Lcom/google/android/gms/internal/ks$f;->acr:Ljava/util/HashMap;

    #@11
    const-string v1, "department"

    #@13
    const-string v2, "department"

    #@15
    const/4 v3, 0x2

    #@16
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    sget-object v0, Lcom/google/android/gms/internal/ks$f;->acr:Ljava/util/HashMap;

    #@1f
    const-string v1, "description"

    #@21
    const-string v2, "description"

    #@23
    const/4 v3, 0x3

    #@24
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    sget-object v0, Lcom/google/android/gms/internal/ks$f;->acr:Ljava/util/HashMap;

    #@2d
    const-string v1, "endDate"

    #@2f
    const-string v2, "endDate"

    #@31
    const/4 v3, 0x4

    #@32
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    sget-object v0, Lcom/google/android/gms/internal/ks$f;->acr:Ljava/util/HashMap;

    #@3b
    const-string v1, "location"

    #@3d
    const-string v2, "location"

    #@3f
    const/4 v3, 0x5

    #@40
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    sget-object v0, Lcom/google/android/gms/internal/ks$f;->acr:Ljava/util/HashMap;

    #@49
    const-string v1, "name"

    #@4b
    const-string v2, "name"

    #@4d
    const/4 v3, 0x6

    #@4e
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    sget-object v0, Lcom/google/android/gms/internal/ks$f;->acr:Ljava/util/HashMap;

    #@57
    const-string v1, "primary"

    #@59
    const-string v2, "primary"

    #@5b
    const/4 v3, 0x7

    #@5c
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->i(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    sget-object v0, Lcom/google/android/gms/internal/ks$f;->acr:Ljava/util/HashMap;

    #@65
    const-string v1, "startDate"

    #@67
    const-string v2, "startDate"

    #@69
    const/16 v3, 0x8

    #@6b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    sget-object v0, Lcom/google/android/gms/internal/ks$f;->acr:Ljava/util/HashMap;

    #@74
    const-string v1, "title"

    #@76
    const-string v2, "title"

    #@78
    const/16 v3, 0x9

    #@7a
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    #@7d
    move-result-object v2

    #@7e
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@81
    sget-object v0, Lcom/google/android/gms/internal/ks$f;->acr:Ljava/util/HashMap;

    #@83
    const-string v1, "type"

    #@85
    const-string v2, "type"

    #@87
    const/16 v3, 0xa

    #@89
    new-instance v4, Lcom/google/android/gms/internal/hv;

    #@8b
    invoke-direct {v4}, Lcom/google/android/gms/internal/hv;-><init>()V

    #@8e
    const-string v5, "work"

    #@90
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/hv;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    #@93
    move-result-object v4

    #@94
    const-string v5, "school"

    #@96
    const/4 v6, 0x1

    #@97
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/hv;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    #@9a
    move-result-object v4

    #@9b
    invoke-static {v2, v3, v4, v7}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/hy$b;Z)Lcom/google/android/gms/internal/hy$a;

    #@9e
    move-result-object v2

    #@9f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a2
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/hy;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/ks$f;->xM:I

    #@6
    new-instance v0, Ljava/util/HashSet;

    #@8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/internal/ks$f;->acs:Ljava/util/Set;

    #@d
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/hy;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/ks$f;->acs:Ljava/util/Set;

    #@5
    iput p2, p0, Lcom/google/android/gms/internal/ks$f;->xM:I

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/ks$f;->adU:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/internal/ks$f;->Mp:Ljava/lang/String;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/internal/ks$f;->acP:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/internal/ks$f;->adV:Ljava/lang/String;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/internal/ks$f;->mName:Ljava/lang/String;

    #@11
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ks$f;->adW:Z

    #@13
    iput-object p9, p0, Lcom/google/android/gms/internal/ks$f;->adf:Ljava/lang/String;

    #@15
    iput-object p10, p0, Lcom/google/android/gms/internal/ks$f;->HY:Ljava/lang/String;

    #@17
    iput p11, p0, Lcom/google/android/gms/internal/ks$f;->AT:I

    #@19
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/hy$a;)Z
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->acs:Ljava/util/Set;

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
    packed-switch v0, :pswitch_data_48

    #@7
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->adU:Ljava/lang/String;

    #@26
    :goto_26
    return-object v0

    #@27
    :pswitch_27
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->Mp:Ljava/lang/String;

    #@29
    goto :goto_26

    #@2a
    :pswitch_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->acP:Ljava/lang/String;

    #@2c
    goto :goto_26

    #@2d
    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->adV:Ljava/lang/String;

    #@2f
    goto :goto_26

    #@30
    :pswitch_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->mName:Ljava/lang/String;

    #@32
    goto :goto_26

    #@33
    :pswitch_33
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ks$f;->adW:Z

    #@35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@38
    move-result-object v0

    #@39
    goto :goto_26

    #@3a
    :pswitch_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->adf:Ljava/lang/String;

    #@3c
    goto :goto_26

    #@3d
    :pswitch_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->HY:Ljava/lang/String;

    #@3f
    goto :goto_26

    #@40
    :pswitch_40
    iget v0, p0, Lcom/google/android/gms/internal/ks$f;->AT:I

    #@42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v0

    #@46
    goto :goto_26

    #@47
    nop

    #@48
    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
    .end packed-switch
.end method

.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ks$f;->CREATOR:Lcom/google/android/gms/internal/la;

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
    instance-of v0, p1, Lcom/google/android/gms/internal/ks$f;

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
    check-cast p1, Lcom/google/android/gms/internal/ks$f;

    #@e
    sget-object v0, Lcom/google/android/gms/internal/ks$f;->acr:Ljava/util/HashMap;

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$f;->a(Lcom/google/android/gms/internal/hy$a;)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_42

    #@2a
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ks$f;->a(Lcom/google/android/gms/internal/hy$a;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_40

    #@30
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$f;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ks$f;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

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
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ks$f;->a(Lcom/google/android/gms/internal/hy$a;)Z

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
    sget-object v0, Lcom/google/android/gms/internal/ks$f;->acr:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$f;->kV()Lcom/google/android/gms/internal/ks$f;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDepartment()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->adU:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->Mp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEndDate()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->acP:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->adV:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->adf:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->HY:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ks$f;->AT:I

    #@2
    return v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ks$f;->xM:I

    #@2
    return v0
.end method

.method public hasDepartment()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->acs:Ljava/util/Set;

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

.method public hasDescription()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->acs:Ljava/util/Set;

    #@2
    const/4 v1, 0x3

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

.method public hasEndDate()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->acs:Ljava/util/Set;

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

.method public hasLocation()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->acs:Ljava/util/Set;

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

.method public hasName()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->acs:Ljava/util/Set;

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

.method public hasPrimary()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->acs:Ljava/util/Set;

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

.method public hasStartDate()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->acs:Ljava/util/Set;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public hasTitle()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->acs:Ljava/util/Set;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public hasType()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->acs:Ljava/util/Set;

    #@2
    const/16 v1, 0xa

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public hashCode()I
    .registers 5

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ks$f;->acr:Ljava/util/HashMap;

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$f;->a(Lcom/google/android/gms/internal/hy$a;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_2e

    #@1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy$a;->fN()I

    #@21
    move-result v3

    #@22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$f;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

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

.method public isPrimary()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ks$f;->adW:Z

    #@2
    return v0
.end method

.method public kV()Lcom/google/android/gms/internal/ks$f;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$f;->acs:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ks$f;->CREATOR:Lcom/google/android/gms/internal/la;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/la;->a(Lcom/google/android/gms/internal/ks$f;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
