.class public final Lcom/google/android/gms/internal/ds$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final kN:Ljava/lang/String;

.field public final kQ:Lcom/google/android/gms/internal/ev;

.field public final kT:Lcom/google/android/gms/internal/al;

.field public final pW:Landroid/os/Bundle;

.field public final pX:Lcom/google/android/gms/internal/ai;

.field public final pY:Landroid/content/pm/PackageInfo;

.field public final qa:Ljava/lang/String;

.field public final qb:Ljava/lang/String;

.field public final qc:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/al;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ev;Landroid/os/Bundle;)V
    .registers 11

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/ds$a;->pW:Landroid/os/Bundle;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/ds$a;->pX:Lcom/google/android/gms/internal/ai;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/ds$a;->kT:Lcom/google/android/gms/internal/al;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/internal/ds$a;->kN:Ljava/lang/String;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/internal/ds$a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/internal/ds$a;->pY:Landroid/content/pm/PackageInfo;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/internal/ds$a;->qa:Ljava/lang/String;

    #@11
    iput-object p8, p0, Lcom/google/android/gms/internal/ds$a;->qb:Ljava/lang/String;

    #@13
    iput-object p9, p0, Lcom/google/android/gms/internal/ds$a;->kQ:Lcom/google/android/gms/internal/ev;

    #@15
    iput-object p10, p0, Lcom/google/android/gms/internal/ds$a;->qc:Landroid/os/Bundle;

    #@17
    return-void
.end method
