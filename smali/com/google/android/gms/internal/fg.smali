.class public Lcom/google/android/gms/internal/fg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fh;


# instance fields
.field final xM:I

.field final xN:[Lcom/google/android/gms/internal/fk;

.field public final xO:Ljava/lang/String;

.field public final xP:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/fh;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/fh;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/fg;->CREATOR:Lcom/google/android/gms/internal/fh;

    #@7
    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/internal/fk;Ljava/lang/String;Z)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/fg;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/fg;->xN:[Lcom/google/android/gms/internal/fk;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/fg;->xO:Ljava/lang/String;

    #@9
    iput-boolean p4, p0, Lcom/google/android/gms/internal/fg;->xP:Z

    #@b
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Z[Lcom/google/android/gms/internal/fk;)V
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p3, p1, p2}, Lcom/google/android/gms/internal/fg;-><init>(I[Lcom/google/android/gms/internal/fk;Ljava/lang/String;Z)V

    #@4
    new-instance v1, Ljava/util/BitSet;

    #@6
    invoke-static {}, Lcom/google/android/gms/internal/fo;->dP()I

    #@9
    move-result v0

    #@a
    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    #@d
    const/4 v0, 0x0

    #@e
    :goto_e
    array-length v2, p3

    #@f
    if-ge v0, v2, :cond_41

    #@11
    aget-object v2, p3, v0

    #@13
    iget v2, v2, Lcom/google/android/gms/internal/fk;->xW:I

    #@15
    const/4 v3, -0x1

    #@16
    if-eq v2, v3, :cond_3e

    #@18
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_3b

    #@1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string v3, "Duplicate global search section type "

    #@27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-static {v2}, Lcom/google/android/gms/internal/fo;->H(I)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    :cond_3b
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@3e
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_e

    #@41
    :cond_41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/fg;->CREATOR:Lcom/google/android/gms/internal/fh;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/fg;->CREATOR:Lcom/google/android/gms/internal/fh;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/fg;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
