.class public final Lcom/google/android/gms/internal/gy$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/hl;


# instance fields
.field private final DI:I

.field private final DK:Ljava/lang/String;

.field private final Ef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final xM:I

.field private final yQ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/hl;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/hl;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/gy$a;->CREATOR:Lcom/google/android/gms/internal/hl;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/gy$a;->Ef:Ljava/util/List;

    #@a
    iput p1, p0, Lcom/google/android/gms/internal/gy$a;->xM:I

    #@c
    iput-object p2, p0, Lcom/google/android/gms/internal/gy$a;->yQ:Ljava/lang/String;

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/gy$a;->Ef:Ljava/util/List;

    #@10
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@13
    iput p4, p0, Lcom/google/android/gms/internal/gy$a;->DI:I

    #@15
    iput-object p5, p0, Lcom/google/android/gms/internal/gy$a;->DK:Ljava/lang/String;

    #@17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v1, 0x3

    #@1
    new-instance v3, Ljava/util/ArrayList;

    #@3
    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@6
    move-object v0, p0

    #@7
    move-object v2, p1

    #@8
    move v4, p3

    #@9
    move-object v5, p4

    #@a
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gy$a;-><init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    #@d
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

.method public fj()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gy$a;->yQ:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/gy$a;->yQ:Ljava/lang/String;

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    const-string v0, "<<default account>>"

    #@9
    goto :goto_6
.end method

.method public fk()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/gy$a;->DI:I

    #@2
    return v0
.end method

.method public fl()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/gy$a;->Ef:Ljava/util/List;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method public fn()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gy$a;->DK:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gy$a;->yQ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/gy$a;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/gy$a;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
