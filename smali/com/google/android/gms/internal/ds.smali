.class public final Lcom/google/android/gms/internal/ds;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ds$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/dt;


# instance fields
.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final kN:Ljava/lang/String;

.field public final kQ:Lcom/google/android/gms/internal/ev;

.field public final kT:Lcom/google/android/gms/internal/al;

.field public final pW:Landroid/os/Bundle;

.field public final pX:Lcom/google/android/gms/internal/ai;

.field public final pY:Landroid/content/pm/PackageInfo;

.field public final pZ:Ljava/lang/String;

.field public final qa:Ljava/lang/String;

.field public final qb:Ljava/lang/String;

.field public final qc:Landroid/os/Bundle;

.field public final qd:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/dt;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/dt;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/ds;->CREATOR:Lcom/google/android/gms/internal/dt;

    #@7
    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/al;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ev;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 14

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/ds;->versionCode:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/ds;->pW:Landroid/os/Bundle;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/ds;->pX:Lcom/google/android/gms/internal/ai;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/internal/ds;->kT:Lcom/google/android/gms/internal/al;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/internal/ds;->kN:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/internal/ds;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/internal/ds;->pY:Landroid/content/pm/PackageInfo;

    #@11
    iput-object p8, p0, Lcom/google/android/gms/internal/ds;->pZ:Ljava/lang/String;

    #@13
    iput-object p9, p0, Lcom/google/android/gms/internal/ds;->qa:Ljava/lang/String;

    #@15
    iput-object p10, p0, Lcom/google/android/gms/internal/ds;->qb:Ljava/lang/String;

    #@17
    iput-object p11, p0, Lcom/google/android/gms/internal/ds;->kQ:Lcom/google/android/gms/internal/ev;

    #@19
    iput-object p12, p0, Lcom/google/android/gms/internal/ds;->qc:Landroid/os/Bundle;

    #@1b
    iput-object p13, p0, Lcom/google/android/gms/internal/ds;->qd:Ljava/lang/String;

    #@1d
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/al;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ev;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 27

    #@0
    const/4 v1, 0x3

    #@1
    move-object v0, p0

    #@2
    move-object v2, p1

    #@3
    move-object/from16 v3, p2

    #@5
    move-object/from16 v4, p3

    #@7
    move-object/from16 v5, p4

    #@9
    move-object/from16 v6, p5

    #@b
    move-object/from16 v7, p6

    #@d
    move-object/from16 v8, p7

    #@f
    move-object/from16 v9, p8

    #@11
    move-object/from16 v10, p9

    #@13
    move-object/from16 v11, p10

    #@15
    move-object/from16 v12, p11

    #@17
    move-object/from16 v13, p12

    #@19
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ds;-><init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/al;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ev;Landroid/os/Bundle;Ljava/lang/String;)V

    #@1c
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ds$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    #@0
    iget-object v1, p1, Lcom/google/android/gms/internal/ds$a;->pW:Landroid/os/Bundle;

    #@2
    iget-object v2, p1, Lcom/google/android/gms/internal/ds$a;->pX:Lcom/google/android/gms/internal/ai;

    #@4
    iget-object v3, p1, Lcom/google/android/gms/internal/ds$a;->kT:Lcom/google/android/gms/internal/al;

    #@6
    iget-object v4, p1, Lcom/google/android/gms/internal/ds$a;->kN:Ljava/lang/String;

    #@8
    iget-object v5, p1, Lcom/google/android/gms/internal/ds$a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    iget-object v6, p1, Lcom/google/android/gms/internal/ds$a;->pY:Landroid/content/pm/PackageInfo;

    #@c
    iget-object v8, p1, Lcom/google/android/gms/internal/ds$a;->qa:Ljava/lang/String;

    #@e
    iget-object v9, p1, Lcom/google/android/gms/internal/ds$a;->qb:Ljava/lang/String;

    #@10
    iget-object v10, p1, Lcom/google/android/gms/internal/ds$a;->kQ:Lcom/google/android/gms/internal/ev;

    #@12
    iget-object v11, p1, Lcom/google/android/gms/internal/ds$a;->qc:Landroid/os/Bundle;

    #@14
    move-object v0, p0

    #@15
    move-object v7, p2

    #@16
    move-object/from16 v12, p3

    #@18
    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ds;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/al;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ev;Landroid/os/Bundle;Ljava/lang/String;)V

    #@1b
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/dt;->a(Lcom/google/android/gms/internal/ds;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
