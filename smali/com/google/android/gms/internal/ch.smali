.class public final Lcom/google/android/gms/internal/ch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/cg;


# instance fields
.field public final kQ:Lcom/google/android/gms/internal/ev;

.field public final oA:Ljava/lang/String;

.field public final oB:Z

.field public final oC:Ljava/lang/String;

.field public final oD:Lcom/google/android/gms/internal/cl;

.field public final oE:I

.field public final oF:Lcom/google/android/gms/internal/bd;

.field public final oG:Ljava/lang/String;

.field public final oH:Lcom/google/android/gms/internal/v;

.field public final ob:Ljava/lang/String;

.field public final orientation:I

.field public final ov:Lcom/google/android/gms/internal/ce;

.field public final ow:Lcom/google/android/gms/internal/t;

.field public final ox:Lcom/google/android/gms/internal/ci;

.field public final oy:Lcom/google/android/gms/internal/ex;

.field public final oz:Lcom/google/android/gms/internal/ba;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/cg;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/cg;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/ch;->CREATOR:Lcom/google/android/gms/internal/cg;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/ce;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/ev;Landroid/os/IBinder;Ljava/lang/String;Lcom/google/android/gms/internal/v;)V
    .registers 20

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/ch;->versionCode:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/ch;->ov:Lcom/google/android/gms/internal/ce;

    #@7
    invoke-static {p3}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/google/android/gms/internal/t;

    #@11
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->ow:Lcom/google/android/gms/internal/t;

    #@13
    invoke-static {p4}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/google/android/gms/internal/ci;

    #@1d
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->ox:Lcom/google/android/gms/internal/ci;

    #@1f
    invoke-static {p5}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@22
    move-result-object v1

    #@23
    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Lcom/google/android/gms/internal/ex;

    #@29
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oy:Lcom/google/android/gms/internal/ex;

    #@2b
    invoke-static {p6}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Lcom/google/android/gms/internal/ba;

    #@35
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oz:Lcom/google/android/gms/internal/ba;

    #@37
    iput-object p7, p0, Lcom/google/android/gms/internal/ch;->oA:Ljava/lang/String;

    #@39
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ch;->oB:Z

    #@3b
    iput-object p9, p0, Lcom/google/android/gms/internal/ch;->oC:Ljava/lang/String;

    #@3d
    invoke-static {p10}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@40
    move-result-object v1

    #@41
    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@44
    move-result-object v1

    #@45
    check-cast v1, Lcom/google/android/gms/internal/cl;

    #@47
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oD:Lcom/google/android/gms/internal/cl;

    #@49
    iput p11, p0, Lcom/google/android/gms/internal/ch;->orientation:I

    #@4b
    iput p12, p0, Lcom/google/android/gms/internal/ch;->oE:I

    #@4d
    iput-object p13, p0, Lcom/google/android/gms/internal/ch;->ob:Ljava/lang/String;

    #@4f
    move-object/from16 v0, p14

    #@51
    iput-object v0, p0, Lcom/google/android/gms/internal/ch;->kQ:Lcom/google/android/gms/internal/ev;

    #@53
    invoke-static/range {p15 .. p15}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@56
    move-result-object v1

    #@57
    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@5a
    move-result-object v1

    #@5b
    check-cast v1, Lcom/google/android/gms/internal/bd;

    #@5d
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oF:Lcom/google/android/gms/internal/bd;

    #@5f
    move-object/from16 v0, p16

    #@61
    iput-object v0, p0, Lcom/google/android/gms/internal/ch;->oG:Ljava/lang/String;

    #@63
    move-object/from16 v0, p17

    #@65
    iput-object v0, p0, Lcom/google/android/gms/internal/ch;->oH:Lcom/google/android/gms/internal/v;

    #@67
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/ev;)V
    .registers 9

    #@0
    const/4 v2, 0x4

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput v2, p0, Lcom/google/android/gms/internal/ch;->versionCode:I

    #@7
    iput-object p1, p0, Lcom/google/android/gms/internal/ch;->ov:Lcom/google/android/gms/internal/ce;

    #@9
    iput-object p2, p0, Lcom/google/android/gms/internal/ch;->ow:Lcom/google/android/gms/internal/t;

    #@b
    iput-object p3, p0, Lcom/google/android/gms/internal/ch;->ox:Lcom/google/android/gms/internal/ci;

    #@d
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oy:Lcom/google/android/gms/internal/ex;

    #@f
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oz:Lcom/google/android/gms/internal/ba;

    #@11
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oA:Ljava/lang/String;

    #@13
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ch;->oB:Z

    #@16
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oC:Ljava/lang/String;

    #@18
    iput-object p4, p0, Lcom/google/android/gms/internal/ch;->oD:Lcom/google/android/gms/internal/cl;

    #@1a
    const/4 v0, -0x1

    #@1b
    iput v0, p0, Lcom/google/android/gms/internal/ch;->orientation:I

    #@1d
    iput v2, p0, Lcom/google/android/gms/internal/ch;->oE:I

    #@1f
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->ob:Ljava/lang/String;

    #@21
    iput-object p5, p0, Lcom/google/android/gms/internal/ch;->kQ:Lcom/google/android/gms/internal/ev;

    #@23
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oF:Lcom/google/android/gms/internal/bd;

    #@25
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oG:Ljava/lang/String;

    #@27
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oH:Lcom/google/android/gms/internal/v;

    #@29
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/ex;ZILjava/lang/String;Lcom/google/android/gms/internal/ev;Lcom/google/android/gms/internal/bd;)V
    .registers 13

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, 0x4

    #@5
    iput v0, p0, Lcom/google/android/gms/internal/ch;->versionCode:I

    #@7
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->ov:Lcom/google/android/gms/internal/ce;

    #@9
    iput-object p1, p0, Lcom/google/android/gms/internal/ch;->ow:Lcom/google/android/gms/internal/t;

    #@b
    iput-object p2, p0, Lcom/google/android/gms/internal/ch;->ox:Lcom/google/android/gms/internal/ci;

    #@d
    iput-object p5, p0, Lcom/google/android/gms/internal/ch;->oy:Lcom/google/android/gms/internal/ex;

    #@f
    iput-object p3, p0, Lcom/google/android/gms/internal/ch;->oz:Lcom/google/android/gms/internal/ba;

    #@11
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oA:Ljava/lang/String;

    #@13
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ch;->oB:Z

    #@15
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oC:Ljava/lang/String;

    #@17
    iput-object p4, p0, Lcom/google/android/gms/internal/ch;->oD:Lcom/google/android/gms/internal/cl;

    #@19
    iput p7, p0, Lcom/google/android/gms/internal/ch;->orientation:I

    #@1b
    const/4 v0, 0x3

    #@1c
    iput v0, p0, Lcom/google/android/gms/internal/ch;->oE:I

    #@1e
    iput-object p8, p0, Lcom/google/android/gms/internal/ch;->ob:Ljava/lang/String;

    #@20
    iput-object p9, p0, Lcom/google/android/gms/internal/ch;->kQ:Lcom/google/android/gms/internal/ev;

    #@22
    iput-object p10, p0, Lcom/google/android/gms/internal/ch;->oF:Lcom/google/android/gms/internal/bd;

    #@24
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oG:Ljava/lang/String;

    #@26
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oH:Lcom/google/android/gms/internal/v;

    #@28
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/ex;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ev;Lcom/google/android/gms/internal/bd;)V
    .registers 14

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, 0x4

    #@5
    iput v0, p0, Lcom/google/android/gms/internal/ch;->versionCode:I

    #@7
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->ov:Lcom/google/android/gms/internal/ce;

    #@9
    iput-object p1, p0, Lcom/google/android/gms/internal/ch;->ow:Lcom/google/android/gms/internal/t;

    #@b
    iput-object p2, p0, Lcom/google/android/gms/internal/ch;->ox:Lcom/google/android/gms/internal/ci;

    #@d
    iput-object p5, p0, Lcom/google/android/gms/internal/ch;->oy:Lcom/google/android/gms/internal/ex;

    #@f
    iput-object p3, p0, Lcom/google/android/gms/internal/ch;->oz:Lcom/google/android/gms/internal/ba;

    #@11
    iput-object p9, p0, Lcom/google/android/gms/internal/ch;->oA:Ljava/lang/String;

    #@13
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ch;->oB:Z

    #@15
    iput-object p8, p0, Lcom/google/android/gms/internal/ch;->oC:Ljava/lang/String;

    #@17
    iput-object p4, p0, Lcom/google/android/gms/internal/ch;->oD:Lcom/google/android/gms/internal/cl;

    #@19
    iput p7, p0, Lcom/google/android/gms/internal/ch;->orientation:I

    #@1b
    const/4 v0, 0x3

    #@1c
    iput v0, p0, Lcom/google/android/gms/internal/ch;->oE:I

    #@1e
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->ob:Ljava/lang/String;

    #@20
    iput-object p10, p0, Lcom/google/android/gms/internal/ch;->kQ:Lcom/google/android/gms/internal/ev;

    #@22
    iput-object p11, p0, Lcom/google/android/gms/internal/ch;->oF:Lcom/google/android/gms/internal/bd;

    #@24
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oG:Ljava/lang/String;

    #@26
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oH:Lcom/google/android/gms/internal/v;

    #@28
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/ex;ILcom/google/android/gms/internal/ev;Ljava/lang/String;Lcom/google/android/gms/internal/v;)V
    .registers 11

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, 0x4

    #@5
    iput v0, p0, Lcom/google/android/gms/internal/ch;->versionCode:I

    #@7
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->ov:Lcom/google/android/gms/internal/ce;

    #@9
    iput-object p1, p0, Lcom/google/android/gms/internal/ch;->ow:Lcom/google/android/gms/internal/t;

    #@b
    iput-object p2, p0, Lcom/google/android/gms/internal/ch;->ox:Lcom/google/android/gms/internal/ci;

    #@d
    iput-object p4, p0, Lcom/google/android/gms/internal/ch;->oy:Lcom/google/android/gms/internal/ex;

    #@f
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oz:Lcom/google/android/gms/internal/ba;

    #@11
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oA:Ljava/lang/String;

    #@13
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ch;->oB:Z

    #@16
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oC:Ljava/lang/String;

    #@18
    iput-object p3, p0, Lcom/google/android/gms/internal/ch;->oD:Lcom/google/android/gms/internal/cl;

    #@1a
    iput p5, p0, Lcom/google/android/gms/internal/ch;->orientation:I

    #@1c
    const/4 v0, 0x1

    #@1d
    iput v0, p0, Lcom/google/android/gms/internal/ch;->oE:I

    #@1f
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->ob:Ljava/lang/String;

    #@21
    iput-object p6, p0, Lcom/google/android/gms/internal/ch;->kQ:Lcom/google/android/gms/internal/ev;

    #@23
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oF:Lcom/google/android/gms/internal/bd;

    #@25
    iput-object p7, p0, Lcom/google/android/gms/internal/ch;->oG:Ljava/lang/String;

    #@27
    iput-object p8, p0, Lcom/google/android/gms/internal/ch;->oH:Lcom/google/android/gms/internal/v;

    #@29
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/ex;ZILcom/google/android/gms/internal/ev;)V
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, 0x4

    #@5
    iput v0, p0, Lcom/google/android/gms/internal/ch;->versionCode:I

    #@7
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->ov:Lcom/google/android/gms/internal/ce;

    #@9
    iput-object p1, p0, Lcom/google/android/gms/internal/ch;->ow:Lcom/google/android/gms/internal/t;

    #@b
    iput-object p2, p0, Lcom/google/android/gms/internal/ch;->ox:Lcom/google/android/gms/internal/ci;

    #@d
    iput-object p4, p0, Lcom/google/android/gms/internal/ch;->oy:Lcom/google/android/gms/internal/ex;

    #@f
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oz:Lcom/google/android/gms/internal/ba;

    #@11
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oA:Ljava/lang/String;

    #@13
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ch;->oB:Z

    #@15
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oC:Ljava/lang/String;

    #@17
    iput-object p3, p0, Lcom/google/android/gms/internal/ch;->oD:Lcom/google/android/gms/internal/cl;

    #@19
    iput p6, p0, Lcom/google/android/gms/internal/ch;->orientation:I

    #@1b
    const/4 v0, 0x2

    #@1c
    iput v0, p0, Lcom/google/android/gms/internal/ch;->oE:I

    #@1e
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->ob:Ljava/lang/String;

    #@20
    iput-object p7, p0, Lcom/google/android/gms/internal/ch;->kQ:Lcom/google/android/gms/internal/ev;

    #@22
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oF:Lcom/google/android/gms/internal/bd;

    #@24
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oG:Ljava/lang/String;

    #@26
    iput-object v1, p0, Lcom/google/android/gms/internal/ch;->oH:Lcom/google/android/gms/internal/v;

    #@28
    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/android/gms/internal/ch;
    .registers 3

    #@0
    :try_start_0
    const-string v0, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    const-class v1, Lcom/google/android/gms/internal/ch;

    #@8
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@f
    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    #@11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/google/android/gms/internal/ch;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    #@17
    :goto_17
    return-object v0

    #@18
    :catch_18
    move-exception v0

    #@19
    const/4 v0, 0x0

    #@1a
    goto :goto_17
.end method

.method public static a(Landroid/content/Intent;Lcom/google/android/gms/internal/ch;)V
    .registers 4

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    #@6
    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@b
    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    #@d
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@10
    return-void
.end method


# virtual methods
.method aU()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ch;->ow:Lcom/google/android/gms/internal/t;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method aV()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ch;->ox:Lcom/google/android/gms/internal/ci;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method aW()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ch;->oy:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method aX()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ch;->oz:Lcom/google/android/gms/internal/ba;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method aY()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ch;->oF:Lcom/google/android/gms/internal/bd;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method aZ()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ch;->oD:Lcom/google/android/gms/internal/cl;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cg;->a(Lcom/google/android/gms/internal/ch;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
