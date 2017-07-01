.class public final Lcom/google/android/gms/internal/cq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/cp;


# instance fields
.field public final kX:Lcom/google/android/gms/internal/dg;

.field public final kZ:Lcom/google/android/gms/internal/cz;

.field public final oT:Lcom/google/android/gms/internal/db;

.field public final oU:Landroid/content/Context;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/cp;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/cp;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/cq;->CREATOR:Lcom/google/android/gms/internal/cp;

    #@7
    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/cq;->versionCode:I

    #@5
    invoke-static {p2}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/google/android/gms/internal/dg;

    #@f
    iput-object v0, p0, Lcom/google/android/gms/internal/cq;->kX:Lcom/google/android/gms/internal/dg;

    #@11
    invoke-static {p3}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@14
    move-result-object v0

    #@15
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/google/android/gms/internal/cz;

    #@1b
    iput-object v0, p0, Lcom/google/android/gms/internal/cq;->kZ:Lcom/google/android/gms/internal/cz;

    #@1d
    invoke-static {p4}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@20
    move-result-object v0

    #@21
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/google/android/gms/internal/db;

    #@27
    iput-object v0, p0, Lcom/google/android/gms/internal/cq;->oT:Lcom/google/android/gms/internal/db;

    #@29
    invoke-static {p5}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/content/Context;

    #@33
    iput-object v0, p0, Lcom/google/android/gms/internal/cq;->oU:Landroid/content/Context;

    #@35
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/db;Lcom/google/android/gms/internal/dg;Lcom/google/android/gms/internal/cz;Landroid/content/Context;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/cq;->versionCode:I

    #@6
    iput-object p1, p0, Lcom/google/android/gms/internal/cq;->oT:Lcom/google/android/gms/internal/db;

    #@8
    iput-object p2, p0, Lcom/google/android/gms/internal/cq;->kX:Lcom/google/android/gms/internal/dg;

    #@a
    iput-object p3, p0, Lcom/google/android/gms/internal/cq;->kZ:Lcom/google/android/gms/internal/cz;

    #@c
    iput-object p4, p0, Lcom/google/android/gms/internal/cq;->oU:Landroid/content/Context;

    #@e
    return-void
.end method

.method public static a(Landroid/content/Intent;Lcom/google/android/gms/internal/cq;)V
    .registers 4

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    #@6
    const-string v1, "com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo"

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@b
    const-string v1, "com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo"

    #@d
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@10
    return-void
.end method

.method public static b(Landroid/content/Intent;)Lcom/google/android/gms/internal/cq;
    .registers 3

    #@0
    :try_start_0
    const-string v0, "com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo"

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    const-class v1, Lcom/google/android/gms/internal/cq;

    #@8
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@f
    const-string v1, "com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo"

    #@11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/google/android/gms/internal/cq;
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


# virtual methods
.method bd()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->kX:Lcom/google/android/gms/internal/dg;

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

.method be()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->kZ:Lcom/google/android/gms/internal/cz;

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

.method bf()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->oT:Lcom/google/android/gms/internal/db;

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

.method bg()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->oU:Landroid/content/Context;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cp;->a(Lcom/google/android/gms/internal/cq;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
