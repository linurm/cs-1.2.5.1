.class public Lcom/google/android/gms/internal/fi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fj;


# instance fields
.field final xM:I

.field final xQ:Ljava/lang/String;

.field final xR:Ljava/lang/String;

.field final xS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/fj;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/fj;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/fi;->CREATOR:Lcom/google/android/gms/internal/fj;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/fi;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/fi;->xQ:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/fi;->xR:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/internal/fi;->xS:Ljava/lang/String;

    #@b
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/fi;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/fi;->CREATOR:Lcom/google/android/gms/internal/fj;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    const-string v0, "DocumentId[packageName=%s, corpusName=%s, uri=%s]"

    #@2
    const/4 v1, 0x3

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    iget-object v3, p0, Lcom/google/android/gms/internal/fi;->xQ:Ljava/lang/String;

    #@8
    aput-object v3, v1, v2

    #@a
    const/4 v2, 0x1

    #@b
    iget-object v3, p0, Lcom/google/android/gms/internal/fi;->xR:Ljava/lang/String;

    #@d
    aput-object v3, v1, v2

    #@f
    const/4 v2, 0x2

    #@10
    iget-object v3, p0, Lcom/google/android/gms/internal/fi;->xS:Ljava/lang/String;

    #@12
    aput-object v3, v1, v2

    #@14
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/fi;->CREATOR:Lcom/google/android/gms/internal/fj;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fj;->a(Lcom/google/android/gms/internal/fi;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
