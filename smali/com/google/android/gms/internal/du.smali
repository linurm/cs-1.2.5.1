.class public final Lcom/google/android/gms/internal/du;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/dv;


# instance fields
.field public final errorCode:I

.field public final nt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nx:J

.field public final oA:Ljava/lang/String;

.field public final orientation:I

.field public final qe:Ljava/lang/String;

.field public final qf:J

.field public final qg:Z

.field public final qh:J

.field public final qi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final qj:Ljava/lang/String;

.field public final qk:J

.field public final ql:Ljava/lang/String;

.field public final qm:Z

.field public final qn:Ljava/lang/String;

.field public final qo:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/dv;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/dv;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/du;->CREATOR:Lcom/google/android/gms/internal/dv;

    #@7
    return-void
.end method

.method public constructor <init>(I)V
    .registers 26

    #@0
    const/4 v2, 0x7

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v7, 0x0

    #@5
    const-wide/16 v8, -0x1

    #@7
    const/4 v10, 0x0

    #@8
    const-wide/16 v11, -0x1

    #@a
    const/4 v13, 0x0

    #@b
    const-wide/16 v14, -0x1

    #@d
    const/16 v16, -0x1

    #@f
    const/16 v17, 0x0

    #@11
    const-wide/16 v18, -0x1

    #@13
    const/16 v20, 0x0

    #@15
    const/16 v21, 0x0

    #@17
    const/16 v22, 0x0

    #@19
    const/16 v23, 0x0

    #@1b
    move-object/from16 v1, p0

    #@1d
    move/from16 v6, p1

    #@1f
    invoke-direct/range {v1 .. v23}, Lcom/google/android/gms/internal/du;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    #@22
    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 28

    #@0
    const/4 v2, 0x7

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v7, 0x0

    #@5
    const-wide/16 v8, -0x1

    #@7
    const/4 v10, 0x0

    #@8
    const-wide/16 v11, -0x1

    #@a
    const/4 v13, 0x0

    #@b
    const/16 v16, -0x1

    #@d
    const/16 v17, 0x0

    #@f
    const-wide/16 v18, -0x1

    #@11
    const/16 v20, 0x0

    #@13
    const/16 v21, 0x0

    #@15
    const/16 v22, 0x0

    #@17
    const/16 v23, 0x0

    #@19
    move-object/from16 v1, p0

    #@1b
    move/from16 v6, p1

    #@1d
    move-wide/from16 v14, p2

    #@1f
    invoke-direct/range {v1 .. v23}, Lcom/google/android/gms/internal/du;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    #@22
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/du;->versionCode:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/du;->oA:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/du;->qe:Ljava/lang/String;

    #@9
    if-eqz p4, :cond_4a

    #@b
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@e
    move-result-object v2

    #@f
    :goto_f
    iput-object v2, p0, Lcom/google/android/gms/internal/du;->nt:Ljava/util/List;

    #@11
    iput p5, p0, Lcom/google/android/gms/internal/du;->errorCode:I

    #@13
    if-eqz p6, :cond_4c

    #@15
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@18
    move-result-object v2

    #@19
    :goto_19
    iput-object v2, p0, Lcom/google/android/gms/internal/du;->nu:Ljava/util/List;

    #@1b
    iput-wide p7, p0, Lcom/google/android/gms/internal/du;->qf:J

    #@1d
    iput-boolean p9, p0, Lcom/google/android/gms/internal/du;->qg:Z

    #@1f
    iput-wide p10, p0, Lcom/google/android/gms/internal/du;->qh:J

    #@21
    if-eqz p12, :cond_4e

    #@23
    invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@26
    move-result-object v2

    #@27
    :goto_27
    iput-object v2, p0, Lcom/google/android/gms/internal/du;->qi:Ljava/util/List;

    #@29
    move-wide/from16 v0, p13

    #@2b
    iput-wide v0, p0, Lcom/google/android/gms/internal/du;->nx:J

    #@2d
    move/from16 v0, p15

    #@2f
    iput v0, p0, Lcom/google/android/gms/internal/du;->orientation:I

    #@31
    move-object/from16 v0, p16

    #@33
    iput-object v0, p0, Lcom/google/android/gms/internal/du;->qj:Ljava/lang/String;

    #@35
    move-wide/from16 v0, p17

    #@37
    iput-wide v0, p0, Lcom/google/android/gms/internal/du;->qk:J

    #@39
    move-object/from16 v0, p19

    #@3b
    iput-object v0, p0, Lcom/google/android/gms/internal/du;->ql:Ljava/lang/String;

    #@3d
    move/from16 v0, p20

    #@3f
    iput-boolean v0, p0, Lcom/google/android/gms/internal/du;->qm:Z

    #@41
    move-object/from16 v0, p21

    #@43
    iput-object v0, p0, Lcom/google/android/gms/internal/du;->qn:Ljava/lang/String;

    #@45
    move-object/from16 v0, p22

    #@47
    iput-object v0, p0, Lcom/google/android/gms/internal/du;->qo:Ljava/lang/String;

    #@49
    return-void

    #@4a
    :cond_4a
    const/4 v2, 0x0

    #@4b
    goto :goto_f

    #@4c
    :cond_4c
    const/4 v2, 0x0

    #@4d
    goto :goto_19

    #@4e
    :cond_4e
    const/4 v2, 0x0

    #@4f
    goto :goto_27
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v2, 0x7

    #@1
    const/4 v6, -0x2

    #@2
    const/16 v21, 0x0

    #@4
    const/16 v22, 0x0

    #@6
    move-object/from16 v1, p0

    #@8
    move-object/from16 v3, p1

    #@a
    move-object/from16 v4, p2

    #@c
    move-object/from16 v5, p3

    #@e
    move-object/from16 v7, p4

    #@10
    move-wide/from16 v8, p5

    #@12
    move/from16 v10, p7

    #@14
    move-wide/from16 v11, p8

    #@16
    move-object/from16 v13, p10

    #@18
    move-wide/from16 v14, p11

    #@1a
    move/from16 v16, p13

    #@1c
    move-object/from16 v17, p14

    #@1e
    move-wide/from16 v18, p15

    #@20
    move-object/from16 v20, p17

    #@22
    move-object/from16 v23, p18

    #@24
    invoke-direct/range {v1 .. v23}, Lcom/google/android/gms/internal/du;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    #@27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v2, 0x7

    #@1
    const/4 v6, -0x2

    #@2
    move-object/from16 v1, p0

    #@4
    move-object/from16 v3, p1

    #@6
    move-object/from16 v4, p2

    #@8
    move-object/from16 v5, p3

    #@a
    move-object/from16 v7, p4

    #@c
    move-wide/from16 v8, p5

    #@e
    move/from16 v10, p7

    #@10
    move-wide/from16 v11, p8

    #@12
    move-object/from16 v13, p10

    #@14
    move-wide/from16 v14, p11

    #@16
    move/from16 v16, p13

    #@18
    move-object/from16 v17, p14

    #@1a
    move-wide/from16 v18, p15

    #@1c
    move-object/from16 v20, p17

    #@1e
    move/from16 v21, p18

    #@20
    move-object/from16 v22, p19

    #@22
    move-object/from16 v23, p20

    #@24
    invoke-direct/range {v1 .. v23}, Lcom/google/android/gms/internal/du;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    #@27
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/dv;->a(Lcom/google/android/gms/internal/du;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
