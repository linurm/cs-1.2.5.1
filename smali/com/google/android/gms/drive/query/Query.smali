.class public Lcom/google/android/gms/drive/query/Query;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/query/Query$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/query/Query;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final KE:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

.field final KF:Ljava/lang/String;

.field final KG:Lcom/google/android/gms/drive/query/SortOrder;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/query/a;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/query/a;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/query/Query;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;Lcom/google/android/gms/drive/query/SortOrder;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/query/Query;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/drive/query/Query;->KE:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/drive/query/Query;->KF:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/drive/query/Query;->KG:Lcom/google/android/gms/drive/query/SortOrder;

    #@b
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;Lcom/google/android/gms/drive/query/SortOrder;)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/drive/query/Query;-><init>(ILcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;Lcom/google/android/gms/drive/query/SortOrder;)V

    #@4
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

.method public getFilter()Lcom/google/android/gms/drive/query/Filter;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/query/Query;->KE:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@2
    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/query/Query;->KF:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSortOrder()Lcom/google/android/gms/drive/query/SortOrder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/query/Query;->KG:Lcom/google/android/gms/drive/query/SortOrder;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/a;->a(Lcom/google/android/gms/drive/query/Query;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
