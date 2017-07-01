.class public Lcom/google/android/gms/internal/fp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fp$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fq;


# instance fields
.field public final name:Ljava/lang/String;

.field public final weight:I

.field final xM:I

.field public final yb:Ljava/lang/String;

.field public final yc:Z

.field public final yd:Z

.field public final ye:Ljava/lang/String;

.field public final yf:[Lcom/google/android/gms/internal/fm;

.field final yg:[I

.field public final yh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/fq;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/fq;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/fp;->CREATOR:Lcom/google/android/gms/internal/fq;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/internal/fm;[ILjava/lang/String;)V
    .registers 11

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/fp;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/fp;->name:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/fp;->yb:Ljava/lang/String;

    #@9
    iput-boolean p4, p0, Lcom/google/android/gms/internal/fp;->yc:Z

    #@b
    iput p5, p0, Lcom/google/android/gms/internal/fp;->weight:I

    #@d
    iput-boolean p6, p0, Lcom/google/android/gms/internal/fp;->yd:Z

    #@f
    iput-object p7, p0, Lcom/google/android/gms/internal/fp;->ye:Ljava/lang/String;

    #@11
    iput-object p8, p0, Lcom/google/android/gms/internal/fp;->yf:[Lcom/google/android/gms/internal/fm;

    #@13
    iput-object p9, p0, Lcom/google/android/gms/internal/fp;->yg:[I

    #@15
    iput-object p10, p0, Lcom/google/android/gms/internal/fp;->yh:Ljava/lang/String;

    #@17
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/internal/fm;[ILjava/lang/String;)V
    .registers 21

    #@0
    const/4 v1, 0x2

    #@1
    move-object v0, p0

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    move/from16 v6, p5

    #@8
    move-object/from16 v7, p6

    #@a
    move-object/from16 v8, p7

    #@c
    move-object/from16 v9, p8

    #@e
    move-object/from16 v10, p9

    #@10
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/fp;-><init>(ILjava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/internal/fm;[ILjava/lang/String;)V

    #@13
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/fp;->CREATOR:Lcom/google/android/gms/internal/fq;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/google/android/gms/internal/fp;

    #@3
    if-eqz v1, :cond_22

    #@5
    check-cast p1, Lcom/google/android/gms/internal/fp;

    #@7
    iget-object v1, p0, Lcom/google/android/gms/internal/fp;->name:Ljava/lang/String;

    #@9
    iget-object v2, p1, Lcom/google/android/gms/internal/fp;->name:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_22

    #@11
    iget-object v1, p0, Lcom/google/android/gms/internal/fp;->yb:Ljava/lang/String;

    #@13
    iget-object v2, p1, Lcom/google/android/gms/internal/fp;->yb:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_22

    #@1b
    iget-boolean v1, p0, Lcom/google/android/gms/internal/fp;->yc:Z

    #@1d
    iget-boolean v2, p1, Lcom/google/android/gms/internal/fp;->yc:Z

    #@1f
    if-ne v1, v2, :cond_22

    #@21
    const/4 v0, 0x1

    #@22
    :cond_22
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/fp;->CREATOR:Lcom/google/android/gms/internal/fq;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fq;->a(Lcom/google/android/gms/internal/fp;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
