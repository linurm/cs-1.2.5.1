.class public final Lcom/google/android/gms/internal/ks$h;
.super Lcom/google/android/gms/internal/hy;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/model/people/Person$Urls;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/lc;

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

.field private adX:Ljava/lang/String;

.field private final adY:I

.field private mValue:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    #@0
    const/4 v9, 0x6

    #@1
    const/4 v8, 0x5

    #@2
    const/4 v7, 0x4

    #@3
    const/4 v6, 0x0

    #@4
    new-instance v0, Lcom/google/android/gms/internal/lc;

    #@6
    invoke-direct {v0}, Lcom/google/android/gms/internal/lc;-><init>()V

    #@9
    sput-object v0, Lcom/google/android/gms/internal/ks$h;->CREATOR:Lcom/google/android/gms/internal/lc;

    #@b
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@10
    sput-object v0, Lcom/google/android/gms/internal/ks$h;->acr:Ljava/util/HashMap;

    #@12
    sget-object v0, Lcom/google/android/gms/internal/ks$h;->acr:Ljava/util/HashMap;

    #@14
    const-string v1, "label"

    #@16
    const-string v2, "label"

    #@18
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/hy$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    sget-object v0, Lcom/google/android/gms/internal/ks$h;->acr:Ljava/util/HashMap;

    #@21
    const-string v1, "type"

    #@23
    const-string v2, "type"

    #@25
    new-instance v3, Lcom/google/android/gms/internal/hv;

    #@27
    invoke-direct {v3}, Lcom/google/android/gms/internal/hv;-><init>()V

    #@2a
    const-string v4, "home"

    #@2c
    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/hv;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    #@2f
    move-result-object v3

    #@30
    const-string v4, "work"

    #@32
    const/4 v5, 0x1

    #@33
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hv;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    #@36
    move-result-object v3

    #@37
    const-string v4, "blog"

    #@39
    const/4 v5, 0x2

    #@3a
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hv;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    #@3d
    move-result-object v3

    #@3e
    const-string v4, "profile"

    #@40
    const/4 v5, 0x3

    #@41
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hv;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    #@44
    move-result-object v3

    #@45
    const-string v4, "other"

    #@47
    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/internal/hv;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    #@4a
    move-result-object v3

    #@4b
    const-string v4, "otherProfile"

    #@4d
    invoke-virtual {v3, v4, v8}, Lcom/google/android/gms/internal/hv;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    #@50
    move-result-object v3

    #@51
    const-string v4, "contributor"

    #@53
    invoke-virtual {v3, v4, v9}, Lcom/google/android/gms/internal/hv;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    #@56
    move-result-object v3

    #@57
    const-string v4, "website"

    #@59
    const/4 v5, 0x7

    #@5a
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hv;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    #@5d
    move-result-object v3

    #@5e
    invoke-static {v2, v9, v3, v6}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/hy$b;Z)Lcom/google/android/gms/internal/hy$a;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    sget-object v0, Lcom/google/android/gms/internal/ks$h;->acr:Ljava/util/HashMap;

    #@67
    const-string v1, "value"

    #@69
    const-string v2, "value"

    #@6b
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/hy$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/hy;-><init>()V

    #@3
    const/4 v0, 0x4

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/ks$h;->adY:I

    #@6
    const/4 v0, 0x2

    #@7
    iput v0, p0, Lcom/google/android/gms/internal/ks$h;->xM:I

    #@9
    new-instance v0, Ljava/util/HashSet;

    #@b
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@e
    iput-object v0, p0, Lcom/google/android/gms/internal/ks$h;->acs:Ljava/util/Set;

    #@10
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;ILjava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/hy;-><init>()V

    #@3
    const/4 v0, 0x4

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/ks$h;->adY:I

    #@6
    iput-object p1, p0, Lcom/google/android/gms/internal/ks$h;->acs:Ljava/util/Set;

    #@8
    iput p2, p0, Lcom/google/android/gms/internal/ks$h;->xM:I

    #@a
    iput-object p3, p0, Lcom/google/android/gms/internal/ks$h;->adX:Ljava/lang/String;

    #@c
    iput p4, p0, Lcom/google/android/gms/internal/ks$h;->AT:I

    #@e
    iput-object p5, p0, Lcom/google/android/gms/internal/ks$h;->mValue:Ljava/lang/String;

    #@10
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/hy$a;)Z
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$h;->acs:Ljava/util/Set;

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
    packed-switch v0, :pswitch_data_32

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$h;->adX:Ljava/lang/String;

    #@26
    :goto_26
    return-object v0

    #@27
    :pswitch_27
    iget v0, p0, Lcom/google/android/gms/internal/ks$h;->AT:I

    #@29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v0

    #@2d
    goto :goto_26

    #@2e
    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$h;->mValue:Ljava/lang/String;

    #@30
    goto :goto_26

    #@31
    nop

    #@32
    :pswitch_data_32
    .packed-switch 0x4
        :pswitch_2e
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ks$h;->CREATOR:Lcom/google/android/gms/internal/lc;

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
    instance-of v0, p1, Lcom/google/android/gms/internal/ks$h;

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
    check-cast p1, Lcom/google/android/gms/internal/ks$h;

    #@e
    sget-object v0, Lcom/google/android/gms/internal/ks$h;->acr:Ljava/util/HashMap;

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$h;->a(Lcom/google/android/gms/internal/hy$a;)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_42

    #@2a
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ks$h;->a(Lcom/google/android/gms/internal/hy$a;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_40

    #@30
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$h;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ks$h;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

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
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ks$h;->a(Lcom/google/android/gms/internal/hy$a;)Z

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
    sget-object v0, Lcom/google/android/gms/internal/ks$h;->acr:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$h;->kY()Lcom/google/android/gms/internal/ks$h;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$h;->adX:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ks$h;->AT:I

    #@2
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$h;->mValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ks$h;->xM:I

    #@2
    return v0
.end method

.method public hasLabel()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$h;->acs:Ljava/util/Set;

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

.method public hasType()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$h;->acs:Ljava/util/Set;

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

.method public hasValue()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$h;->acs:Ljava/util/Set;

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

.method public hashCode()I
    .registers 5

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ks$h;->acr:Ljava/util/HashMap;

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$h;->a(Lcom/google/android/gms/internal/hy$a;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_2e

    #@1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy$a;->fN()I

    #@21
    move-result v3

    #@22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$h;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

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

.method public kX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public kY()Lcom/google/android/gms/internal/ks$h;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$h;->acs:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ks$h;->CREATOR:Lcom/google/android/gms/internal/lc;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/lc;->a(Lcom/google/android/gms/internal/ks$h;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
