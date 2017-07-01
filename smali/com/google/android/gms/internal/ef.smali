.class public final Lcom/google/android/gms/internal/ef;
.super Ljava/lang/Object;


# instance fields
.field public final errorCode:I

.field public final nM:Lcom/google/android/gms/internal/bl;

.field public final nN:Lcom/google/android/gms/internal/bu;

.field public final nO:Ljava/lang/String;

.field public final nP:Lcom/google/android/gms/internal/bo;

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

.field public final orientation:I

.field public final oy:Lcom/google/android/gms/internal/ex;

.field public final pX:Lcom/google/android/gms/internal/ai;

.field public final qa:Ljava/lang/String;

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

.field public final ql:Ljava/lang/String;

.field public final rA:Lcom/google/android/gms/internal/al;

.field public final rB:J

.field public final rC:J

.field public final ry:Lorg/json/JSONObject;

.field public final rz:Lcom/google/android/gms/internal/bm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ex;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/bl;Lcom/google/android/gms/internal/bu;Ljava/lang/String;Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bo;JLcom/google/android/gms/internal/al;JJJLjava/lang/String;Lorg/json/JSONObject;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ai;",
            "Lcom/google/android/gms/internal/ex;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/bl;",
            "Lcom/google/android/gms/internal/bu;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bm;",
            "Lcom/google/android/gms/internal/bo;",
            "J",
            "Lcom/google/android/gms/internal/al;",
            "JJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/ef;->pX:Lcom/google/android/gms/internal/ai;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/ef;->oy:Lcom/google/android/gms/internal/ex;

    #@7
    if-eqz p3, :cond_5a

    #@9
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@c
    move-result-object v2

    #@d
    :goto_d
    iput-object v2, p0, Lcom/google/android/gms/internal/ef;->nt:Ljava/util/List;

    #@f
    iput p4, p0, Lcom/google/android/gms/internal/ef;->errorCode:I

    #@11
    if-eqz p5, :cond_5c

    #@13
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@16
    move-result-object v2

    #@17
    :goto_17
    iput-object v2, p0, Lcom/google/android/gms/internal/ef;->nu:Ljava/util/List;

    #@19
    if-eqz p6, :cond_5e

    #@1b
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@1e
    move-result-object v2

    #@1f
    :goto_1f
    iput-object v2, p0, Lcom/google/android/gms/internal/ef;->qi:Ljava/util/List;

    #@21
    iput p7, p0, Lcom/google/android/gms/internal/ef;->orientation:I

    #@23
    iput-wide p8, p0, Lcom/google/android/gms/internal/ef;->nx:J

    #@25
    iput-object p10, p0, Lcom/google/android/gms/internal/ef;->qa:Ljava/lang/String;

    #@27
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ef;->qg:Z

    #@29
    move-object/from16 v0, p12

    #@2b
    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->nM:Lcom/google/android/gms/internal/bl;

    #@2d
    move-object/from16 v0, p13

    #@2f
    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->nN:Lcom/google/android/gms/internal/bu;

    #@31
    move-object/from16 v0, p14

    #@33
    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->nO:Ljava/lang/String;

    #@35
    move-object/from16 v0, p15

    #@37
    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->rz:Lcom/google/android/gms/internal/bm;

    #@39
    move-object/from16 v0, p16

    #@3b
    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->nP:Lcom/google/android/gms/internal/bo;

    #@3d
    move-wide/from16 v0, p17

    #@3f
    iput-wide v0, p0, Lcom/google/android/gms/internal/ef;->qh:J

    #@41
    move-object/from16 v0, p19

    #@43
    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->rA:Lcom/google/android/gms/internal/al;

    #@45
    move-wide/from16 v0, p20

    #@47
    iput-wide v0, p0, Lcom/google/android/gms/internal/ef;->qf:J

    #@49
    move-wide/from16 v0, p22

    #@4b
    iput-wide v0, p0, Lcom/google/android/gms/internal/ef;->rB:J

    #@4d
    move-wide/from16 v0, p24

    #@4f
    iput-wide v0, p0, Lcom/google/android/gms/internal/ef;->rC:J

    #@51
    move-object/from16 v0, p26

    #@53
    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->ql:Ljava/lang/String;

    #@55
    move-object/from16 v0, p27

    #@57
    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->ry:Lorg/json/JSONObject;

    #@59
    return-void

    #@5a
    :cond_5a
    const/4 v2, 0x0

    #@5b
    goto :goto_d

    #@5c
    :cond_5c
    const/4 v2, 0x0

    #@5d
    goto :goto_17

    #@5e
    :cond_5e
    const/4 v2, 0x0

    #@5f
    goto :goto_1f
.end method
