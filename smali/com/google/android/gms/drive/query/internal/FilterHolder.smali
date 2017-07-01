.class public Lcom/google/android/gms/drive/query/internal/FilterHolder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final KP:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/query/internal/ComparisonFilter",
            "<*>;"
        }
    .end annotation
.end field

.field final KQ:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

.field final KR:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

.field final KS:Lcom/google/android/gms/drive/query/internal/NotFilter;

.field final KT:Lcom/google/android/gms/drive/query/internal/InFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/query/internal/InFilter",
            "<*>;"
        }
    .end annotation
.end field

.field final KU:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

.field final KV:Lcom/google/android/gms/drive/query/internal/HasFilter;

.field private final KW:Lcom/google/android/gms/drive/query/Filter;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/d;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/d;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/internal/ComparisonFilter;Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;Lcom/google/android/gms/drive/query/internal/LogicalFilter;Lcom/google/android/gms/drive/query/internal/NotFilter;Lcom/google/android/gms/drive/query/internal/InFilter;Lcom/google/android/gms/drive/query/internal/MatchAllFilter;Lcom/google/android/gms/drive/query/internal/HasFilter;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/drive/query/internal/ComparisonFilter",
            "<*>;",
            "Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;",
            "Lcom/google/android/gms/drive/query/internal/LogicalFilter;",
            "Lcom/google/android/gms/drive/query/internal/NotFilter;",
            "Lcom/google/android/gms/drive/query/internal/InFilter",
            "<*>;",
            "Lcom/google/android/gms/drive/query/internal/MatchAllFilter;",
            "Lcom/google/android/gms/drive/query/internal/HasFilter",
            "<*>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KP:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KQ:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KR:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KS:Lcom/google/android/gms/drive/query/internal/NotFilter;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KT:Lcom/google/android/gms/drive/query/internal/InFilter;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KU:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    #@11
    iput-object p8, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KV:Lcom/google/android/gms/drive/query/internal/HasFilter;

    #@13
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KP:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    #@15
    if-eqz v0, :cond_1c

    #@17
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KP:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    #@19
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KW:Lcom/google/android/gms/drive/query/Filter;

    #@1b
    :goto_1b
    return-void

    #@1c
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KQ:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    #@1e
    if-eqz v0, :cond_25

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KQ:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    #@22
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KW:Lcom/google/android/gms/drive/query/Filter;

    #@24
    goto :goto_1b

    #@25
    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KR:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@27
    if-eqz v0, :cond_2e

    #@29
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KR:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@2b
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KW:Lcom/google/android/gms/drive/query/Filter;

    #@2d
    goto :goto_1b

    #@2e
    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KS:Lcom/google/android/gms/drive/query/internal/NotFilter;

    #@30
    if-eqz v0, :cond_37

    #@32
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KS:Lcom/google/android/gms/drive/query/internal/NotFilter;

    #@34
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KW:Lcom/google/android/gms/drive/query/Filter;

    #@36
    goto :goto_1b

    #@37
    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KT:Lcom/google/android/gms/drive/query/internal/InFilter;

    #@39
    if-eqz v0, :cond_40

    #@3b
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KT:Lcom/google/android/gms/drive/query/internal/InFilter;

    #@3d
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KW:Lcom/google/android/gms/drive/query/Filter;

    #@3f
    goto :goto_1b

    #@40
    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KU:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    #@42
    if-eqz v0, :cond_49

    #@44
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KU:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    #@46
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KW:Lcom/google/android/gms/drive/query/Filter;

    #@48
    goto :goto_1b

    #@49
    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KV:Lcom/google/android/gms/drive/query/internal/HasFilter;

    #@4b
    if-eqz v0, :cond_52

    #@4d
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KV:Lcom/google/android/gms/drive/query/internal/HasFilter;

    #@4f
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KW:Lcom/google/android/gms/drive/query/Filter;

    #@51
    goto :goto_1b

    #@52
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@54
    const-string v1, "At least one filter must be set."

    #@56
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v0
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/Filter;)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, 0x2

    #@5
    iput v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->xM:I

    #@7
    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    #@9
    if-eqz v0, :cond_6a

    #@b
    move-object v0, p1

    #@c
    check-cast v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    #@e
    :goto_e
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KP:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    #@10
    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    #@12
    if-eqz v0, :cond_6c

    #@14
    move-object v0, p1

    #@15
    check-cast v0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    #@17
    :goto_17
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KQ:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    #@19
    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@1b
    if-eqz v0, :cond_6e

    #@1d
    move-object v0, p1

    #@1e
    check-cast v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@20
    :goto_20
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KR:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@22
    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/NotFilter;

    #@24
    if-eqz v0, :cond_70

    #@26
    move-object v0, p1

    #@27
    check-cast v0, Lcom/google/android/gms/drive/query/internal/NotFilter;

    #@29
    :goto_29
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KS:Lcom/google/android/gms/drive/query/internal/NotFilter;

    #@2b
    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/InFilter;

    #@2d
    if-eqz v0, :cond_72

    #@2f
    move-object v0, p1

    #@30
    check-cast v0, Lcom/google/android/gms/drive/query/internal/InFilter;

    #@32
    :goto_32
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KT:Lcom/google/android/gms/drive/query/internal/InFilter;

    #@34
    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    #@36
    if-eqz v0, :cond_74

    #@38
    move-object v0, p1

    #@39
    check-cast v0, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    #@3b
    :goto_3b
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KU:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    #@3d
    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/HasFilter;

    #@3f
    if-eqz v0, :cond_76

    #@41
    move-object v0, p1

    #@42
    check-cast v0, Lcom/google/android/gms/drive/query/internal/HasFilter;

    #@44
    :goto_44
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KV:Lcom/google/android/gms/drive/query/internal/HasFilter;

    #@46
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KP:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    #@48
    if-nez v0, :cond_78

    #@4a
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KQ:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    #@4c
    if-nez v0, :cond_78

    #@4e
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KR:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@50
    if-nez v0, :cond_78

    #@52
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KS:Lcom/google/android/gms/drive/query/internal/NotFilter;

    #@54
    if-nez v0, :cond_78

    #@56
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KT:Lcom/google/android/gms/drive/query/internal/InFilter;

    #@58
    if-nez v0, :cond_78

    #@5a
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KU:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    #@5c
    if-nez v0, :cond_78

    #@5e
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KV:Lcom/google/android/gms/drive/query/internal/HasFilter;

    #@60
    if-nez v0, :cond_78

    #@62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@64
    const-string v1, "Invalid filter type or null filter."

    #@66
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@69
    throw v0

    #@6a
    :cond_6a
    move-object v0, v1

    #@6b
    goto :goto_e

    #@6c
    :cond_6c
    move-object v0, v1

    #@6d
    goto :goto_17

    #@6e
    :cond_6e
    move-object v0, v1

    #@6f
    goto :goto_20

    #@70
    :cond_70
    move-object v0, v1

    #@71
    goto :goto_29

    #@72
    :cond_72
    move-object v0, v1

    #@73
    goto :goto_32

    #@74
    :cond_74
    move-object v0, v1

    #@75
    goto :goto_3b

    #@76
    :cond_76
    move-object v0, v1

    #@77
    goto :goto_44

    #@78
    :cond_78
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KW:Lcom/google/android/gms/drive/query/Filter;

    #@7a
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/d;->a(Lcom/google/android/gms/drive/query/internal/FilterHolder;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
