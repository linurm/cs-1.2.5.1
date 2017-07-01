.class public Lcom/google/android/gms/drive/query/internal/LogicalFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/query/Filter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/query/internal/LogicalFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private KH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/query/Filter;",
            ">;"
        }
    .end annotation
.end field

.field final KL:Lcom/google/android/gms/drive/query/internal/Operator;

.field final KY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
            ">;"
        }
    .end annotation
.end field

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/h;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/h;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/internal/Operator;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/drive/query/internal/Operator;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KL:Lcom/google/android/gms/drive/query/internal/Operator;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KY:Ljava/util/List;

    #@9
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->xM:I

    #@6
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KL:Lcom/google/android/gms/drive/query/internal/Operator;

    #@8
    new-instance v0, Ljava/util/ArrayList;

    #@a
    array-length v1, p3

    #@b
    add-int/lit8 v1, v1, 0x1

    #@d
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@10
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KY:Ljava/util/List;

    #@12
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KY:Ljava/util/List;

    #@14
    new-instance v1, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    #@16
    invoke-direct {v1, p2}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    #@19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1c
    new-instance v0, Ljava/util/ArrayList;

    #@1e
    array-length v1, p3

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@24
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KH:Ljava/util/List;

    #@26
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KH:Ljava/util/List;

    #@28
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b
    array-length v1, p3

    #@2c
    const/4 v0, 0x0

    #@2d
    :goto_2d
    if-ge v0, v1, :cond_43

    #@2f
    aget-object v2, p3, v0

    #@31
    iget-object v3, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KY:Ljava/util/List;

    #@33
    new-instance v4, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    #@35
    invoke-direct {v4, v2}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    #@38
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    iget-object v3, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KH:Ljava/util/List;

    #@3d
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@40
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_2d

    #@43
    :cond_43
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/lang/Iterable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/query/internal/Operator;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/drive/query/Filter;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->xM:I

    #@6
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KL:Lcom/google/android/gms/drive/query/internal/Operator;

    #@8
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KH:Ljava/util/List;

    #@f
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KY:Ljava/util/List;

    #@16
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_36

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/google/android/gms/drive/query/Filter;

    #@26
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KH:Ljava/util/List;

    #@28
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->KY:Ljava/util/List;

    #@2d
    new-instance v3, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    #@2f
    invoke-direct {v3, v0}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    #@32
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@35
    goto :goto_1a

    #@36
    :cond_36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/h;->a(Lcom/google/android/gms/drive/query/internal/LogicalFilter;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
