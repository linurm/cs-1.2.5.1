.class public final Lcom/google/android/gms/internal/ks$b;
.super Lcom/google/android/gms/internal/hy;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/model/people/Person$Cover;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ks$b$a;,
        Lcom/google/android/gms/internal/ks$b$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/kv;

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

.field private adL:Lcom/google/android/gms/internal/ks$b$a;

.field private adM:Lcom/google/android/gms/internal/ks$b$b;

.field private adN:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    #@0
    const/4 v6, 0x0

    #@1
    new-instance v0, Lcom/google/android/gms/internal/kv;

    #@3
    invoke-direct {v0}, Lcom/google/android/gms/internal/kv;-><init>()V

    #@6
    sput-object v0, Lcom/google/android/gms/internal/ks$b;->CREATOR:Lcom/google/android/gms/internal/kv;

    #@8
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    sput-object v0, Lcom/google/android/gms/internal/ks$b;->acr:Ljava/util/HashMap;

    #@f
    sget-object v0, Lcom/google/android/gms/internal/ks$b;->acr:Ljava/util/HashMap;

    #@11
    const-string v1, "coverInfo"

    #@13
    const-string v2, "coverInfo"

    #@15
    const/4 v3, 0x2

    #@16
    const-class v4, Lcom/google/android/gms/internal/ks$b$a;

    #@18
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hy$a;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    sget-object v0, Lcom/google/android/gms/internal/ks$b;->acr:Ljava/util/HashMap;

    #@21
    const-string v1, "coverPhoto"

    #@23
    const-string v2, "coverPhoto"

    #@25
    const/4 v3, 0x3

    #@26
    const-class v4, Lcom/google/android/gms/internal/ks$b$b;

    #@28
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hy$a;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    sget-object v0, Lcom/google/android/gms/internal/ks$b;->acr:Ljava/util/HashMap;

    #@31
    const-string v1, "layout"

    #@33
    const-string v2, "layout"

    #@35
    const/4 v3, 0x4

    #@36
    new-instance v4, Lcom/google/android/gms/internal/hv;

    #@38
    invoke-direct {v4}, Lcom/google/android/gms/internal/hv;-><init>()V

    #@3b
    const-string v5, "banner"

    #@3d
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/hv;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    #@40
    move-result-object v4

    #@41
    invoke-static {v2, v3, v4, v6}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/hy$b;Z)Lcom/google/android/gms/internal/hy$a;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/hy;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/ks$b;->xM:I

    #@6
    new-instance v0, Ljava/util/HashSet;

    #@8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/internal/ks$b;->acs:Ljava/util/Set;

    #@d
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/internal/ks$b$a;Lcom/google/android/gms/internal/ks$b$b;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/google/android/gms/internal/ks$b$a;",
            "Lcom/google/android/gms/internal/ks$b$b;",
            "I)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/hy;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/ks$b;->acs:Ljava/util/Set;

    #@5
    iput p2, p0, Lcom/google/android/gms/internal/ks$b;->xM:I

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/ks$b;->adL:Lcom/google/android/gms/internal/ks$b$a;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/internal/ks$b;->adM:Lcom/google/android/gms/internal/ks$b$b;

    #@b
    iput p5, p0, Lcom/google/android/gms/internal/ks$b;->adN:I

    #@d
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/hy$a;)Z
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$b;->acs:Ljava/util/Set;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$b;->adL:Lcom/google/android/gms/internal/ks$b$a;

    #@26
    :goto_26
    return-object v0

    #@27
    :pswitch_27
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$b;->adM:Lcom/google/android/gms/internal/ks$b$b;

    #@29
    goto :goto_26

    #@2a
    :pswitch_2a
    iget v0, p0, Lcom/google/android/gms/internal/ks$b;->adN:I

    #@2c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v0

    #@30
    goto :goto_26

    #@31
    nop

    #@32
    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_24
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ks$b;->CREATOR:Lcom/google/android/gms/internal/kv;

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
    instance-of v0, p1, Lcom/google/android/gms/internal/ks$b;

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
    check-cast p1, Lcom/google/android/gms/internal/ks$b;

    #@e
    sget-object v0, Lcom/google/android/gms/internal/ks$b;->acr:Ljava/util/HashMap;

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$b;->a(Lcom/google/android/gms/internal/hy$a;)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_42

    #@2a
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ks$b;->a(Lcom/google/android/gms/internal/hy$a;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_40

    #@30
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$b;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ks$b;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

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
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ks$b;->a(Lcom/google/android/gms/internal/hy$a;)Z

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
    sget-object v0, Lcom/google/android/gms/internal/ks$b;->acr:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$b;->kQ()Lcom/google/android/gms/internal/ks$b;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCoverInfo()Lcom/google/android/gms/plus/model/people/Person$Cover$CoverInfo;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$b;->adL:Lcom/google/android/gms/internal/ks$b$a;

    #@2
    return-object v0
.end method

.method public getCoverPhoto()Lcom/google/android/gms/plus/model/people/Person$Cover$CoverPhoto;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$b;->adM:Lcom/google/android/gms/internal/ks$b$b;

    #@2
    return-object v0
.end method

.method public getLayout()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ks$b;->adN:I

    #@2
    return v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ks$b;->xM:I

    #@2
    return v0
.end method

.method public hasCoverInfo()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$b;->acs:Ljava/util/Set;

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

.method public hasCoverPhoto()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$b;->acs:Ljava/util/Set;

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

.method public hasLayout()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$b;->acs:Ljava/util/Set;

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
    sget-object v0, Lcom/google/android/gms/internal/ks$b;->acr:Ljava/util/HashMap;

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$b;->a(Lcom/google/android/gms/internal/hy$a;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_2e

    #@1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy$a;->fN()I

    #@21
    move-result v3

    #@22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$b;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

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

.method kO()Lcom/google/android/gms/internal/ks$b$a;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$b;->adL:Lcom/google/android/gms/internal/ks$b$a;

    #@2
    return-object v0
.end method

.method kP()Lcom/google/android/gms/internal/ks$b$b;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$b;->adM:Lcom/google/android/gms/internal/ks$b$b;

    #@2
    return-object v0
.end method

.method public kQ()Lcom/google/android/gms/internal/ks$b;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$b;->acs:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ks$b;->CREATOR:Lcom/google/android/gms/internal/kv;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/ks$b;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
