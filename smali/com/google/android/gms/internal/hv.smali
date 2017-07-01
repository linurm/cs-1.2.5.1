.class public final Lcom/google/android/gms/internal/hv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/internal/hy$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
        "Lcom/google/android/gms/internal/hy$b",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/hw;


# instance fields
.field private final GW:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final GX:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final GY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/hv$a;",
            ">;"
        }
    .end annotation
.end field

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/hw;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/hw;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/hv;->CREATOR:Lcom/google/android/gms/internal/hw;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/hv;->xM:I

    #@6
    new-instance v0, Ljava/util/HashMap;

    #@8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/internal/hv;->GW:Ljava/util/HashMap;

    #@d
    new-instance v0, Ljava/util/HashMap;

    #@f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@12
    iput-object v0, p0, Lcom/google/android/gms/internal/hv;->GX:Ljava/util/HashMap;

    #@14
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Lcom/google/android/gms/internal/hv;->GY:Ljava/util/ArrayList;

    #@17
    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/hv$a;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/hv;->xM:I

    #@5
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/google/android/gms/internal/hv;->GW:Ljava/util/HashMap;

    #@c
    new-instance v0, Ljava/util/HashMap;

    #@e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@11
    iput-object v0, p0, Lcom/google/android/gms/internal/hv;->GX:Ljava/util/HashMap;

    #@13
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Lcom/google/android/gms/internal/hv;->GY:Ljava/util/ArrayList;

    #@16
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/hv;->a(Ljava/util/ArrayList;)V

    #@19
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/hv$a;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_18

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/google/android/gms/internal/hv$a;

    #@10
    iget-object v2, v0, Lcom/google/android/gms/internal/hv$a;->GZ:Ljava/lang/String;

    #@12
    iget v0, v0, Lcom/google/android/gms/internal/hv$a;->Ha:I

    #@14
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/hv;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    #@17
    goto :goto_4

    #@18
    :cond_18
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hv;->GX:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    if-nez v0, :cond_16

    #@a
    iget-object v1, p0, Lcom/google/android/gms/internal/hv;->GW:Ljava/util/HashMap;

    #@c
    const-string v2, "gms_unknown"

    #@e
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_16

    #@14
    const-string v0, "gms_unknown"

    #@16
    :cond_16
    return-object v0
.end method

.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/hv;->CREATOR:Lcom/google/android/gms/internal/hw;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public f(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hv;->GW:Ljava/util/HashMap;

    #@2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/hv;->GX:Ljava/util/HashMap;

    #@b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    return-object p0
.end method

.method fD()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/hv$a;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/hv;->GW:Ljava/util/HashMap;

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
    if-eqz v0, :cond_30

    #@15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    new-instance v4, Lcom/google/android/gms/internal/hv$a;

    #@1d
    iget-object v1, p0, Lcom/google/android/gms/internal/hv;->GW:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/lang/Integer;

    #@25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@28
    move-result v1

    #@29
    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/hv$a;-><init>(Ljava/lang/String;I)V

    #@2c
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_f

    #@30
    :cond_30
    return-object v2
.end method

.method public fE()I
    .registers 2

    #@0
    const/4 v0, 0x7

    #@1
    return v0
.end method

.method public fF()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    check-cast p1, Ljava/lang/Integer;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Integer;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/hv;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/hv;->CREATOR:Lcom/google/android/gms/internal/hw;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hw;->a(Lcom/google/android/gms/internal/hv;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
